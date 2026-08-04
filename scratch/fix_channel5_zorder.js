// En un .maxpat el array `boxes` va de delante hacia atras: indice menor = mas
// arriba en el z-order. La grafica de amplitud tiene que quedar POR DELANTE de
// la de frecuencia (el boton "Editar" alterna con script ignoreclick, y el clic
// solo cae a la capa de abajo si la de arriba lo ignora), y los paneles de fondo
// por detras de sus controles.
//
// Los clones se aniadieron al final en orden arbitrario: aqui se reordenan ENTRE
// SI para reproducir exactamente el orden relativo que tienen sus originales del
// canal 3.
const fs = require('fs');
const path = require('path');
const SRC = path.join(__dirname, '..', 'ATS_Sequencer.maxpat');
const p = JSON.parse(fs.readFileSync(SRC, 'utf8'));

const CH3 = require('./ch3_ids.json').filter(id => id !== 'obj-466');
const ZERO_BASED = /^(obj-(?:2b-\w+|add1000|at-[\w-]+|delay-start|delay-stop|engate|enzmsg|enzsel|fd-[\w-]+|fp-guard-[\w-]+|gate|msg-fade|msg-one|msg-zero|r-autoplay|tbbb))-2$/;
const ONE_BASED = /^(obj-(?:ms|vw)-[\w-]+?)-3$/;
let seq = 0; const ID = {}, SRC_OF = {};
CH3.forEach(id => {
    let m;
    if ((m = ZERO_BASED.exec(id))) ID[id] = m[1] + '-4';
    else if ((m = ONE_BASED.exec(id))) ID[id] = m[1] + '-5';
    else ID[id] = 'obj-c5-' + (++seq);
    SRC_OF[ID[id]] = id;
});

const order = {};                       // posicion actual de cada caja original
p.patcher.boxes.forEach((w, i) => order[w.box.id] = i);

const cloneIds = new Set(Object.values(ID));
const slots = [];                       // indices que ocupan los clones
p.patcher.boxes.forEach((w, i) => { if (cloneIds.has(w.box.id)) slots.push(i); });
const clones = slots.map(i => p.patcher.boxes[i]);

// ordenar los clones por la posicion de su original en el canal 3
clones.sort((a, b) => order[SRC_OF[a.box.id]] - order[SRC_OF[b.box.id]]);
slots.forEach((i, k) => { p.patcher.boxes[i] = clones[k]; });

fs.writeFileSync(SRC, JSON.stringify(p, null, 1));

// --- comprobacion ---
const idx = {}; p.patcher.boxes.forEach((w, i) => idx[w.box.id] = i);
const rel = (a, b) => idx[a] < idx[b] ? 'delante' : 'detras';
let bad = 0;
CH3.forEach(a => CH3.forEach(b => {
    if (a === b) return;
    if ((order[a] < order[b]) !== (idx[ID[a]] < idx[ID[b]])) bad++;
}));
console.log('clones reordenados:', clones.length);
console.log('parejas con z-order distinto al del canal 3:', bad / 2);
console.log('fnAmp3 esta ' + rel('obj-319', 'obj-314') + ' de fnFreq3');
console.log('fnAmp5 esta ' + rel(ID['obj-319'], ID['obj-314']) + ' de fnFreq5');
console.log('panel del canal 5 esta ' + rel(ID['obj-72'], ID['obj-317']) + ' del rotulo PITCH');
process.exit(bad ? 1 : 0);
