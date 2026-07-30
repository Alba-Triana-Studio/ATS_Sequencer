// Verificacion estructural del patch tras la unificacion.
const fs = require('fs');
const p = JSON.parse(fs.readFileSync('ATS_Sequencer.maxpat', 'utf8'));
const boxes = p.patcher.boxes, lines = p.patcher.lines;
const byId = {}; for (const b of boxes) byId[b.box.id] = b.box;
const desc = id => byId[id] ? (byId[id].maxclass + ' ' + JSON.stringify((byId[id].text || '').slice(0, 40))) : null;
let fail = 0;
const bad = m => { console.log('  FALLO: ' + m); fail++; };

// 1. Ninguna conexion apunta a un objeto inexistente y ningun outlet/inlet fuera de rango
for (const l of lines) {
  const s = l.patchline.source, d = l.patchline.destination;
  if (!byId[s[0]]) bad('conexion desde objeto inexistente ' + s[0]);
  else if (s[1] >= (byId[s[0]].numoutlets || 0)) bad(s[0] + ' no tiene outlet ' + s[1]);
  if (!byId[d[0]]) bad('conexion hacia objeto inexistente ' + d[0]);
  else if (d[1] >= (byId[d[0]].numinlets || 0)) bad(d[0] + ' no tiene inlet ' + d[1]);
}

// 2. Ids duplicados
const seen = new Set();
for (const b of boxes) { if (seen.has(b.box.id)) bad('id duplicado ' + b.box.id); seen.add(b.box.id); }

// 3. Las matrices 2-4 y su UI han desaparecido
for (const id of ['obj-198', 'obj-318', 'obj-784', 'obj-848', 'obj-844', 'obj-840',
                  'obj-836', 'obj-834', 'obj-832', 'obj-append-mat-2', 'obj-col-m3-5'])
  if (byId[id]) bad(id + ' sigue existiendo');

// 4. obj-3 alimenta a los 20 clientes de los 4 canales
const MAPS = [
  ['obj-12', 'obj-5', 'obj-6', 'obj-77', 'obj-2'],
  ['obj-195', 'obj-188', 'obj-186', 'obj-194', 'obj-199'],
  ['obj-315', 'obj-308', 'obj-306', 'obj-314', 'obj-319'],
  ['obj-781', 'obj-774', 'obj-772', 'obj-780', 'obj-785'],
];
const conn = (a, ao, b, bi) => lines.some(l =>
  l.patchline.source[0] === a && l.patchline.source[1] === ao &&
  l.patchline.destination[0] === b && l.patchline.destination[1] === bi);
for (const t of MAPS[0])
  if (!conn('obj-3', 0, t, 0)) bad('obj-3 no alimenta ' + t);
for (let c = 1; c < 4; c++) {
  for (const t of [MAPS[c][3], MAPS[c][4]])
    if (!conn('obj-3', 0, t, 0)) bad('obj-3 no alimenta la grafica ' + t);
  for (const t of [MAPS[c][0], MAPS[c][1], MAPS[c][2]]) {
    if (conn('obj-3', 0, t, 0)) bad(t + ' sigue siendo cliente del preset');
    if (!conn(MAPS[0][[0, 1, 2][[MAPS[c][0], MAPS[c][1], MAPS[c][2]].indexOf(t)]], 0, t, 0))
      bad('el canal 1 no propaga a ' + t);
  }
}
// Clear unificado
for (const m of ['obj-191', 'obj-311', 'obj-777'])
  if (!conn('obj-64', 0, m, 0)) bad('el Clear del panel 1 no llega a ' + m);
// duplicados fuera de presentacion
for (const id of ['obj-d5j3ero9y','obj-188','obj-186','obj-193','obj-hvlho7th0','obj-308',
                  'obj-306','obj-313','obj-3afs9g9yx','obj-774','obj-772','obj-779'])
  if (byId[id].presentation) bad(id + ' sigue en presentacion');

// 5. Play unificado
for (const t of ['obj-180', 'obj-299', 'obj-766']) {
  if (!conn('obj-59', 0, t, 0)) bad('obj-59 no propaga a ' + t);
  if (conn('obj-112', 0, t, 0)) bad('obj-112 sigue tocando ' + t + ' directamente');
  if (conn(t, 0, 'obj-46', 0)) bad(t + ' sigue arrancando el transporte obj-46');
  if (byId[t].presentation) bad(t + ' sigue en presentacion');
}
if (!conn('obj-112', 0, 'obj-59', 0)) bad('obj-112 ya no llega a obj-59');
if (!conn('obj-59', 0, 'obj-46', 0)) bad('obj-59 ya no arranca el transporte');

// 6. playactive solo lo fija el canal 1
if (!conn('obj-60', 1, 'obj-2b-tbbb-0', 0)) bad('canal 1 ya no fija playactive');
for (const [s, t] of [['obj-179', 'obj-2b-tbbb-1'], ['obj-298', 'obj-2b-tbbb-2'], ['obj-765', 'obj-2b-tbbb-3']])
  if (conn(s, 1, t, 0)) bad(s + ' sigue fijando playactive');

