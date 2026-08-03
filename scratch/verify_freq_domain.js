// verify_freq_domain.js — comprobaciones sin abrir Max
//
// 1) estructura: objetos y cableado obj-fd-*, y que el general ya no escriba directamente
//    en las cajas de canal
// 2) simulacion: mini-interprete del flujo de mensajes de Max sobre el subgrafo real
//    (number / message / trigger / sel / gate / == / prepend set / sprintf / t b i /
//     textbutton), para comprobar los escenarios de uso y el recall de presets
// 3) compatibilidad: se ejecutan las funciones reales de smart_load.js sobre los
//    .maxpresets de ejemplo y el resultado se "recalla" en la simulacion

const fs = require('fs');
const path = require('path');
const ROOT = path.join(__dirname, '..');
const pat = JSON.parse(fs.readFileSync(path.join(ROOT, 'ATS_Sequencer.maxpat'), 'utf8')).patcher;
const boxes = new Map(pat.boxes.map(b => [b.box.id, b.box]));
const lines = pat.lines.map(l => l.patchline);

let fail = 0;
const ok = (c, m) => { console.log((c ? '  ok   ' : '  FAIL ') + m); if (!c) fail++; };

const out = (id, o) => lines.filter(l => l.source[0] === id && (o === undefined || l.source[1] === o))
  .map(l => `${l.destination[0]}:${l.destination[1]}`).sort();
const has = (id, o, dst) => out(id, o).includes(dst);

const GMIN = 'obj-5', GMAX = 'obj-6';
const CH = [
  { min: 'obj-fd-min-0', max: 'obj-fd-max-0', sprintf: 'obj-13',  tbi: 'obj-19',  fn: 'obj-77',  panel: 'obj-70' },
  { min: 'obj-188',      max: 'obj-186',      sprintf: 'obj-185', tbi: 'obj-184', fn: 'obj-194', panel: 'obj-71' },
  { min: 'obj-308',      max: 'obj-306',      sprintf: 'obj-305', tbi: 'obj-303', fn: 'obj-314', panel: 'obj-72' },
  { min: 'obj-774',      max: 'obj-772',      sprintf: 'obj-771', tbi: 'obj-770', fn: 'obj-780', panel: 'obj-73' }
];

