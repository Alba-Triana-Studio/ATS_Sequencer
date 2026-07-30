// Correcciones sobre la unificacion:
//  1. La logica MUTE+SOLO usaba [expr ... ? ... : ...]. Si el operador ternario no
//     instancia, `s muteN` nunca recibe valor y los gate~ de SoundMachine quedan
//     cerrados => silencio total. Se reconstruye con objetos basicos:
//        audible = ((solostate == 0) && (mute == 0)) || (solostate == N)
//     Los `&& 1` / `|| 0` llevan argumento para que el inlet derecho tenga un
//     valor inicial sano antes del primer evento.
//  2. Time Domain / Freq. Domain / Clear pasan a administrarse solo desde el
//     panel del Oscilador 1 y se propagan a los canales 2-4.
//
//   node scratch/patch_unify_fix.js
const fs = require('fs');

const FILE = 'ATS_Sequencer.maxpat';
const p = JSON.parse(fs.readFileSync(FILE, 'utf8'));
const pat = p.patcher;

const get = id => (pat.boxes.find(b => b.box.id === id) || {}).box;
const has = id => !!get(id);

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
const addObj = o => { pat.boxes.push({ box: o }); return o.id; };
const FONT = { fontname: 'Arial', fontsize: 12 };
const log = [];

// ===========================================================================
// 1. Reconstruir la logica MUTE + SOLO sin [expr]
// ===========================================================================
const CH = [
  { n: 1, mute: 'obj-20',  send: 'obj-177' },
  { n: 2, mute: 'obj-143', send: 'obj-140' },
  { n: 3, mute: 'obj-265', send: 'obj-262' },
  { n: 4, mute: 'obj-733', send: 'obj-730' },
];

// fuera los objetos de calculo de la version anterior (se conservan toggle/label/solo)
const stale = [];
for (const c of CH) for (const k of ['tbi', 'rsolo', 'sstore', 'expr'])
  if (has('obj-ms-' + k + '-' + c.n)) stale.push('obj-ms-' + k + '-' + c.n);
log.push('retirados ' + delBoxes(stale) + ' objetos de la logica anterior (expr)');

for (const c of CH) {
  const send = get(c.send);
  const bx = send.patching_rect[0] + 150;
  const by = send.patching_rect[1] - 150;
  const id = s => 'obj-ms-' + s + '-' + c.n;

  // solostate guardado, con dos copias para las dos comparaciones
  addObj(Object.assign({}, FONT, {
    id: id('rsolo'), maxclass: 'newobj', numinlets: 0, numoutlets: 1,
    outlettype: [''], patching_rect: [bx, by - 60, 70, 22], text: 'r solostate',
  }));
  addObj(Object.assign({}, FONT, {
    id: id('sstore'), maxclass: 'newobj', numinlets: 2, numoutlets: 1,
    outlettype: ['int'], patching_rect: [bx, by - 30, 32, 22], text: 'int',
  }));
  addObj(Object.assign({}, FONT, {
    id: id('tii'), maxclass: 'newobj', numinlets: 1, numoutlets: 2,
    outlettype: ['int', 'int'], patching_rect: [bx, by, 40, 22], text: 't i i',
  }));
  // (solostate == 0): no hay ningun canal aislado
  addObj(Object.assign({}, FONT, {
    id: id('eq0'), maxclass: 'newobj', numinlets: 2, numoutlets: 1,
    outlettype: ['int'], patching_rect: [bx, by + 40, 40, 22], text: '== 0',
  }));
  // (solostate == N): este canal es el aislado
  addObj(Object.assign({}, FONT, {
    id: id('eqn'), maxclass: 'newobj', numinlets: 2, numoutlets: 1,
    outlettype: ['int'], patching_rect: [bx + 120, by + 40, 40, 22], text: '== ' + c.n,
  }));
  // (mute == 0): el canal no esta muteado
  addObj(Object.assign({}, FONT, {
    id: id('tbi'), maxclass: 'newobj', numinlets: 1, numoutlets: 2,
    outlettype: ['bang', 'int'], patching_rect: [bx + 200, by - 30, 40, 22], text: 't b i',
  }));
  addObj(Object.assign({}, FONT, {
    id: id('nm'), maxclass: 'newobj', numinlets: 2, numoutlets: 1,
    outlettype: ['int'], patching_rect: [bx + 200, by + 10, 40, 22], text: '== 0',
  }));
  // audible = (sinSolo && noMuteado) || esteEsElAislado
  addObj(Object.assign({}, FONT, {
    id: id('and'), maxclass: 'newobj', numinlets: 2, numoutlets: 1,
    outlettype: ['int'], patching_rect: [bx, by + 80, 40, 22], text: '&& 1',
  }));
  addObj(Object.assign({}, FONT, {
    id: id('or'), maxclass: 'newobj', numinlets: 2, numoutlets: 1,
    outlettype: ['int'], patching_rect: [bx, by + 115, 40, 22], text: '|| 0',
  }));

  addLine(id('rsolo'), 0, id('sstore'), 0);
  addLine(id('sstore'), 0, id('tii'), 0);
  addLine(id('tii'), 1, id('eqn'), 0);   // 1o (derecha): actualiza el inlet frio de ||
  addLine(id('eqn'), 0, id('or'), 1);
  addLine(id('tii'), 0, id('eq0'), 0);   // 2o (izquierda): dispara el recalculo
  addLine(id('eq0'), 0, id('and'), 0);
  addLine(id('and'), 0, id('or'), 0);
  addLine(id('or'), 0, c.send, 0);

  addLine(c.mute, 0, id('tbi'), 0);
  addLine(id('tbi'), 1, id('nm'), 0);    // 1o: guarda (mute == 0) en el inlet frio de &&
  addLine(id('nm'), 0, id('and'), 1);
  addLine(id('tbi'), 0, id('sstore'), 0); // 2o: recalcula con el solostate guardado
}
log.push('logica MUTE+SOLO reconstruida con == / && / || (sin expr)');

