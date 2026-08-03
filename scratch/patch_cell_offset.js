// patch_cell_offset.js
// El TOTAL (m:s y ms) arranca desde el tiempo acumulado de las celdas ANTERIORES.
//
// QUE HACE
//   Al hacer clic en la celda N de la matriz unificada (obj-3), el TOTAL muestra la suma del
//   Time Domain de las celdas ANTERIORES DE SU MISMA FILA: la posicion de esa celda dentro de
//   la secuencia. Al pulsar Play (que reproduce desde la celda actual) el reloj sigue contando
//   desde ese acumulado, en vez de volver a 0. Cada fila es una secuencia independiente y
//   arranca en 0; el reparto por filas lo hace cell_times.js (20 columnas, igual que COLUMN).
//
// COMO
//   [cell_times.js] (obj-ct-js) mantiene la tabla de duraciones y calcula el acumulado.
//   Se alimenta por tres vias:
//     - obj-10002 (js smart_load.js) manda `read temp_load_1.json` a la vez que a obj-3, asi
//       que al cargar un .maxpresets la tabla se llena de golpe con las 600 celdas.
//     - obj-3 outlet 1 (recall) y outlet 3 (store) -> se captura el valor de obj-12 50 ms
//       despues y se manda `learn <celda> <ms>`: la tabla se refina sola con el uso.
//       Hacen falta los 50 ms porque [preset] restaura los number box SIN que emitan; quien
//       hace emitir a obj-12 tras un recall es obj-486 (ver el Freq. Domain por grafica).
//     - obj-3 outlet 1 manda ademas `query <celda>` inmediato, para que el TOTAL se refresque
//       al instante con lo que ya se sabe.
//
//   El acumulado se reparte en dos ramas:
//     - PANTALLA EN PARADO: pasa por [gate 1 1] (obj-ct-dgate) que obj-59 cierra mientras se
//       reproduce; asi los recalls de Play Full Piece no pisan el reloj en marcha.
//     - RELOJ: se congela en un [int] (obj-ct-latch) que se banguea al arrancar. El acumulado
//       entra siempre por el inlet frio, asi que el arranque es independiente del orden de
//       las conexiones. Su salida va al inlet derecho de [+ ] (obj-ct-add), intercalado entre
//       [clocker 100] y las cajas de lectura: TOTAL = acumulado + transcurrido.
//
//   obj-tt-sel outlet 0 pasa a un [t b b] (obj-ct-start): primero banguea el latch (que ademas
//   repinta el TOTAL con el acumulado) y luego arranca el clocker. Por eso se cortan las lineas
//   a los mensajes `set 0` / `set 0:00.0` (obj-ttx-tot-zero*), que ahora dejarian el TOTAL en 0.
//
// OJO: si se vuelve a correr scratch/patch_timer_extras.js hay que correr ESTE script despues,
// porque aquel recrea las lineas del clocker y de los `set 0`.
//
// Idempotente: borra todo lo obj-ct-* y rehace el re-ruteo antes de reinsertar.

const fs = require('fs');
const path = require('path');

const ROOT = path.join(__dirname, '..');
const FILE = path.join(ROOT, 'ATS_Sequencer.maxpat');

const patch = JSON.parse(fs.readFileSync(FILE, 'utf8'));
const pat = patch.patcher;

const PREFIX = 'obj-ct-';

const PRESET   = 'obj-3';           // matriz unificada de presets
const DOMAIN   = 'obj-12';          // Time Domain (End Time), ms
const PLAY     = 'obj-59';          // toggle PLAY global
const LOADER   = 'obj-10002';       // js smart_load.js 1
const CLEARBTN = 'obj-838';         // textbutton "Clear all presets"
const CLOCKER  = 'obj-tt-clocker';
const TTSEL    = 'obj-tt-sel';
const TTTRIG   = 'obj-tt-trig';     // t i i i -> min / seg / decimas
const MSTRIG   = 'obj-ttx-tot-i';   // t i -> prepend set -> caja TOTAL ms
const ZERO_MS  = 'obj-ttx-tot-zero';
const ZERO_MMSS = 'obj-ttx-tot-zero-ms';

// ---------------------------------------------------------------- limpieza
const before = pat.boxes.length;
pat.boxes = pat.boxes.filter(b => !String(b.box.id).startsWith(PREFIX));
pat.lines = pat.lines.filter(l => {
  const s = String(l.patchline.source[0]);
  const d = String(l.patchline.destination[0]);
  return !s.startsWith(PREFIX) && !d.startsWith(PREFIX);
});
console.log(`limpieza: ${before - pat.boxes.length} objetos obj-ct-* eliminados`);

