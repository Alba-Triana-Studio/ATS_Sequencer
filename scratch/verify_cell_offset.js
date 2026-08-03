// verify_cell_offset.js — comprobaciones sin abrir Max
//
// 1) estructura: objetos y cableado obj-ct-*, y que el clocker ya no alimente directamente
//    las cajas de lectura ni obj-tt-sel arranque los mensajes `set 0`
// 2) simulacion: mini-interprete del flujo de mensajes de Max sobre el subgrafo real
//    (trigger / int / pack / prepend / del / gate / == / + / clocker / sprintf / js),
//    con el codigo REAL de cell_times.js corriendo dentro (File y post con stubs)

const fs = require('fs');
const path = require('path');
const vm = require('vm');

const ROOT = path.join(__dirname, '..');
const pat = JSON.parse(fs.readFileSync(path.join(ROOT, 'ATS_Sequencer.maxpat'), 'utf8')).patcher;
const boxes = new Map(pat.boxes.map(b => [b.box.id, b.box]));
const lines = pat.lines.map(l => l.patchline);

let fail = 0;
const ok = (c, m) => { console.log((c ? '  ok   ' : '  FAIL ') + m); if (!c) fail++; };

const out = (id, o) => lines.filter(l => l.source[0] === id && (o === undefined || l.source[1] === o))
  .map(l => `${l.destination[0]}:${l.destination[1]}`).sort();
const has = (id, o, dst) => out(id, o).includes(dst);

const PRESET = 'obj-3', DOMAIN = 'obj-12', PLAY = 'obj-59', LOADER = 'obj-10002';
const CLOCKER = 'obj-tt-clocker', TTSEL = 'obj-tt-sel';
const id = s => 'obj-ct-' + s;

// =====================================================================  1) estructura
console.log('== estructura ==');
['js', 'i', 'val', 'tofs', 'notplay', 'dgate', 'latch', 'tlat', 'add', 'out', 'start',
 'rcap', 'scap', 'del', 'cellstore', 'domstore', 'tbb', 'pack', 'learn', 'qry', 'mzero']
  .forEach(s => ok(boxes.has(id(s)), `${id(s)} existe`));

ok(fs.existsSync(path.join(ROOT, 'cell_times.js')), 'cell_times.js existe junto al patch');

ok(has(PRESET, 1, `${id('qry')}:0`), 'recall (outlet 1) -> prepend query');
ok(has(PRESET, 1, `${id('rcap')}:0`), 'recall (outlet 1) -> captura de duracion');
ok(has(PRESET, 3, `${id('scap')}:0`), 'store  (outlet 3) -> captura de duracion');
ok(has(DOMAIN, 0, `${id('domstore')}:1`), 'obj-12 -> inlet frio del int de duracion');
ok(has(id('rcap'), 1, `${id('cellstore')}:1`) && has(id('rcap'), 0, `${id('del')}:0`),
  't b i: primero guarda la celda, luego arranca el del');
ok(has(id('tbb'), 1, `${id('domstore')}:0`) && has(id('tbb'), 0, `${id('cellstore')}:0`),
  't b b: primero la duracion (inlet frio del pack), luego la celda (dispara)');
ok(has(id('pack'), 0, `${id('learn')}:0`) && has(id('learn'), 0, `${id('js')}:0`),
  'pack -> prepend learn -> js');
ok(has(LOADER, 0, `${id('js')}:0`), 'smart_load.js manda tambien el `read` a cell_times.js');
ok(has('obj-838', 0, `${id('mzero')}:0`) && has(id('mzero'), 0, `${id('js')}:0`),
  'Clear all presets vacia la tabla');

ok(has(id('js'), 0, `${id('i')}:0`) && has(id('i'), 0, `${id('tofs')}:0`), 'js -> int -> t i i');
ok(has(id('tofs'), 1, `${id('latch')}:1`), 'acumulado -> inlet FRIO del latch');
ok(has(id('tofs'), 0, `${id('dgate')}:1`), 'acumulado -> inlet de datos del gate de pantalla');
ok(has(PLAY, 0, `${id('notplay')}:0`) && has(id('notplay'), 0, `${id('dgate')}:0`),
  'obj-59 -> == 0 -> control del gate (cerrado mientras suena)');
