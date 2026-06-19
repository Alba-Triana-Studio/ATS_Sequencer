const fs = require('fs');
const data = JSON.parse(fs.readFileSync('ATS_Sequencer.maxpat', 'utf8'));

let mt = data.patcher.boxes.find(b => b.box.id === 'obj-112');
let mtId = 'obj-112';

let connections = [];
data.patcher.lines.forEach(line => {
    if (line.patchline.destination[0] === mtId) {
        connections.push({
            inlet: line.patchline.destination[1],
            source: line.patchline.source[0]
        });
    }
});

connections.sort((a,b) => a.inlet - b.inlet);
for (let c of connections) {
    let src = data.patcher.boxes.find(b => b.box.id === c.source);
    console.log(`Inlet ${c.inlet} <- ${c.source} (${src ? src.box.text || src.box.maxclass : '?'})`);
}
