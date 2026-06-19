const fs = require('fs');
const patcher = JSON.parse(fs.readFileSync('scratch/mastertoggles.json', 'utf8'));

// Tracing inlets to outlets
let inlets = patcher.boxes.filter(b => b.box.maxclass === 'inlet');
inlets.sort((a,b) => a.box.patching_rect[0] - b.box.patching_rect[0]);

let outlets = patcher.boxes.filter(b => b.box.maxclass === 'outlet');
outlets.sort((a,b) => a.box.patching_rect[0] - b.box.patching_rect[0]);
outlets.forEach((o, i) => console.log("Outlet", i, "is obj:", o.box.id));

inlets.forEach((inlet, index) => {
    console.log("Inlet", index, inlet.box.id);
    let queue = [inlet.box.id];
    let visited = new Set();
    while(queue.length > 0) {
        let curr = queue.shift();
        patcher.lines.forEach(line => {
            if (line.patchline.source[0] === curr && !visited.has(line.patchline.destination[0])) {
                visited.add(line.patchline.destination[0]);
                queue.push(line.patchline.destination[0]);
                let dest = patcher.boxes.find(b => b.box.id === line.patchline.destination[0]);
                if (dest && dest.box.maxclass === 'outlet') {
                    console.log("  -> reaches Outlet", dest.box.id);
                }
            }
        });
    }
});

