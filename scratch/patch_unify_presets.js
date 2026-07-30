// Unificacion de las 4 matrices de presets en la matriz 1 (obj-3),
// reproduccion unificada de los 4 osciladores y funcion SOLO por canal.
// Idempotente: limpia sus propios objetos (obj-ms-*) antes de reinsertarlos.
//
//   node scratch/patch_unify_presets.js
const fs = require('fs');

const FILE = 'ATS_Sequencer.maxpat';
const p = JSON.parse(fs.readFileSync(FILE, 'utf8'));
const pat = p.patcher;

const byId = () => { const m = {}; for (const b of pat.boxes) m[b.box.id] = b.box; return m; };
const has = id => pat.boxes.some(b => b.box.id === id);
const get = id => (pat.boxes.find(b => b.box.id === id) || {}).box;

function delBoxes(ids) {
  const set = new Set(ids);
  const before = pat.boxes.length;
  pat.boxes = pat.boxes.filter(b => !set.has(b.box.id));
  pat.lines = pat.lines.filter(l =>
    !set.has(l.patchline.source[0]) && !set.has(l.patchline.destination[0]));
  return before - pat.boxes.length;
}

function delLine(src, so, dst, di) {
  const before = pat.lines.length;
  pat.lines = pat.lines.filter(l => {
    const s = l.patchline.source, d = l.patchline.destination;
    return !(s[0] === src && s[1] === so && d[0] === dst && d[1] === di);
  });
  return before - pat.lines.length;
}

function addLine(src, so, dst, di) {
  if (pat.lines.some(l => {
    const s = l.patchline.source, d = l.patchline.destination;
    return s[0] === src && s[1] === so && d[0] === dst && d[1] === di;
  })) return false;
  pat.lines.push({ patchline: { destination: [dst, di], source: [src, so] } });
  return true;
}

function addObj(o) { pat.boxes.push({ box: o }); return o.id; }

const log = [];
const note = m => log.push(m);

// ---------------------------------------------------------------------------
// 0. Limpieza idempotente de lo que crea este script
// ---------------------------------------------------------------------------
const mine = pat.boxes.map(b => b.box.id).filter(id => /^obj-ms-/.test(id));
if (mine.length) note('limpieza previa: ' + delBoxes(mine) + ' objetos obj-ms-*');

// ---------------------------------------------------------------------------
// 1. La matriz 1 (obj-3) pasa a almacenar los 4 canales
// ---------------------------------------------------------------------------
// [End Time, Freq Min, Freq Max, Pitch Curve, Amp Curve] por canal
const MAPS = [
  ['obj-12',  'obj-5',   'obj-6',   'obj-77',  'obj-2'],
  ['obj-195', 'obj-188', 'obj-186', 'obj-194', 'obj-199'],
  ['obj-315', 'obj-308', 'obj-306', 'obj-314', 'obj-319'],
  ['obj-781', 'obj-774', 'obj-772', 'obj-780', 'obj-785'],
];

let nAdded = 0;
for (let c = 1; c < 4; c++) for (const target of MAPS[c]) {
  if (!has(target)) throw new Error('falta el objeto cliente ' + target);
  if (addLine('obj-3', 0, target, 0)) nAdded++;
}
note('obj-3 outlet0 -> ' + nAdded + ' clientes nuevos (canales 2-4)');

// ---------------------------------------------------------------------------
// 2. Eliminar las matrices 2, 3 y 4 con toda su UI satelite
// ---------------------------------------------------------------------------
const rowLabels = {
  2: ['obj-69','obj-70','obj-71','obj-72','obj-73','obj-74','obj-75','obj-76','obj-79','obj-81','obj-82','obj-161','obj-165','obj-166','obj-167','obj-168','obj-169','obj-170','obj-171','obj-172','obj-173','obj-174','obj-183','obj-206','obj-207','obj-222','obj-223','obj-224','obj-225','obj-229'],
  3: ['obj-230','obj-231','obj-234','obj-246','obj-247','obj-251','obj-253','obj-254','obj-255','obj-285','obj-286','obj-287','obj-288','obj-289','obj-290','obj-291','obj-292','obj-293','obj-294','obj-302','obj-304','obj-323','obj-335','obj-337','obj-338','obj-357','obj-360','obj-365','obj-366','obj-368'],
  4: ['obj-369','obj-370','obj-371','obj-373','obj-376','obj-377','obj-378','obj-380','obj-381','obj-392','obj-393','obj-394','obj-468','obj-469','obj-470','obj-471','obj-472','obj-477','obj-478','obj-485','obj-487','obj-488','obj-489','obj-493','obj-494','obj-495','obj-496','obj-497','obj-498','obj-499'],
};

