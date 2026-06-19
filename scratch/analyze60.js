const fs = require('fs');
const data = JSON.parse(fs.readFileSync('ATS_Sequencer.maxpat', 'utf8'));

data.patcher.lines.forEach(line => {
    if (line.patchline.source[0] === 'obj-112') { // obj-112 is p mastertoggles
        console.log("obj-112 out", line.patchline.source[1], "connects to:", line.patchline.destination);
    }
});
