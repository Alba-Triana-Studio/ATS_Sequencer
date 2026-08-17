/*
 * fix_recorder_single_button.js
 *
 * Basado en la referencia real de Max (no en suposiciones):
 *   /Applications/Max.app/Contents/Resources/C74/docs/refpages/
 *      msp-ref/sfrecord~.maxref.xml
 *      max-ref/savedialog.maxref.xml
 *      max-ref/textbutton.maxref.xml
 *
 * Arregla:
 *  A. "sfrecord~: unsupported audio file type" -> el dialogo devolvia una ruta sin
 *     extension ("…/Downloads/Untitled") y sfrecord~ deduce el tipo de la extension.
 *     La doc de `open` dice: "The format symbol (e.g., aiff) can follow the optional
 *     filename argument". Asi que se manda `open <ruta> aiff`, que fija el formato
 *     explicitamente y hace la extension irrelevante.
 *     Se usa una message box `open $1 aiff`: $1 sustituye ATOMO a atomo, asi que una
 *     ruta con espacios ("…/Alba Triana Studio/…") sigue siendo un solo simbolo.
 *     (Un `sprintf open %s aiff` NO serviria: sprintf parsea su salida y partiria
 *     la ruta en varios atomos por los espacios.)
 *  B. El mensaje correcto para 24 bits es `samptype int24`, no `int24` suelto.
 *  C. `savedialog` tiene TRES salidas: 0 = ruta, 1 = codigo de tipo, 2 = bang al
 *     cancelar. El cancelar estaba cableado a la salida 1.
 *
 * Cambio pedido: un solo boton. El propio REC abre el dialogo, y desaparece "Save as…".
 *
 *   obj-rec-btn (textbutton mode 1) -> obj-rec-sel (sel 1 0)
 *     out0 (REC on)  -> obj-rec-dlg (savedialog)
 *          out0 (ruta) -> obj-rec-print (print REC)        [ruta a la consola]
 *                      -> obj-rec-t2 (t b s)
 *                            out1 (s, dispara PRIMERO) -> "open $1 aiff" -> sfrecord~
 *                            out0 (b, dispara DESPUES) -> "1" -> sfrecord~ + clocker
 *                                                      -> "set 0:00.0" -> display
 *                                                      -> "set ● GRABANDO" -> estado
 *          out2 (cancelar) -> "set Cancelado" -> estado
 *                          -> "set 0" -> obj-rec-btn   [despulsa sin reentrar]
 *     out1 (REC off) -> "0" -> sfrecord~ (cierra el archivo) + clocker
 *                    -> "set Detenido" -> estado
 *
 *   loadbang -> "samptype int24"        -> sfrecord~
 *            -> "name ATS_grabacion.aif" -> savedialog  [nombre por defecto]
 *
 * El orden de `t b s` es lo que garantiza open-ANTES-de-1: trigger dispara sus
 * salidas de derecha a izquierda, y la doc de sfrecord~ avisa de que un `1` sin
 * `open` previo da "start requested without preceding 'open'".
 */
const fs = require('fs');
const FILE = 'ATS_Sequencer.maxpat';

const p = JSON.parse(fs.readFileSync(FILE, 'utf8'));

// ---------------------------------------------------------- 1. quitar
const DROP = new Set([
  'obj-rec-open',   // textbutton "Save as…" (ya no hace falta)
  'obj-rec-popen',  // prepend open (sin el simbolo de formato)
  'obj-rec-pset',   // prepend set -> estado (la ruta no cabe en 162 px; va al print)
]);
const n0 = p.patcher.boxes.length;
p.patcher.boxes = p.patcher.boxes.filter(b => !DROP.has(b.box.id));
if (n0 - p.patcher.boxes.length !== DROP.size) {
  throw new Error('esperaba quitar ' + DROP.size + ' cajas, quite ' + (n0 - p.patcher.boxes.length));
}

const byId = {};
for (const b of p.patcher.boxes) byId[b.box.id] = b.box;
const need = id => { if (!byId[id]) throw new Error('falta ' + id); return byId[id]; };

