const fs = require('fs');
const data = JSON.parse(fs.readFileSync('ATS_Sequencer.maxpat', 'utf8'));
const lines = data.patcher.lines || [];

const getDestinations = (srcId) => {
    let dests = [];
    lines.forEach(l => {
        if (l.patchline && l.patchline.source && l.patchline.source[0] === srcId) {
            dests.push(l.patchline.destination[0]);
        }
    });
    return dests;
};

console.log('Setup 1: obj-77 -> ', getDestinations('obj-77'), 'obj-2 -> ', getDestinations('obj-2'));
console.log('Setup 2: obj-194 -> ', getDestinations('obj-194'), 'obj-199 -> ', getDestinations('obj-199'));
console.log('Setup 3: obj-314 -> ', getDestinations('obj-314'), 'obj-319 -> ', getDestinations('obj-319'));
console.log('Setup 4: obj-780 -> ', getDestinations('obj-780'), 'obj-785 -> ', getDestinations('obj-785'));
