/*
 * dual_graph.js
 * -------------------------------------------------------------------------
 * Unifica las dos graficas (frecuencia y amplitud) de cada canal en un solo
 * grafico de control:
 *
 *   - La funcion de AMPLITUD se superpone exactamente sobre la de FRECUENCIA
 *     (mismo presentation_rect) con fondo transparente, sin grilla ni leyenda.
 *   - FRECUENCIA se dibuja en CYAN, AMPLITUD en FUCSIA.
 *   - Cada funcion conserva su propio eje Y: la de frecuencia mantiene su
 *     atributo `range` (Freq. Domain Hz) y la de amplitud su rango 0..1.
 *   - Se agregan 3 botones por canal: ver FREQ / ver AMP / editar FREQ|AMP.
 *     La visibilidad se hace con `script hide|show` y la capa editable con
 *     `script ignoreclick|respondtoclick` sobre la funcion de amplitud
 *     (que esta al frente): si ignora el click, el click cae en la de
 *     frecuencia que esta debajo.
 *   - El medidor (meter~) de cada canal pasa a la columna derecha del grafico.
 *   - Se recalculan las alturas de los paneles y se reapilan los 4 canales.
 *
 * NO se toca ninguna conexion existente: los mismos objetos `function`
 * (mismos ids) siguen conectados al `preset` (obj-3), a los `curve~` y al
 * subpatcher `p mastertoggles`. Guardado / cargado / reproduccion intactos.
 */

const fs = require('fs');
const path = require('path');

const FILE = path.join(__dirname, '..', 'ATS_Sequencer.maxpat');
const doc = JSON.parse(fs.readFileSync(FILE, 'utf8'));
const P = doc.patcher;

const box = {};
for (const b of P.boxes) box[b.box.id] = b.box;

const CYAN = [0.0, 0.85, 1.0, 1.0];
const FUCSIA = [1.0, 0.15, 0.8, 1.0];
const BTN_OFF_BG = [0.85, 0.88, 0.9, 1.0];
const BTN_OFF_TX = [0.25, 0.25, 0.25, 1.0];

// --------------------------------------------------------------------------
// Configuracion por canal
// --------------------------------------------------------------------------
const CH = [
  {
    n: 1,
    freq: 'obj-77', amp: 'obj-2',
    ampLabel: 'obj-10', meter: 'obj-39', db: 'obj-45',
    panel: 'obj-203',
    ampRow: ['obj-388', 'obj-387', 'obj-379', 'obj-375',
             'obj-n5auwlees', 'obj-396', 'obj-391', 'obj-389'],
    overlays: []
  },
  {
    n: 2,
    freq: 'obj-194', amp: 'obj-199',
    ampLabel: 'obj-196', meter: 'obj-154', db: 'obj-22',
    panel: 'obj-205',
    ampRow: ['obj-428', 'obj-427', 'obj-426', 'obj-425',
             'obj-vz66rk2iu', 'obj-432', 'obj-431', 'obj-429'],
    overlays: []
  },
  {
    n: 3,
    freq: 'obj-314', amp: 'obj-319',
    ampLabel: 'obj-316', meter: 'obj-276', db: 'obj-237',
    panel: 'obj-327',
    ampRow: ['obj-455', 'obj-454', 'obj-453', 'obj-452',
             'obj-3hxgrvvq7', 'obj-459', 'obj-458', 'obj-456'],
    // comentarios "C3" / "C 5" / "C6" dibujados encima del grafico:
    // se reescalan proporcionalmente al nuevo ancho.
    overlays: ['obj-362', 'obj-367', 'obj-537']
  },
  {
    n: 4,
    freq: 'obj-780', amp: 'obj-785',
    ampLabel: 'obj-782', meter: 'obj-743', db: 'obj-706',
    panel: 'obj-794',
    ampRow: ['obj-662', 'obj-661', 'obj-660', 'obj-659',
             'obj-u8jkizm94', 'obj-666', 'obj-665', 'obj-663'],
    overlays: []
  }
];