ok(has(id('latch'), 0, `${id('tlat')}:0`) && has(id('tlat'), 1, `${id('add')}:1`) &&
   has(id('tlat'), 0, `${id('out')}:0`), 'latch -> t i i -> inlet frio del + y repintado');

ok(!has(CLOCKER, 0, 'obj-tt-trig:0'), 'el clocker YA NO alimenta directamente el TOTAL m:s');
ok(!has(CLOCKER, 0, 'obj-ttx-tot-i:0'), 'el clocker YA NO alimenta directamente el TOTAL ms');
ok(has(CLOCKER, 0, `${id('add')}:0`) && has(id('add'), 0, `${id('out')}:0`), 'clocker -> + -> t i i');
ok(has(id('out'), 0, 'obj-tt-trig:0') && has(id('out'), 1, 'obj-ttx-tot-i:0'),
  'la salida sumada alimenta las dos cajas de lectura');

ok(!has(TTSEL, 0, `${CLOCKER}:0`), 'obj-tt-sel ya no arranca el clocker directamente');
ok(!has(TTSEL, 0, 'obj-ttx-tot-zero:0') && !has(TTSEL, 0, 'obj-ttx-tot-zero-ms:0'),
  'los mensajes `set 0` / `set 0:00.0` ya no se disparan al arrancar');
ok(has(TTSEL, 0, `${id('start')}:0`), 'obj-tt-sel -> t b b de arranque');
ok(has(id('start'), 1, `${id('latch')}:0`) && has(id('start'), 0, `${CLOCKER}:0`),
  't b b: primero congela el acumulado, luego arranca el clocker');

const ctIds = new Set([...boxes.keys()].filter(k => k.startsWith('obj-ct-')));
const dangling = lines.filter(l =>
  (ctIds.has(l.source[0]) || ctIds.has(l.destination[0])) &&
  (!boxes.has(l.source[0]) || !boxes.has(l.destination[0])));
ok(dangling.length === 0, 'sin conexiones colgantes en obj-ct-*');
const badIdx = lines.filter(l => {
  const s = boxes.get(l.source[0]), d = boxes.get(l.destination[0]);
  if (!s || !d) return false;
  if (!ctIds.has(l.source[0]) && !ctIds.has(l.destination[0])) return false;
  return l.source[1] >= (s.numoutlets || 0) || l.destination[1] >= (d.numinlets || 0);
});
ok(badIdx.length === 0, 'inlets/outlets dentro de rango: ' +
  (badIdx.map(l => `${l.source[0]}:${l.source[1]}->${l.destination[0]}:${l.destination[1]}`).join(', ') || 'todos'));

// =====================================================================  2) simulador
const V = {};        // id -> valor guardado (int / number / pack / +)
const CTRL = {};     // id -> control del gate
const PK = {};       // id -> inlet derecho del pack
let DEFER = [];      // bangs pendientes de los [del]
let unknown = new Set();

function text(i) { const b = boxes.get(i); return b ? (b.text || '') : ''; }
function cls(i) { const b = boxes.get(i); return b ? b.maxclass : '?'; }

function emit(i, outlet, m, depth) {
  lines.filter(l => l.source[0] === i && l.source[1] === outlet)
    .forEach(l => send(l.destination[0], l.destination[1], m, depth + 1));
}

// --- el objeto js real, en un sandbox -------------------------------------------------
function makeFile(name) {
  const p = fs.existsSync(path.join(ROOT, name)) ? path.join(ROOT, name) : null;
  const txt = p ? fs.readFileSync(p, 'utf8') : '';
  return {
    isopen: !!p, position: 0, eof: txt.length,
    readstring(n) { const s = txt.substr(this.position, n); this.position += s.length; return s; },
    close() { this.isopen = false; }
  };
}
const jsLog = [];
const sandbox = {
  outlet: (n, v) => emit(id('js'), n, ['int', v], 0),
  post: s => jsLog.push(String(s).trim()),
  File: function (name) { return makeFile(name); },
  Math, JSON, Array, String, Number, parseInt, parseFloat
};
vm.createContext(sandbox);
vm.runInContext(fs.readFileSync(path.join(ROOT, 'cell_times.js'), 'utf8'), sandbox, 'cell_times.js');

