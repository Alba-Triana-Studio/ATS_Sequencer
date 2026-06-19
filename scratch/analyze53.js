const fs = require('fs');
const data = JSON.parse(fs.readFileSync('ATS_Sequencer.maxpat', 'utf8'));

data.patcher.lines.forEach(line => {
    if (line.patchline.source[0] === 'obj-125') {
        console.log("obj-125 connects to:", line.patchline.destination);
        let dest = data.patcher.boxes.find(b => b.box.id === line.patchline.destination[0]);
        console.log("Dest:", dest ? dest.box.text || dest.box.maxclass : "not found");
    }
});
