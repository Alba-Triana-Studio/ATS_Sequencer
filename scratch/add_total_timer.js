// Añade un "Total Timer" (minutos) para Play Full Piece y agranda ambos timers.
// - Nuevo clocker arrancado/parado por el toggle obj-109 (Play Full Piece),
//   incluyendo las paradas silenciosas via "set 0" (obj-136/139/146/151/40).
// - Display en minutos (clocker ms / 60000) en un flonum nuevo, a la izquierda
//   del timer actual (obj-iek1sdwhj). Fuente de ambos timers: 12 -> 36 (x3).
const fs = require('fs');
const path = '/Users/carlosadrianserna/Documents/Proyectos/Alba Triana Studio/Cymaticas/ATS_Sequencer/ATS_Sequencer.maxpat';
const p = JSON.parse(fs.readFileSync(path, 'utf8'));
const boxes = p.patcher.boxes;
const lines = p.patcher.lines;
const byId = {};
for (const b of boxes) byId[b.box.id] = b.box;

const GREEN = [0.25098, 0.501961, 0, 1];

// ---- 1. Agrandar timer actual (flonum de segundos) y su etiqueta TIME ----
const cur = byId['obj-iek1sdwhj'];
cur.fontsize = 36;
cur.presentation_rect = [1000, 5, 190, 48];

const timeLbl = byId['obj-103'];
timeLbl.fontsize = 24;
timeLbl.presentation_rect = [936, 16, 64, 30];

// ---- 2. Nuevos objetos (cadena del Total Timer) ----
function addBox(box) {
  if (byId[box.id]) throw new Error('id ya existe: ' + box.id);
  boxes.push({ box });
  byId[box.id] = box;
}

addBox({
  id: 'obj-tt-sel', maxclass: 'newobj', text: 'sel 1 0',
  numinlets: 3, numoutlets: 3, outlettype: ['bang', 'bang', ''],
  patching_rect: [3160, 430, 52, 22],
});
addBox({
  id: 'obj-tt-stop', maxclass: 'message', text: 'stop',
  numinlets: 2, numoutlets: 1, outlettype: [''],
  patching_rect: [3240, 470, 35, 22],
});
addBox({
  id: 'obj-tt-clocker', maxclass: 'newobj', text: 'clocker 1000',
  numinlets: 2, numoutlets: 1, outlettype: [''],
  patching_rect: [3160, 510, 82, 22],
});
addBox({
  id: 'obj-tt-div', maxclass: 'newobj', text: '/ 60000.',
  numinlets: 2, numoutlets: 1, outlettype: ['float'],
  patching_rect: [3160, 550, 55, 22],
});
addBox({
  id: 'obj-tt-set', maxclass: 'newobj', text: 'prepend set',
  numinlets: 1, numoutlets: 1, outlettype: [''],
  patching_rect: [3160, 590, 74, 22],
});
addBox({
  id: 'obj-tt-flonum', maxclass: 'flonum', numdecimalplaces: 2,
  numinlets: 1, numoutlets: 2, outlettype: ['', 'bang'],
  parameter_enable: 0,
  bgcolor: [1, 1, 1, 1], textcolor: GREEN,
  htricolor: [0.87, 0.82, 0.24, 1], tricolor: [0.75, 0.75, 0.75, 1],
  fontsize: 36,
  patching_rect: [3160, 630, 190, 48],
  presentation: 1,
  presentation_rect: [742, 5, 190, 48],
});
addBox({
  id: 'obj-tt-label', maxclass: 'comment', text: 'TOTAL (min)',
  fontname: 'Arial', fontsize: 24,
  numinlets: 1, numoutlets: 0,
  patching_rect: [3160, 685, 150, 33],
  presentation: 1,
  presentation_rect: [592, 16, 148, 30],
});

// ---- 3. Conexiones ----
function connect(src, srcOut, dst, dstIn) {
  lines.push({ patchline: { destination: [dst, dstIn], source: [src, srcOut] } });
}
// Toggle Play Full Piece -> sel 1 0 (1 = start, 0 = stop)
connect('obj-109', 0, 'obj-tt-sel', 0);
// Paradas silenciosas: los "0" de exclusion mutua de los otros modos
for (const z of ['obj-136', 'obj-139', 'obj-146', 'obj-151', 'obj-40']) {
  connect(z, 0, 'obj-tt-sel', 0);
}
connect('obj-tt-sel', 0, 'obj-tt-clocker', 0);   // bang: arranca desde 0
connect('obj-tt-sel', 1, 'obj-tt-stop', 0);      // bang -> mensaje stop
connect('obj-tt-stop', 0, 'obj-tt-clocker', 0);
connect('obj-tt-clocker', 0, 'obj-tt-div', 0);
connect('obj-tt-div', 0, 'obj-tt-set', 0);
connect('obj-tt-set', 0, 'obj-tt-flonum', 0);

fs.writeFileSync(path, JSON.stringify(p, null, '\t'));
console.log('OK. boxes:', boxes.length, 'lines:', lines.length);