const missing = [];
for (const c of CH) {
  for (const k of ['freq', 'amp', 'ampLabel', 'meter', 'db', 'panel']) {
    if (!box[c[k]]) missing.push(`canal ${c.n} ${k}=${c[k]}`);
  }
  for (const id of c.ampRow.concat(c.overlays)) {
    if (!box[id]) missing.push(`canal ${c.n} row/overlay ${id}`);
  }
}
if (missing.length) {
  console.error('Objetos no encontrados:\n  ' + missing.join('\n  '));
  process.exit(1);
}

// --------------------------------------------------------------------------
// 1) Atributos de las funciones: colores, transparencia, nombre de script
// --------------------------------------------------------------------------
for (const c of CH) {
  const f = box[c.freq];
  const a = box[c.amp];

  f.varname = 'fnFreq' + c.n;
  f.linecolor = CYAN.slice();
  f.gridcolor = [0.5, 0.5, 0.5, 0.35];
  f.linethickness = 2;
  f.pointsize = 3.5;
  f.hidden = 0;
  f.ignoreclick = 0;

  a.varname = 'fnAmp' + c.n;
  a.linecolor = FUCSIA.slice();
  a.bgcolor = [0, 0, 0, 0];   // transparente: deja ver la curva de frecuencia
  a.gridcolor = [0, 0, 0, 0];
  a.grid = 0;                 // la grilla la aporta la capa de frecuencia
  a.legend = 0;               // la leyenda la aporta la capa de frecuencia
  a.linethickness = 2;
  a.pointsize = 3.5;
  a.hidden = 0;
  a.ignoreclick = 1;          // arranca editando FRECUENCIA
}

// --------------------------------------------------------------------------
// 2) Geometria: superponer graficas, mover medidor, colocar botones
// --------------------------------------------------------------------------
const METER_W = 47;
const METER_GAP = 9;
const newBoxes = [];
const newLines = [];

function mkbox(o) { newBoxes.push({ box: o }); return o.id; }
function conn(srcId, srcOut, dstId, dstIn) {
  newLines.push({ patchline: { destination: [dstId, dstIn], source: [srcId, srcOut] } });
}

// zona libre del canvas de edicion para la logica nueva
const PX = 3200;

