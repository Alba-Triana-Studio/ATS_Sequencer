const fs = require('fs');
const data = JSON.parse(fs.readFileSync('ATS_Sequencer.maxpat', 'utf8'));

[1, 2, 3].forEach(outlet => {
    let lines = data.patcher.lines.filter(l => l.patchline.source[0] === 'obj-112' && l.patchline.source[1] === outlet);
    console.log(`obj-112 Outlet ${outlet} connects to:`);
    lines.forEach(l => {
        let dest = data.patcher.boxes.find(b => b.box.id === l.patchline.destination[0]);
        console.log("  ", dest.box.id, dest.box.text || dest.box.maxclass);
    });
});