// =====================================================================  1) estructura
console.log('== estructura por canal ==');
CH.forEach((c, n) => {
  const id = s => `obj-fd-${s}-${n}`;
  ['btn', 'ovr', 't', 'tbtn', 'setbtn', 'inv', 'sel0', 'tg', 'gmin', 'gmax', 'setmin', 'setmax',
   'one', 'rgate', 'trec'].forEach(s => ok(boxes.has(id(s)), `${id(s)} existe`));

  ok(has(id('btn'), 0, `${id('tbtn')}:0`), `boton Global/Own ${n} -> t i i`);
  ok(has(id('tbtn'), 1, `${id('ovr')}:0`), `t i i o1 (1º) -> flag`);
  ok(has(id('tbtn'), 0, `${id('sel0')}:0`), `t i i o0 (2º) -> sel 0`);
  ok(has(id('ovr'), 0, `${id('t')}:0`), `flag ${n} -> t i i i`);
  ok(has(id('t'), 2, `${id('setbtn')}:0`) && has(id('setbtn'), 0, `${id('btn')}:0`),
    `t o2 (1º) -> prepend set -> boton`);
  ok(has(id('t'), 1, `${id('rgate')}:0`), `t o1 (2º) -> control del gate de recall`);
  ok(has(id('t'), 0, `${id('inv')}:0`), `t o0 (3º) -> == 0`);
  ok(has(id('inv'), 0, `${id('gmin')}:0`) && has(id('inv'), 0, `${id('gmax')}:0`),
    `== 0 -> control de los gates del general`);
  ok(out(id('ovr'), 0).join() === `${id('t')}:0`,
    `el flag ${n} NO re-propaga el general (solo reparte estado)`);
  ok(has(id('sel0'), 0, `${id('tg')}:0`), `sel 0 (volver a Global) -> t b b`);
  ok(has(id('tg'), 1, `${GMAX}:0`) && has(id('tg'), 0, `${GMIN}:0`),
    `t b b: rebangea primero el maximo general, luego el minimo`);

  ok(has(GMIN, 0, `${id('gmin')}:1`) && has(GMAX, 0, `${id('gmax')}:1`),
    `general -> inlet de datos de los gates ${n}`);
  ok(has(id('gmin'), 0, `${id('setmin')}:0`) && has(id('setmin'), 0, `${c.min}:0`),
    `gate min -> prepend set -> caja min (solo pinta)`);
  ok(has(id('gmax'), 0, `${id('setmax')}:0`) && has(id('setmax'), 0, `${c.max}:0`),
    `gate max -> prepend set -> caja max (solo pinta)`);
  ok(has(id('gmin'), 0, `${c.sprintf}:0`), `gate min -> sprintf range (inlet caliente)`);
  ok(has(id('gmax'), 0, `${c.tbi}:0`), `gate max -> t b i -> sprintf range`);

  ok(has(c.min, 0, `${c.sprintf}:0`), `caja min ${n} -> sprintf range`);
  ok(has(c.max, 0, `${c.tbi}:0`), `caja max ${n} -> t b i`);
  ok(has(c.min, 0, `${id('one')}:0`) && has(c.max, 0, `${id('one')}:0`),
    `escribir en una caja ${n} -> msg 1`);
  ok(has(id('one'), 0, `${id('ovr')}:0`), `msg 1 -> flag (pasa a Own)`);
  ok(has(id('rgate'), 0, `${id('trec')}:0`) && has(id('trec'), 1, `${c.max}:0`) &&
     has(id('trec'), 0, `${c.min}:0`), `gate de recall -> rebangea max y min propios`);

  // el general ya NO escribe directo en la caja del canal
  ok(!has(GMIN, 0, `${c.min}:0`), `${GMIN} ya no escribe directo en ${c.min}`);
  ok(!has(GMAX, 0, `${c.max}:0`), `${GMAX} ya no escribe directo en ${c.max}`);

  // clientes de [preset]
  ok(has('obj-3', 0, `${c.min}:0`) && has('obj-3', 0, `${c.max}:0`) &&
     has('obj-3', 0, `${id('ovr')}:0`), `canal ${n}: min/max/flag son clientes de [preset]`);

  // presentacion dentro del panel
  const p = boxes.get(c.panel).presentation_rect;
  [id('btn'), c.min, c.max].forEach(bid => {
    const r = boxes.get(bid).presentation_rect;
    ok(!!r && r[0] >= p[0] - 1 && r[0] + r[2] <= p[0] + p[2] + 1 &&
       r[1] >= p[1] - 1 && r[1] + r[3] <= p[1] + p[3] + 1,
      `${bid} dentro del panel ${c.panel}`);
  });
});

console.log('== recall e init ==');
ok(has('obj-3', 1, 'obj-fd-rseq:0'), 'preset outlet1 -> obj-fd-rseq');
ok(!has('obj-3', 1, 'obj-486:0'), 'preset outlet1 ya no va directo al button obj-486');
ok(has('obj-fd-rseq', 2, 'obj-fd-tref:0'), 'rseq o2 (1º) -> refrescar flags');
ok(has('obj-fd-rseq', 1, 'obj-486:0'), 'rseq o1 (2º) -> obj-486 (rebangea el general)');
ok(has('obj-fd-rseq', 0, 'obj-fd-trg:0'), 'rseq o0 (3º) -> reaplicar valores propios');
CH.forEach((c, n) => {
  ok(has('obj-fd-tref', 3 - n, `obj-fd-ovr-${n}:0`), `tref o${3 - n} -> flag ${n}`);
  ok(has('obj-fd-trg', 3 - n, `obj-fd-rgate-${n}:1`), `trg o${3 - n} -> datos del gate de recall ${n}`);
});
ok(has('obj-fd-lb', 0, 'obj-fd-del:0') && has('obj-fd-del', 0, 'obj-fd-tinit:0'),
  'loadbang -> del -> t b b');
ok(has('obj-fd-tinit', 1, 'obj-fd-zero:0'), 'init o1 (1º) -> msg 0 (los 4 en Global)');
ok(has('obj-fd-tinit', 0, 'obj-fd-tgi:0') && has('obj-fd-tgi', 1, `${GMAX}:0`) &&
   has('obj-fd-tgi', 0, `${GMIN}:0`), 'init o0 (2º) -> rebangea el general');
CH.forEach((c, n) => ok(has('obj-fd-zero', 0, `obj-fd-ovr-${n}:0`), `init: msg 0 -> flag ${n}`));

console.log('== loadbangs que escribian en las cajas de canal ==');
[['obj-121', 'obj-186'], ['obj-121', 'obj-188'], ['obj-248', 'obj-306'], ['obj-248', 'obj-308'],
 ['obj-718', 'obj-772'], ['obj-718', 'obj-774'], ['obj-490', 'obj-306'], ['obj-490', 'obj-308']]
  .forEach(([s, d]) => ok(!out(s).includes(`${d}:0`), `${s} ya no escribe en ${d}`));

