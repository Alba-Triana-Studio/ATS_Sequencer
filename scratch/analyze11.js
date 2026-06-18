const fs = require('fs');
const data = JSON.parse(fs.readFileSync('ATS_Sequencer.maxpat', 'utf8'));
const boxes = data.patcher.boxes || data.patcher.box || [];
const playLabels = [ 'obj-376', 'obj-373', 'obj-371', 'obj-18' ];

playLabels.forEach(id => {
    const label = boxes.find(bx => bx.box && bx.box.id === id).box;
    const [lx, ly, lw, lh] = label.patching_rect;
    
    const nearby = boxes.filter(bx => {
        if(!bx.box || bx.box.id === id || !bx.box.patching_rect) return false;
        const [x, y] = bx.box.patching_rect;
        const dist = Math.sqrt(Math.pow(x - lx, 2) + Math.pow(y - ly, 2));
        return dist < 80;
    });

    console.log(`\nLabel ${id} at ${lx}, ${ly} has nearby objects:`);
    nearby.forEach(n => {
        console.log(`- ${n.box.id} (${n.box.maxclass}) at ${n.box.patching_rect} text: ${n.box.text || n.box.message || ''}`);
    });
});