// ---------------------------------------------------------------- helpers
const boxIndex = new Map(pat.boxes.map(b => [b.box.id, b.box]));

function requireBox(id) {
  if (!boxIndex.has(id)) throw new Error(`No existe ${id} en el patch`);
  return boxIndex.get(id);
}

function addBox(o) {
  pat.boxes.push({ box: o });
  boxIndex.set(o.id, o);
  return o;
}

function newobj(id, text, x, y, w, nin, nout, outlettype) {
  return addBox({
    fontname: 'Arial', fontsize: 12.0, id, maxclass: 'newobj',
    numinlets: nin, numoutlets: nout, outlettype,
    patching_rect: [x, y, w, 22.0], text
  });
}

function message(id, text, x, y, w) {
  return addBox({
    fontname: 'Arial', fontsize: 12.0, id, maxclass: 'message',
    numinlets: 2, numoutlets: 1, outlettype: [''],
    patching_rect: [x, y, w, 22.0], text
  });
}

function numberBox(id, x, y) {
  return addBox({
    fontname: 'Arial', fontsize: 12.0, id, maxclass: 'number',
    numinlets: 1, numoutlets: 2, outlettype: ['', 'bang'],
    parameter_enable: 0, patching_rect: [x, y, 70.0, 22.0]
  });
}

function comment(id, text, x, y, w) {
  return addBox({
    fontname: 'Arial', fontsize: 12.0, id, maxclass: 'comment',
    numinlets: 1, numoutlets: 0, patching_rect: [x, y, w, 20.0], text
  });
}

function connect(srcId, srcOut, dstId, dstIn) {
  requireBox(srcId);
  requireBox(dstId);
  const dup = pat.lines.some(l => {
    const p = l.patchline;
    return String(p.source[0]) === srcId && p.source[1] === srcOut &&
           String(p.destination[0]) === dstId && p.destination[1] === dstIn;
  });
  if (dup) return;
  pat.lines.push({ patchline: { destination: [dstId, dstIn], source: [srcId, srcOut] } });
}

function disconnect(srcId, srcOut, dstId, dstIn) {
  const n = pat.lines.length;
  pat.lines = pat.lines.filter(l => {
    const p = l.patchline;
    if (String(p.source[0]) !== srcId || String(p.destination[0]) !== dstId) return true;
    if (srcOut !== null && p.source[1] !== srcOut) return true;
    if (dstIn !== null && p.destination[1] !== dstIn) return true;
    return false;
  });
  return n - pat.lines.length;
}

['obj-3', 'obj-12', 'obj-59', 'obj-10002', 'obj-838', CLOCKER, TTSEL, TTTRIG, MSTRIG]
  .forEach(requireBox);

// ---------------------------------------------------------------- geometria
// Zona de patching libre: obj-fd-* llega hasta y ~ 7900.
const X = 3600.0;
const Y = 8060.0;
const id = s => PREFIX + s;

comment(id('title'), 'TOTAL acumulado: Time Domain de las celdas anteriores de la MISMA FILA', X, Y - 40, 460);

// --- captura de celda + duracion -------------------------------------------------
// outlet 1 de [preset] = celda recallada; outlet 3 = celda guardada. En los dos casos, 50 ms
// despues obj-12 ya tiene el Time Domain de esa celda.
newobj(id('rcap'), 't b i', X, Y, 40, 1, 2, ['bang', 'int']);
newobj(id('scap'), 't b i', X + 60, Y, 40, 1, 2, ['bang', 'int']);
newobj(id('del'),  'del 50', X, Y + 30, 50, 2, 1, ['bang']);
newobj(id('cellstore'), 'int', X + 260, Y + 30, 40, 2, 1, ['int']);
newobj(id('domstore'), 'int', X + 330, Y + 30, 40, 2, 1, ['int']);
newobj(id('tbb'), 't b b', X, Y + 60, 45, 1, 2, ['bang', 'bang']);
newobj(id('pack'), 'pack 0 0', X + 260, Y + 90, 65, 2, 1, ['']);
newobj(id('learn'), 'prepend learn', X + 260, Y + 120, 90, 1, 1, ['']);
newobj(id('qry'), 'prepend query', X + 400, Y + 120, 90, 1, 1, ['']);
message(id('mzero'), 'zero', X + 520, Y + 120, 40);

// --- motor ------------------------------------------------------------------------
newobj(id('js'), 'js cell_times.js', X, Y + 160, 110, 1, 1, ['']);
boxIndex.get(id('js')).saved_object_attributes = { filename: 'cell_times.js', parameter_enable: 0 };
newobj(id('i'), 'int', X, Y + 190, 40, 2, 1, ['int']);
numberBox(id('val'), X + 60, Y + 190);
newobj(id('tofs'), 't i i', X, Y + 220, 40, 1, 2, ['int', 'int']);

