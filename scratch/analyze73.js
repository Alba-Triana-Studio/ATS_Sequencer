const fs = require('fs');
const data = JSON.parse(fs.readFileSync('ATS_Sequencer.maxpat', 'utf8'));

['obj-59', 'obj-180', 'obj-299', 'obj-766'].forEach(toggleId => {
    let presetFound = null;
    let timeFound = null;
    let curveFound = null;
    
    // Check connections from toggle
    data.patcher.lines.forEach(line => {
        if (line.patchline.source[0] === toggleId) {
            console.log(toggleId, "connects to", line.patchline.destination[0]);
        }
    });
});
