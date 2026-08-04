// Verificacion del canal 5: integridad del archivo y paridad estructural con el canal 3.
const fs = require('fs');
const path = require('path');
const p = JSON.parse(fs.readFileSync(path.join(__dirname, '..', 'ATS_Sequencer.maxpat'), 'utf8'));
const boxes = p.patcher.boxes.map(w => w.box);
const byId = {}; boxes.forEach(b => byId[b.id] = b);
const lines = p.patcher.lines.map(w => w.patchline);
let bad = 0;
const fail = m => { console.log('  FALLO:', m); bad++; };
const ok = m => console.log('  ok:', m);

// --- integridad basica ---
console.log('== integridad');
const dup = {}; boxes.forEach(b => dup[b.id] = (dup[b.id] || 0) + 1);
const dups = Object.keys(dup).filter(k => dup[k] > 1);
dups.length ? fail('ids duplicados: ' + dups.join(',')) : ok('sin ids duplicados (' + boxes.length + ' cajas)');
const dangling = lines.filter(l => !byId[l.source[0]] || !byId[l.destination[0]]);
dangling.length ? fail('lineas colgando: ' + JSON.stringify(dangling.slice(0, 5))) : ok('sin lineas colgando (' + lines.length + ')');
const badOut = lines.filter(l => l.source[1] >= (byId[l.source[0]].numoutlets || 1));
badOut.length ? fail('outlet fuera de rango: ' + JSON.stringify(badOut.slice(0, 5))) : ok('outlets en rango');
const badIn = lines.filter(l => l.destination[1] >= (byId[l.destination[0]].numinlets || 1));
badIn.length ? fail('inlet fuera de rango: ' + JSON.stringify(badIn.slice(0, 5))) : ok('inlets en rango');
const vn = {}; boxes.filter(b => b.varname).forEach(b => vn[b.varname] = (vn[b.varname] || 0) + 1);
const dupvn = Object.keys(vn).filter(k => vn[k] > 1);
dupvn.length ? fail('varnames duplicados: ' + dupvn.join(',')) : ok('varnames unicos');

// --- paridad canal 3 / canal 5 ---
console.log('== paridad canal 3 <-> canal 5');
const CH3 = require('./ch3_ids.json').filter(id => id !== 'obj-466');
// reconstruir el mapa igual que el generador
const ZERO_BASED = /^(obj-(?:2b-\w+|add1000|at-[\w-]+|delay-start|delay-stop|engate|enzmsg|enzsel|fd-[\w-]+|fp-guard-[\w-]+|gate|msg-fade|msg-one|msg-zero|r-autoplay|tbbb))-2$/;
const ONE_BASED = /^(obj-(?:ms|vw)-[\w-]+?)-3$/;
let seq = 0; const ID = {};
CH3.forEach(id => {
    let m;
    if ((m = ZERO_BASED.exec(id))) ID[id] = m[1] + '-4';
    else if ((m = ONE_BASED.exec(id))) ID[id] = m[1] + '-5';
    else ID[id] = 'obj-c5-' + (++seq);
});
const missing = CH3.filter(id => !byId[ID[id]]);
missing.length ? fail('clones ausentes: ' + missing.join(',')) : ok(CH3.length + ' clones presentes');
const classDiff = CH3.filter(id => byId[id].maxclass !== byId[ID[id]].maxclass);
classDiff.length ? fail('maxclass distinto: ' + classDiff.join(',')) : ok('maxclass identico');

// cada conexion del canal 3 tiene su gemela en el canal 5
const key = l => l.source[0] + '.' + l.source[1] + '>' + l.destination[0] + '.' + l.destination[1];
const have = new Set(lines.map(key));
const EXPECT_REMAP = {   // conexiones que el generador reencamino a proposito
    'obj-2b-storedom-2.0>obj-2b-domswitch.3': 'obj-2b-storedom-4.0>obj-2b-domswitch.5',
    'obj-2b-storeps-2.0>obj-2b-psswitch.3': 'obj-2b-storeps-4.0>obj-2b-psswitch.5',
    'obj-at-tall.1>obj-at-fcur-2.0': 'obj-at-tall.4>obj-at-fcur-4.0',
    'obj-fd-tref.1>obj-fd-ovr-2.0': 'obj-fd-tref.4>obj-fd-ovr-4.0',
    'obj-fd-trg.1>obj-fd-rgate-2.1': 'obj-fd-trg.4>obj-fd-rgate-4.1'
};
const DROPPED = new Set(['obj-466']);   // "s Mslide frec": global propio del canal 3
const notMirrored = [];
lines.forEach(l => {
    const s = l.source[0], d = l.destination[0];
    if (!ID[s] && !ID[d]) return;
    if (DROPPED.has(s) || DROPPED.has(d)) return;
    // la matriz cruzada del SOLO no es clonable (canal-a-canal); se comprueba aparte
    if (/^obj-ms-clr-/.test(s) && /^obj-ms-solo-/.test(d)) return;
    const k = key(l);
    const want = EXPECT_REMAP[k] ||
        ((ID[s] || s) + '.' + l.source[1] + '>' + (ID[d] || d) + '.' + l.destination[1]);
    if (!have.has(want)) notMirrored.push(k + '  ->  ' + want);
});
notMirrored.length ? fail('conexiones del canal 3 sin gemela:\n     ' + notMirrored.join('\n     '))
                   : ok('todas las conexiones del canal 3 tienen gemela en el 5');

