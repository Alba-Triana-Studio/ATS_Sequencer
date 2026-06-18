const fs = require('fs');
const data = JSON.parse(fs.readFileSync('ATS_Sequencer.maxpat', 'utf8'));
const boxes = data.patcher.boxes || data.patcher.box || [];

const drawButtons = [ 'obj-659', 'obj-671', 'obj-452', 'obj-437', 'obj-425', 'obj-401', 'obj-375', 'obj-413' ];
const presets = ['obj-784', 'obj-318', 'obj-198', 'obj-3'];

console.log("--- Presets ---");
presets.forEach(id => {
    const b = boxes.find(bx => bx.box && bx.box.id === id);
    if(b) console.log(`${id} at ${b.box.patching_rect}`);
});

console.log("\n--- Draw Buttons ---");
drawButtons.forEach(id => {
    const b = boxes.find(bx => bx.box && bx.box.id === id);
    if(b) console.log(`Draw button ${id} at ${b.box.patching_rect}`);
});