// cables a eliminar: los de las cajas borradas + los que hay que redirigir
const KILL = [
  ['obj-rec-dlg', 1, 'obj-rec-cancel', 0],  // salida equivocada (1 = tipo, no cancelar)
  ['obj-rec-sel', 0, 'obj-rec-m1', 0],      // el 1 ahora va despues del open
  ['obj-rec-sel', 0, 'obj-rec-mreset', 0],
  ['obj-rec-sel', 0, 'obj-rec-srec', 0],
];
const killed = new Set(KILL.map(k => k.join('|')));
const n1 = p.patcher.lines.length;
p.patcher.lines = p.patcher.lines.filter(l => {
  const pl = l.patchline;
  if (DROP.has(pl.source[0]) || DROP.has(pl.destination[0])) return false;
  return !killed.has([pl.source[0], pl.source[1], pl.destination[0], pl.destination[1]].join('|'));
});
console.log('cables eliminados: ' + (n1 - p.patcher.lines.length));

// ---------------------------------------------------------- 2. savedialog: 3 salidas
const dlg = need('obj-rec-dlg');
dlg.numoutlets = 3;
dlg.outlettype = ['', '', 'bang'];

// ---------------------------------------------------------- 3. cajas nuevas
const mk = (id, text, rect, extra) => ({ box: Object.assign({
  id, maxclass: 'newobj', numinlets: 1, numoutlets: 1, outlettype: [''],
  patching_rect: rect, text }, extra || {}) });
const msg = (id, text, rect) => ({ box: {
  id, maxclass: 'message', numinlets: 2, numoutlets: 1, outlettype: [''],
  patching_rect: rect, text } });

const NEW = [
  mk('obj-rec-t2', 't b s', [2680, 240, 60, 22], { numoutlets: 2, outlettype: ['bang', ''] }),
  msg('obj-rec-mopen2', 'open $1 aiff', [2680, 280, 110, 22]),
  mk('obj-rec-lb2', 'loadbang', [2300, 120, 62, 22], { outlettype: ['bang'] }),
  msg('obj-rec-msamp', 'samptype int24', [2300, 160, 110, 22]),
  msg('obj-rec-mname', 'name ATS_grabacion.aif', [2420, 160, 155, 22]),
  msg('obj-rec-breset', 'set 0', [2360, 280, 60, 22]),
];
for (const b of NEW) {
  if (byId[b.box.id]) throw new Error('id duplicado: ' + b.box.id);
  byId[b.box.id] = b.box;
}
// delante del panel MASTER (indice menor = mas al frente)
const panelIdx = p.patcher.boxes.findIndex(b => b.box.id === 'obj-133');
p.patcher.boxes.splice(panelIdx, 0, ...NEW);

// ---------------------------------------------------------- 4. cables nuevos
for (const [s, so, d, di] of [
  ['obj-rec-sel',    0, 'obj-rec-dlg',     0],   // REC on -> abre dialogo
  ['obj-rec-dlg',    0, 'obj-rec-t2',      0],
  ['obj-rec-dlg',    2, 'obj-rec-cancel',  0],   // salida 2 = cancelar
  ['obj-rec-dlg',    2, 'obj-rec-breset',  0],
  ['obj-rec-breset', 0, 'obj-rec-btn',     0],
  ['obj-rec-t2',     1, 'obj-rec-mopen2',  0],   // s: primero el open
  ['obj-rec-mopen2', 0, 'obj-rec-sf',      0],
  ['obj-rec-t2',     0, 'obj-rec-m1',      0],   // b: luego el 1
  ['obj-rec-t2',     0, 'obj-rec-mreset',  0],
  ['obj-rec-t2',     0, 'obj-rec-srec',    0],
  ['obj-rec-lb2',    0, 'obj-rec-msamp',   0],
  ['obj-rec-lb2',    0, 'obj-rec-mname',   0],
  ['obj-rec-msamp',  0, 'obj-rec-sf',      0],
  ['obj-rec-mname',  0, 'obj-rec-dlg',     0],
]) {
  need(s); need(d);
  p.patcher.lines.push({ patchline: { destination: [d, di], source: [s, so] } });
}

// ---------------------------------------------------------- 5. UI: REC a todo el ancho
need('obj-rec-btn').presentation_rect = [1259.0, 686.0, 162.0, 22.0];

fs.writeFileSync(FILE, JSON.stringify(p, null, 1), 'utf8');
console.log('OK: -' + DROP.size + ' cajas, +' + NEW.length + ' cajas.');
