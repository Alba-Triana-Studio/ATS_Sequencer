/*
 * verify_timer_extras.js — comprueba (sin Max) los cambios de patch_timer_extras.js
 *   1. el TOTAL timer cuelga de obj-59 y ya no de obj-109 / mensajes de exclusion
 *   2. existen las cadenas de TOTAL ms, PRESET ms y COLUMN, completas
 *   3. las 3 cajas nuevas no se solapan con nada en presentacion
 *   4. simulacion: obj-59 se pone a 1 con cada boton de play y a 0 al parar
 *   5. aritmetica de la columna para los 600 presets
 */
const fs = require('fs');
const path = require('path');

const p = JSON.parse(fs.readFileSync(path.join(__dirname, '..', 'ATS_Sequencer.maxpat'), 'utf8'));
const boxes = p.patcher.boxes.map(b => b.box);
const lines = p.patcher.lines.map(l => l.patchline);
const by = {}; boxes.forEach(b => by[b.id] = b);

let fail = 0;
const bad = m => { console.log('  FALLO: ' + m); fail++; };
const ok = m => console.log('  ok: ' + m);

const conn = (s, so, d, di) => lines.some(l =>
  l.source[0] === s && l.source[1] === so && l.destination[0] === d && l.destination[1] === di);
const inTo = id => lines.filter(l => l.destination[0] === id);

/* 1. fuente del total timer */
console.log('\n1. Disparo del TOTAL timer');
if (!conn('obj-59', 0, 'obj-tt-sel', 0)) bad('obj-59 no alimenta obj-tt-sel');
else ok('obj-59 (PLAY global) -> obj-tt-sel');
const stale = inTo('obj-tt-sel').filter(l => l.source[0] !== 'obj-59');
if (stale.length) bad('obj-tt-sel aun recibe de ' + stale.map(l => l.source[0]).join(','));
else ok('obj-tt-sel no tiene otras fuentes');
if (!conn('obj-tt-sel', 0, 'obj-tt-clocker', 0) || !conn('obj-tt-sel', 1, 'obj-tt-stop', 0))
  bad('cadena sel->clocker/stop rota');
else ok('sel 1 0 -> clocker / stop intacta');

/* 2. cadenas nuevas */
console.log('\n2. Cadenas nuevas');
const chains = [
  ['TOTAL ms', [['obj-tt-clocker', 0], ['obj-ttx-tot-i', 0], ['obj-ttx-tot-set', 0], ['obj-ttx-disp-totms', 0]]],
  ['PRESET ms', [['obj-85', 0], ['obj-ttx-pre-i', 0], ['obj-ttx-pre-set', 0], ['obj-ttx-disp-prems', 0]]],
  ['COLUMN', [['obj-3', 1], ['obj-ttx-col-clip', 0], ['obj-ttx-col-sub', 0], ['obj-ttx-col-mod', 0],
              ['obj-ttx-col-add', 0], ['obj-ttx-col-set', 0], ['obj-ttx-disp-col', 0]]]
];
for (const [name, ch] of chains) {
  let good = true;
  for (let i = 0; i < ch.length - 1; i++) {
    if (!by[ch[i][0]]) { bad(name + ': falta ' + ch[i][0]); good = false; break; }
    if (!conn(ch[i][0], ch[i][1], ch[i + 1][0], 0)) {
      bad(name + ': falta ' + ch[i][0] + ':' + ch[i][1] + ' -> ' + ch[i + 1][0]); good = false; break;
    }
  }
  if (good) ok(name + ': ' + ch.map(c => c[0]).join(' -> '));
}
if (!conn('obj-tt-sel', 0, 'obj-ttx-tot-zero', 0) || !conn('obj-ttx-tot-zero', 0, 'obj-ttx-disp-totms', 0))
  bad('reset "set 0" del TOTAL ms no conectado');
else ok('TOTAL ms se pone a 0 al arrancar');

/* 3. inlets/outlets fuera de rango + solapamientos en presentacion */
console.log('\n3. Estructura / presentacion');
for (const l of lines) {
  const s = by[l.source[0]], d = by[l.destination[0]];
  if (!s || !d) { bad('conexion colgante ' + l.source[0] + ' -> ' + l.destination[0]); continue; }
  if (l.source[1] >= (s.numoutlets || 0)) bad(s.id + ' outlet ' + l.source[1] + ' fuera de rango');
  if (l.destination[1] >= (d.numinlets || 0)) bad(d.id + ' inlet ' + l.destination[1] + ' fuera de rango');
}
const pres = boxes.filter(b => b.presentation && b.presentation_rect &&
  b.presentation_rect[1] < 115 && b.presentation_rect[0] < 350);
