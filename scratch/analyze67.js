const fs = require('fs');
const patcher = JSON.parse(fs.readFileSync('scratch/mastertoggles.json', 'utf8'));

let obj5 = patcher.boxes.find(b => b.box.id === 'obj-5');
patcher.lines.forEach(line => {
    if (line.patchline.source[0] === 'obj-5') {
        let dest = patcher.boxes.find(b => b.box.id === line.patchline.destination[0]);
        console.log("Inlet 3 connects to:", dest.box.id, dest.box.text || dest.box.maxclass);
    }
});