function send(i, inlet, m, depth) {
  if (depth > 200) throw new Error('bucle infinito en ' + i);
  const k = cls(i), t = text(i).trim();

  if (i === id('js')) {
    if (typeof sandbox[m[0]] !== 'function') { unknown.add('js no entiende ' + m[0]); return; }
    sandbox[m[0]].apply(null, m.slice(1));
    return;
  }
  if (k === 'number') {
    if (m[0] === 'set') { V[i] = m[1]; return; }
    if (m[0] === 'bang') { if (V[i] === undefined) return; return emit(i, 0, ['int', V[i]], depth); }
    if (m[0] === 'int' || m[0] === 'float') { V[i] = Math.round(m[1]); return emit(i, 0, ['int', V[i]], depth); }
    return;
  }
  if (k === 'message') {
    if (inlet !== 0) return;
    if (m[0] === 'set') { V[i] = m.slice(1).join(' '); return; }   // `set`: pinta, no emite
    const n = Number(t);
    if (!isNaN(n) && t !== '') return emit(i, 0, ['int', n], depth);
    if (/^set /.test(t)) return emit(i, 0, ['set', t.slice(4)], depth);
    return emit(i, 0, t.split(/\s+/), depth);
  }
  if (k === 'toggle') { V[i] = m[1]; return emit(i, 0, ['int', m[1]], depth); }
  if (k === 'button') return emit(i, 0, ['bang'], depth);
  if (k === 'textbutton') {
    if (m[0] === 'set') { V[i] = m[1]; return; }
    if (m[0] === 'int') { V[i] = m[1]; return emit(i, 0, ['int', m[1]], depth); }
    return;
  }
  if (k === 'newobj') {
    if (/^t(rigger)? /.test(t)) {
      const args = t.split(/\s+/).slice(1);
      for (let o = args.length - 1; o >= 0; o--) {
        const a = args[o];
        if (a === 'b') emit(i, o, ['bang'], depth);
        else if (a === 'i') emit(i, o, ['int', Math.round(m[1])], depth);
        else if (a === 'f') emit(i, o, ['float', m[1]], depth);
      }
      return;
    }
    if (t === 'int' || t === 'i') {
      if (inlet === 1) { V[i] = Math.round(m[1]); return; }
      if (m[0] === 'bang') { return emit(i, 0, ['int', V[i] || 0], depth); }
      V[i] = Math.round(m[1]);
      return emit(i, 0, ['int', V[i]], depth);
    }
    if (/^pack /.test(t)) {
      if (inlet === 1) { PK[i] = m[1]; return; }
      return emit(i, 0, ['list', Math.round(m[1]), PK[i] || 0], depth);
    }
    if (/^prepend /.test(t)) {
      const word = t.split(/\s+/)[1];
      const rest = (m[0] === 'list' || m[0] === 'int' || m[0] === 'float') ? m.slice(1) : m;
      return emit(i, 0, [word].concat(rest), depth);
    }
    if (/^del(ay)? /.test(t)) { DEFER.push(i); return; }
    if (/^sel(ect)? /.test(t)) {
      const args = t.split(/\s+/).slice(1).map(Number);
      const j = args.indexOf(m[1]);
      if (j >= 0) return emit(i, j, ['bang'], depth);
      return emit(i, args.length, m, depth);
    }
    if (/^== /.test(t)) {
      const a = Number(t.split(/\s+/)[1]);
      if (inlet !== 0) return;
      return emit(i, 0, ['int', m[1] === a ? 1 : 0], depth);
    }
    if (/^\+ /.test(t)) {
      if (inlet === 1) { V[i] = m[1]; return; }
      const base = V[i] === undefined ? Number(t.split(/\s+/)[1]) : V[i];
      return emit(i, 0, ['int', Math.round(m[1]) + base], depth);
    }
    if (/^- /.test(t)) return emit(i, 0, ['int', Math.round(m[1]) - Number(t.split(/\s+/)[1])], depth);
    if (/^\/ /.test(t)) return emit(i, 0, ['int', Math.floor(m[1] / Number(t.split(/\s+/)[1]))], depth);
    if (/^% /.test(t)) return emit(i, 0, ['int', Math.round(m[1]) % Number(t.split(/\s+/)[1])], depth);
    if (/^clip /.test(t)) {
      const [lo, hi] = t.split(/\s+/).slice(1).map(Number);
      return emit(i, 0, ['int', Math.min(hi, Math.max(lo, m[1]))], depth);
    }
    if (/^gate/.test(t)) {
      if (inlet === 0) { CTRL[i] = m[1]; return; }
      const open = CTRL[i] === undefined ? Number(t.split(/\s+/)[2] || 0) : CTRL[i];
      if (open) return emit(i, 0, m, depth);
      return;
    }
    if (/^clocker/.test(t)) return;                 // se pincha a mano en la simulacion
    if (/^sprintf set %i:%02i\.%i/.test(t)) {
      if (inlet > 0) { V[i + '_' + inlet] = m[1]; return; }
      const mi = Math.round(m[1]), se = V[i + '_1'] || 0, de = V[i + '_2'] || 0;
      return emit(i, 0, ['set', `${mi}:${String(se).padStart(2, '0')}.${de}`], depth);
    }
    if (/^js /.test(t)) return;                     // otros js: fuera del alcance
    unknown.add(i + ' [' + t + ']');
    return;
  }
  if (k === 'preset' || k === 'function' || k === 'comment' || k === 'panel') return;
  unknown.add(i + ' <' + k + '>');
}

