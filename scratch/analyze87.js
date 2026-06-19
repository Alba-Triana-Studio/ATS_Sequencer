const fs = require('fs');
const patcher = JSON.parse(fs.readFileSync('scratch/mastertoggles.json', 'utf8'));

let queue = ['obj-28'];
let visited = new Set(['obj-28']);
while(queue.length > 0) {
    let curr = queue.shift();
    let b = patcher.boxes.find(b => b.box.id === curr);
    console.log(curr, b ? b.box.text || b.box.maxclass : "not found");
    patcher.lines.forEach(l => {
        if (l.patchline.source[0] === curr && !visited.has(l.patchline.destination[0])) {
            visited.add(l.patchline.destination[0]);
            queue.push(l.patchline.destination[0]);
            let dest = patcher.boxes.find(b => b.box.id === l.patchline.destination[0]);
            console.log("  ->", l.patchline.destination[0], dest ? dest.box.text || dest.box.maxclass : "?");
        }
    });
}
