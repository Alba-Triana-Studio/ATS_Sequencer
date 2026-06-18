const fs = require('fs');
const data = JSON.parse(fs.readFileSync('ATS_Sequencer.maxpat', 'utf8'));

const boxes = data.patcher.boxes || data.patcher.box || [];
let drawButtons = [];

boxes.forEach(b => {
    if (b.box && b.box.text === 'Draw') {
        drawButtons.push(b.box.id);
    }
});

console.log('Draw Buttons:', drawButtons);
