const fs = require('fs');
const patcher = JSON.parse(fs.readFileSync('scratch/mastertoggles.json', 'utf8'));

// Find the 4th inlet
let inlets = patcher.boxes.filter(b => b.box.maxclass === 'inlet');
inlets.sort((a,b) => a.box.patching_rect[0] - b.box.patching_rect[0]); // Usually ordered by x position
console.log("Inlets:", inlets.map(i => ({ id: i.box.id, x: i.box.patching_rect[0] })));

let fourthInlet = inlets[3];
if (fourthInlet) {
    console.log("4th inlet:", fourthInlet.box.id);
    patcher.lines.forEach(line => {
        if (line.patchline.source[0] === fourthInlet.box.id) {
            console.log("Connects to:", line.patchline.destination);
        }
    });
}