// Pantalla en parado: el gate se cierra mientras obj-59 esta a 1.
newobj(id('notplay'), '== 0', X + 150, Y + 220, 40, 2, 1, ['int']);
newobj(id('dgate'), 'gate 1 1', X, Y + 250, 60, 2, 1, ['']);

// Reloj: el acumulado se congela al arrancar.
newobj(id('latch'), 'int', X + 260, Y + 250, 40, 2, 1, ['int']);
newobj(id('tlat'), 't i i', X + 260, Y + 280, 40, 1, 2, ['int', 'int']);
newobj(id('add'), '+ 0', X + 400, Y + 310, 40, 2, 1, ['int']);
newobj(id('out'), 't i i', X, Y + 340, 40, 1, 2, ['int', 'int']);
newobj(id('start'), 't b b', X + 520, Y + 250, 45, 1, 2, ['bang', 'bang']);

// ---------------------------------------------------------------- conexiones
// Alimentacion de la tabla
connect(PRESET, 1, id('qry'), 0);          // recall: acumulado inmediato
connect(PRESET, 1, id('rcap'), 0);         // recall: aprende la duracion
connect(PRESET, 3, id('scap'), 0);         // store:  aprende la duracion
connect(id('rcap'), 1, id('cellstore'), 1);
connect(id('rcap'), 0, id('del'), 0);
connect(id('scap'), 1, id('cellstore'), 1);
connect(id('scap'), 0, id('del'), 0);
connect(DOMAIN, 0, id('domstore'), 1);     // ultimo Time Domain conocido (inlet frio)
connect(id('del'), 0, id('tbb'), 0);
connect(id('tbb'), 1, id('domstore'), 0);  // primero la duracion (inlet frio del pack)
connect(id('tbb'), 0, id('cellstore'), 0); // luego la celda (dispara el pack)
connect(id('domstore'), 0, id('pack'), 1);
connect(id('cellstore'), 0, id('pack'), 0);
connect(id('pack'), 0, id('learn'), 0);
connect(id('learn'), 0, id('js'), 0);
connect(id('qry'), 0, id('js'), 0);
connect(LOADER, 0, id('js'), 0);           // `read temp_load_1.json` -> tabla completa
connect(CLEARBTN, 0, id('mzero'), 0);
connect(id('mzero'), 0, id('js'), 0);

// Reparto del acumulado
connect(id('js'), 0, id('i'), 0);
connect(id('i'), 0, id('val'), 0);
connect(id('i'), 0, id('tofs'), 0);
connect(id('tofs'), 1, id('latch'), 1);    // inlet frio: listo para el proximo arranque
connect(id('tofs'), 0, id('dgate'), 1);
connect(PLAY, 0, id('notplay'), 0);
connect(id('notplay'), 0, id('dgate'), 0);
connect(id('dgate'), 0, id('out'), 0);
connect(id('latch'), 0, id('tlat'), 0);
connect(id('tlat'), 1, id('add'), 1);      // congela el acumulado en el sumador
connect(id('tlat'), 0, id('out'), 0);      // y repinta el TOTAL con ese valor

// Reloj: [clocker] -> [+ acumulado] -> cajas de lectura
disconnect(CLOCKER, 0, TTTRIG, 0);
disconnect(CLOCKER, 0, MSTRIG, 0);
connect(CLOCKER, 0, id('add'), 0);
connect(id('add'), 0, id('out'), 0);
connect(id('out'), 0, TTTRIG, 0);
connect(id('out'), 1, MSTRIG, 0);

// Arranque: primero el latch (deja el acumulado en el sumador), luego el clocker.
disconnect(TTSEL, 0, CLOCKER, 0);
disconnect(TTSEL, 0, ZERO_MS, 0);          // `set 0` dejaria el TOTAL a cero
disconnect(TTSEL, 0, ZERO_MMSS, 0);        // idem con `set 0:00.0`
connect(TTSEL, 0, id('start'), 0);
connect(id('start'), 1, id('latch'), 0);
connect(id('start'), 0, CLOCKER, 0);

// ---------------------------------------------------------------- guardar
fs.writeFileSync(FILE, JSON.stringify(patch, null, '\t'));
const added = pat.boxes.filter(b => String(b.box.id).startsWith(PREFIX)).length;
const lines = pat.lines.filter(l => String(l.patchline.source[0]).startsWith(PREFIX) ||
                                    String(l.patchline.destination[0]).startsWith(PREFIX)).length;
console.log(`listo: ${added} objetos obj-ct-*, ${lines} conexiones`);
