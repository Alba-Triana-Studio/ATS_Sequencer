// ============================================================================
//  Anade un QUINTO canal al secuenciador, clonando estructuralmente el canal 3.
//
//  El nuevo canal es de SONIDO (como los canales 1-3) y ocupa el 4o panel de la
//  presentacion; el canal 4 (la LUZ, cuyo PITCH va a "s luz frec") baja al 5o
//  puesto. Internamente el canal nuevo se llama 5 (5gpitch / 5amp / mute5 /
//  zero5 / 5lvl / 5Fpitch): la luz conserva su numero 4 y todo su cableado, y
//  los .maxpresets antiguos siguen siendo validos.
//
//  El conjunto de objetos del canal 3 (190) se obtuvo por isomorfismo
//  estructural entre canales (scratch/iso.js + scratch/members.js) mas las
//  islas sin conexion (medidor, display de PITCH, decoraciones del panel).
// ============================================================================
const fs = require('fs');
const path = require('path');
const SRC = path.join(__dirname, '..', 'ATS_Sequencer.maxpat');

const p = JSON.parse(fs.readFileSync(SRC, 'utf8'));
const boxes = p.patcher.boxes;
const byId = {}; boxes.forEach(w => byId[w.box.id] = w.box);
const lines = p.patcher.lines;

// --- 1. Objetos del canal 3 -------------------------------------------------
const DROP = new Set(['obj-466']);      // "s Mslide frec": global propio del canal 3
const CH3 = require('./ch3_ids.json').filter(id => !DROP.has(id));
CH3.forEach(id => { if (!byId[id]) throw new Error('id inexistente: ' + id); });
if (byId['obj-c5-header']) throw new Error('el canal 5 ya existe en este archivo');

// --- 2. Mapa de ids ---------------------------------------------------------
// Familias con sufijo de canal: las 0-based (-2) pasan a -4, las 1-based (-3) a -5.
const ZERO_BASED = /^(obj-(?:2b-\w+|add1000|at-[\w-]+|delay-start|delay-stop|engate|enzmsg|enzsel|fd-[\w-]+|fp-guard-[\w-]+|gate|msg-fade|msg-one|msg-zero|r-autoplay|tbbb))-2$/;
const ONE_BASED = /^(obj-(?:ms|vw)-[\w-]+?)-3$/;
let seq = 0;
const ID = {};
CH3.forEach(id => {
    let m;
    if ((m = ZERO_BASED.exec(id))) ID[id] = m[1] + '-4';
    else if ((m = ONE_BASED.exec(id))) ID[id] = m[1] + '-5';
    else ID[id] = 'obj-c5-' + (++seq);
    if (byId[ID[id]]) throw new Error('id destino ya ocupado: ' + ID[id]);
});
const isCh3 = id => Object.prototype.hasOwnProperty.call(ID, id);

// --- 3. Varnames (scripting names) ------------------------------------------
const VARNAME = {
    'fnFreq3': 'fnFreq5', 'fnAmp3': 'fnAmp5',
    'rowFt3': 'rowFt5', 'rowAt3': 'rowAt5',
    'rowFl3': 'rowFl5', 'rowAl3': 'rowAl5',
    'rowFd3': 'rowFd5', 'rowAd3': 'rowAd5',
    'number[10]': 'rowFv5', 'number[9]': 'rowFc5', 'number[11]': 'rowFms5',
    'number[7]': 'rowAv5', 'number[6]': 'rowAc5', 'number[8]': 'rowAms5'
};