const toDelete = [
  // objetos preset y su js de post-proceso de guardado
  'obj-198', 'obj-318', 'obj-784',
  'obj-append-mat-2', 'obj-append-mat-3', 'obj-append-mat-4',
  // Guardar / Cargar de los paneles 2, 3 y 4
  'obj-848', 'obj-849', 'obj-850', 'obj-851', 'obj-10003', 'obj-10004', 'obj-10005',
  'obj-844', 'obj-845', 'obj-846', 'obj-847', 'obj-10006', 'obj-10007', 'obj-10008',
  'obj-840', 'obj-841', 'obj-842', 'obj-843', 'obj-10009', 'obj-10010', 'obj-10011',
  // Clear all presets de los paneles 2, 3 y 4
  'obj-836', 'obj-837', 'obj-834', 'obj-835', 'obj-832', 'obj-833',
  // etiquetas "PLAY Sequence" de los paneles 2, 3 y 4
  'obj-227', 'obj-228', 'obj-233',
  // comparadores del mute (se sustituyen por la logica mute+solo)
  'obj-162', 'obj-141', 'obj-263', 'obj-731',
];
for (const k of [2, 3, 4]) {
  toDelete.push(...rowLabels[k]);
  for (let i = 1; i <= 20; i++) toDelete.push('obj-col-m' + k + '-' + i);
}
note('eliminados ' + delBoxes(toDelete) + ' objetos de las matrices 2-4');

// Los paneles izquierdos de los osciladores 2-4 se encogen: ya no hay matriz.
const panelH = { 'obj-202': 197, 'obj-322': 197, 'obj-788': 203 };
for (const [id, h] of Object.entries(panelH)) {
  const b = get(id);
  if (b && b.presentation_rect) { b.presentation_rect[3] = h; }
}
note('paneles obj-202/322/788 encogidos');

// ---------------------------------------------------------------------------
// 3. Reproduccion unificada: un unico Play (obj-59) arranca los 4 osciladores
// ---------------------------------------------------------------------------
const OTHER_TOGGLES = ['obj-180', 'obj-299', 'obj-766'];

// El motor de mastertoggles y el "play all" manual dejan de repartirse a mano:
// ahora solo tocan obj-59 y este propaga.
let nRemoved = 0;
for (const t of OTHER_TOGGLES) {
  nRemoved += delLine('obj-112', 0, t, 0);
  nRemoved += delLine('obj-131', 0, t, 0);
  nRemoved += delLine('obj-msg-global-stop', 0, t, 0);
  // el transporte / reloj maestro pertenece al canal 1 (obj-46): un solo arranque
  nRemoved += delLine(t, 0, 'obj-46', 0);
}
note('eliminadas ' + nRemoved + ' conexiones de reparto/transporte duplicadas');

for (const t of OTHER_TOGGLES) addLine('obj-59', 0, t, 0);
note('obj-59 propaga a obj-180 / obj-299 / obj-766');

// playactive queda fijo en 0: la celda y el dominio de tiempo los manda el canal 1
let nPa = 0;
nPa += delLine('obj-179', 1, 'obj-2b-tbbb-1', 0);
nPa += delLine('obj-298', 1, 'obj-2b-tbbb-2', 0);
nPa += delLine('obj-765', 1, 'obj-2b-tbbb-3', 0);
note('playactive fijado a 0 (' + nPa + ' conexiones retiradas)');

