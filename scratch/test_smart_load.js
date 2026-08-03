// Ejecuta la logica de smart_load.js fuera de Max, con stubs de File/post/outlet.
const fs = require('fs');
const vm = require('vm');

const src = fs.readFileSync('smart_load.js', 'utf8');
const posts = [];
const emitted = [];

function makeFile(path, mode) {
  const self = {
    isopen: true, position: 0, eof: 0, _buf: '',
    readstring(n) {
      const s = self._data.substr(self.position, n);
      self.position += s.length;
      return s;
    },
    writestring(s) { self._buf += s; },
    close() {
      self.isopen = false;
      if (mode === 'write') fs.writeFileSync('scratch/' + path, self._buf);
    },
  };
  if (mode === 'read') {
    self._data = fs.readFileSync(path, 'utf8');
    self.eof = self._data.length;
  }
  return self;
}

const ctx = {
  autowatch: 0, inlet: 0, messagename: '',
  File: function (p, m) { return makeFile(p, m); },
  post: m => posts.push(String(m).trim()),
  outlet: (...a) => emitted.push(a),
  console,
};
vm.createContext(ctx);
vm.runInContext(src, ctx);

const target = process.argv[2] || 'temp_load_1.json';
ctx.messagename = target;
ctx.anything();

console.log('POST:', posts.join(' | '));
console.log('OUTLET:', JSON.stringify(emitted));

// --- validacion del resultado ---
const out = JSON.parse(fs.readFileSync('scratch/temp_load_1.json', 'utf8'));
const MAPS = [
  ['obj-12', 'obj-5', 'obj-6', 'obj-77', 'obj-2'],
  ['obj-195', 'obj-188', 'obj-186', 'obj-194', 'obj-199'],
  ['obj-315', 'obj-308', 'obj-306', 'obj-314', 'obj-319'],
  ['obj-781', 'obj-774', 'obj-772', 'obj-780', 'obj-785'],
];
const known = new Set([...MAPS.flat(), 'obj-append-mat-1']);

function split(d) {
  const o = []; let i = 0;
  while (i < d.length) { const n = d[i]; if (typeof n !== 'number' || n < 1 || i + n > d.length) { o.push(['<<BAD>>', i, n]); break; } o.push(d.slice(i, i + n)); i += n; }
  return o;
}

let bad = 0, ampNonZero = 0;
const src0 = JSON.parse(fs.readFileSync(target, 'utf8'));
const unified = ctx.isUnified(JSON.parse(fs.readFileSync(target, 'utf8')));
console.log('formato:', unified ? 'UNIFICADO' : 'LEGACY',
            '| presets:', out.preset_data.length, '(origen', src0.preset_data.length + ')');

// Primer bloque de una grafica en el archivo de origen: el que escribio el
// objeto [preset] con los datos reales. Si hay mas bloques son residuo de una
// conversion legacy y el cargador debe descartarlos.
function firstBlockOf(entries, id) {
  let pts = null;
  for (const e of entries) {
    if (e[1] !== id) continue;
    if (e[3] === 'clear') { if (pts) break; pts = []; }
    else if (e[3] === 'add_with_curve') (pts = pts || []).push([e[4], e[5]]);
  }
  return pts;
}

for (const pr of out.preset_data) {
  const entries = split(pr.data);
  for (const e of entries) {
    if (e[0] === '<<BAD>>') { console.log('  ESTRUCTURA INVALIDA preset', pr.number, e); bad++; break; }
    if (!known.has(e[1])) { console.log('  id desconocido:', e[1]); bad++; }
  }
  // las 4 parejas de graficas deben existir, y ninguna repetida: un bloque
  // repetido pisa al anterior al recallar y vacia el canal (bug de 2026-08-03)
  for (let c = 0; c < 4; c++) {
    for (const id of [MAPS[c][3], MAPS[c][4]]) {
      if (!entries.some(e => e[1] === id)) { console.log('  falta grafica', id, 'en preset', pr.number); bad++; }
      const clears = entries.filter(e => e[1] === id && e[3] === 'clear').length;
      if (clears > 1) { console.log('  grafica', id, 'repetida', clears, 'veces en preset', pr.number); bad++; }
    }
    if (c === 0) continue;
    // End Time y Freq Min/Max son globales: no deben aparecer para los canales 2-4
    for (const gone of [MAPS[c][0], MAPS[c][1], MAPS[c][2]])
      if (entries.some(e => e[1] === gone)) { console.log('  ' + gone + ' no deberia estar en el preset'); bad++; }
    if (unified) continue;
    // en un archivo antiguo los canales 2-4 se rellenan en silencio y con el
    // domain del canal 1; en uno unificado llevan los datos reales del usuario
    const A = MAPS[c][4];
    for (const pt of entries.filter(e => e[1] === A && e[3] === 'add_with_curve')) if (pt[5] !== 0) ampNonZero++;
    const dom1 = entries.find(e => e[1] === MAPS[0][0] && e[3] === 'int');
    const domA = entries.find(e => e[1] === A && e[3] === 'domain');
    if (dom1 && domA && domA[4] !== dom1[4]) { console.log('  domain canal', c + 1, 'distinto del End Time del canal 1'); bad++; }
  }
  const orig = split(src0.preset_data.find(x => x.number === pr.number).data);
  // el canal 1 debe conservar los datos que traia el archivo (un slot puede
  // haberse guardado vacio: ahi no hay nada que conservar)
  const ampSrc = orig.some(e => e[3] === 'add_with_curve' &&
                                (e[1] === 'obj-2' || e[1] === MAPS[1][4] || e[1] === MAPS[2][4] || e[1] === MAPS[3][4]));
  if (ampSrc && !entries.some(e => e[1] === 'obj-2' && e[3] === 'add_with_curve')) {
    console.log('  preset', pr.number, 'perdio la amplitud del canal 1'); bad++;
  }
  // en un archivo unificado cada grafica debe quedar igual que su bloque real
  if (unified) {
    for (let c = 0; c < 4; c++) for (const id of [MAPS[c][3], MAPS[c][4]]) {
      const a = firstBlockOf(entries, id), first = firstBlockOf(orig, id);
      if (first && JSON.stringify(a) !== JSON.stringify(first)) {
        console.log('  preset', pr.number, id, 'no coincide con el bloque real del archivo',
                    JSON.stringify(a), '!=', JSON.stringify(first)); bad++;
      }
    }
  }
}
console.log(bad === 0 && ampNonZero === 0
  ? (unified ? 'OK: estructura valida, 4 canales sin duplicados, datos reales intactos'
             : 'OK: estructura valida, canales 2-4 en silencio, canal 1 intacto')
  : 'FALLOS: ' + bad + ' errores, ' + ampNonZero + ' puntos de amp != 0');
