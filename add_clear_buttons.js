const fs = require('fs');
const file = 'ATS_Sequencer.maxpat';
const patch = JSON.parse(fs.readFileSync(file, 'utf8'));

// Find max obj id
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
    const presrect = p.box.presentation_rect || [0, 0, 100, 20];
    const hasPres = p.box.presentation === 1;

    // Create textbutton
    const tbId = getNextId();
    const tb = {
        box: {
            maxclass: "textbutton",
            id: tbId,
            text: "Clear all presets",
            presentation: 1,
            presentation_rect: [presrect[0] + 15, presrect[1] - 25, 100, 20],
            patching_rect: [prect[0], prect[1] - 60, 100, 20],
            numinlets: 1,
            numoutlets: 3,
            outlettype: ["", "", "int"]
        }
    };

    // Create message box
    const msgId = getNextId();
    const msg = {
        box: {
            maxclass: "message",
            id: msgId,
            text: "clearall",
            patching_rect: [prect[0], prect[1] - 30, 50, 20],
            numinlets: 2,
            numoutlets: 1,
            outlettype: [""]
        }
    };

    patch.patcher.boxes.push(tb);
    patch.patcher.boxes.push(msg);

    // Add lines
    if (!patch.patcher.lines) patch.patcher.lines = [];
    patch.patcher.lines.push({
        patchline: {
            source: [tbId, 0],
            destination: [msgId, 0]
        }
    });
    patch.patcher.lines.push({
        patchline: {
            source: [msgId, 0],
            destination: [presetId, 0]
        }
    });
});

fs.writeFileSync(file, JSON.stringify(patch, null, '\t') + '\n');
console.log('Done!');
