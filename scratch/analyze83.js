const fs = require('fs');
const patcher = JSON.parse(fs.readFileSync('scratch/mastertoggles.json', 'utf8'));

let obj67 = patcher.boxes.find(b => b.box.id === 'obj-67');
console.log("obj-67:", obj67 ? obj67.box.text || obj67.box.maxclass : "not found");

patcher.lines.forEach(line => {
    if (line.patchline.source[0] === 'obj-67') {
        let dest = patcher.boxes.find(b => b.box.id === line.patchline.destination[0]);
        console.log("obj-67 connects to:", dest.box.id, dest.box.text || dest.box.maxclass);
    }
});
