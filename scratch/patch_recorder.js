/*
 * patch_recorder.js
 *
 * ACTIVA la grabacion de audio a disco, que estaba a medias en el patch:
 * ya existian las tomas de senal (send~ #rec_out_l / send~ #rec_out_r, con
 * exactamente el mismo reparto que llega al ezdac~: L = mixout1/2/3/5,
 * R = mixout4) pero NO habia ningun objeto que las recibiera ni interfaz.
 * El unico grabador del proyecto, "Recorder copy.maxpat", nunca se instancio
 * (y su nombre con espacio no es instanciable como abstraccion).
 *
 * Cambios:
 *  1. Renombra los dos send~ a nombres limpios: recout_l / recout_r
 *     (el token "#rec_out_l" no es sustituible por Max y solo generaba confusion).
 *  2. Anade el grabador dentro del patch principal:
 *
 *     obj-rec-rl (receive~ recout_l) --\
 *                                       > obj-rec-sf (sfrecord~ 2)
 *     obj-rec-rr (receive~ recout_r) --/
 *
 *     obj-rec-open  (textbutton "Save as...")
 *        -> obj-rec-mopen  ("open")            -> sfrecord~   [dialogo de archivo]
 *        -> obj-rec-sopen  ("set Archivo listo")-> obj-rec-status
 *
 *     obj-rec-btn (textbutton mode 1, REC/STOP)
 *        -> obj-rec-sel (sel 1 0)
 *             out0 (REC on)  -> obj-rec-m1 ("1") -> sfrecord~ + obj-rec-clk
 *                            -> obj-rec-mreset ("set 0:00.0") -> obj-rec-time
 *                            -> obj-rec-srec ("set GRABANDO") -> obj-rec-status
 *             out1 (REC off) -> obj-rec-m0 ("0") -> sfrecord~ + obj-rec-clk
 *                            -> obj-rec-sstop ("set Detenido") -> obj-rec-status
 *
 *     Cronometro (mismo patron que el TOTAL timer existente):
 *     obj-rec-clk (clocker 100) -> obj-rec-t (t i i i) -> /60000, %60000 /1000,
 *     %1000 /100 -> obj-rec-spf (sprintf set %i:%02i.%i) -> obj-rec-time
 *
 *     obj-rec-lb (loadbang) -> obj-rec-mfmt ("aiff, int24") -> sfrecord~
 *
 *  3. UI en presentacion: dentro del panel MASTER (obj-133), en el hueco libre
 *     bajo el ezdac~ STEREO (y 686..760 de 765 de alto de panel).
 */
const fs = require('fs');
const FILE = 'ATS_Sequencer.maxpat';

const p = JSON.parse(fs.readFileSync(FILE, 'utf8'));
const boxes = p.patcher.boxes;
const lines = p.patcher.lines;
const byId = {};
for (const b of boxes) byId[b.box.id] = b.box;

function need(id) {
  if (!byId[id]) throw new Error('Falta el objeto ' + id);
  return byId[id];
}

// ---------------------------------------------------------------- 1. renombrar
const SEND_L = 'obj-261';
const SEND_R = 'obj-250';
need(SEND_L); need(SEND_R);
if (!/rec_out_l|recout_l/.test(byId[SEND_L].text)) throw new Error('obj-261 no es el send~ izquierdo: ' + byId[SEND_L].text);
if (!/rec_out_r|recout_r/.test(byId[SEND_R].text)) throw new Error('obj-250 no es el send~ derecho: ' + byId[SEND_R].text);
byId[SEND_L].text = 'send~ recout_l';
byId[SEND_R].text = 'send~ recout_r';

// ---------------------------------------------------------------- estilos
const DARK    = [0.286274509803922, 0.290196078431373, 0.298039215686275, 1.0];
const RED     = [0.85, 0.13, 0.13, 1.0];
const GREEN   = [0.0, 0.55, 0.28, 1.0];
const WHITE   = [1.0, 1.0, 1.0, 1.0];
const DISPBG  = [0.301961, 0.301961, 0.301961, 1];
const DISPTXT = [0.25098, 0.501961, 0.0, 1.0];

