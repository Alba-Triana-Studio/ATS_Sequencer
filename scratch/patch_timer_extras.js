/*
 * patch_timer_extras.js  (idempotente)
 *
 * 1) El TOTAL timer pasa a dispararse con el estado global de reproduccion
 *    (obj-59, el toggle PLAY unificado) en vez de solo con Play Full Piece.
 *    obj-59 se pone a 1 con CUALQUIER arranque:
 *      - click directo en PLAY
 *      - Play Full Piece / Play all sequence  (via obj-112 "p mastertoggles" o0)
 *      - Autoplay: click en celda            (via obj-msg-one-0 "1")
 *    y a 0 en cualquier parada (obj-msg-zero-0 / obj-msg-global-stop / motor).
 *
 * 2) Dos cajas nuevas en presentacion: TOTAL en ms y PRESET en ms.
 *      total ms  <- obj-tt-clocker (clocker 100 del total timer)
 *      preset ms <- obj-85 (number del reloj de preset, ya redondeado a 100)
 *
 * 3) Caja nueva COLUMN: columna (1..20) del preset que se reproduce.
 *      obj-3 outlet1 emite el nº de preset tanto al click como al recall
 *      del motor -> col = ((N-1) % 20) + 1
 *
 * Todos los objetos nuevos llevan el prefijo obj-ttx-  (se borran y se
 * reinsertan en cada ejecucion para poder re-correr el script).
 */

const fs = require('fs');
const path = require('path');

const PATCH = path.join(__dirname, '..', 'ATS_Sequencer.maxpat');
const PREFIX = 'obj-ttx-';
const COLS = 20; // columnas de la matriz de presets

const patch = JSON.parse(fs.readFileSync(PATCH, 'utf8'));
const P = patch.patcher;

/* ---------- helpers ---------- */

const boxById = id => {
  const w = P.boxes.find(b => b.box.id === id);
  return w ? w.box : null;
};

const hasLine = (s, so, d, di) =>
  P.lines.some(l => {
    const pl = l.patchline;
    return pl.source[0] === s && pl.source[1] === so &&
           pl.destination[0] === d && pl.destination[1] === di;
  });

const connect = (s, so, d, di) => {
  if (!boxById(s)) throw new Error('connect: falta origen ' + s);
  if (!boxById(d)) throw new Error('connect: falta destino ' + d);
  if (hasLine(s, so, d, di)) return;
  P.lines.push({ patchline: { destination: [d, di], source: [s, so] } });
};

const disconnect = (s, so, d, di) => {
  const before = P.lines.length;
  P.lines = P.lines.filter(l => {
    const pl = l.patchline;
    return !(pl.source[0] === s && pl.source[1] === so &&
             pl.destination[0] === d && pl.destination[1] === di);
  });
  return before - P.lines.length;
};

const addBox = box => {
  if (boxById(box.id)) throw new Error('addBox: id duplicado ' + box.id);
  P.boxes.push({ box });
  return box.id;
};

// objeto Max normal, solo en patching (no presentacion)
const obj = (id, text, x, y, w, nin, nout, outtype) =>
  addBox({
    id, maxclass: 'newobj', text,
    numinlets: nin, numoutlets: nout, outlettype: outtype,
    patching_rect: [x, y, w, 22]
  });

/* ---------- 0. limpiar ejecuciones previas ---------- */

const mine = new Set(P.boxes.filter(b => b.box.id.startsWith(PREFIX)).map(b => b.box.id));
P.boxes = P.boxes.filter(b => !mine.has(b.box.id));
P.lines = P.lines.filter(l => {
  const pl = l.patchline;
  return !mine.has(pl.source[0]) && !mine.has(pl.destination[0]);
});
console.log(`Limpieza: ${mine.size} objetos ${PREFIX}* eliminados.`);

/* ---------- 1. TOTAL timer: disparo global ---------- */

// Fuentes antiguas del total timer (solo Play Full Piece + exclusion mutua)
const OLD_TT_SOURCES = ['obj-109', 'obj-136', 'obj-139', 'obj-146', 'obj-151', 'obj-40'];
let removed = 0;
for (const s of OLD_TT_SOURCES) removed += disconnect(s, 0, 'obj-tt-sel', 0);
console.log(`Total timer: ${removed} conexiones antiguas hacia obj-tt-sel eliminadas.`);

// Nueva fuente: el toggle PLAY unificado (estado global de reproduccion)
connect('obj-59', 0, 'obj-tt-sel', 0);
console.log('Total timer: obj-59 (PLAY global) -> obj-tt-sel conectado.');

/* ---------- posiciones ---------- */

// zona de patching libre, debajo/al lado de la cadena obj-tt-*
const PX = 3420, PY = 430;

// presentacion: banda libre x 198..344, y 0..110 (a la derecha de TOTAL/PRESET)
const LBL_X = 198, LBL_W = 66;
const VAL_X = 266, VAL_W = 78, VAL_H = 24;
const ROW_Y = [4, 38, 72];

const label = (id, text, row) =>
  addBox({
    id, maxclass: 'comment', text,
    numinlets: 1, numoutlets: 0,
    fontname: 'Arial', fontsize: 12, fontface: 1,
    textjustification: 2,
    patching_rect: [PX - 220, PY + row * 120, LBL_W, 20],
    presentation: 1,
    presentation_rect: [LBL_X, ROW_Y[row] + 3, LBL_W, 20]
  });

