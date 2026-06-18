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

const findConnectionsFrom = (id) => {
    console.log(`\nConnections from ${id} (${getBoxClass(id)}: ${getBoxText(id)}):`);
    lines.forEach(l => {
        if (l.patchline && l.patchline.source && l.patchline.source[0] === id) {
            const destId = l.patchline.destination[0];
            console.log(`Outlet ${l.patchline.source[1]} -> ${destId} (${getBoxClass(destId)}: ${getBoxText(destId)})`);
        }
    });
};

const findConnectionsTo = (id) => {
    console.log(`\nConnections TO ${id} (${getBoxClass(id)}: ${getBoxText(id)}):`);
    lines.forEach(l => {
        if (l.patchline && l.patchline.destination && l.patchline.destination[0] === id) {
            const srcId = l.patchline.source[0];
            console.log(`${srcId} (${getBoxClass(srcId)}: ${getBoxText(srcId)}) -> Inlet ${l.patchline.destination[1]}`);
        }
    });
};

// Find the obj-32 analogue for Setup 2
// Setup 2 timebox is connected to a == object.
// Setup 2 clocker is obj-222 (probably?)
// Let's just find all "t b b b" objects.
boxes.forEach(b => {
    if (b.box && b.box.text === 't b b b') {
        console.log(`Found t b b b: ${b.box.id}`);
        findConnectionsTo(b.box.id);
    }
});
