const fs = require('fs');

function genId() { return 'obj-' + Math.random().toString(36).substr(2, 9); }

function processFile(file) {
    let d;
    try {
        d = JSON.parse(fs.readFileSync(file, 'utf8'));
    } catch(e) { return; }
    
    let timeComments = d.patcher.boxes.filter(b => b.box.maxclass === 'comment' && b.box.text && b.box.text.includes('(ms)'));
    let timeBoxIds = new Set();
    
    // Match comments to boxes below them
    timeComments.forEach(c => {
        let cx = c.box.patching_rect[0];
        let cy = c.box.patching_rect[1];
        let candidates = d.patcher.boxes.filter(b => {
            if (!['number', 'flonum', 'number~'].includes(b.box.maxclass)) return false;
            let bx = b.box.patching_rect[0];
            let by = b.box.patching_rect[1];
            return Math.abs(bx - cx) < 60 && by >= cy - 5 && by < cy + 100;
        });
        candidates.sort((a, b) => (a.box.patching_rect[1] - cy) - (b.box.patching_rect[1] - cy));
        if (candidates.length > 0) {
            timeBoxIds.add(candidates[0].box.id);
        }
    });

    // Manually add elapsed time visualizer
    timeBoxIds.add('obj-85');

    if (timeBoxIds.size === 0) return;

    let addedBoxes = [];
    let addedLines = [];
    let processed = 0;

    for (let id of timeBoxIds) {
        let origBoxIndex = d.patcher.boxes.findIndex(b => b.box.id === id);
        if (origBoxIndex === -1) continue;
        let origBox = d.patcher.boxes[origBoxIndex].box;
        if (origBox._migrated_sec) continue;
        origBox._migrated_sec = true;

        let secId = genId();
        let multId = genId();
        let divId = genId();
        let prepId = genId();

        let secBox = { maxclass: 'flonum', id: secId, patching_rect: [...origBox.patching_rect] };
        ['presentation', 'presentation_rect', 'format', 'bgcolor', 'textcolor', 'htricolor', 'tricolor', 'hint', 'annotation'].forEach(p => {
            if (origBox[p] !== undefined) secBox[p] = Array.isArray(origBox[p]) ? [...origBox[p]] : origBox[p];
        });
        
        if (origBox.minimum !== undefined) secBox.minimum = origBox.minimum / 1000.0;
        if (origBox.maximum !== undefined) secBox.maximum = origBox.maximum / 1000.0;

        origBox.patching_rect[0] += 500;
        origBox.hidden = 1;
        if (origBox.presentation) delete origBox.presentation;
        if (origBox.presentation_rect) delete origBox.presentation_rect;

        addedBoxes.push({ box: secBox });
        addedBoxes.push({ box: { maxclass: 'newobj', text: '* 1000.', id: multId, patching_rect: [origBox.patching_rect[0], origBox.patching_rect[1] - 30, 50, 22] }});
        addedBoxes.push({ box: { maxclass: 'newobj', text: '/ 1000.', id: divId, patching_rect: [origBox.patching_rect[0] + 50, origBox.patching_rect[1] + 30, 50, 22] }});
        addedBoxes.push({ box: { maxclass: 'newobj', text: 'prepend set', id: prepId, patching_rect: [origBox.patching_rect[0] + 50, origBox.patching_rect[1] + 60, 70, 22] }});

        addedLines.push({ patchline: { source: [secId, 0], destination: [multId, 0] } });
        addedLines.push({ patchline: { source: [multId, 0], destination: [origBox.id, 0] } });
        addedLines.push({ patchline: { source: [origBox.id, 0], destination: [divId, 0] } });
        addedLines.push({ patchline: { source: [divId, 0], destination: [prepId, 0] } });
        addedLines.push({ patchline: { source: [prepId, 0], destination: [secId, 0] } });
        processed++;
    }

    d.patcher.boxes.forEach(b => {
        if (b.box.maxclass === 'comment' && b.box.text) {
            b.box.text = b.box.text.replace(/\(ms\)/g, '(s)');
            b.box.text = b.box.text.replace(/milisegundos/gi, 'segundos');
        }
    });

    if (processed > 0) {
        d.patcher.boxes.push(...addedBoxes);
        d.patcher.lines.push(...addedLines);
        fs.writeFileSync(file, JSON.stringify(d, null, 4));
        console.log('Modified ' + file + ': processed ' + processed + ' time boxes.');
    }
}

// Just modify the main sequencer file
processFile('ATS_Sequencer.maxpat');
