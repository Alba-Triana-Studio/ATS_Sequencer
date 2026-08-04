// Ejecuta smart_load.js fuera de Max (stubs de File/post/outlet) sobre un
// .maxpresets de 4 canales y comprueba que el canal 5 queda relleno.
const fs = require('fs');
const path = require('path');
const vm = require('vm');
const ROOT = path.join(__dirname, '..');

const SRC = process.argv[2] || path.join(__dirname, 'unified.maxpresets');
const OUT = path.join(__dirname, 'out_temp_load.json');

function makeFile(p, mode) {
    const f = {
        isopen: true, position: 0, eof: 0, _buf: '',
        readstring(n) { const s = f._data.substr(f.position, n); f.position += s.length; return s; },
        writestring(s) { f._buf += s; },
        close() { f.isopen = false; if (mode === 'write') fs.writeFileSync(f._path, f._buf); }
    };
    f._path = path.isAbsolute(p) ? p : path.join(ROOT, p);
    if (mode === 'read') { f._data = fs.readFileSync(f._path, 'utf8'); f.eof = f._data.length; }
    return f;
}

let out = null;
const ctx = {
    autowatch: 0, inlet: 0, messagename: SRC,
    post: s => process.stdout.write('  [max] ' + s),
    outlet: (n, ...a) => { out = a; },
    File: function (p, mode) { return makeFile(p, mode); }
};
ctx.global = ctx;
vm.createContext(ctx);
vm.runInContext(fs.readFileSync(path.join(ROOT, 'smart_load.js'), 'utf8'), ctx);
ctx.anything.call(ctx);

// smart_load escribe temp_load_1.json en la carpeta del patch
const res = JSON.parse(fs.readFileSync(path.join(ROOT, 'temp_load_1.json'), 'utf8'));
fs.writeFileSync(OUT, JSON.stringify(res).slice(0, 0) || '');

const MAPS = ctx.MAPS, NCH = ctx.NCH;
console.log('canales configurados:', NCH);
let bad = 0;
const presets = res.preset_data || [];
console.log('presets:', presets.length);
presets.forEach((pr, i) => {
    const entries = ctx.splitEntries(pr.data || []);
    const present = ctx.graphChannels(entries);
    if (!present.every(Boolean)) {
        console.log('  FALLO preset ' + i + ': canales sin grafica -> ' +
            present.map((v, c) => v ? '' : (c + 1)).filter(Boolean).join(','));
        bad++;
    }
    // el Freq. Domain por grafica tambien debe estar completo
    for (let c = 0; c < NCH; c++)
        for (let j = 0; j < 3; j++)
            if (!ctx.hasId(entries, ctx.FDOM[c][j])) { console.log('  FALLO preset ' + i + ': falta ' + ctx.FDOM[c][j]); bad++; }
});
// ningun id desconocido debe sobrevivir
const known = ctx.knownIds();
presets.forEach((pr, i) => {
    ctx.splitEntries(pr.data || []).forEach(e => {
        if (!known[e[1]]) { console.log('  FALLO preset ' + i + ': id no cliente ' + e[1]); bad++; }
    });
});
console.log(bad ? '>>> ' + bad + ' FALLOS' : '>>> todos los presets traen los ' + NCH + ' canales y su Freq. Domain');
try { fs.unlinkSync(OUT); } catch (e) {}
process.exit(bad ? 1 : 0);
