const fs = require('fs');
const data = JSON.parse(fs.readFileSync('ATS_Sequencer.maxpat', 'utf8'));
const boxes = data.patcher.boxes || data.patcher.box || [];

boxes.forEach(b => {
    if (b.box && b.box.maxclass === 'newobj' && b.box.text) {
        if (b.box.text.startsWith('s ') || b.box.text.startsWith('r ')) {
            if (b.box.text.toLowerCase().includes('play') || b.box.text.toLowerCase().includes('bang') || b.box.text.toLowerCase().includes('trig') || b.box.text.toLowerCase().includes('draw')) {
                console.log(`${b.box.id}: ${b.box.text}`);
            }
        }
    }
});
