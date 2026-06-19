const fs = require('fs');
const data = JSON.parse(fs.readFileSync('ATS_Sequencer.maxpat', 'utf8'));

[ 'obj-3', 'obj-198', 'obj-310', 'obj-776' ].forEach(presetId => {
    let p = data.patcher.boxes.find(b => b.box.id === presetId);
    console.log("Preset:", presetId, "Y pos:", p ? p.box.patching_rect[1] : 'not found');
});

// find comments near those Y pos
data.patcher.boxes.forEach(b => {
    if (b.box.maxclass === 'comment' && b.box.presentation === 1) {
        console.log("Comment:", b.box.text, "Y:", b.box.presentation_rect[1]);
    }
});

