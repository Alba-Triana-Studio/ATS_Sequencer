/*
 * dual_graph_row.js
 * -------------------------------------------------------------------------
 * Unifica los DOS grupos de controles de dibujo (Time (s) / Freq. / Curve /
 * Draw  y  Time (s) / Amplitude / Curve / Draw) en un solo grupo visible por
 * canal, siguiendo el mismo criterio que la grafica unificada:
 *
 *   - La fila de AMPLITUD se superpone exactamente sobre la de FRECUENCIA
 *     (mismos presentation_rect) y solo una de las dos esta visible.
 *   - El boton "Editar: FREQ / Editar: AMP" (obj-vw-bedit-N) decide cual.
 *   - Los rotulos "Time (s)", "Curve" y "Draw" de la fila de amplitud salen
 *     de la presentacion por ser identicos a los de la fila de frecuencia;
 *     solo el rotulo del valor ("Freq." <-> "Amplitude") se alterna.
 *
 * Cada fila conserva su propia cadena de dibujo intacta (flonum -> t b f ->
 * sprintf xyc -> mensaje xyc -> function), asi que cada envolvente recuerda
 * sus propios valores de tiempo, valor y curva. No se modifica ni una sola
 * conexion existente.
 *
 * Requiere haber corrido antes scratch/dual_graph.js.
 */

const fs = require('fs');
const path = require('path');

const FILE = path.join(__dirname, '..', 'ATS_Sequencer.maxpat');
const doc = JSON.parse(fs.readFileSync(FILE, 'utf8'));
const P = doc.patcher;

const box = {};
for (const b of P.boxes) box[b.box.id] = b.box;

// --------------------------------------------------------------------------
// Mapa de las dos filas de dibujo por canal
// --------------------------------------------------------------------------
const ROWS = [
  {
    n: 1,
    freq: { time: 'obj-6qokentgx', val: 'obj-420', curve: 'obj-419', draw: 'obj-417',
            lblTime: 'obj-416', lblVal: 'obj-415', lblCurve: 'obj-414', lblDraw: 'obj-413' },
    amp:  { time: 'obj-n5auwlees', val: 'obj-396', curve: 'obj-391', draw: 'obj-389',
            lblTime: 'obj-388', lblVal: 'obj-387', lblCurve: 'obj-379', lblDraw: 'obj-375' }
  },
  {
    n: 2,
    freq: { time: 'obj-7bdffdhlv', val: 'obj-408', curve: 'obj-407', draw: 'obj-405',
            lblTime: 'obj-404', lblVal: 'obj-403', lblCurve: 'obj-402', lblDraw: 'obj-401' },
    amp:  { time: 'obj-vz66rk2iu', val: 'obj-432', curve: 'obj-431', draw: 'obj-429',
            lblTime: 'obj-428', lblVal: 'obj-427', lblCurve: 'obj-426', lblDraw: 'obj-425' }
  },
  {
    n: 3,
    freq: { time: 'obj-wgrmzda3b', val: 'obj-445', curve: 'obj-444', draw: 'obj-442',
            lblTime: 'obj-440', lblVal: 'obj-439', lblCurve: 'obj-438', lblDraw: 'obj-437' },
    amp:  { time: 'obj-3hxgrvvq7', val: 'obj-459', curve: 'obj-458', draw: 'obj-456',
            lblTime: 'obj-455', lblVal: 'obj-454', lblCurve: 'obj-453', lblDraw: 'obj-452' }
  },
  {
    n: 4,
    freq: { time: 'obj-yo8ur7y8c', val: 'obj-678', curve: 'obj-677', draw: 'obj-675',
            lblTime: 'obj-674', lblVal: 'obj-673', lblCurve: 'obj-672', lblDraw: 'obj-671' },
    amp:  { time: 'obj-u8jkizm94', val: 'obj-666', curve: 'obj-665', draw: 'obj-663',
            lblTime: 'obj-662', lblVal: 'obj-661', lblCurve: 'obj-660', lblDraw: 'obj-659' }
  }
];