const display = (id, text, row) =>
  addBox({
    id, maxclass: 'message', text,
    numinlets: 2, numoutlets: 1, outlettype: [''],
    fontname: 'Arial', fontsize: 18,
    bgcolor: [0.301961, 0.301961, 0.301961, 1],
    bgcolor2: [0.301961, 0.301961, 0.301961, 1],
    bgfillcolor_type: 'color',
    bgfillcolor_color: [1, 1, 1, 1],
    bgfillcolor_color1: [0.301961, 0.301961, 0.301961, 1],
    bgfillcolor_color2: [0.2, 0.2, 0.2, 1],
    bgfillcolor_autogradient: 0,
    gradient: 1,
    textcolor: [0.25098, 0.501961, 0, 1],
    patching_rect: [PX - 140, PY + row * 120, VAL_W + 40, VAL_H],
    presentation: 1,
    presentation_rect: [VAL_X, ROW_Y[row], VAL_W, VAL_H]
  });

/* ---------- 2a. TOTAL en milisegundos ---------- */

label(PREFIX + 'lbl-totms', 'TOTAL ms', 0);
obj(PREFIX + 'tot-i', 't i', PX, PY + 40, 30, 1, 1, ['int']);
obj(PREFIX + 'tot-set', 'prepend set', PX, PY + 70, 80, 1, 1, ['']);
display(PREFIX + 'disp-totms', '0', 0);

connect('obj-tt-clocker', 0, PREFIX + 'tot-i', 0);
connect(PREFIX + 'tot-i', 0, PREFIX + 'tot-set', 0);
connect(PREFIX + 'tot-set', 0, PREFIX + 'disp-totms', 0);

// al parar/arrancar de nuevo el clocker vuelve a 0 solo; ademas ponemos 0
// explicito cuando el total timer arranca, para que no quede el valor viejo
// visible durante los primeros 100 ms.
addBox({
  id: PREFIX + 'tot-zero', maxclass: 'message', text: 'set 0',
  numinlets: 2, numoutlets: 1, outlettype: [''],
  patching_rect: [PX + 130, PY + 70, 45, 22]
});
connect('obj-tt-sel', 0, PREFIX + 'tot-zero', 0);
connect(PREFIX + 'tot-zero', 0, PREFIX + 'disp-totms', 0);

// lo mismo para el display m:s que ya existia
addBox({
  id: PREFIX + 'tot-zero-ms', maxclass: 'message', text: 'set 0:00.0',
  numinlets: 2, numoutlets: 1, outlettype: [''],
  patching_rect: [PX + 190, PY + 70, 80, 22]
});
connect('obj-tt-sel', 0, PREFIX + 'tot-zero-ms', 0);
connect(PREFIX + 'tot-zero-ms', 0, 'obj-tt-display', 0);

/* ---------- 2b. PRESET en milisegundos ---------- */

label(PREFIX + 'lbl-prems', 'PRESET ms', 1);
obj(PREFIX + 'pre-i', 't i', PX, PY + 160, 30, 1, 1, ['int']);
obj(PREFIX + 'pre-set', 'prepend set', PX, PY + 190, 80, 1, 1, ['']);
display(PREFIX + 'disp-prems', '0', 1);

connect('obj-85', 0, PREFIX + 'pre-i', 0);
connect(PREFIX + 'pre-i', 0, PREFIX + 'pre-set', 0);
connect(PREFIX + 'pre-set', 0, PREFIX + 'disp-prems', 0);

/* ---------- 3. COLUMN del preset que suena ---------- */

label(PREFIX + 'lbl-col', 'COLUMN', 2);
obj(PREFIX + 'col-clip', 'clip 1 600', PX, PY + 280, 70, 3, 1, ['']);
obj(PREFIX + 'col-sub', '- 1', PX, PY + 310, 32, 2, 1, ['int']);
obj(PREFIX + 'col-mod', '% ' + COLS, PX, PY + 340, 40, 2, 1, ['int']);
obj(PREFIX + 'col-add', '+ 1', PX, PY + 370, 32, 2, 1, ['int']);
obj(PREFIX + 'col-set', 'prepend set', PX, PY + 400, 80, 1, 1, ['']);
display(PREFIX + 'disp-col', '1', 2);

// obj-3 outlet 1 emite el nº de preset tanto al hacer click como al recall
// que hace el motor (p mastertoggles) durante Full Piece / Play all sequence.
connect('obj-3', 1, PREFIX + 'col-clip', 0);
connect(PREFIX + 'col-clip', 0, PREFIX + 'col-sub', 0);
connect(PREFIX + 'col-sub', 0, PREFIX + 'col-mod', 0);
connect(PREFIX + 'col-mod', 0, PREFIX + 'col-add', 0);
connect(PREFIX + 'col-add', 0, PREFIX + 'col-set', 0);
connect(PREFIX + 'col-set', 0, PREFIX + 'disp-col', 0);

/* ---------- guardar ---------- */

fs.writeFileSync(PATCH, JSON.stringify(patch, null, '\t'));
console.log(`Objetos ${PREFIX}*: ${P.boxes.filter(b => b.box.id.startsWith(PREFIX)).length}`);
console.log('OK -> ATS_Sequencer.maxpat');