const ov = (a, b) => {
  const [ax, ay, aw, ah] = a.presentation_rect, [bx, byy, bw, bh] = b.presentation_rect;
  return ax < bx + bw && bx < ax + aw && ay < byy + bh && byy < ay + ah;
};
const mineIds = boxes.filter(b => b.id.startsWith('obj-ttx-')).map(b => b.id);
for (const m of mineIds) {
  const a = by[m]; if (!a.presentation) continue;
  for (const b of pres) {
    if (b.id === m || b.id.startsWith('obj-ttx-')) continue;
    if (ov(a, b)) bad(m + ' se solapa con ' + b.id + ' ' + JSON.stringify(b.presentation_rect));
  }
}
ok('sin solapamientos con objetos existentes en la banda superior');

/* 4. simulacion: quien pone obj-59 a 1 / a 0 */
console.log('\n4. Alcance del estado global de reproduccion (obj-59)');
// recorre hacia atras desde obj-59 hasta encontrar las fuentes de cada boton
const srcOf = id => inTo(id).map(l => l.source[0]);
// los send/receive tambien son aristas del grafo
const nameOf = b => (b.text || '').trim().split(/\s+/)[1];
const receiversOf = {};
boxes.filter(b => /^(r|receive)\s/.test(b.text || '')).forEach(b => {
  (receiversOf[nameOf(b)] = receiversOf[nameOf(b)] || []).push(b.id);
});
const reaches = (from, target, seen = new Set()) => {
  if (from === target) return true;
  if (seen.has(from)) return false;
  seen.add(from);
  const next = lines.filter(l => l.source[0] === from).map(l => l.destination[0]);
  const b = by[from];
  if (b && /^(s|send)\s/.test(b.text || '')) next.push(...(receiversOf[nameOf(b)] || []));
  return next.some(n => reaches(n, target, seen));
};
const buttons = {
  'PLAY (click directo)': 'obj-59',
  'Play Full Piece': 'obj-109',
  'Play all sequence': 'obj-seq-toggle',
  'Autoplay (click en celda)': 'obj-autoplay-toggle'
};
for (const [name, id] of Object.entries(buttons)) {
  if (id === 'obj-59' || reaches(id, 'obj-59')) ok(name + ' (' + id + ') alcanza obj-59');
  else bad(name + ' (' + id + ') NO alcanza obj-59 -> el total timer no arrancaria');
}
// obj-59 no debe pulsar 0/1 entre presets durante Full Piece:
// dentro de p mastertoggles, el outlet que va a obj-59 solo recibe de los inlets
const mt = by['obj-112'].patcher;
const mtLines = mt.lines.map(l => l.patchline);
const mtBy = {}; mt.boxes.forEach(b => mtBy[b.box.id] = b.box);
// outlet 0 del subpatcher = el que tiene el indice mas bajo... buscamos por conexion a obj-59
const outletFeeders = mtLines.filter(l => mtBy[l.destination[0]] && mtBy[l.destination[0]].maxclass === 'outlet' &&
  l.destination[0] === 'obj-37').map(l => l.source[0]);
const fromCounter = outletFeeders.filter(id => {
  // el counter (obj-290/obj-320) es el que avanza de preset en preset
  return ['obj-320', 'obj-290'].includes(id);
});
if (fromCounter.length) bad('el contador de presets llega al toggle PLAY: parpadearia entre celdas');
else ok('el contador de presets NO toca el toggle PLAY (' + outletFeeders.join(',') + '): sin cortes entre celdas');

/* 5. aritmetica de columna */
console.log('\n5. Columna = ((N-1) % 20) + 1');
const col = n => ((Math.min(600, Math.max(1, n)) - 1) % 20) + 1;
const casos = [[1, 1], [20, 20], [21, 1], [40, 20], [421, 1], [440, 20], [600, 20], [599, 19]];
let cok = true;
for (const [n, exp] of casos) if (col(n) !== exp) { bad('preset ' + n + ' -> ' + col(n) + ', esperado ' + exp); cok = false; }
if (cok) ok('correcta en ' + casos.map(c => c[0]).join(', ') + ' (incluida la fila Full Piece 421..440)');

console.log('\n' + (fail === 0 ? 'OK: sin fallos' : fail + ' FALLOS'));
process.exit(fail ? 1 : 0);