// Los toggles de play de los canales 2-4 salen de la vista de presentacion
for (const t of OTHER_TOGGLES) { const b = get(t); if (b) b.presentation = 0; }

// La etiqueta del play del panel 1 pasa a ser el play global
const lbl = get('obj-226');
if (lbl) {
  lbl.text = 'PLAY';
  lbl.presentation_rect = [189.5, 24, 45, 22];
  delete lbl.presentation_linecount;
  delete lbl.linecount;
}
note('obj-226 renombrado a "PLAY"');

// ---------------------------------------------------------------------------
// 4. MUTE + SOLO por canal
// ---------------------------------------------------------------------------
// Semantica (solo exclusivo):
//   audible = (solostate == 0) ? (mute == 0) : (solostate == N)
// La salida alimenta el `s muteN` existente, que controla el gate~ de SoundMachine.
const CH = [
  { n: 1, mute: 'obj-20',  send: 'obj-177', soloPres: [234, 53.66575334799563], lblPres: [233, 24] },
  { n: 2, mute: 'obj-143', send: 'obj-140', soloPres: [206, 845],               lblPres: [205, 819] },
  { n: 3, mute: 'obj-265', send: 'obj-262', soloPres: [209, 1571.498657],       lblPres: [208, 1547] },
  { n: 4, mute: 'obj-733', send: 'obj-730', soloPres: [222, 2314.073998],       lblPres: [221, 2289] },
];

const FONT = { fontname: 'Arial', fontsize: 12 };

for (const c of CH) {
  const send = get(c.send);
  if (!send) throw new Error('falta ' + c.send);
  const bx = send.patching_rect[0] + 150;
  const by = send.patching_rect[1] - 150;
  const id = s => 'obj-ms-' + s + '-' + c.n;

  // --- ruta del mute ---
  addObj(Object.assign({}, FONT, {
    id: id('tbi'), maxclass: 'newobj', numinlets: 1, numoutlets: 2,
    outlettype: ['bang', 'int'], patching_rect: [bx, by, 40, 22], text: 't b i',
  }));
  addObj(Object.assign({}, FONT, {
    id: id('rsolo'), maxclass: 'newobj', numinlets: 0, numoutlets: 1,
    outlettype: [''], patching_rect: [bx + 130, by, 70, 22], text: 'r solostate',
  }));
  addObj(Object.assign({}, FONT, {
    id: id('sstore'), maxclass: 'newobj', numinlets: 2, numoutlets: 1,
    outlettype: ['int'], patching_rect: [bx + 130, by + 30, 32, 22], text: 'int',
  }));
  addObj(Object.assign({}, FONT, {
    id: id('expr'), maxclass: 'newobj', numinlets: 2, numoutlets: 1,
    outlettype: [''], patching_rect: [bx, by + 70, 230, 22],
    text: 'expr ($i1 == 0) ? ($i2 == 0) : ($i1 == ' + c.n + ')',
  }));

  addLine(c.mute, 0, id('tbi'), 0);
  addLine(id('tbi'), 1, id('expr'), 1);   // valor crudo del mute (frio)
  addLine(id('tbi'), 0, id('sstore'), 0); // recalcular con el solostate guardado
  addLine(id('rsolo'), 0, id('sstore'), 0);
  addLine(id('sstore'), 0, id('expr'), 0);
  addLine(id('expr'), 0, c.send, 0);

  // --- toggle SOLO ---
  addObj({
    id: id('solo'), maxclass: 'toggle', numinlets: 1, numoutlets: 1,
    outlettype: ['int'], parameter_enable: 0,
    bgcolor: [1, 0.803922, 0.156863, 1], checkedcolor: [0, 0, 0, 1],
    uncheckedcolor: [0, 0, 0, 0],
    patching_rect: [bx + 300, by, 41, 41],
    presentation: 1, presentation_rect: [c.soloPres[0], c.soloPres[1], 39, 39],
  });
  addObj({
    fontname: 'Arial', fontsize: 14,
    id: id('lbl'), maxclass: 'comment', numinlets: 1, numoutlets: 0,
    patching_rect: [bx + 300, by - 25, 45, 22],
    presentation: 1, presentation_rect: [c.lblPres[0], c.lblPres[1], 45, 22],
    text: 'SOLO',
  });
  addObj(Object.assign({}, FONT, {
    // [select] declara un inlet por argumento (igual que obj-tt-sel en el patch)
    id: id('sel'), maxclass: 'newobj', numinlets: 3, numoutlets: 3,
    outlettype: ['bang', 'bang', ''], patching_rect: [bx + 300, by + 50, 50, 22],
    text: 'sel 1 0',
  }));
  addObj(Object.assign({}, FONT, {
    id: id('tbb'), maxclass: 'newobj', numinlets: 1, numoutlets: 2,
    outlettype: ['bang', 'bang'], patching_rect: [bx + 300, by + 80, 40, 22],
    text: 't b b',
  }));
  addObj(Object.assign({}, FONT, {
    id: id('on'), maxclass: 'message', numinlets: 2, numoutlets: 1,
    outlettype: [''], patching_rect: [bx + 300, by + 110, 32, 22], text: '' + c.n,
  }));
  addObj(Object.assign({}, FONT, {
    id: id('off'), maxclass: 'message', numinlets: 2, numoutlets: 1,
    outlettype: [''], patching_rect: [bx + 345, by + 110, 32, 22], text: '0',
  }));
  addObj(Object.assign({}, FONT, {
    id: id('ssend'), maxclass: 'newobj', numinlets: 1, numoutlets: 0,
    patching_rect: [bx + 300, by + 140, 70, 22], text: 's solostate',
  }));
  addObj(Object.assign({}, FONT, {
    id: id('clr'), maxclass: 'message', numinlets: 2, numoutlets: 1,
    outlettype: [''], patching_rect: [bx + 390, by + 80, 50, 22], text: 'set 0',
  }));

  addLine(id('solo'), 0, id('sel'), 0);
  addLine(id('sel'), 0, id('tbb'), 0);   // solo activado
  addLine(id('tbb'), 1, id('clr'), 0);   // 1o: apagar los otros solos
  addLine(id('tbb'), 0, id('on'), 0);    // 2o: publicar el canal aislado
  addLine(id('on'), 0, id('ssend'), 0);
  addLine(id('sel'), 1, id('off'), 0);   // solo desactivado -> sin aislamiento
  addLine(id('off'), 0, id('ssend'), 0);
}

