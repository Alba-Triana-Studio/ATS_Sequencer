const fs = require('fs');

const inputFile = 'ATS_Sequencer.maxpat';
const data = JSON.parse(fs.readFileSync(inputFile, 'utf8'));

let count = 0;
data.patcher.lines.forEach(l => {
    if(l.patchline && l.patchline.destination) {
        if(l.patchline.destination[0] === 'obj-659' || l.patchline.destination[0] === 'obj-671') {
            console.log(l.patchline);
            count++;
        }
    }
});
console.log('Found', count);