// --- 4. Textos --------------------------------------------------------------
const TEXT_SUBS = [
    [/\bs mute3\b/g, 's mute5'],
    [/\bs zero3\b/g, 's zero5'],
    [/\bs 3gpitch\b/g, 's 5gpitch'],
    [/\br 3gpitch\b/g, 'r 5gpitch'],
    [/\bs 3amp\b/g, 's 5amp'],
    [/\br 3Fpitch\b/g, 'r 5Fpitch'],
    [/receive~ 3lvl/g, 'receive~ 5lvl'],
    [/\bfnFreq3\b/g, 'fnFreq5'],
    [/\bfnAmp3\b/g, 'fnAmp5']
];
// Textos que son un indice de canal desnudo: se fijan a mano.
const TEXT_EXACT = {
    'obj-2b-msg-2': '4',      // indice 0-based que viaja por "s playactive"
    'obj-ms-eqn-3': '== 5',   // id 1-based del SOLO
    'obj-ms-on-3': '5'
};
function subText(id, t) {
    if (t === undefined) return t;
    if (TEXT_EXACT[id] !== undefined) return TEXT_EXACT[id];
    let out = t;
    TEXT_SUBS.forEach(function (s) { out = out.replace(s[0], s[1]); });
    // los mensajes de scripting de la fila de dibujo nombran varnames
    Object.keys(VARNAME).forEach(function (v) { out = out.split(v).join(VARNAME[v]); });
    return out;
}

// --- 5. Geometria -----------------------------------------------------------
const EDIT_DY = 8700;   // los clones viven bajo todo lo demas en la vista de edicion
const PRES_DY = 192;    // alto de un panel: 389 (canal 3) -> 581 (nuevo 4o puesto)

// 5a. Bajar el panel de la LUZ y el bloque de documentacion para hacer sitio.
//     (columna de paneles: 325 <= x < 1250; la columna MASTER, x >= 1253, no se toca)
const shifted = [];
boxes.forEach(function (w) {
    const b = w.box;
    if (b.presentation != 1 || !b.presentation_rect) return;
    const x = b.presentation_rect[0], y = b.presentation_rect[1];
    if (x >= 325 && x < 1250 && y >= 578) {
        b.presentation_rect[1] = y + PRES_DY;
        shifted.push(b.id);
    }
});

// --- 6. Clonar cajas --------------------------------------------------------
const clones = [];
CH3.forEach(function (id) {
    const b = JSON.parse(JSON.stringify(byId[id]));
    const nid = ID[id];
    b.id = nid;
    if (b.varname) {
        if (!VARNAME[b.varname]) throw new Error('varname sin mapear: ' + b.varname + ' (' + id + ')');
        b.varname = VARNAME[b.varname];
    }
    if (b.text !== undefined) b.text = subText(id, b.text);
    if (b.patching_rect) b.patching_rect[1] += EDIT_DY;
    if (b.presentation == 1 && b.presentation_rect) b.presentation_rect[1] += PRES_DY;
    if (b.parameter_enable) {
        const sa = b.saved_attribute_attributes && b.saved_attribute_attributes.valueof;
        if (sa) { sa.parameter_longname = nid; sa.parameter_shortname = nid; }
        p.patcher.parameters[nid] = [nid, nid, 0];
    }
    clones.push({ box: b });
});

// Cabecera visible en la vista de edicion.
clones.unshift({ box: {
    id: 'obj-c5-header', maxclass: 'comment', numinlets: 1, numoutlets: 0,
    fontsize: 24, fontname: 'Arial Bold',
    patching_rect: [200, byId['obj-314'].patching_rect[1] + EDIT_DY - 90, 1000, 33],
    text: 'CANAL 5 (sonido) - copia estructural del canal 3. La luz sigue siendo el canal 4.'
} });

// --- 7. Clonar conexiones ---------------------------------------------------
// Toda linea que toque el canal 3 se replica sustituyendo SOLO sus objetos; los
// extremos globales (preset, mastertoggles, toggles maestros...) se conservan.
const seen = new Set();
lines.forEach(function (w) {
    const l = w.patchline;
    seen.add(l.source[0] + '.' + l.source[1] + '>' + l.destination[0] + '.' + l.destination[1]);
});
const newLines = [];
function addLine(s, so, d, di) {
    const k = s + '.' + so + '>' + d + '.' + di;
    if (seen.has(k)) return false;
    seen.add(k);
    newLines.push({ patchline: { destination: [d, di], source: [s, so] } });
    return true;
}
lines.forEach(function (w) {
    const l = w.patchline;
    const s = l.source[0], d = l.destination[0];
    if (!isCh3(s) && !isCh3(d)) return;
    if (DROP.has(s) || DROP.has(d)) return;
    addLine(isCh3(s) ? ID[s] : s, l.source[1], isCh3(d) ? ID[d] : d, l.destination[1]);
});

