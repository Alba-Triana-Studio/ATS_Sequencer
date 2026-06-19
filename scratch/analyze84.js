const fs = require('fs');
const patcher = JSON.parse(fs.readFileSync('scratch/mastertoggles.json', 'utf8'));

let queue = ['obj-72'];
let visited = new Set(['obj-72']);
while(queue.length > 0) {
    let curr = queue.shift();
    patcher.lines.forEach(l => {
        if (l.patchline.source[0] === curr && !visited.has(l.patchline.destination[0])) {
            visited.add(l.patchline.destination[0]);
            queue.push(l.patchline.destination[0]);
            let dest = patcher.boxes.find(b => b.box.id === l.patchline.destination[0]);
            console.log(curr, "->", dest.box.id, dest.box.text || dest.box.maxclass);
        }
    });
}
