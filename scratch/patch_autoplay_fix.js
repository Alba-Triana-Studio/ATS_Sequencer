const fs = require('fs');

const inputFile = 'ATS_Sequencer.maxpat';
const data = JSON.parse(fs.readFileSync(inputFile, 'utf8'));

const fixMap = {
    'obj-659': 'obj-663',
    'obj-671': 'obj-675',
    'obj-452': 'obj-456',
    'obj-437': 'obj-442',
    'obj-425': 'obj-429',
    'obj-401': 'obj-405',
    'obj-375': 'obj-389',
    'obj-413': 'obj-417'
};

let changesCount = 0;

if (data.patcher.lines) {
    data.patcher.lines.forEach(l => {
        if (l.patchline && l.patchline.destination) {
            const destId = l.patchline.destination[0];
            if (fixMap[destId]) {
                l.patchline.destination[0] = fixMap[destId];
                changesCount++;
            }
        }
    });
}

fs.writeFileSync(inputFile, JSON.stringify(data, null, 4));
console.log(`Patched ${inputFile}, made ${changesCount} corrections.`);
