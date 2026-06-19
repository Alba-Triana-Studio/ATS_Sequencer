const fs = require('fs');
const data = JSON.parse(fs.readFileSync('ATS_Sequencer.maxpat', 'utf8'));

['obj-3', 'obj-198', 'obj-318', 'obj-784'].forEach(p => {
    let lines = data.patcher.lines.filter(l => l.patchline.source[0] === p);
    lines.forEach(l => {
        let dest = data.patcher.boxes.find(b => b.box.id === l.patchline.destination[0]);
        console.log(p, "outlet", l.patchline.source[1], "connects to", dest.box.id, dest.box.text || dest.box.maxclass);
    });
});