for (const c of CH) {
  const f = box[c.freq];
  const a = box[c.amp];
  const [gx, gy, gw, gh] = f.presentation_rect;
  const newGw = gw - (METER_W + METER_GAP * 2 - 2);   // deja hueco al medidor

  // --- graficas superpuestas -------------------------------------------
  f.presentation_rect = [gx, gy, newGw, gh];
  a.presentation_rect = [gx, gy, newGw, gh];

  // --- comentarios dibujados sobre el grafico: reescalar en X ----------
  //     (y recortarlos al nuevo ancho para que no invadan la columna del
  //      medidor que queda a la derecha)
  for (const id of c.overlays) {
    const r = box[id].presentation_rect;
    let nx = gx + (r[0] - gx) * (newGw / gw);
    let nw = r[2];
    if (nx + nw > gx + newGw) nx = Math.max(gx, gx + newGw - nw);
    if (nx + nw > gx + newGw) nw = gx + newGw - nx;
    box[id].presentation_rect = [nx, r[1], nw, r[3]];
  }

  // --- columna del medidor, a la derecha del grafico -------------------
  const mx = gx + newGw + METER_GAP;
  const meterH = gh - 56;
  box[c.ampLabel].presentation_rect = [mx, gy + 2, METER_W, 20];
  box[c.meter].presentation_rect = [mx, gy + 24, METER_W, meterH];
  box[c.db].presentation_rect = [mx - 4, gy + 24 + meterH + 4, 57, 26];

  // --- botones de vista, a la derecha de la fila de controles de AMP ---
  const rowRects = c.ampRow.map(id => box[id].presentation_rect);
  const rowX = Math.min(...rowRects.map(r => r[0]));
  const rowYs = rowRects.map(r => r[1]).sort((p, q) => p - q);
  const numY = rowYs[rowYs.length - 1];   // fila de los flonum (la mas baja)

  const bx = rowX + 296;
  const by = numY;

  mkbox({
    id: 'obj-vw-lbl-v-' + c.n, maxclass: 'comment', numinlets: 1, numoutlets: 0,
    text: 'Ver curvas', fontsize: 12,
    patching_rect: [PX, 60 + (c.n - 1) * 520, 100, 20],
    presentation: 1, presentation_rect: [bx, by - 20, 130, 20]
  });
  mkbox({
    id: 'obj-vw-lbl-e-' + c.n, maxclass: 'comment', numinlets: 1, numoutlets: 0,
    text: 'Editar', fontsize: 12,
    patching_rect: [PX + 140, 60 + (c.n - 1) * 520, 100, 20],
    presentation: 1, presentation_rect: [bx + 136, by - 20, 120, 20]
  });

  const BF = mkbox({
    id: 'obj-vw-bfreq-' + c.n, maxclass: 'textbutton', numinlets: 1, numoutlets: 3,
    outlettype: ['', '', 'int'], mode: 1, text: 'FREQ', texton: 'FREQ',
    fontsize: 11, rounded: 4, usebgoncolor: 1,
    bgcolor: BTN_OFF_BG, textcolor: BTN_OFF_TX,
    bgoncolor: CYAN, textoncolor: [0, 0, 0, 1],
    patching_rect: [PX, 90 + (c.n - 1) * 520, 62, 22],
    presentation: 1, presentation_rect: [bx, by, 62, 22]
  });
  const BA = mkbox({
    id: 'obj-vw-bamp-' + c.n, maxclass: 'textbutton', numinlets: 1, numoutlets: 3,
    outlettype: ['', '', 'int'], mode: 1, text: 'AMP', texton: 'AMP',
    fontsize: 11, rounded: 4, usebgoncolor: 1,
    bgcolor: BTN_OFF_BG, textcolor: BTN_OFF_TX,
    bgoncolor: FUCSIA, textoncolor: [1, 1, 1, 1],
    patching_rect: [PX + 70, 90 + (c.n - 1) * 520, 62, 22],
    presentation: 1, presentation_rect: [bx + 66, by, 62, 22]
  });
  const BE = mkbox({
    id: 'obj-vw-bedit-' + c.n, maxclass: 'textbutton', numinlets: 1, numoutlets: 3,
    outlettype: ['', '', 'int'], mode: 1,
    text: 'Editar: FREQ', texton: 'Editar: AMP',
    fontsize: 11, rounded: 4, usebgoncolor: 1,
    bgcolor: CYAN, textcolor: [0, 0, 0, 1],
    bgoncolor: FUCSIA, textoncolor: [1, 1, 1, 1],
    patching_rect: [PX + 140, 90 + (c.n - 1) * 520, 120, 22],
    presentation: 1, presentation_rect: [bx + 136, by, 120, 22]
  });

  c._BF = BF; c._BA = BA; c._BE = BE;
}

// --------------------------------------------------------------------------
// 3) Logica: thispatcher + mensajes de script
// --------------------------------------------------------------------------
const TP = mkbox({
  id: 'obj-vw-tp', maxclass: 'newobj', numinlets: 1, numoutlets: 1,
  outlettype: [''], text: 'thispatcher',
  patching_rect: [PX, 40, 90, 22]
});

function msg(id, text, x, y, w) {
  return mkbox({
    id: id, maxclass: 'message', numinlets: 2, numoutlets: 1, outlettype: [''],
    text: text, patching_rect: [x, y, w || 200, 22]
  });
}