// 7. Cadena MUTE + SOLO de cada canal
const CH = [
  { n: 1, mute: 'obj-20', send: 'obj-177' },
  { n: 2, mute: 'obj-143', send: 'obj-140' },
  { n: 3, mute: 'obj-265', send: 'obj-262' },
  { n: 4, mute: 'obj-733', send: 'obj-730' },
];
for (const c of CH) {
  const id = s => 'obj-ms-' + s + '-' + c.n;
  for (const k of ['tbi', 'rsolo', 'sstore', 'tii', 'eq0', 'eqn', 'nm', 'and', 'or',
                   'solo', 'lbl', 'sel', 'tbb', 'on', 'off', 'clr'])
    if (!byId[id(k)]) bad('falta ' + id(k));
  if (byId[id('expr')]) bad('quedo un expr en el canal ' + c.n);
  // ruta del solostate
  if (!conn(id('rsolo'), 0, id('sstore'), 0)) bad('r solostate ' + c.n + ' desconectado');
  if (!conn(id('sstore'), 0, id('tii'), 0)) bad('sstore ' + c.n + ' no alimenta t i i');
  if (!conn(id('tii'), 1, id('eqn'), 0)) bad('t i i ' + c.n + ' no alimenta == N');
  if (!conn(id('eqn'), 0, id('or'), 1)) bad('== N ' + c.n + ' no llega al inlet frio de ||');
  if (!conn(id('tii'), 0, id('eq0'), 0)) bad('t i i ' + c.n + ' no alimenta == 0');
  if (!conn(id('eq0'), 0, id('and'), 0)) bad('== 0 ' + c.n + ' no llega al inlet caliente de &&');
  if (!conn(id('and'), 0, id('or'), 0)) bad('&& ' + c.n + ' no llega a ||');
  if (!conn(id('or'), 0, c.send, 0)) bad('|| ' + c.n + ' no llega a ' + c.send);
  // ruta del mute
  if (!conn(c.mute, 0, id('tbi'), 0)) bad('mute ' + c.n + ' no entra en la logica');
  if (!conn(id('tbi'), 1, id('nm'), 0)) bad('t b i ' + c.n + ' no alimenta == 0 del mute');
  if (!conn(id('nm'), 0, id('and'), 1)) bad('mute ' + c.n + ' no llega al inlet frio de &&');
  if (!conn(id('tbi'), 0, id('sstore'), 0)) bad('mute ' + c.n + ' no dispara el recalculo');
  // textos exactos de los comparadores y operadores
  const want = { eqn: '== ' + c.n, eq0: '== 0', nm: '== 0', and: '&& 1', or: '|| 0' };
  for (const k in want) if (byId[id(k)].text !== want[k])
    bad(id(k) + ' es "' + byId[id(k)].text + '" y deberia ser "' + want[k] + '"');
  // solo exclusivo: apaga los otros tres
  let others = 0;
  for (const o of CH) if (o.n !== c.n && conn(id('clr'), 0, 'obj-ms-solo-' + o.n, 0)) others++;
  if (others !== 3) bad('solo ' + c.n + ' apaga ' + others + ' de 3 canales');
  // el toggle SOLO debe estar en presentacion y no solaparse con MUTE
  const st = byId[id('solo')], mt = byId[c.mute];
  if (!st.presentation) bad('solo ' + c.n + ' no esta en presentacion');
  const sr = st.presentation_rect, mr = mt.presentation_rect;
  if (sr[0] + sr[2] > mr[0]) bad('solo ' + c.n + ' se solapa con MUTE (' + (sr[0] + sr[2]) + ' > ' + mr[0] + ')');
  if (Math.abs(sr[1] - mr[1]) > 1) bad('solo ' + c.n + ' desalineado con MUTE');
}
if (!conn('obj-ms-lb', 0, 'obj-ms-lb0', 0) || !conn('obj-ms-lb0', 0, 'obj-ms-lbsend', 0))
  bad('init de solostate incompleto');

// 8. Solapamientos en presentacion dentro del panel del oscilador 1
const p1 = boxes.map(b => b.box).filter(o => o.presentation && o.presentation_rect[1] < 100 &&
  o.presentation_rect[0] > 150 && o.presentation_rect[0] < 340);
p1.sort((a, b) => a.presentation_rect[0] - b.presentation_rect[0]);
console.log('\n  fila PLAY/SOLO/MUTE del oscilador 1:');
for (const o of p1) console.log('   ', JSON.stringify(o.presentation_rect.map(Math.round)), o.id, o.maxclass, JSON.stringify(o.text || ''));

// 9. Nada en presentacion queda dentro del hueco que dejaron las matrices 2-4
for (const [panel, y0, y1] of [['obj-202', 896, 1362], ['obj-322', 1622, 2083], ['obj-788', 2365, 2803]]) {
  // el panel izquierdo llega hasta x=333; mas a la derecha empieza la columna de medidores
  const inside = boxes.map(b => b.box).filter(o => o.presentation && o.presentation_rect[0] < 333 &&
    o.presentation_rect[1] > y0 && o.presentation_rect[1] < y1);
  if (inside.length) bad('quedan ' + inside.length + ' objetos en el hueco de ' + panel + ': ' +
    inside.map(o => o.id + '/' + o.maxclass).join(','));
}

console.log('\n' + (fail === 0 ? 'OK: ' + boxes.length + ' objetos, ' + lines.length + ' conexiones, sin fallos'
                               : fail + ' FALLOS'));
process.exit(fail ? 1 : 0);
