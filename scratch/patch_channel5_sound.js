// ============================================================================
//  Motor de sonido del canal 5.
//
//  1. P5Sound.maxpat   - copia de P1Sound.maxpat (el sintetizador de referencia,
//                        el unico que trae el reset "r zeroN" que el secuenciador
//                        ya emite) con los nombres globales del canal 5 y los
//                        controladores MIDI 8/9, libres (P1..P4 usan 0..7).
//  2. SoundMachine     - 5o slot: p5sound -> gate~ (r mute5) -> gain~ (r mastervol)
//                        -> send~ mixout5, con su medidor y su limitador.
//  3. ATS_Sequencer    - [receive~ mixout5] entra en la suma IZQUIERDA (donde van
//                        los otros canales de sonido; mixout4, la luz, va a la
//                        derecha) y una caja "s #exact5" como las de afinacion.
// ============================================================================
const fs = require('fs');
const path = require('path');
const ROOT = path.join(__dirname, '..');
const R = f => JSON.parse(fs.readFileSync(path.join(ROOT, f), 'utf8'));
const W = (f, o) => fs.writeFileSync(path.join(ROOT, f), JSON.stringify(o, null, 1));

// --- 1. P5Sound.maxpat ------------------------------------------------------
const SUBS = [
    [/\br 1gpitch\b/g, 'r 5gpitch'],
    [/\br 1amp\b/g, 'r 5amp'],
    [/\br zero1\b/g, 'r zero5'],
    [/\br #exact1\b/g, 'r #exact5'],
    [/\bs 1Fpitch\b/g, 's 5Fpitch'],
    [/\bctlin 0 1\b/g, 'ctlin 8 1'],
    [/\bctlin 1 1\b/g, 'ctlin 9 1'],
    [/Korg NanoKontrol2 Slider 1 frec/g, 'Korg NanoKontrol2 ctl 8 frec'],
    [/Korg NanoKontrol2 Slider 2 amp/g, 'Korg NanoKontrol2 ctl 9 amp']
];
const p5 = R('P1Sound.maxpat');
let touched = 0;
p5.patcher.boxes.forEach(w => {
    const b = w.box;
    if (b.text === undefined) return;
    const before = b.text;
    SUBS.forEach(s => { b.text = b.text.replace(s[0], s[1]); });
    if (b.text !== before) touched++;
});
W('P5Sound.maxpat', p5);
console.log('P5Sound.maxpat escrito (' + touched + ' cajas renombradas)');
const leftover = p5.patcher.boxes.map(w => w.box)
    .filter(b => /\b(1gpitch|1amp|zero1|#exact1|1Fpitch)\b/.test(b.text || ''));
if (leftover.length) throw new Error('quedan nombres del canal 1: ' + leftover.map(b => b.text).join(', '));

// --- 2. SoundMachine.maxpat -------------------------------------------------
const sm = R('SoundMachine.maxpat');
if (sm.patcher.boxes.some(w => w.box.text === 'p5sound')) throw new Error('SoundMachine ya tiene p5sound');
const NB = (id, cls, text, rect, extra) => {
    const b = Object.assign({ id: id, maxclass: cls, numinlets: 1, numoutlets: 0, patching_rect: rect }, extra || {});
    if (text !== null) b.text = text;
    return { box: b };
};
const sig = ['signal'];
const smNew = [
    NB('obj-c5-note', 'comment', 'Canal 5 (sonido): mismo esquema que los canales 1-4.', [150, 530, 320, 24], { numinlets: 1, numoutlets: 0 }),
    NB('obj-c5-syn', 'newobj', 'p5sound', [150, 560, 57, 22], { numoutlets: 1, outlettype: sig }),
    NB('obj-c5-rmute', 'newobj', 'r mute5', [150, 590, 51, 22], { numoutlets: 1, outlettype: [''] }),
    NB('obj-c5-gate', 'newobj', 'gate~', [150, 620, 41, 22], { numinlets: 2, numoutlets: 1, outlettype: sig }),
    NB('obj-c5-lvl', 'newobj', 'send~ 5lvl', [230, 650, 76, 22], { numinlets: 1, numoutlets: 0 }),
    NB('obj-c5-gain', 'gain~', null, [150, 680, 38, 139], { numinlets: 2, numoutlets: 2, outlettype: ['signal', ''] }),
    NB('obj-c5-peak', 'newobj', 'peakamp~', [230, 840, 72, 23], { numinlets: 1, numoutlets: 1, outlettype: [''] }),
    NB('obj-c5-tolim', 'newobj', 'r to-lim', [330, 805, 50, 23], { numoutlets: 1, outlettype: [''] }),
    NB('obj-c5-lim', 'newobj', 'omx.peaklim~', [318, 840, 91, 23], { numinlets: 2, numoutlets: 3, outlettype: ['signal', 'signal', ''] }),
    NB('obj-c5-fromlim', 'newobj', 's from-lim-params', [318, 875, 115, 23], { numinlets: 1, numoutlets: 0 }),
    NB('obj-c5-mix', 'newobj', 'send~ mixout5', [150, 910, 89, 22], { numinlets: 1, numoutlets: 0 })
];
const smLines = [
    ['obj-c5-syn', 0, 'obj-c5-gate', 1],
    ['obj-c5-rmute', 0, 'obj-c5-gate', 0],
    ['obj-c5-gate', 0, 'obj-c5-lvl', 0],
    ['obj-c5-gate', 0, 'obj-c5-gain', 0],
    ['obj-4', 0, 'obj-c5-gain', 0],           // r mastervol
    ['obj-c5-gain', 0, 'obj-c5-mix', 0],
    ['obj-c5-gain', 0, 'obj-c5-peak', 0],
    ['obj-c5-gain', 0, 'obj-c5-lim', 0],
    ['obj-c5-tolim', 0, 'obj-c5-lim', 0],
    ['obj-c5-lim', 2, 'obj-c5-fromlim', 0]
].map(l => ({ patchline: { destination: [l[2], l[3]], source: [l[0], l[1]] } }));
sm.patcher.boxes = sm.patcher.boxes.concat(smNew);
sm.patcher.lines = sm.patcher.lines.concat(smLines);
sm.patcher.rect[3] = Math.max(sm.patcher.rect[3], 960);
W('SoundMachine.maxpat', sm);
console.log('SoundMachine.maxpat: +' + smNew.length + ' cajas, +' + smLines.length + ' conexiones');

// --- 3. ATS_Sequencer: receive~ mixout5 y s #exact5 -------------------------
const ats = R('ATS_Sequencer.maxpat');
const boxes = ats.patcher.boxes;
const byId = {}; boxes.forEach(w => byId[w.box.id] = w.box);
if (byId['obj-c5-mixin']) throw new Error('ATS_Sequencer ya tiene receive~ mixout5');

// mixout3 (obj-259) es el patron: canal de SONIDO -> suma izquierda.
const TEMPLATE = 'obj-259';
const tmpl = byId[TEMPLATE];
boxes.push({ box: {
    id: 'obj-c5-mixin', maxclass: 'newobj', text: 'receive~ mixout5',
    numinlets: 1, numoutlets: 1, outlettype: ['signal'],
    patching_rect: [tmpl.patching_rect[0] + 46, tmpl.patching_rect[1] + 250, 102, 22]
} });
const atsLines = ats.patcher.lines;
let n = 0;
atsLines.filter(w => w.patchline.source[0] === TEMPLATE).map(w => w.patchline).forEach(l => {
    atsLines.push({ patchline: { destination: [l.destination[0], l.destination[1]], source: ['obj-c5-mixin', 0] } });
    n++;
});
console.log('ATS_Sequencer: receive~ mixout5 -> ' + n + ' destinos (copiados de mixout3)');

// caja de afinacion #exact5, como las de #exact1..4
const ex4 = byId['obj-348'], send4 = byId['obj-358'];
boxes.push({ box: {
    id: 'obj-c5-exactnum', maxclass: 'flonum', numinlets: 1, numoutlets: 2, outlettype: ['', 'bang'],
    patching_rect: [ex4.patching_rect[0], ex4.patching_rect[1] + 50, 52, 22]
} });
boxes.push({ box: {
    id: 'obj-c5-exactsend', maxclass: 'newobj', text: 's #exact5', numinlets: 1, numoutlets: 0,
    patching_rect: [send4.patching_rect[0], send4.patching_rect[1] + 50, 60, 22]
} });
atsLines.push({ patchline: { destination: ['obj-c5-exactsend', 0], source: ['obj-c5-exactnum', 0] } });
console.log('ATS_Sequencer: caja de afinacion s #exact5 anadida');
W('ATS_Sequencer.maxpat', ats);
