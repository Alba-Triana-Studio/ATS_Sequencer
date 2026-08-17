/*
 * fix_recorder_open.js
 *
 * Corrige lo que reporto la Max Console:
 *
 *   sfrecord~: doesn't understand "aiff"
 *   sfrecord~: doesn't understand "int24"
 *   sfrecord~: error opening file for writing
 *   sfrecord~: start requested without preceding 'open'
 *
 * 1. `aiff` / `int24` NO son mensajes de sfrecord~ (error mio). Se elimina el
 *    loadbang + message box que los enviaba. El formato queda en el de por
 *    defecto de sfrecord~ (AIFF 16 bit).
 *
 * 2. El `open` pelado abre el dialogo INTERNO de sfrecord~, que es el que
 *    fallaba al crear el archivo. Se sustituye por un objeto `savedialog`, que
 *    devuelve la ruta completa elegida; esa ruta se manda como `open <ruta>`
 *    (sfrecord~ con argumento no abre dialogo, usa la ruta tal cual, y
 *    `prepend` la mantiene como UN solo atomo aunque tenga espacios, que los
 *    tiene: ".../Alba Triana Studio/...").
 *
 * 3. La ruta elegida se vuelca ademas en la caja de estado y en un `print REC`,
 *    para que la proxima vez se vea en la consola exactamente que archivo se
 *    intento abrir.
 *
 * Cadena nueva:
 *   obj-rec-open (textbutton) -> obj-rec-dlg (savedialog)
 *        out0 (ruta) -> obj-rec-popen (prepend open) -> sfrecord~
 *                    -> obj-rec-pset  (prepend set)  -> obj-rec-status
 *                    -> obj-rec-print (print REC)
 *        out1 (cancelado) -> obj-rec-cancel ("set Cancelado") -> obj-rec-status
 */
const fs = require('fs');
const FILE = 'ATS_Sequencer.maxpat';

const p = JSON.parse(fs.readFileSync(FILE, 'utf8'));
const boxes = p.patcher.boxes;

// ------------------------------------------------------ 1. eliminar lo invalido
const DROP = new Set(['obj-rec-lb', 'obj-rec-mfmt', 'obj-rec-mopen', 'obj-rec-sopen']);
const before = boxes.length;
p.patcher.boxes = boxes.filter(b => !DROP.has(b.box.id));
if (before - p.patcher.boxes.length !== DROP.size) {
  throw new Error('esperaba borrar ' + DROP.size + ' cajas, borre ' + (before - p.patcher.boxes.length));
}
p.patcher.lines = p.patcher.lines.filter(l =>
  !DROP.has(l.patchline.source[0]) && !DROP.has(l.patchline.destination[0]));

const byId = {};
for (const b of p.patcher.boxes) byId[b.box.id] = b.box;
const need = id => { if (!byId[id]) throw new Error('falta ' + id); };
['obj-rec-open', 'obj-rec-sf', 'obj-rec-status', 'obj-133'].forEach(need);

// ------------------------------------------------------ 2. objetos nuevos
const mk = (id, text, rect, extra) => ({ box: Object.assign({
  id, maxclass: 'newobj', numinlets: 1, numoutlets: 1, outlettype: [''],
  patching_rect: rect, text
}, extra || {}) });

const NEW = [
  mk('obj-rec-dlg', 'savedialog', [2680, 200, 84, 22],
     { numoutlets: 2, outlettype: ['', 'bang'] }),
  mk('obj-rec-popen', 'prepend open', [2680, 240, 92, 22]),
  mk('obj-rec-pset', 'prepend set', [2782, 240, 86, 22]),
  mk('obj-rec-print', 'print REC', [2680, 160, 70, 22], { numoutlets: 0, outlettype: [] }),
  { box: { id: 'obj-rec-cancel', maxclass: 'message', numinlets: 2, numoutlets: 1,
           outlettype: [''], patching_rect: [2360, 320, 100, 22], text: 'set Cancelado' } },
];
for (const b of NEW) {
  if (byId[b.box.id]) throw new Error('id duplicado: ' + b.box.id);
  byId[b.box.id] = b.box;
}

// Insertar delante del panel MASTER para conservar el z-order correcto
// (indice menor = mas al frente). Ninguno es de presentacion, pero asi el
// bloque obj-rec-* sigue contiguo.
const panelIdx = p.patcher.boxes.findIndex(b => b.box.id === 'obj-133');
p.patcher.boxes.splice(panelIdx, 0, ...NEW);

// ------------------------------------------------------ 3. cables
for (const [s, so, d, di] of [
  ['obj-rec-open',  0, 'obj-rec-dlg',    0],
  ['obj-rec-dlg',   0, 'obj-rec-popen',  0],
  ['obj-rec-dlg',   0, 'obj-rec-pset',   0],
  ['obj-rec-dlg',   0, 'obj-rec-print',  0],
  ['obj-rec-dlg',   1, 'obj-rec-cancel', 0],
  ['obj-rec-popen', 0, 'obj-rec-sf',     0],
  ['obj-rec-pset',  0, 'obj-rec-status', 0],
  ['obj-rec-cancel',0, 'obj-rec-status', 0],
]) {
  need(s); need(d);
  p.patcher.lines.push({ patchline: { destination: [d, di], source: [s, so] } });
}

// JSON.stringify de Node: UTF-8 literal, sin escapes \uXXXX (ver gotcha #2).
fs.writeFileSync(FILE, JSON.stringify(p, null, 1), 'utf8');
console.log('OK: -' + DROP.size + ' cajas invalidas, +' + NEW.length + ' cajas nuevas.');
