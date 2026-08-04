/*
 * patch_clear_graph.js
 *
 * Anade un boton "Clear curve" al menu de edicion de la derecha de cada grafico.
 * Borra SOLO la curva que este seleccionada en el boton "Edit: FR / Edit: AMP"
 * de ese mismo canal (FR -> fnFreqN, AMP -> fnAmpN).
 *
 * Cadena por canal N:
 *   obj-cl-btn-N (textbutton, bang)
 *     -> obj-cl-i-N   (i)         [inlet derecho <- obj-vw-tE-N outlet 1 = modo edicion]
 *     -> obj-cl-sel-N (sel 0 1)
 *          out0 (modo FR)  -> obj-cl-mF-N ("clear") -> fnFreqN
 *          out1 (modo AMP) -> obj-cl-mA-N ("clear") -> fnAmpN
 *
 * No se reenvia el domain: el "clear all" existente (obj-64/obj-62) tampoco lo
 * hace, el atributo domain de function sobrevive al mensaje clear.
 */
const fs = require('fs');
const FILE = 'ATS_Sequencer.maxpat';

const p = JSON.parse(fs.readFileSync(FILE, 'utf8'));
const boxes = p.patcher.boxes;
const byId = {};
for (const b of boxes) byId[b.box.id] = b.box;

// canal -> { fnFreq, fnAmp, presentation_rect del boton Clear }
const CH = {
  1: { freq: 'obj-77',     amp: 'obj-2',     pres: [1155,   168, 94, 18] },
  2: { freq: 'obj-194',    amp: 'obj-199',   pres: [1156,   358, 92, 18] },
  3: { freq: 'obj-314',    amp: 'obj-319',   pres: [1157.4, 559, 92, 18] },
  4: { freq: 'obj-780',    amp: 'obj-785',   pres: [1158,   943, 92, 18] },
  5: { freq: 'obj-c5-42',  amp: 'obj-c5-7',  pres: [1158,   751, 92, 18] },
};

function assertExists(id) {
  if (!byId[id]) throw new Error('Falta el objeto ' + id);
}

const newBoxes = [];
const newLines = [];

function box(o) { newBoxes.push({ box: o }); }
function line(src, so, dst, di) {
  newLines.push({ patchline: { destination: [dst, di], source: [src, so] } });
}

for (let n = 1; n <= 5; n++) {
  const cfg = CH[n];
  ['obj-vw-tE-' + n, cfg.freq, cfg.amp].forEach(assertExists);
  if (byId['obj-cl-btn-' + n]) throw new Error('Ya existe obj-cl-btn-' + n + ' (script ya aplicado?)');

  const y = 100 + (n - 1) * 200;
  const btn = 'obj-cl-btn-' + n, ib = 'obj-cl-i-' + n,
        sel = 'obj-cl-sel-' + n, mF = 'obj-cl-mF-' + n, mA = 'obj-cl-mA-' + n;

  box({
    bgcolor: [0.62, 0.16, 0.16, 1],
    bgoncolor: [1, 0.35, 0.35, 1],
    fontsize: 9,
    id: btn,
    maxclass: 'textbutton',
    numinlets: 1,
    numoutlets: 3,
    outlettype: ['', '', 'int'],
    parameter_enable: 0,
    patching_rect: [5100, y, 120, 24],
    presentation: 1,
    presentation_rect: cfg.pres,
    rounded: 4,
    text: 'Clear curve',
    textcolor: [1, 1, 1, 1],
    textoncolor: [1, 1, 1, 1],
    usebgoncolor: 1
  });
  box({ id: ib,  maxclass: 'newobj', numinlets: 2, numoutlets: 1, outlettype: ['int'],
        patching_rect: [5100, y + 40, 40, 22], text: 'i' });
  box({ id: sel, maxclass: 'newobj', numinlets: 2, numoutlets: 3, outlettype: ['bang','bang',''],
        patching_rect: [5100, y + 70, 70, 22], text: 'sel 0 1' });
  box({ id: mF,  maxclass: 'message', numinlets: 2, numoutlets: 1, outlettype: [''],
        patching_rect: [5100, y + 100, 45, 22], text: 'clear' });
  box({ id: mA,  maxclass: 'message', numinlets: 2, numoutlets: 1, outlettype: [''],
        patching_rect: [5180, y + 100, 45, 22], text: 'clear' });

  line(btn, 0, ib, 0);              // click -> lee el modo de edicion guardado
  line('obj-vw-tE-' + n, 1, ib, 1); // modo de edicion (0 = FR, 1 = AMP) -> inlet frio
  line(ib, 0, sel, 0);
  line(sel, 0, mF, 0);
  line(sel, 1, mA, 0);
  line(mF, 0, cfg.freq, 0);
  line(mA, 0, cfg.amp, 0);
}

boxes.push(...newBoxes);
p.patcher.lines.push(...newLines);

fs.writeFileSync(FILE, JSON.stringify(p, null, 1));
console.log('OK: +' + newBoxes.length + ' objetos, +' + newLines.length + ' conexiones');