for (const c of CH) {
  const n = c.n;
  const y0 = 130 + (n - 1) * 520;

  // ---- visibilidad FRECUENCIA ----------------------------------------
  const selF = mkbox({
    id: 'obj-vw-selF-' + n, maxclass: 'newobj', numinlets: 1, numoutlets: 3,
    outlettype: ['bang', 'bang', ''], text: 'sel 0 1',
    patching_rect: [PX, y0, 70, 22]
  });
  const mFhide = msg('obj-vw-mFh-' + n, 'script hide fnFreq' + n, PX, y0 + 30);
  const mFshow = msg('obj-vw-mFs-' + n, 'script show fnFreq' + n, PX + 210, y0 + 30);
  conn(c._BF, 0, selF, 0);
  conn(selF, 0, mFhide, 0);
  conn(selF, 1, mFshow, 0);
  conn(mFhide, 0, TP, 0);
  conn(mFshow, 0, TP, 0);

  // al ocultar FREQ, pasar la edicion a AMP automaticamente
  const tAuto = mkbox({
    id: 'obj-vw-tauto-' + n, maxclass: 'newobj', numinlets: 1, numoutlets: 2,
    outlettype: ['bang', 'bang'], text: 't b b',
    patching_rect: [PX + 430, y0 + 30, 60, 22]
  });
  const mAutoSet = msg('obj-vw-mautoset-' + n, 'set 1', PX + 500, y0 + 60, 60);
  const mAutoVal = msg('obj-vw-mautoval-' + n, '1', PX + 430, y0 + 60, 40);
  conn(selF, 0, tAuto, 0);
  conn(tAuto, 1, mAutoSet, 0);
  conn(tAuto, 0, mAutoVal, 0);
  conn(mAutoSet, 0, c._BE, 0);

  // ---- visibilidad AMPLITUD + capa editable --------------------------
  const tA = mkbox({
    id: 'obj-vw-tA-' + n, maxclass: 'newobj', numinlets: 1, numoutlets: 2,
    outlettype: ['int', 'int'], text: 't i i',
    patching_rect: [PX, y0 + 90, 60, 22]
  });
  const selA = mkbox({
    id: 'obj-vw-selA-' + n, maxclass: 'newobj', numinlets: 1, numoutlets: 3,
    outlettype: ['bang', 'bang', ''], text: 'sel 0 1',
    patching_rect: [PX + 80, y0 + 120, 70, 22]
  });
  const mAhide = msg('obj-vw-mAh-' + n, 'script hide fnAmp' + n, PX + 80, y0 + 150);
  const mAshow = msg('obj-vw-mAs-' + n, 'script show fnAmp' + n, PX + 290, y0 + 150);
  conn(c._BA, 0, tA, 0);
  conn(tA, 1, selA, 0);
  conn(selA, 0, mAhide, 0);
  conn(selA, 1, mAshow, 0);
  conn(mAhide, 0, TP, 0);
  conn(mAshow, 0, TP, 0);

  // (amp visible) AND (editar == AMP)  ->  la capa AMP recibe los clicks
  const tAlogic = mkbox({
    id: 'obj-vw-tAl-' + n, maxclass: 'newobj', numinlets: 1, numoutlets: 2,
    outlettype: ['bang', 'int'], text: 't b i',
    patching_rect: [PX, y0 + 120, 60, 22]
  });
  const tE = mkbox({
    id: 'obj-vw-tE-' + n, maxclass: 'newobj', numinlets: 1, numoutlets: 2,
    outlettype: ['int', 'int'], text: 't i i',
    patching_rect: [PX + 430, y0 + 120, 60, 22]
  });
  const iEdit = mkbox({
    id: 'obj-vw-iE-' + n, maxclass: 'newobj', numinlets: 2, numoutlets: 1,
    outlettype: ['int'], text: 'i',
    patching_rect: [PX, y0 + 150, 40, 22]
  });
  const andOp = mkbox({
    id: 'obj-vw-and-' + n, maxclass: 'newobj', numinlets: 2, numoutlets: 1,
    outlettype: ['int'], text: '&&',
    patching_rect: [PX, y0 + 190, 50, 22]
  });
  const selC = mkbox({
    id: 'obj-vw-selC-' + n, maxclass: 'newobj', numinlets: 1, numoutlets: 3,
    outlettype: ['bang', 'bang', ''], text: 'sel 0 1',
    patching_rect: [PX, y0 + 220, 70, 22]
  });
  const mIgn = msg('obj-vw-mIgn-' + n, 'script ignoreclick fnAmp' + n, PX, y0 + 250);
  const mRes = msg('obj-vw-mRes-' + n, 'script respondtoclick fnAmp' + n, PX + 240, y0 + 250);

  conn(tA, 0, tAlogic, 0);
  conn(tAlogic, 1, andOp, 1);     // primero guarda el estado de visibilidad
  conn(tAlogic, 0, iEdit, 0);     // luego relanza con el estado de edicion
  conn(iEdit, 0, andOp, 0);

  conn(c._BE, 0, tE, 0);
  conn(mAutoVal, 0, tE, 0);
  conn(tE, 1, iEdit, 1);          // guarda estado de edicion
  conn(tE, 0, andOp, 0);          // y dispara el calculo

  conn(andOp, 0, selC, 0);
  conn(selC, 0, mIgn, 0);
  conn(selC, 1, mRes, 0);
  conn(mIgn, 0, TP, 0);
  conn(mRes, 0, TP, 0);

  // ---- inicializacion -------------------------------------------------
  const lb = mkbox({
    id: 'obj-vw-lb-' + n, maxclass: 'newobj', numinlets: 1, numoutlets: 1,
    outlettype: ['bang'], text: 'loadbang',
    patching_rect: [PX + 620, y0, 70, 22]
  });
  const dl = mkbox({
    id: 'obj-vw-del-' + n, maxclass: 'newobj', numinlets: 2, numoutlets: 1,
    outlettype: ['bang'], text: 'del 1200',
    patching_rect: [PX + 620, y0 + 30, 70, 22]
  });
  const tInit = mkbox({
    id: 'obj-vw-tinit-' + n, maxclass: 'newobj', numinlets: 1, numoutlets: 3,
    outlettype: ['bang', 'bang', 'bang'], text: 't b b b',
    patching_rect: [PX + 620, y0 + 60, 80, 22]
  });
  const mI0 = msg('obj-vw-mi0-' + n, '0', PX + 620, y0 + 90, 40);   // editar = FREQ
  const mI1 = msg('obj-vw-mi1-' + n, '1', PX + 680, y0 + 90, 40);   // ver AMP
  const mI2 = msg('obj-vw-mi2-' + n, '1', PX + 740, y0 + 90, 40);   // ver FREQ
  conn(lb, 0, dl, 0);
  conn(dl, 0, tInit, 0);
  conn(tInit, 2, mI2, 0);
  conn(tInit, 1, mI1, 0);
  conn(tInit, 0, mI0, 0);
  conn(mI2, 0, c._BF, 0);
  conn(mI1, 0, c._BA, 0);
  conn(mI0, 0, c._BE, 0);
}

