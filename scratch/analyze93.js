const fs = require('fs');
const patcher = JSON.parse(fs.readFileSync('scratch/mastertoggles.json', 'utf8'));

let obj290 = patcher.boxes.find(b => b.box.id === 'obj-290');
console.log("obj-290:", obj290);

let lines = patcher.lines.filter(l => l.patchline.source[0] === 'obj-290');
lines.forEach(l => {
    let dest = patcher.boxes.find(b => b.box.id === l.patchline.destination[0]);
    console.log("obj-290 connects to:", dest.box.id, dest.box.text || dest.box.maxclass);
});
