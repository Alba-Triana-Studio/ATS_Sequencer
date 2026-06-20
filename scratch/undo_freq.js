const fs = require('fs');

const file = 'ATS_Sequencer.maxpat';
let d = JSON.parse(fs.readFileSync(file, 'utf8'));

let targetIds = ['obj-6', 'obj-186', 'obj-306', 'obj-772'];
let boxesToRemove = new Set();
let linesToRemove = new Set();

targetIds.forEach(origId => {
    let origBox = d.patcher.boxes.find(b => b.box.id === origId).box;
    
    // Find connected boxes
    let multId = null, divId = null, prepId = null, secId = null;
    
    // multBox -> origBox
    d.patcher.lines.forEach(l => {
        if (l.patchline.destination[0] === origId) {
            let srcId = l.patchline.source[0];
            let srcBox = d.patcher.boxes.find(b => b.box.id === srcId).box;
            if (srcBox.text === '* 1000.') multId = srcId;
        }
    });
    
    // origBox -> divBox
    d.patcher.lines.forEach(l => {
        if (l.patchline.source[0] === origId) {
            let dstId = l.patchline.destination[0];
            let dstBox = d.patcher.boxes.find(b => b.box.id === dstId).box;
            if (dstBox.text === '/ 1000.') divId = dstId;
        }
    });

    if (divId) {
        d.patcher.lines.forEach(l => {
            if (l.patchline.source[0] === divId) prepId = l.patchline.destination[0];
        });
    }

    if (prepId) {
        d.patcher.lines.forEach(l => {
            if (l.patchline.source[0] === prepId) secId = l.patchline.destination[0];
        });
    }
    
    if (multId) boxesToRemove.add(multId);
    if (divId) boxesToRemove.add(divId);
    if (prepId) boxesToRemove.add(prepId);
    if (secId) boxesToRemove.add(secId);

    // Get secBox properties
    let secBox = d.patcher.boxes.find(b => b.box.id === secId)?.box;
    if (secBox) {
        if (secBox.presentation) origBox.presentation = 1;
        if (secBox.presentation_rect) origBox.presentation_rect = [...secBox.presentation_rect];
    }
    
    origBox.patching_rect[0] -= 500;
    delete origBox.hidden;
    delete origBox._migrated_sec;

    // Identify all lines connected to any of the 4 removed boxes
    let idsToRemove = [multId, divId, prepId, secId].filter(x => x);
    d.patcher.lines.forEach((l, i) => {
        if (idsToRemove.includes(l.patchline.source[0]) || idsToRemove.includes(l.patchline.destination[0])) {
            linesToRemove.add(i);
        }
    });
});

d.patcher.boxes = d.patcher.boxes.filter(b => !boxesToRemove.has(b.box.id));
d.patcher.lines = d.patcher.lines.filter((l, i) => !linesToRemove.has(i));

// Fix Freq. Domain labels to say (Hz) instead of (s)
let freqComments = ['obj-1', 'obj-190', 'obj-310', 'obj-776'];
freqComments.forEach(id => {
    let b = d.patcher.boxes.find(b => b.box.id === id);
    if (b) {
        b.box.text = b.box.text.replace('(s)', '(Hz)');
    }
});

fs.writeFileSync(file, JSON.stringify(d, null, 4));
console.log('Restored the 4 Freq. Domain boxes and updated comments to (Hz).');
