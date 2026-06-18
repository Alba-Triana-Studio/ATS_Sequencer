const fs = require('fs');

const path = process.argv[2];
const data = JSON.parse(fs.readFileSync(path, 'utf8'));

const patcher = data.patcher;
const boxes = patcher.box ? patcher.box : patcher.boxes ? patcher.boxes : [];
// Max 5+ typically has patcher.boxes or patcher.box? Actually, it's patcher.boxes array containing {box: {...}}
let presetIds = [];
const objects = patcher.boxes || patcher.box || [];
objects.forEach(b => {
    if (b.box && b.box.maxclass === 'preset') {
        presetIds.push(b.box.id);
        console.log(`Found preset: ${b.box.id} at line ${b.box.patching_rect}`);
    }
});

const lines = patcher.lines || [];
presetIds.forEach(id => {
    console.log(`\nConnections from preset ${id}:`);
    lines.forEach(l => {
        if (l.patchline && l.patchline.source && l.patchline.source[0] === id) {
            console.log(`Outlet ${l.patchline.source[1]} -> ${l.patchline.destination[0]} Inlet ${l.patchline.destination[1]}`);
        }
    });
});