// --------------------------------------------------------------------------
// Verificacion previa: confirmar los roles leyendo la cadena real del parche.
//   valor -> [t b f] -> [sprintf xyc %ld %.2f %.2f] entrada 1
//   curva -> [t b f] -> [sprintf ...]               entrada 2
//   boton -> mensaje "xyc ..." -> function
// --------------------------------------------------------------------------
const outs = {};
for (const l of P.lines) {
  const s = l.patchline.source, t = l.patchline.destination;
  (outs[s[0]] = outs[s[0]] || []).push({ o: s[1], to: t[0], i: t[1] });
}
function sprintfInlet(flonumId) {
  const a = (outs[flonumId] || []).filter(e => (box[e.to].text || '').startsWith('t b f'));
  if (a.length !== 1) return null;
  const tr = a[0].to;
  const sp = (outs[tr] || []).filter(e => (box[e.to].text || '').startsWith('sprintf xyc'));
  const cold = sp.filter(e => e.i > 0);
  return cold.length === 1 ? cold[0].i : null;
}
const errs = [];
for (const r of ROWS) {
  for (const side of ['freq', 'amp']) {
    const g = r[side];
    for (const k of Object.keys(g)) if (!box[g[k]]) errs.push(`canal ${r.n} ${side}.${k}=${g[k]} no existe`);
    if (sprintfInlet(g.val) !== 1) errs.push(`canal ${r.n} ${side}.val=${g.val} no entra a sprintf inlet 1 (dio ${sprintfInlet(g.val)})`);
    if (sprintfInlet(g.curve) !== 2) errs.push(`canal ${r.n} ${side}.curve=${g.curve} no entra a sprintf inlet 2 (dio ${sprintfInlet(g.curve)})`);
    const bm = (outs[g.draw] || []).filter(e => (box[e.to].text || '').startsWith('xyc'));
    if (bm.length !== 1) errs.push(`canal ${r.n} ${side}.draw=${g.draw} no dispara un mensaje xyc`);
  }
  for (const id of ['obj-vw-bedit-' + r.n, 'obj-vw-tE-' + r.n, 'obj-vw-tp']) {
    if (!box[id]) errs.push(`falta ${id} (corre antes scratch/dual_graph.js)`);
  }
}
if (errs.length) { console.error('ABORTA:\n  ' + errs.join('\n  ')); process.exit(1); }
console.log('roles verificados contra la cadena real del parche: OK');

// --------------------------------------------------------------------------
// Nombres de scripting (se respetan los varname ya existentes)
// --------------------------------------------------------------------------
function ensureVarname(id, proposed) {
  const o = box[id];
  if (!o.varname) o.varname = proposed;
  return o.varname;
}

// --------------------------------------------------------------------------
// Reubicacion: la fila de AMP se monta encima de la de FREQ
// --------------------------------------------------------------------------

const newBoxes = [];
const newLines = [];
function mkbox(o) { newBoxes.push({ box: o }); return o.id; }
function conn(s, so, d, di) { newLines.push({ patchline: { destination: [d, di], source: [s, so] } }); }

const PX = 3200;
const report = [];

