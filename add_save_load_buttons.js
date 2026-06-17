const fs = require('fs');
const file = 'ATS_Sequencer.maxpat';
const patch = JSON.parse(fs.readFileSync(file, 'utf8'));

let maxIdNum = 0;
patch.patcher.boxes.forEach(b => {
    const m = b.box.id.match(/^obj-(\d+)$/);
    if (m) {
        const n = parseInt(m[1], 10);
        if (n > maxIdNum) maxIdNum = n;
    }
});

const getNextId = () => {
    maxIdNum++;
    return `obj-${maxIdNum}`;
};

const presets = patch.patcher.boxes.filter(b => b.box.maxclass === 'preset');

presets.forEach(p => {
    const presetId = p.box.id;
    const prect = p.box.patching_rect || [0, 0, 100, 20];
    
    // We try to find the "Clear all presets" button to align with it in presentation
    // It was placed at presrect[0] + 15, presrect[1] - 25
    let clearBtn;
    const connectedLines = patch.patcher.lines.filter(l => l.patchline.destination[0] === presetId);
    // Find the message box that sends to preset, then the textbutton that sends to it
    // Actually simpler: just find existing buttons near it or base it on preset's presrect.
    const presrect = p.box.presentation_rect || [0, 0, 100, 20];

    // SAVE BUTTON
    const tbSaveId = getNextId();
    const tbSave = {
        box: {
            maxclass: "textbutton",
            id: tbSaveId,
            text: "Save Presets",
            presentation: 1,
            presentation_rect: [presrect[0] - 35, presrect[1] - 25, 80, 20],
            patching_rect: [prect[0] - 100, prect[1] - 60, 80, 20],
            numinlets: 1,
            numoutlets: 3,
            outlettype: ["", "", "int"]
        }
    };

    const msgSaveId = getNextId();
    const msgSave = {
        box: {
            maxclass: "message",
            id: msgSaveId,
            text: "write",
            patching_rect: [prect[0] - 100, prect[1] - 30, 40, 20],
            numinlets: 2,
            numoutlets: 1,
            outlettype: [""]
        }
    };

    // LOAD BUTTON
    const tbLoadId = getNextId();
    const tbLoad = {
        box: {
            maxclass: "textbutton",
            id: tbLoadId,
            text: "Load Presets",
            presentation: 1,
            presentation_rect: [presrect[0] + 50, presrect[1] - 25, 80, 20],
            patching_rect: [prect[0] - 200, prect[1] - 60, 80, 20],
            numinlets: 1,
            numoutlets: 3,
            outlettype: ["", "", "int"]
        }
    };

    const msgLoadId = getNextId();
    const msgLoad = {
        box: {
            maxclass: "message",
            id: msgLoadId,
            text: "read",
            patching_rect: [prect[0] - 200, prect[1] - 30, 40, 20],
            numinlets: 2,
            numoutlets: 1,
            outlettype: [""]
        }
    };

    patch.patcher.boxes.push(tbSave);
    patch.patcher.boxes.push(msgSave);
    patch.patcher.boxes.push(tbLoad);
    patch.patcher.boxes.push(msgLoad);

    // Add lines
    if (!patch.patcher.lines) patch.patcher.lines = [];
    patch.patcher.lines.push({
        patchline: {
            source: [tbSaveId, 0],
            destination: [msgSaveId, 0]
        }
    });
    patch.patcher.lines.push({
        patchline: {
            source: [msgSaveId, 0],
            destination: [presetId, 0]
        }
    });
    
    patch.patcher.lines.push({
        patchline: {
            source: [tbLoadId, 0],
            destination: [msgLoadId, 0]
        }
    });
    patch.patcher.lines.push({
        patchline: {
            source: [msgLoadId, 0],
            destination: [presetId, 0]
        }
    });
});

fs.writeFileSync(file, JSON.stringify(patch, null, '\t') + '\n');
console.log('Done!');
