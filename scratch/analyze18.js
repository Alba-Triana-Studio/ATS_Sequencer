const fs = require('fs');
const data = JSON.parse(fs.readFileSync('ATS_Sequencer.maxpat', 'utf8'));
const lines = data.patcher.lines || [];
const boxes = data.patcher.boxes || data.patcher.box || [];

boxes.forEach(b => {
    if (b.box && b.box.maxclass === 'function') {
        console.log(`Function object ID: ${b.box.id} at ${b.box.patching_rect}`);
        lines.forEach(l => {
            if (l.patchline && l.patchline.destination && l.patchline.destination[0] === b.box.id) {
                console.log(`  <- Connected from ${l.patchline.source[0]} inlet ${l.patchline.destination[1]}`);
            }
        });
    }
});
