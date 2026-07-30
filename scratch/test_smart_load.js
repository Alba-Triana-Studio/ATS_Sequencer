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
console.log('presets:', out.preset_data.length, '(origen', src0.preset_data.length + ')');

for (const pr of out.preset_data) {
  const entries = split(pr.data);
  for (const e of entries) {
    if (e[0] === '<<BAD>>') { console.log('  ESTRUCTURA INVALIDA preset', pr.number, e); bad++; break; }
    if (!known.has(e[1])) { console.log('  id desconocido:', e[1]); bad++; }
  }
  // cada canal 2-4 debe existir y su amplitud debe ser plana a 0
  for (let c = 1; c < 4; c++) {
    const A = MAPS[c][4];
    const pts = entries.filter(e => e[1] === A && e[3] === 'add_with_curve');
    if (!pts.length) { console.log('  falta amp del canal', c + 1, 'en preset', pr.number); bad++; }
    for (const pt of pts) if (pt[5] !== 0) ampNonZero++;
    // End Time y Freq Min/Max son globales: no deben aparecer para los canales 2-4
    for (const gone of [MAPS[c][0], MAPS[c][1], MAPS[c][2]])
      if (entries.some(e => e[1] === gone)) { console.log('  ' + gone + ' no deberia estar en el preset'); bad++; }
    // el domain de la grafica debe coincidir con el End Time del canal 1
    const dom1 = entries.find(e => e[1] === MAPS[0][0] && e[3] === 'int');
    const domA = entries.find(e => e[1] === A && e[3] === 'domain');
    if (dom1 && domA && domA[4] !== dom1[4]) { console.log('  domain canal', c + 1, 'distinto del End Time del canal 1'); bad++; }
  }
  // el canal 1 debe conservar sus datos originales
  if (!entries.some(e => e[1] === 'obj-2' && e[3] === 'add_with_curve')) {
    console.log('  preset', pr.number, 'perdio la amplitud del canal 1'); bad++;
  }
}
console.log(bad === 0 && ampNonZero === 0
  ? 'OK: estructura valida, canales 2-4 en silencio, canal 1 intacto'
  : 'FALLOS: ' + bad + ' errores, ' + ampNonZero + ' puntos de amp != 0');
