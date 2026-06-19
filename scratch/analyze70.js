const fs = require('fs');
const data = JSON.parse(fs.readFileSync('ATS_Sequencer.maxpat', 'utf8'));

let obj12 = data.patcher.boxes.find(b => b.box.id === 'obj-12');
console.log("obj-12:", obj12 ? obj12.box.maxclass + " " + obj12.box.text : "not found");
if (obj12) {
    console.log("obj-12 rect:", obj12.box.patching_rect);
    console.log("obj-12 presentation:", obj12.box.presentation_rect);
}
