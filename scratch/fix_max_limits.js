const fs = require('fs');

const file = 'ATS_Sequencer.maxpat';
let d = JSON.parse(fs.readFileSync(file, 'utf8'));

// Identify multBoxes (* 1000.)
let multBoxes = d.patcher.boxes.filter(b => b.box.text === '* 1000.');

// Identify secBoxes (they connect to multBoxes)
let secBoxIds = d.patcher.lines
    .filter(l => multBoxes.map(m => m.box.id).includes(l.patchline.destination[0]))
    .map(l => l.patchline.source[0]);

let count = 0;
d.patcher.boxes.forEach(b => {
    if (secBoxIds.includes(b.box.id)) {
        if (b.box.maximum !== undefined || b.box.minimum !== undefined) {
            delete b.box.maximum;
            delete b.box.minimum;
            count++;
        }
    }
});

fs.writeFileSync(file, JSON.stringify(d, null, 4));
console.log('Fixed ' + count + ' secBoxes by removing their static limits.');