console.log('== cadena original intacta ==');
CH.forEach((c, n) => {
  ok(has(c.sprintf, 0, `${c.fn}:0`), `sprintf range ${n} -> ${c.fn}`);
  ok(has(c.tbi, 1, `${c.sprintf}:1`) && has(c.tbi, 0, `${c.sprintf}:0`), `t b i ${n} -> sprintf`);
  ok(out(c.fn, 1).length > 0, `${c.fn} outlet1 -> curve~ sigue conectado`);
});

// =====================================================================  2) simulador
// Interprete minimo de Max: profundidad primero, un mensaje por conexion.
const V = {};                    // id -> valor guardado (number/textbutton)
const CTRL = {};                 // id -> control del gate
const SP = {};                   // id -> segundo argumento guardado del sprintf
const RANGE = {};                // fnFreqN -> ultimo `range min max` recibido
let unknown = new Set();

function text(id) { const b = boxes.get(id); return b ? (b.text || '') : ''; }
function cls(id) { const b = boxes.get(id); return b ? b.maxclass : '?'; }

function emit(id, outlet, m, depth) {
  lines.filter(l => l.source[0] === id && l.source[1] === outlet)
    .forEach(l => send(l.destination[0], l.destination[1], m, depth + 1));
}

function send(id, inlet, m, depth) {
  if (depth > 200) throw new Error('bucle infinito en ' + id);
  const k = cls(id), t = text(id).trim();

  if (k === 'number') {
    if (m[0] === 'set') { V[id] = m[1]; return; }               // set: no reemite
    if (m[0] === 'bang') { if (V[id] === undefined) return; return emit(id, 0, ['int', V[id]], depth); }
    if (m[0] === 'int' || m[0] === 'float') { V[id] = Math.round(m[1]); return emit(id, 0, ['int', V[id]], depth); }
    return;
  }
  if (k === 'message') {
    if (inlet !== 0) return;
    const n = Number(t);
    if (!isNaN(n)) return emit(id, 0, ['int', n], depth);
    if (/\$1/.test(t)) return;                                   // `minimum $1` etc: sumidero
    return;
  }
  if (k === 'textbutton') {
    if (m[0] === 'set') { V[id] = m[1]; return; }
    if (m[0] === 'int') { V[id] = m[1]; return emit(id, 0, ['int', m[1]], depth); }
    return;
  }
  if (k === 'newobj') {
    if (/^t(rigger)? /.test(t)) {
      const args = t.split(/\s+/).slice(1);
      for (let o = args.length - 1; o >= 0; o--) {               // derecha a izquierda
        const a = args[o];
        if (a === 'b') emit(id, o, ['bang'], depth);
        else if (a === 'i') emit(id, o, ['int', Math.round(m[1])], depth);
        else if (a === 'f') emit(id, o, ['float', m[1]], depth);
      }
      return;
    }
    if (/^sel(ect)? /.test(t)) {
      const args = t.split(/\s+/).slice(1).map(Number);
      const i = args.indexOf(m[1]);
      if (i >= 0) return emit(id, i, ['bang'], depth);
      return emit(id, args.length, m, depth);
    }
    if (/^== /.test(t)) {
      const a = Number(t.split(/\s+/)[1]);
      if (inlet !== 0) return;
      return emit(id, 0, ['int', m[1] === a ? 1 : 0], depth);
    }
    if (t === 'gate') {
      if (inlet === 0) { CTRL[id] = m[1]; return; }
      if (CTRL[id]) return emit(id, 0, m, depth);
      return;
    }
    if (t === 'prepend set') return emit(id, 0, ['set', m[1]], depth);
    if (/^sprintf range/.test(t)) {
      if (inlet === 1) { SP[id] = m[1]; return; }
      if (inlet !== 0) return;
      if (m[0] !== 'bang') SP[id + '_a'] = m[1];
      return emit(id, 0, ['range', SP[id + '_a'], SP[id]], depth);
    }
    if (t === 'loadbang' || /^del(ay)? /.test(t)) return emit(id, 0, ['bang'], depth);
    unknown.add(id + ' [' + t + ']');
    return;
  }
  if (k === 'button') return emit(id, 0, ['bang'], depth);
  if (k === 'function') { if (m[0] === 'range') RANGE[id] = [m[1], m[2]]; return; }
  if (k === 'preset') return;
  unknown.add(id + ' <' + k + '>');
}

