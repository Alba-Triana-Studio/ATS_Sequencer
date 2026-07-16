// Cambia el display del Total Timer de minutos decimales a M:SS.d
// clocker 100 -> t i i i -> (min, seg, decimas) -> sprintf set %i:%02i.%i -> message box
const fs = require('fs');
const path = '/Users/carlosadrianserna/Documents/Proyectos/Alba Triana Studio/Cymaticas/ATS_Sequencer/ATS_Sequencer.maxpat';
const p = JSON.parse(fs.readFileSync(path, 'utf8'));
const boxes = p.patcher.boxes;
let lines = p.patcher.lines;
const byId = {};
for (const b of boxes) byId[b.box.id] = b.box;

const GREEN = [0.25098, 0.501961, 0, 1];

// ---- 1. Quitar la cadena decimal anterior (div, prepend set, flonum) ----
const remove = new Set(['obj-tt-div', 'obj-tt-set', 'obj-tt-flonum']);
p.patcher.boxes = boxes.filter(b => !remove.has(b.box.id));
lines = lines.filter(l => !remove.has(l.patchline.source[0]) && !remove.has(l.patchline.destination[0]));
p.patcher.lines = lines;

// ---- 2. Clocker a 100 ms para tener decimas ----
byId['obj-tt-clocker'].text = 'clocker 100';

// ---- 3. Nueva cadena de formato ----
function addBox(box) {
  if (byId[box.id]) throw new Error('id ya existe: ' + box.id);
  p.patcher.boxes.push({ box });
  byId[box.id] = box;
}
function connect(src, srcOut, dst, dstIn) {
  lines.push({ patchline: { destination: [dst, dstIn], source: [src, srcOut] } });
}

addBox({
  id: 'obj-tt-trig', maxclass: 'newobj', text: 't i i i',
  numinlets: 1, numoutlets: 3, outlettype: ['int', 'int', 'int'],
  patching_rect: [3160, 550, 60, 22],
});
addBox({
  id: 'obj-tt-min', maxclass: 'newobj', text: '/ 60000',
  numinlets: 2, numoutlets: 1, outlettype: ['int'],
  patching_rect: [3160, 590, 55, 22],
});
addBox({
  id: 'obj-tt-smod', maxclass: 'newobj', text: '% 60000',
  numinlets: 2, numoutlets: 1, outlettype: ['int'],
  patching_rect: [3240, 590, 58, 22],
});
addBox({
  id: 'obj-tt-sdiv', maxclass: 'newobj', text: '/ 1000',
  numinlets: 2, numoutlets: 1, outlettype: ['int'],
  patching_rect: [3240, 620, 48, 22],
});
addBox({
  id: 'obj-tt-tmod', maxclass: 'newobj', text: '% 1000',
  numinlets: 2, numoutlets: 1, outlettype: ['int'],
  patching_rect: [3320, 590, 51, 22],
});
addBox({
  id: 'obj-tt-tdiv', maxclass: 'newobj', text: '/ 100',
  numinlets: 2, numoutlets: 1, outlettype: ['int'],
  patching_rect: [3320, 620, 41, 22],
});
addBox({
  id: 'obj-tt-sprintf', maxclass: 'newobj', text: 'sprintf set %i:%02i.%i',
  numinlets: 3, numoutlets: 1, outlettype: [''],
  patching_rect: [3160, 660, 130, 22],
});
addBox({
  id: 'obj-tt-display', maxclass: 'message', text: '0:00.0',
  numinlets: 2, numoutlets: 1, outlettype: [''],
  fontname: 'Arial', fontsize: 36,
  textcolor: GREEN, bgfillcolor_type: 'color', bgfillcolor_color: [1, 1, 1, 1],
  patching_rect: [3160, 700, 190, 48],
  presentation: 1,
  presentation_rect: [742, 5, 190, 48],
});

// clocker -> trigger (derecha a izquierda: decimas, segundos, minutos)
connect('obj-tt-clocker', 0, 'obj-tt-trig', 0);
connect('obj-tt-trig', 0, 'obj-tt-min', 0);   // ultimo en disparar -> inlet caliente
connect('obj-tt-trig', 1, 'obj-tt-smod', 0);
connect('obj-tt-trig', 2, 'obj-tt-tmod', 0);
connect('obj-tt-min', 0, 'obj-tt-sprintf', 0);
connect('obj-tt-smod', 0, 'obj-tt-sdiv', 0);
connect('obj-tt-sdiv', 0, 'obj-tt-sprintf', 1);
connect('obj-tt-tmod', 0, 'obj-tt-tdiv', 0);
connect('obj-tt-tdiv', 0, 'obj-tt-sprintf', 2);
connect('obj-tt-sprintf', 0, 'obj-tt-display', 0);

fs.writeFileSync(path, JSON.stringify(p, null, '\t'));
console.log('OK. boxes:', p.patcher.boxes.length, 'lines:', lines.length);
