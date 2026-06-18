const fs = require('fs');
const data = JSON.parse(fs.readFileSync('ATS_Sequencer.maxpat', 'utf8'));
const boxes = data.patcher.boxes || data.patcher.box || [];

boxes.forEach(b => {
    if (b.box && (b.box.text === 'PLAY' || b.box.text === 'MUTE' || (b.box.text && b.box.text.includes('PLAY')))) {
        console.log(`Found ${b.box.maxclass} with text: ${b.box.text} at ID ${b.box.id}`);
    }
});