// --- 8. Puntos globales que pasan de 4 a 5 canales --------------------------
const fixes = [];
function grow(id, text, nin, nout) {
    const b = byId[id];
    if (!b) throw new Error('falta ' + id);
    b.text = text;
    if (nin !== null) b.numinlets = nin;
    if (nout !== null) {
        const fill = b.outlettype[b.outlettype.length - 1];
        while (b.outlettype.length < nout) b.outlettype.push(fill);
        b.numoutlets = nout;
    }
}
// 8a. [switch 4] -> [switch 5]: la entrada del canal nuevo es el inlet 5.
['obj-2b-domswitch', 'obj-2b-psswitch'].forEach(function (id) {
    if (byId[id].numinlets !== 5) throw new Error(id + ': numinlets inesperado ' + byId[id].numinlets);
    grow(id, 'switch 5', 6, null);
    fixes.push(id + ': switch 4 -> switch 5 (6 inlets)');
});
newLines.forEach(function (w) {
    const l = w.patchline;
    if ((l.destination[0] === 'obj-2b-domswitch' || l.destination[0] === 'obj-2b-psswitch') && l.destination[1] === 3) {
        l.destination[1] = 5;
        fixes.push(l.source[0] + ' -> ' + l.destination[0] + ' inlet 5');
    }
});
// 8b. reparticiones [t b b b b] -> [t b b b b b]; el outlet nuevo va al canal 5.
[['obj-at-tall', 'obj-at-fcur-4', 0],
 ['obj-fd-tref', 'obj-fd-ovr-4', 0],
 ['obj-fd-trg', 'obj-fd-rgate-4', 1]].forEach(function (t) {
    const trig = t[0], dst = t[1], inl = t[2];
    if (byId[trig].text !== 't b b b b') throw new Error(trig + ': texto inesperado ' + byId[trig].text);
    grow(trig, 't b b b b b', null, 5);
    for (let i = newLines.length - 1; i >= 0; i--)      // quitar el clon que reusaba el outlet del canal 3
        if (newLines[i].patchline.source[0] === trig) newLines.splice(i, 1);
    addLine(trig, 4, dst, inl);
    fixes.push(trig + ': t b b b b -> t b b b b b (outlet 4 -> ' + dst + ')');
});
// 8c. SOLO exclusivo: al encender un SOLO, su [set 0] apaga los otros cuatro
//     toggles (clr-a -> solo-b, a != b). El clonado no puede generar el par que
//     enlaza el canal 3 con el 5, porque en el original ese par no existia.
addLine('obj-ms-clr-3', 0, 'obj-ms-solo-5', 0);
addLine('obj-ms-clr-5', 0, 'obj-ms-solo-3', 0);
fixes.push('SOLO exclusivo: clr-3 -> solo-5 y clr-5 -> solo-3');

// --- 9. Guardar -------------------------------------------------------------
p.patcher.boxes = boxes.concat(clones);
p.patcher.lines = lines.concat(newLines);
fs.writeFileSync(SRC, JSON.stringify(p, null, 1));

console.log('cajas clonadas:      ', clones.length - 1, '(+1 comentario de cabecera)');
console.log('conexiones nuevas:   ', newLines.length);
console.log('objetos desplazados: ', shifted.length, '(panel de la luz + documentacion, +' + PRES_DY + 'px)');
console.log('ajustes globales:');
fixes.forEach(function (f) { console.log('   -', f); });
