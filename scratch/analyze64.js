const fs = require('fs');
const data = JSON.parse(fs.readFileSync('ATS_Sequencer.maxpat', 'utf8'));

let toggles = [];
data.patcher.boxes.forEach(b => {
    if (b.box.maxclass === 'toggle' && b.box.presentation === 1) {
        let rect = b.box.presentation_rect;
        toggles.push({
            id: b.box.id,
            y: rect[1],
            x: rect[0]
        });
    }
});
toggles.sort((a,b) => a.y - b.y);
console.log(toggles);