// --- nombres globales del canal nuevo ---
console.log('== send/receive del canal 5');
['s 5gpitch', 's 5amp', 's mute5', 's zero5', 'r 5gpitch', 'r 5Fpitch', 'receive~ 5lvl'].forEach(t => {
    const n = boxes.filter(b => b.text === t).length;
    n === (t === 'r 5gpitch' ? 2 : 1) ? ok(t + ' x' + n) : fail(t + ' aparece ' + n + ' veces');
});
['3gpitch', '3amp', 'mute3', 'zero3', '3lvl', '3Fpitch'].forEach(t => {
    const n = boxes.filter(b => (b.text || '').indexOf(t) >= 0 && /^obj-c5-/.test(b.id)).length;
    n ? fail('residuo del canal 3 en clones: ' + t) : 0;
});
ok('sin residuos "3xxx" en los clones');
const solo = boxes.filter(b => /^obj-ms-eqn-/.test(b.id)).map(b => b.id + '=' + b.text);
console.log('  SOLO:', solo.join(' '));

// --- SOLO exclusivo completo (matriz 5x5 sin diagonal): clr-a apaga solo-b ---
const pairs = [];
for (let a = 1; a <= 5; a++) for (let b = 1; b <= 5; b++) {
    if (a === b) continue;
    if (!have.has('obj-ms-clr-' + a + '.0>obj-ms-solo-' + b + '.0')) pairs.push(a + '->' + b);
}
const reversed = lines.filter(l => /^obj-ms-solo-/.test(l.source[0]) && /^obj-ms-clr-/.test(l.destination[0]));
if (reversed.length) fail('enlaces SOLO invertidos: ' + reversed.map(l => l.source[0] + '->' + l.destination[0]).join(','));
pairs.length ? fail('SOLO exclusivo incompleto: ' + pairs.join(',')) : ok('SOLO exclusivo: matriz 5x5 completa');

// --- layout de presentacion ---
console.log('== presentacion');
const panels = ['fnFreq1', 'fnFreq2', 'fnFreq3', 'fnFreq5', 'fnFreq4'].map(v => {
    const b = boxes.find(x => x.varname === v);
    return v + ' y=' + Math.round(b.presentation_rect[1]);
});
console.log('  orden de graficas:', panels.join('  '));
const ys = ['fnFreq1', 'fnFreq2', 'fnFreq3', 'fnFreq5', 'fnFreq4'].map(v => boxes.find(x => x.varname === v).presentation_rect[1]);
ys.every((y, i) => i === 0 || y > ys[i - 1]) ? ok('las 5 graficas van en orden vertical')
                                             : fail('las graficas no estan en orden: ' + ys.join(','));

// solapes entre los paneles de fondo
const bg = boxes.filter(b => b.maxclass === 'panel' && b.presentation == 1 &&
        b.presentation_rect[0] > 325 && b.presentation_rect[0] < 1250 &&
        b.presentation_rect[2] > 80 && b.presentation_rect[3] > 150)
    .sort((a, b) => a.presentation_rect[1] - b.presentation_rect[1]);
console.log('  paneles de canal:', bg.map(b => b.id + '@' + Math.round(b.presentation_rect[1]) + '+' + Math.round(b.presentation_rect[3])).join(' '));
let ovl = 0;
for (let i = 1; i < bg.length; i++)
    if (bg[i].presentation_rect[1] < bg[i - 1].presentation_rect[1] + bg[i - 1].presentation_rect[3] - 1) ovl++;
ovl ? fail(ovl + ' paneles solapados') : ok('paneles sin solape');

console.log(bad ? '\n>>> ' + bad + ' FALLOS' : '\n>>> todo correcto');
process.exit(bad ? 1 : 0);