// El "set 0" de cada canal apaga los toggles SOLO de los otros tres (exclusivo)
for (const c of CH) for (const o of CH) {
  if (o.n === c.n) continue;
  addLine('obj-ms-clr-' + c.n, 0, 'obj-ms-solo-' + o.n, 0);
}

// Inicializacion: sin canal aislado al abrir el patch
addObj(Object.assign({}, FONT, {
  id: 'obj-ms-lb', maxclass: 'newobj', numinlets: 1, numoutlets: 1,
  outlettype: ['bang'], patching_rect: [1700, 60, 62, 22], text: 'loadbang',
}));
addObj(Object.assign({}, FONT, {
  id: 'obj-ms-lb0', maxclass: 'message', numinlets: 2, numoutlets: 1,
  outlettype: [''], patching_rect: [1700, 90, 32, 22], text: '0',
}));
addObj(Object.assign({}, FONT, {
  id: 'obj-ms-lbsend', maxclass: 'newobj', numinlets: 1, numoutlets: 0,
  patching_rect: [1700, 120, 70, 22], text: 's solostate',
}));
addLine('obj-ms-lb', 0, 'obj-ms-lb0', 0);
addLine('obj-ms-lb0', 0, 'obj-ms-lbsend', 0);
note('logica MUTE+SOLO creada para los 4 canales');

// ---------------------------------------------------------------------------
fs.writeFileSync(FILE, JSON.stringify(p, null, '\t'));
console.log(log.join('\n'));
console.log('\nOK -> ' + FILE + '  (' + pat.boxes.length + ' objetos, ' + pat.lines.length + ' conexiones)');