// Los mensajes de scripting marcan el parche como "modificado". Como la
// inicializacion corre sola en cada apertura, se limpia el bit de dirty
// despues de que los 4 canales terminaron (del 2000 > del 1200).
{
  const lbc = mkbox({
    id: 'obj-vw-lb-clean', maxclass: 'newobj', numinlets: 1, numoutlets: 1,
    outlettype: ['bang'], text: 'loadbang',
    patching_rect: [PX + 900, 40, 70, 22]
  });
  const dlc = mkbox({
    id: 'obj-vw-del-clean', maxclass: 'newobj', numinlets: 2, numoutlets: 1,
    outlettype: ['bang'], text: 'del 2000',
    patching_rect: [PX + 900, 70, 70, 22]
  });
  const mc = msg('obj-vw-mclean', 'clean', PX + 900, 100, 60);
  conn(lbc, 0, dlc, 0);
  conn(dlc, 0, mc, 0);
  conn(mc, 0, TP, 0);
}

P.boxes.push(...newBoxes);
P.lines.push(...newLines);

// --------------------------------------------------------------------------
// 3b) Grupos: el medidor deja de pertenecer al grupo de la fila de AMP
//     (ahora vive en la columna derecha del grafico) y pasa a su propio grupo
//     junto con los botones de vista del canal.
// --------------------------------------------------------------------------
if (Array.isArray(P.boxgroups)) {
  for (const c of CH) {
    const trio = [c.ampLabel, c.meter, c.db];
    for (const g of P.boxgroups) {
      if (trio.some(id => g.boxes.includes(id))) {
        g.boxes = g.boxes.filter(id => !trio.includes(id));
      }
    }
    P.boxgroups.push({ boxes: trio.slice() });
    P.boxgroups.push({
      boxes: ['obj-vw-lbl-v-' + c.n, 'obj-vw-lbl-e-' + c.n, c._BF, c._BA, c._BE]
    });
  }
  P.boxgroups = P.boxgroups.filter(g => g.boxes.length > 1);
}

