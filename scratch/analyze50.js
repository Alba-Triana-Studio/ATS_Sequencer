const fs = require('fs');
const data = JSON.parse(fs.readFileSync('ATS_Sequencer.maxpat', 'utf8'));
const boxes = data.patcher.boxes || data.patcher.box || [];

const getRect = (bx) => bx.box.patching_rect || [0,0,0,0];

const timeComments = boxes.filter(bx => bx.box && bx.box.maxclass === 'comment' && bx.box.text && bx.box.text.toUpperCase().includes('TIME'));

timeComments.forEach(tc => {
    const tr = getRect(tc);
    console.log(`\nTime Comment: "${tc.box.text}" at [${tr.join(', ')}]`);
    
    // Find nearest number box
    let nearest = null;
    let minDist = Infinity;
    boxes.forEach(bx => {
        if (bx.box && bx.box.maxclass === 'number' && bx.box.id !== 'obj-85') {
            const br = getRect(bx);
            const dx = br[0] - tr[0];
            const dy = br[1] - tr[1];
            const dist = Math.sqrt(dx*dx + dy*dy);
            if (dist < minDist && dist < 200) {
                minDist = dist;
                nearest = bx.box.id;
            }
        }
    });
    if (nearest) console.log(`Nearest number box: ${nearest} (dist: ${minDist})`);
});
