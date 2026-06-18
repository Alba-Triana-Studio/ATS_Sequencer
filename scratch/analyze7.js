const fs = require('fs');
const data = JSON.parse(fs.readFileSync('ATS_Sequencer.maxpat', 'utf8'));
const boxes = data.patcher.boxes || data.patcher.box || [];
const drawLabels = [ 'obj-659', 'obj-671', 'obj-452', 'obj-437', 'obj-425', 'obj-401', 'obj-375', 'obj-413' ];

drawLabels.forEach(id => {
    const label = boxes.find(bx => bx.box && bx.box.id === id).box;
    const [lx, ly, lw, lh] = label.patching_rect;
    
    // Find objects nearby (within 50 pixels)
    const nearby = boxes.filter(bx => {
        if(!bx.box) return false;
        if(bx.box.id === id) return false;
        if(!bx.box.patching_rect) return false;
        const [x, y] = bx.box.patching_rect;
        const dist = Math.sqrt(Math.pow(x - lx, 2) + Math.pow(y - ly, 2));
        return dist < 80;
    });

    console.log(`\nLabel ${id} at ${lx}, ${ly} has nearby objects:`);
    nearby.forEach(n => {
        console.log(`- ${n.box.id} (${n.box.maxclass}) at ${n.box.patching_rect} text: ${n.box.text || n.box.message || ''}`);
    });
});