// --------------------------------------------------------------------------
// 4) Recalcular alturas de panel y reapilar los canales
// --------------------------------------------------------------------------
// Objetos de presentacion que NO pertenecen a ningun canal (columna global
// derecha y objetos fuera del area visible).
const GLOBAL_X = 1196;

// limites originales de los paneles de canal (antes de tocar nada)
const ORIG_PANEL_Y = [4, 723.365723, 1427.7657334665755, 2143.7657441954116];
const CH_END = [ORIG_PANEL_Y[1], ORIG_PANEL_Y[2], ORIG_PANEL_Y[3], Infinity];

const members = [[], [], [], []];
const origY = new Map();
for (const b of P.boxes) {
  const o = b.box;
  if (!o.presentation || !o.presentation_rect) continue;
  origY.set(o.id, o.presentation_rect[1]);
}
// para los objetos que ya movimos necesitamos su y ORIGINAL: los reclasificamos
// usando el panel al que pertenecen segun su id conocido.
const forced = {};
for (const c of CH) {
  const idx = c.n - 1;
  for (const id of [c.freq, c.amp, c.ampLabel, c.meter, c.db, c.panel].concat(c.ampRow, c.overlays)) {
    forced[id] = idx;
  }
  for (const id of [c._BF, c._BA, c._BE, 'obj-vw-lbl-v-' + c.n, 'obj-vw-lbl-e-' + c.n]) {
    forced[id] = idx;
  }
}

for (const b of P.boxes) {
  const o = b.box;
  if (!o.presentation || !o.presentation_rect) continue;
  if (forced[o.id] !== undefined) { members[forced[o.id]].push(o); continue; }
  if (o.presentation_rect[0] >= GLOBAL_X) continue;          // columna global
  const y = o.presentation_rect[1];
  let idx = -1;
  for (let i = 0; i < 4; i++) {
    if (y >= ORIG_PANEL_Y[i] && y < CH_END[i]) { idx = i; break; }
  }
  if (idx >= 0) members[idx].push(o);
}

let cursor = ORIG_PANEL_Y[0];
const report = [];
for (let i = 0; i < 4; i++) {
  const panel = box[CH[i].panel];
  const shift = cursor - panel.presentation_rect[1];

  for (const o of members[i]) {
    o.presentation_rect = [
      o.presentation_rect[0],
      o.presentation_rect[1] + shift,
      o.presentation_rect[2],
      o.presentation_rect[3]
    ];
  }

  const top = panel.presentation_rect[1];
  let bottom = top;
  for (const o of members[i]) {
    if (o.id === panel.id) continue;
    bottom = Math.max(bottom, o.presentation_rect[1] + o.presentation_rect[3]);
  }
  const h = Math.round((bottom + 12 - top) * 100) / 100;
  panel.presentation_rect = [panel.presentation_rect[0], top, panel.presentation_rect[2], h];

  report.push(`  canal ${i + 1}: panel y=${top.toFixed(1)} h=${h.toFixed(1)}  (shift ${shift.toFixed(1)}, ${members[i].length} objetos)`);
  cursor = top + h + 1;
}

fs.writeFileSync(FILE, JSON.stringify(doc, null, '\t'));

console.log('OK - grafica unificada por canal');
console.log(report.join('\n'));
console.log(`  altura total de presentacion: ${cursor.toFixed(1)} px (antes 2865)`);
console.log(`  objetos nuevos: ${newBoxes.length}, conexiones nuevas: ${newLines.length}`);