const go = (i, inlet, m) => send(i, inlet, m, 0);
const flush = () => { const q = DEFER; DEFER = []; q.forEach(d => emit(d, 0, ['bang'], 0)); };
const mmss = () => V['obj-tt-display'];
const totms = () => V['obj-ttx-disp-totms'];
const offset = () => V[id('val')];

// [preset] restaura los number box sin que emitan; luego dispara el outlet 1 y, dentro de esa
// misma cadena, obj-486 rebangea obj-12 (por eso la duracion llega antes del `del 50`).
function recall(cell, domainMs) {
  V[DOMAIN] = domainMs;
  go(PRESET, 0, ['bang']);                 // (sin efecto: los clientes no emiten)
  emit(PRESET, 1, ['int', cell], 0);       // recall
  go(DOMAIN, 0, ['bang']);                 // obj-486
  flush();                                 // vence el del 50
}
function store(cell, domainMs) {
  go(DOMAIN, 0, ['int', domainMs]);
  emit(PRESET, 3, ['int', cell], 0);
  flush();
}
const play = on => go(PLAY, 0, ['int', on ? 1 : 0]);
const tick = ms => emit(CLOCKER, 0, ['int', ms], 0);

console.log('== simulacion: carga de un .maxpresets ==');
const FIXT = 'saved tmp/C426_V1.maxpresets';
const raw = JSON.parse(fs.readFileSync(path.join(ROOT, FIXT), 'utf8')).preset_data;
const durOf = data => { let i = 0; while (i < data.length) { const L = data[i];
  if (data[i + 1] === 'obj-12' && data[i + 3] === 'int') return data[i + 4]; i += L; } return 0; };
const DUR = {};
raw.forEach(p => { DUR[p.number] = durOf(p.data); });
// solo cuentan las celdas anteriores de la MISMA FILA (20 columnas)
const cum = n => { let s = 0; for (let i = Math.floor((n - 1) / 20) * 20 + 1; i < n; i++) s += (DUR[i] || 0); return s; };
emit(LOADER, 0, ['read', FIXT], 0);
ok(/\d+ duraciones leidas/.test(jsLog.join(' ')), 'cell_times leyo el archivo: ' + jsLog.join(' | '));

console.log('== simulacion: clic en una celda (parado) ==');
go(PRESET, 1, ['int', 1]);
recall(1, DUR[1]);
ok(offset() === 0, `celda 1 -> acumulado 0 (${offset()})`);
ok(totms() === '0' || Number(totms()) === 0, `TOTAL ms muestra 0 (${totms()})`);

