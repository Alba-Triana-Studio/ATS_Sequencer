const fs = require('fs');
const patch = JSON.parse(fs.readFileSync('ATS_Sequencer.maxpat', 'utf8'));

const boxes = {};
patch.patcher.boxes.forEach(b => {
    boxes[b.box.id] = b.box;
});

const lines = patch.patcher.lines;

// Find message boxes starting with "xyc "
const xycMessages = Object.values(boxes).filter(b => b.maxclass === 'message' && b.text && b.text.startsWith('xyc '));
console.log(`Found ${xycMessages.length} xyc messages`);

xycMessages.forEach(msg => {
    console.log(`\nMessage: ${msg.id} - ${msg.text}`);
    const values = msg.text.replace('xyc ', '').split(' ');
    console.log(`Values: Time=${values[0]}, Target=${values[1]}, Curve=${values[2]}`);
    
    // Find what feeds into the right inlet (inlet 1) of this message
    const feeders = lines.filter(l => l.patchline.destination[0] === msg.id && l.patchline.destination[1] === 1);
    feeders.forEach(f => {
        const sourceId = f.patchline.source[0];
        const sourceBox = boxes[sourceId];
        console.log(`  Fed by: ${sourceId} (${sourceBox.maxclass}) - text: ${sourceBox.text}`);
        
        // Find what feeds into this source box
        const feeders2 = lines.filter(l => l.patchline.destination[0] === sourceId);
        feeders2.forEach(f2 => {
            const s2Id = f2.patchline.source[0];
            const s2Box = boxes[s2Id];
            console.log(`    Inlet ${f2.patchline.destination[1]} fed by: ${s2Id} (${s2Box.maxclass})`);
        });
    });
});