const go = (id, inlet, m) => send(id, inlet, m, 0);
const ranges = () => CH.map(c => (RANGE[c.fn] || []).join('-'));
const flags = () => CH.map((c, n) => V[`obj-fd-ovr-${n}`]);
const shown = () => CH.map(c => `${V[c.min]}-${V[c.max]}`);
const labels = () => CH.map((c, n) => V[`obj-fd-btn-${n}`]);

console.log('== simulacion: arranque y Freq. Domain general ==');
go('obj-fd-lb', 0, ['bang']);                                    // init: los 4 en Global
go(GMAX, 0, ['int', 55]);
go(GMIN, 0, ['int', 25]);
ok(ranges().every(r => r === '25-55'), 'el general 25/55 llega a las 4 graficas: ' + ranges().join(' | '));
ok(shown().every(s => s === '25-55'), 'las cajas de cada grafica reflejan el general: ' + shown().join(' | '));
ok(flags().every(f => f === 0), 'los 4 canales siguen en Global');

console.log('== simulacion: una grafica define su propio dominio ==');
go(CH[2].max, 0, ['int', 400]);
go(CH[2].min, 0, ['int', 100]);
ok(ranges()[2] === '100-400', 'grafica 3 pasa a 100-400: ' + ranges()[2]);
ok(ranges().filter((r, i) => i !== 2).every(r => r === '25-55'), 'las otras 3 no se tocan');
ok(flags()[2] === 1 && flags().filter((f, i) => i !== 2).every(f => f === 0), 'solo la grafica 3 en Own');
ok(labels()[2] === 1, 'el boton de la grafica 3 muestra Own');

console.log('== simulacion: el general cambia y ya no manda en esa grafica ==');
go(GMAX, 0, ['int', 60]);
go(GMIN, 0, ['int', 30]);
ok(ranges()[2] === '100-400', 'la grafica 3 conserva su dominio propio');
ok(ranges().filter((r, i) => i !== 2).every(r => r === '30-60'), 'las otras 3 pasan a 30-60');
ok(shown()[2] === '100-400', 'las cajas de la grafica 3 conservan lo propio');

console.log('== simulacion: volver a Global con el boton ==');
go('obj-fd-btn-2', 0, ['int', 0]);
ok(ranges()[2] === '30-60', 'la grafica 3 vuelve al general: ' + ranges()[2]);
ok(shown()[2] === '30-60', 'sus cajas se repintan con el general');
ok(flags()[2] === 0, 'flag de la grafica 3 en Global');

// ---------------------------------------------------------------- recall
// [preset] restaura los number box SIN que emitan; luego dispara el outlet 1.
function restore(entries) {
  entries.forEach(e => {
    const id = e[1];
    if (e[2] === 'number' && e[3] === 'int' && boxes.has(id)) V[id] = e[4];
  });
  emit('obj-3', 1, ['int', 1], 0);   // el numero de preset sale por el outlet 1 tras restaurar
}

console.log('== simulacion: recall de un preset con dominios mixtos ==');
RANGE['obj-77'] = RANGE['obj-194'] = RANGE['obj-314'] = RANGE['obj-780'] = null;
restore([
  [5, GMIN, 'number', 'int', 40], [5, GMAX, 'number', 'int', 80],
  [5, 'obj-fd-ovr-0', 'number', 'int', 0],
  [5, CH[0].min, 'number', 'int', 40],  [5, CH[0].max, 'number', 'int', 80],
  [5, 'obj-fd-ovr-1', 'number', 'int', 1],
  [5, CH[1].min, 'number', 'int', 200], [5, CH[1].max, 'number', 'int', 900],
  [5, 'obj-fd-ovr-2', 'number', 'int', 0],
  [5, CH[2].min, 'number', 'int', 40],  [5, CH[2].max, 'number', 'int', 80],
  [5, 'obj-fd-ovr-3', 'number', 'int', 1],
  [5, CH[3].min, 'number', 'int', 12],  [5, CH[3].max, 'number', 'int', 33]
]);
ok(ranges().join(' | ') === '40-80 | 200-900 | 40-80 | 12-33',
  'recall mixto aplicado: ' + ranges().join(' | '));
ok(flags().join() === '0,1,0,1', 'flags restaurados: ' + flags().join());
ok(labels().join() === '0,1,0,1', 'botones repintados: ' + labels().join());