// El loadbang de solostate ya fuerza un recalculo al abrir el patch:
// obj-ms-lb -> "0" -> s solostate -> r solostate -> sstore -> ... -> s muteN
for (const id of ['obj-ms-lb', 'obj-ms-lb0', 'obj-ms-lbsend']) if (!has(id))
  throw new Error('falta el init de solostate: ' + id);

// ===========================================================================
// 2. Time Domain / Freq. Domain / Clear unificados desde el Oscilador 1
// ===========================================================================
// Estos dejan de ser clientes del preset en los canales 2-4: el preset guarda
// un unico juego (canal 1) y este se propaga, evitando que el orden de reparto
// de obj-3 decida quien gana.
const DERIVED = [
  // [fuente canal 1, destinos canales 2,3,4]
  ['obj-12', ['obj-195', 'obj-315', 'obj-781']], // End Time (ms)
  ['obj-5',  ['obj-188', 'obj-308', 'obj-774']], // Freq min
  ['obj-6',  ['obj-186', 'obj-306', 'obj-772']], // Freq max
];
let nUnclient = 0, nProp = 0;
for (const [src, dsts] of DERIVED) for (const dst of dsts) {
  nUnclient += delLine('obj-3', 0, dst, 0);
  if (addLine(src, 0, dst, 0)) nProp++;
}
log.push('Time/Freq Domain: ' + nUnclient + ' clientes de preset retirados, ' +
         nProp + ' propagaciones desde el canal 1');

// Clear: el boton del panel 1 limpia tambien las graficas de los canales 2-4
let nClr = 0;
for (const msg of ['obj-191', 'obj-311', 'obj-777']) if (addLine('obj-64', 0, msg, 0)) nClr++;
log.push('Clear del panel 1 -> ' + nClr + ' cadenas de limpieza adicionales');

// Fuera de presentacion los duplicados de los paneles 2-4
const hide = ['obj-d5j3ero9y', 'obj-188', 'obj-186', 'obj-193',
              'obj-hvlho7th0', 'obj-308', 'obj-306', 'obj-313',
              'obj-3afs9g9yx', 'obj-774', 'obj-772', 'obj-779'];
for (const id of hide) { const b = get(id); if (b) b.presentation = 0; }
// y se borran sus etiquetas
const labels = ['obj-201', 'obj-190', 'obj-175',   // osc 2
                'obj-321', 'obj-310', 'obj-295',   // osc 3
                'obj-787', 'obj-776', 'obj-762'];  // osc 4
log.push('ocultados ' + hide.length + ' controles duplicados, eliminadas ' +
         delBoxes(labels) + ' etiquetas');

// Los paneles quedan con titulo + SOLO + MUTE: se ajustan a ese contenido
for (const [id, h] of [['obj-202', 124], ['obj-322', 127], ['obj-788', 148]]) {
  const b = get(id);
  if (b && b.presentation_rect) b.presentation_rect[3] = h;
}
log.push('paneles obj-202/322/788 ajustados al contenido restante');

fs.writeFileSync(FILE, JSON.stringify(p, null, '\t'));
console.log(log.join('\n'));
console.log('\nOK -> ' + FILE + '  (' + pat.boxes.length + ' objetos, ' + pat.lines.length + ' conexiones)');
