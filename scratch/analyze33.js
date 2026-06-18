const fs = require('fs');
const data = JSON.parse(fs.readFileSync('ATS_Sequencer.maxpat', 'utf8'));
const lines = data.patcher.lines || [];
const boxes = data.patcher.boxes || data.patcher.box || [];

const getBoxClass = (id) => {
    const b = boxes.find(bx => bx.box && bx.box.id === id);
    return b ? b.box.maxclass : "unknown";
};
const getBoxText = (id) => {
    const b = boxes.find(bx => bx.box && bx.box.id === id);
    return b && b.box.text ? b.box.text : "";
};

console.log(`\nWhat connects TO obj-59?`);
lines.forEach(l => {
    if (l.patchline && l.patchline.destination && l.patchline.destination[0] === 'obj-59') {
        const srcId = l.patchline.source[0];
        console.log(`${srcId} (${getBoxClass(srcId)}: ${getBoxText(srcId)}) -> Inlet ${l.patchline.destination[1]}`);
    }
});
