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

findConnectionsFrom('obj-60');
findConnectionsFrom('obj-46');
