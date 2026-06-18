const fs = require('fs');

const path = process.argv[2];
const data = JSON.parse(fs.readFileSync(path, 'utf8'));

const patcher = data.patcher;
const lines = patcher.lines || [];
const boxes = patcher.boxes || patcher.box || [];

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

findConnectionsFrom('obj-486');
findConnectionsFrom('obj-490');