console.log('== simulacion: recall del preset siguiente (todo Global) ==');
restore([
  [5, GMIN, 'number', 'int', 10], [5, GMAX, 'number', 'int', 20],
  [5, 'obj-fd-ovr-0', 'number', 'int', 0], [5, 'obj-fd-ovr-1', 'number', 'int', 0],
  [5, 'obj-fd-ovr-2', 'number', 'int', 0], [5, 'obj-fd-ovr-3', 'number', 'int', 0],
  [5, CH[0].min, 'number', 'int', 10], [5, CH[0].max, 'number', 'int', 20],
  [5, CH[1].min, 'number', 'int', 10], [5, CH[1].max, 'number', 'int', 20],
  [5, CH[2].min, 'number', 'int', 10], [5, CH[2].max, 'number', 'int', 20],
  [5, CH[3].min, 'number', 'int', 10], [5, CH[3].max, 'number', 'int', 20]
]);
ok(ranges().every(r => r === '10-20'), 'las 4 graficas vuelven al general: ' + ranges().join(' | '));
ok(flags().every(f => f === 0), 'los 4 flags en Global');

// =====================================================================  3) smart_load
console.log('== smart_load.js sobre .maxpresets antiguos ==');
const src = fs.readFileSync(path.join(ROOT, 'smart_load.js'), 'utf8');
const sandbox = new Function('post', 'File', 'outlet',
  src + '\nreturn { isUnified: isUnified, loadUnified: loadUnified, convertLegacy: convertLegacy, splitEntries: splitEntries };'
)(() => {}, function () { this.isopen = false; }, () => {});

function runLoader(file) {
  const data = JSON.parse(fs.readFileSync(path.join(ROOT, file), 'utf8'));
  return sandbox.isUnified(data) ? sandbox.loadUnified(data) : sandbox.convertLegacy(data);
}

['scratch/unified_obsolete.maxpresets', 'scratch/legacy_ch2.maxpresets', 'saved tmp/C426_V1.maxpresets']
  .forEach(file => {
    const data = runLoader(file);
    let allOk = true, sample = '';
    data.preset_data.forEach((p, n) => {
      const entries = sandbox.splitEntries(p.data);
      const scal = id => { const e = entries.find(x => x[1] === id); return e ? e[4] : undefined; };
      const gmin = scal(GMIN), gmax = scal(GMAX);
      CH.forEach((c, i) => {
        if (scal(`obj-fd-ovr-${i}`) !== 0) allOk = false;
        if (scal(c.min) === undefined || scal(c.max) === undefined) allOk = false;
      });
      if (n === 0) sample = `general ${gmin}/${gmax}, canales ` +
        CH.map((c, i) => `${scal(c.min)}/${scal(c.max)}:${scal(`obj-fd-ovr-${i}`)}`).join(' ');
    });
    ok(allOk, `${file}: los ${data.preset_data.length} presets traen Freq. Domain por grafica en Global`);
    console.log('         ' + sample);

    // y ese preset, recallado, deja las 4 graficas siguiendo al general
    const entries = sandbox.splitEntries(data.preset_data[0].data);
    RANGE['obj-77'] = RANGE['obj-194'] = RANGE['obj-314'] = RANGE['obj-780'] = null;
    restore(entries);
    const g = `${entries.find(x => x[1] === GMIN)[4]}-${entries.find(x => x[1] === GMAX)[4]}`;
    ok(ranges().every(r => r === g), `${file}: recall -> las 4 graficas en ${g} (${ranges().join(' | ')})`);
  });

console.log('== solapes en presentacion ==');
const news = pat.boxes.map(b => b.box).filter(b => b.presentation === 1 &&
  (String(b.id).startsWith('obj-fd-') || CH.some(c => c.min === b.id || c.max === b.id)));
const others = pat.boxes.map(b => b.box).filter(b => b.presentation === 1 &&
  b.maxclass !== 'panel' && !news.includes(b));
const hit = (a, b) => {
  const [ax, ay, aw, ah] = a.presentation_rect, [bx, by, bw, bh] = b.presentation_rect;
  return ax < bx + bw && bx < ax + aw && ay < by + bh && by < ay + ah;
};
news.forEach(n => {
  const c = others.filter(o => hit(n, o));
  ok(c.length === 0, `${n.id} sin solapes` + (c.length ? ' -> ' + c.map(x => x.id).join(', ') : ''));
});
news.forEach((a, i) => news.slice(i + 1).forEach(b =>
  ok(!hit(a, b), `${a.id} / ${b.id} no se solapan entre si`)));

if (unknown.size) console.log('objetos tratados como sumidero: ' + [...unknown].join(', '));
console.log(fail ? `\n${fail} COMPROBACIONES FALLIDAS` : '\nTodo correcto');
process.exitCode = fail ? 1 : 0;
