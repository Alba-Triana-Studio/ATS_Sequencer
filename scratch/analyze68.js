const fs = require('fs');
const patcher = JSON.parse(fs.readFileSync('scratch/mastertoggles.json', 'utf8'));

patcher.lines.forEach(line => {
    if (line.patchline.source[0] === 'obj-358') {
        let dest = patcher.boxes.find(b => b.box.id === line.patchline.destination[0]);
        console.log("obj-358 connects to:", dest.box.id, dest.box.text || dest.box.maxclass);
    }
});