for (const r of ROWS) {
  const n = r.n, F = r.freq, A = r.amp;

  // x original de la fila de amplitud: alli van a quedar los botones de vista
  const ampRowX = box[A.lblTime].presentation_rect[0];

  // widgets: misma posicion exacta que los de frecuencia
  for (const k of ['time', 'val', 'curve', 'draw']) {
    box[A[k]].presentation_rect = box[F[k]].presentation_rect.slice();
  }

  // rotulo del valor: mismo hueco de la fila de frecuencia; cada rotulo
  // conserva su propio ancho para que se vea igual que antes
  const lr = box[F.lblVal].presentation_rect;
  const ar = box[A.lblVal].presentation_rect;
  box[A.lblVal].presentation_rect = [lr[0], lr[1], ar[2], lr[3]];

  // rotulos duplicados de la fila de amplitud: fuera de la presentacion
  for (const k of ['lblTime', 'lblCurve', 'lblDraw']) {
    box[A[k]].presentation = 0;
    delete box[A[k]].presentation_rect;
  }

  // estado inicial guardado: se edita FRECUENCIA
  const freqIds = [F.time, F.val, F.curve, F.draw, F.lblVal];
  const ampIds = [A.time, A.val, A.curve, A.draw, A.lblVal];
  for (const id of freqIds) box[id].hidden = 0;
  for (const id of ampIds) box[id].hidden = 1;

  const fNames = [
    ensureVarname(F.time, 'rowFt' + n), ensureVarname(F.val, 'rowFv' + n),
    ensureVarname(F.curve, 'rowFc' + n), ensureVarname(F.draw, 'rowFd' + n),
    ensureVarname(F.lblVal, 'rowFl' + n)
  ];
  const aNames = [
    ensureVarname(A.time, 'rowAt' + n), ensureVarname(A.val, 'rowAv' + n),
    ensureVarname(A.curve, 'rowAc' + n), ensureVarname(A.draw, 'rowAd' + n),
    ensureVarname(A.lblVal, 'rowAl' + n)
  ];

  // ---- mensajes de visibilidad -----------------------------------------
  const showFreq = fNames.map(v => 'script show ' + v)
    .concat(aNames.map(v => 'script hide ' + v)).join(', ');
  const showAmp = aNames.map(v => 'script show ' + v)
    .concat(fNames.map(v => 'script hide ' + v)).join(', ');

  const y0 = 400 + (n - 1) * 120;
  const selR = mkbox({
    id: 'obj-vw-selR-' + n, maxclass: 'newobj', numinlets: 1, numoutlets: 3,
    outlettype: ['bang', 'bang', ''], text: 'sel 0 1',
    patching_rect: [PX + 1100, y0, 70, 22]
  });
  const mRowF = mkbox({
    id: 'obj-vw-mrowF-' + n, maxclass: 'message', numinlets: 2, numoutlets: 1,
    outlettype: [''], text: showFreq,
    patching_rect: [PX + 1100, y0 + 30, 620, 22]
  });
  const mRowA = mkbox({
    id: 'obj-vw-mrowA-' + n, maxclass: 'message', numinlets: 2, numoutlets: 1,
    outlettype: [''], text: showAmp,
    patching_rect: [PX + 1100, y0 + 60, 620, 22]
  });
  conn('obj-vw-tE-' + n, 0, selR, 0);
  conn(selR, 0, mRowF, 0);
  conn(selR, 1, mRowA, 0);
  conn(mRowF, 0, 'obj-vw-tp', 0);
  conn(mRowA, 0, 'obj-vw-tp', 0);

  // ---- botones de vista: se alinean con el borde izquierdo del grafico --
  const shift = ampRowX - box['obj-vw-bfreq-' + n].presentation_rect[0];
  for (const id of ['obj-vw-lbl-v-' + n, 'obj-vw-lbl-e-' + n,
                    'obj-vw-bfreq-' + n, 'obj-vw-bamp-' + n, 'obj-vw-bedit-' + n]) {
    const q = box[id].presentation_rect;
    box[id].presentation_rect = [q[0] + shift, q[1], q[2], q[3]];
  }

  report.push(`  canal ${n}: fila unica en [${lr[0]}, ${lr[1].toFixed(1)}]  |  botones movidos ${shift.toFixed(0)} px`);
}

P.boxes.push(...newBoxes);
P.lines.push(...newLines);

// grupos: la fila de amplitud ya no es un bloque aparte que se pueda mover
if (Array.isArray(P.boxgroups)) {
  const rowIds = new Set();
  for (const r of ROWS) for (const k of Object.keys(r.amp)) rowIds.add(r.amp[k]);
  for (const g of P.boxgroups) g.boxes = g.boxes.filter(id => !rowIds.has(id));
  P.boxgroups = P.boxgroups.filter(g => g.boxes.length > 1);
}

fs.writeFileSync(FILE, JSON.stringify(doc, null, '\t'));
console.log('OK - un solo grupo de controles de dibujo por canal');
console.log(report.join('\n'));
console.log(`  objetos nuevos: ${newBoxes.length}, conexiones nuevas: ${newLines.length}`);
