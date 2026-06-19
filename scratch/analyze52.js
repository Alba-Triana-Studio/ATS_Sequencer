const fs = require('fs');
const data = JSON.parse(fs.readFileSync('ATS_Sequencer.maxpat', 'utf8'));

// Find obj-109 (Play Full Piece)
let playFullPiece = data.patcher.boxes.find(b => b.box.id === 'obj-109');
console.log("Play Full Piece toggle:", playFullPiece);

// Trace where obj-109 goes
data.patcher.lines.forEach(line => {
    if (line.patchline.source[0] === 'obj-109') {
        console.log("obj-109 connects to:", line.patchline.destination);
    }
});
