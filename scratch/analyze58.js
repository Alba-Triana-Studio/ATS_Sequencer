const fs = require('fs');
const data = JSON.parse(fs.readFileSync('ATS_Sequencer.maxpat', 'utf8'));

let ui = [];
data.patcher.boxes.forEach(b => {
    if (b.box.presentation === 1) {
        let rect = b.box.presentation_rect;
        if (rect && rect[1] > 400 && rect[1] < 600) {
            ui.push({
                class: b.box.maxclass,
                text: b.box.text || '',
                x: rect[0],
                y: rect[1],
                w: rect[2],
                h: rect[3],
                id: b.box.id
            });
        }
    }
});
ui.sort((a,b) => a.y - b.y);
console.log(ui.slice(0, 30));
