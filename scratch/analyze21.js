const fs = require('fs');
const data = JSON.parse(fs.readFileSync('ATS_Sequencer.maxpat', 'utf8'));
const lines = data.patcher.lines || [];
const boxes = data.patcher.boxes || data.patcher.box || [];

boxes.forEach(b => {
    if (b.box && b.box.maxclass === 'newobj' && b.box.text && b.box.text.startsWith('r mute')) {
        console.log(`Found receiver: ${b.box.id} with text: ${b.box.text}`);
    }
});