recall(4, DUR[4]);
ok(offset() === cum(4), `celda 4 -> acumulado ${cum(4)} ms (${offset()})`);
ok(Number(totms()) === cum(4), `la caja TOTAL ms muestra ${cum(4)} (${totms()})`);
const exp4 = `${Math.floor(cum(4) / 60000)}:${String(Math.floor(cum(4) % 60000 / 1000)).padStart(2, '0')}.${Math.floor(cum(4) % 1000 / 100)}`;
ok(mmss() === exp4, `la caja TOTAL m:s muestra ${exp4} (${mmss()})`);

console.log('== simulacion: Play desde esa celda ==');
play(true);
ok(Number(totms()) === cum(4), `al arrancar, el TOTAL sigue en el acumulado (${totms()})`);
tick(100);
ok(Number(totms()) === cum(4) + 100, `100 ms -> ${cum(4) + 100} (${totms()})`);
tick(2500);
ok(Number(totms()) === cum(4) + 2500, `2500 ms -> ${cum(4) + 2500} (${totms()})`);
const t2 = cum(4) + 2500;
const expT = `${Math.floor(t2 / 60000)}:${String(Math.floor(t2 % 60000 / 1000)).padStart(2, '0')}.${Math.floor(t2 % 1000 / 100)}`;
ok(mmss() === expT, `TOTAL m:s = ${expT} (${mmss()})`);

console.log('== simulacion: Play Full Piece encadena celdas sin reiniciar ==');
recall(5, DUR[5]);
ok(Number(totms()) === t2, `el recall de la celda 5 no pisa el reloj en marcha (${totms()})`);
tick(4000);
ok(Number(totms()) === cum(4) + 4000, `el reloj sigue sumando desde el mismo acumulado (${totms()})`);

console.log('== simulacion: parar y elegir otra celda ==');
play(false);
recall(3, DUR[3]);
ok(Number(totms()) === cum(3), `parado, la celda 3 muestra su acumulado ${cum(3)} (${totms()})`);
play(true);
tick(0);
ok(Number(totms()) === cum(3), `Play arranca desde ${cum(3)} (${totms()})`);
play(false);

console.log('== simulacion: guardar una celda actualiza la tabla ==');
store(2, 7000);
const nuevo = cum(3) - (DUR[2] || 0) + 7000;
recall(3, DUR[3]);
ok(offset() === nuevo, `tras guardar 7000 ms en la celda 2, el acumulado de la 3 es ${nuevo} (${offset()})`);

console.log('== simulacion: cada fila es una secuencia independiente ==');
recall(21, 30000);                       // primera celda de la fila 2
ok(offset() === 0, `la celda 21 (inicio de la fila 2) arranca en 0 (${offset()})`);
store(22, 5000);
recall(23, 1000);
ok(offset() === 35000, `la celda 23 acumula solo su fila (30000+5000) (${offset()})`);
recall(41, 1000);
ok(offset() === 0, `la fila 3 no arrastra nada de las filas anteriores (${offset()})`);

console.log('== simulacion: celdas vacias cuentan 0 ==');
recall(500, 1000);
ok(offset() === 0, `la celda 500, con su fila vacia, acumula 0 (${offset()})`);

console.log('== simulacion: Clear all presets ==');
go('obj-838', 0, ['int', 1]);
ok(offset() === 0, `la tabla queda vacia (${offset()})`);

// El simulador alcanza tambien el resto del patch (audio, autoplay...); solo se exige
// entender los objetos de las cadenas del acumulado y de las cajas de lectura.
const mine = [...unknown].filter(u => /^obj-(ct|tt|ttx)-/.test(u));
ok(mine.length === 0, 'sin objetos desconocidos en las cadenas obj-ct-/obj-tt-: ' + (mine.join(', ') || 'ninguno'));
console.log(fail === 0 ? '\nTODO OK' : `\n${fail} FALLOS`);
process.exit(fail === 0 ? 0 : 1);