function obj(id, text, rect, extra) {
  return { box: Object.assign({
    id, maxclass: 'newobj', numinlets: 1, numoutlets: 1,
    outlettype: [''], patching_rect: rect, text
  }, extra || {}) };
}
function msg(id, text, rect, extra) {
  return { box: Object.assign({
    id, maxclass: 'message', numinlets: 2, numoutlets: 1,
    outlettype: [''], patching_rect: rect, text
  }, extra || {}) };
}
function tbtn(id, text, rect, extra) {
  return { box: Object.assign({
    id, maxclass: 'textbutton', fontsize: 11.0, numinlets: 1, numoutlets: 3,
    outlettype: ['', '', 'int'], parameter_enable: 0, patching_rect: rect,
    rounded: 4.0, text, bgcolor: DARK, textcolor: [0.92, 0.92, 0.92, 1.0],
    textoncolor: WHITE, usebgoncolor: 1
  }, extra || {}) };
}
function comment(id, text, rect, extra) {
  return { box: Object.assign({
    id, maxclass: 'comment', fontname: 'Arial', fontsize: 11.0,
    numinlets: 1, numoutlets: 0, patching_rect: rect, text,
    textcolor: WHITE
  }, extra || {}) };
}

// ---------------------------------------------------------------- 2. objetos
const NB = [];

// --- senal
NB.push(obj('obj-rec-rl', 'receive~ recout_l', [2300, 400, 118, 22], { numinlets: 1, outlettype: ['signal'] }));
NB.push(obj('obj-rec-rr', 'receive~ recout_r', [2425, 400, 118, 22], { numinlets: 1, outlettype: ['signal'] }));
NB.push(obj('obj-rec-sf', 'sfrecord~ 2', [2300, 460, 96, 22], { numinlets: 2, numoutlets: 1, outlettype: ['int'] }));

// --- elegir archivo
NB.push(tbtn('obj-rec-open', 'Save as…', [2300, 240, 110, 24], {
  bgoncolor: [0.35, 0.35, 0.35, 1.0],
  presentation: 1, presentation_rect: [1259.0, 686.0, 78.0, 22.0]
}));
NB.push(msg('obj-rec-mopen', 'open', [2300, 280, 50, 22]));
NB.push(msg('obj-rec-sopen', 'set Archivo listo', [2360, 280, 122, 22]));

// --- boton REC
NB.push(tbtn('obj-rec-btn', '● REC', [2500, 240, 110, 24], {
  mode: 1, texton: '■ STOP', bgoncolor: RED,
  presentation: 1, presentation_rect: [1343.0, 686.0, 78.0, 22.0]
}));
NB.push(obj('obj-rec-sel', 'sel 1 0', [2500, 280, 62, 22], { numoutlets: 3, outlettype: ['bang', 'bang', ''] }));
NB.push(msg('obj-rec-m1', '1', [2500, 320, 32, 22]));
NB.push(msg('obj-rec-m0', '0', [2540, 320, 32, 22]));
NB.push(msg('obj-rec-mreset', 'set 0:00.0', [2580, 320, 82, 22]));
NB.push(msg('obj-rec-srec', 'set ● GRABANDO', [2500, 360, 120, 22]));
NB.push(msg('obj-rec-sstop', 'set Detenido', [2630, 360, 92, 22]));

// --- formato por defecto
NB.push(obj('obj-rec-lb', 'loadbang', [2680, 200, 62, 22], { outlettype: ['bang'] }));
NB.push(msg('obj-rec-mfmt', 'aiff, int24', [2680, 240, 82, 22]));

// --- cronometro
NB.push(obj('obj-rec-clk', 'clocker 100', [2680, 400, 82, 22], { numinlets: 2, outlettype: ['float'] }));
NB.push(obj('obj-rec-t', 't i i i', [2680, 440, 62, 22], { numoutlets: 3, outlettype: ['int', 'int', 'int'] }));
NB.push(obj('obj-rec-d1', '/ 60000', [2680, 480, 60, 22], { numinlets: 2, outlettype: ['int'] }));
NB.push(obj('obj-rec-md1', '% 60000', [2750, 480, 62, 22], { numinlets: 2, outlettype: ['int'] }));
NB.push(obj('obj-rec-md2', '% 1000', [2818, 480, 55, 22], { numinlets: 2, outlettype: ['int'] }));
NB.push(obj('obj-rec-d2', '/ 1000', [2750, 520, 55, 22], { numinlets: 2, outlettype: ['int'] }));
NB.push(obj('obj-rec-d3', '/ 100', [2818, 520, 50, 22], { numinlets: 2, outlettype: ['int'] }));
NB.push(obj('obj-rec-spf', 'sprintf set %i:%02i.%i', [2680, 560, 152, 22], { numinlets: 3, outlettype: [''] }));

