// Analisis previo a la unificacion de matrices de presets.
const fs = require('fs');
const p = JSON.parse(fs.readFileSync('ATS_Sequencer.maxpat', 'utf8'));
const boxes = p.patcher.boxes, lines = p.patcher.lines;
const byId = {}; for (const b of boxes) byId[b.box.id] = b.box;
const desc = id => byId[id] ? (byId[id].maxclass + ' ' + JSON.stringify((byId[id].text || '').slice(0, 40))) : '?';
const outs = id => lines.filter(l => l.patchline.source[0] === id).map(l => l.patchline.destination[0]);

// --- cadenas Guardar / Cargar de los paneles 2,3,4 ---
for (const btn of ['obj-848', 'obj-850', 'obj-844', 'obj-846', 'obj-840', 'obj-842',
                   'obj-836', 'obj-834', 'obj-832']) {
  const chain = [btn];
  let cur = btn;
  for (let i = 0; i < 5; i++) {
    const n = outs(cur).filter(x => !['obj-198', 'obj-318', 'obj-784'].includes(x));
    if (!n.length) break;
    chain.push(n[0]); cur = n[0];
  }
  console.log(btn.padEnd(10), chain.map(x => x + '=' + desc(x)).join('  ->  '));
}

// --- etiquetas de fila de las matrices 2,3,4 ---
console.log('\n--- row labels ---');
const bands = { 2: [723, 1428], 3: [1428, 2144], 4: [2144, 2900] };
const rowRe = /^(M\d+[a-c]?|E\d|T\d|---|Eraser|Full Piece)$/;
for (const k of [2, 3, 4]) {
  const [y0, y1] = bands[k];
  const l = boxes.map(x => x.box).filter(o => o.presentation && o.maxclass === 'comment' &&
    o.presentation_rect[1] >= y0 && o.presentation_rect[1] < y1 &&
    o.presentation_rect[0] < 85 && rowRe.test(o.text || ''));
  console.log('panel' + k, l.length, l.map(o => o.id).join(','));
}

// --- etiquetas de columna ---
console.log('\n--- col labels ---');
for (const k of [1, 2, 3, 4]) {
  const l = boxes.map(x => x.box).filter(o => new RegExp('^obj-col-m' + k + '-').test(o.id));
  console.log('m' + k, l.length);
}
