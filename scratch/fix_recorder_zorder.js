/*
 * fix_recorder_zorder.js
 *
 * Corrige dos errores introducidos por patch_recorder.js:
 *
 * 1. Z-ORDER: en un .maxpat el array `boxes` va de delante hacia atras
 *    (indice menor = mas al frente). Los objetos obj-rec-* se aniadieron al
 *    FINAL del array (idx 1293+), o sea al fondo del todo, y el panel negro
 *    MASTER (obj-133, idx 428) los tapaba por completo. Se mueven en bloque
 *    justo delante del panel.
 *
 * 2. ESCAPES \uXXXX: un json.dump de Python con ensure_ascii=True convirtio
 *    todo el texto no-ASCII en escapes \uXXXX. Son JSON valido, pero el parser
 *    de Max no los descodifica, asi que se perdio el texto de los botones y
 *    comentarios con acentos o emoji (entre ellos "📖 Link Documentacion /
 *    Quick Start", obj_doc_btn_new). Se reescribe el archivo en UTF-8 literal.
 *
 * El texto original NO se perdio: sigue intacto dentro del JSON, solo estaba
 * codificado de una forma que Max no entiende.
 */
const fs = require('fs');
const FILE = 'ATS_Sequencer.maxpat';
const PANEL = 'obj-133';           // panel negro del MASTER

const p = JSON.parse(fs.readFileSync(FILE, 'utf8'));
const boxes = p.patcher.boxes;

// --- 1. z-order --------------------------------------------------------------
const rec = boxes.filter(b => b.box.id.startsWith('obj-rec-'));
if (rec.length !== 26) throw new Error('esperaba 26 cajas obj-rec-*, hay ' + rec.length);

const rest = boxes.filter(b => !b.box.id.startsWith('obj-rec-'));
const panelIdx = rest.findIndex(b => b.box.id === PANEL);
if (panelIdx < 0) throw new Error('no encuentro el panel ' + PANEL);

p.patcher.boxes = rest.slice(0, panelIdx).concat(rec, rest.slice(panelIdx));

// --- 2. comprobar que el texto no-ASCII sobrevivio ---------------------------
const doc = p.patcher.boxes.find(b => b.box.id === 'obj_doc_btn_new');
if (!doc || !/Documentación/.test(doc.box.text)) {
  throw new Error('el texto del boton de documentacion no esta intacto: ' + (doc && doc.box.text));
}

// JSON.stringify de Node escribe UTF-8 literal, sin escapes \uXXXX.
fs.writeFileSync(FILE, JSON.stringify(p, null, 1), 'utf8');

const idx = {};
p.patcher.boxes.forEach((b, i) => idx[b.box.id] = i);
console.log('OK. panel MASTER idx=' + idx[PANEL] +
            ', obj-rec-btn idx=' + idx['obj-rec-btn'] +
            ' (menor = delante)');