// --- displays en presentacion
NB.push(msg('obj-rec-time', '0:00.0', [2680, 600, 130, 28], {
  fontname: 'Arial', fontsize: 16.0, bgcolor: DISPBG, textcolor: DISPTXT,
  presentation: 1, presentation_rect: [1259.0, 712.0, 162.0, 24.0]
}));
NB.push(msg('obj-rec-status', 'Sin archivo', [2300, 600, 180, 22], {
  fontname: 'Arial', fontsize: 11.0, bgcolor: DISPBG, textcolor: WHITE,
  presentation: 1, presentation_rect: [1259.0, 740.0, 162.0, 20.0]
}));

// --- etiqueta REC en presentacion (sobre el panel MASTER)
NB.push(comment('obj-rec-lbl', 'REC', [2300, 200, 40, 20], {
  fontsize: 12.0, presentation: 1, presentation_rect: [1259.0, 666.0, 60.0, 20.0]
}));

for (const b of NB) {
  if (byId[b.box.id]) throw new Error('id duplicado: ' + b.box.id);
  boxes.push(b);
  byId[b.box.id] = b.box;
}

// ---------------------------------------------------------------- 3. cables
const CONN = [
  // senal -> sfrecord~
  ['obj-rec-rl', 0, 'obj-rec-sf', 0],
  ['obj-rec-rr', 0, 'obj-rec-sf', 1],
  // elegir archivo
  ['obj-rec-open', 0, 'obj-rec-mopen', 0],
  ['obj-rec-open', 0, 'obj-rec-sopen', 0],
  ['obj-rec-mopen', 0, 'obj-rec-sf', 0],
  ['obj-rec-sopen', 0, 'obj-rec-status', 0],
  // formato
  ['obj-rec-lb', 0, 'obj-rec-mfmt', 0],
  ['obj-rec-mfmt', 0, 'obj-rec-sf', 0],
  // boton REC
  ['obj-rec-btn', 0, 'obj-rec-sel', 0],
  ['obj-rec-sel', 0, 'obj-rec-mreset', 0],
  ['obj-rec-sel', 0, 'obj-rec-srec', 0],
  ['obj-rec-sel', 0, 'obj-rec-m1', 0],
  ['obj-rec-sel', 1, 'obj-rec-m0', 0],
  ['obj-rec-sel', 1, 'obj-rec-sstop', 0],
  ['obj-rec-m1', 0, 'obj-rec-sf', 0],
  ['obj-rec-m1', 0, 'obj-rec-clk', 0],
  ['obj-rec-m0', 0, 'obj-rec-sf', 0],
  ['obj-rec-m0', 0, 'obj-rec-clk', 0],
  ['obj-rec-mreset', 0, 'obj-rec-time', 0],
  ['obj-rec-srec', 0, 'obj-rec-status', 0],
  ['obj-rec-sstop', 0, 'obj-rec-status', 0],
  // cronometro
  ['obj-rec-clk', 0, 'obj-rec-t', 0],
  ['obj-rec-t', 0, 'obj-rec-d1', 0],
  ['obj-rec-t', 1, 'obj-rec-md1', 0],
  ['obj-rec-t', 2, 'obj-rec-md2', 0],
  ['obj-rec-md1', 0, 'obj-rec-d2', 0],
  ['obj-rec-md2', 0, 'obj-rec-d3', 0],
  ['obj-rec-d1', 0, 'obj-rec-spf', 0],
  ['obj-rec-d2', 0, 'obj-rec-spf', 1],
  ['obj-rec-d3', 0, 'obj-rec-spf', 2],
  ['obj-rec-spf', 0, 'obj-rec-time', 0],
];

for (const [s, so, d, di] of CONN) {
  need(s); need(d);
  lines.push({ patchline: { destination: [d, di], source: [s, so] } });
}

fs.writeFileSync(FILE, JSON.stringify(p, null, 1), 'utf8');
console.log('OK: ' + NB.length + ' objetos y ' + CONN.length + ' cables anadidos.');
