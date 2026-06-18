const fs = require('fs');
const data = JSON.parse(fs.readFileSync('ATS_Sequencer.maxpat', 'utf8'));
const boxes = data.patcher.boxes || data.patcher.box || [];
const drawButtons = [ 'obj-659', 'obj-671', 'obj-452', 'obj-437', 'obj-425', 'obj-401', 'obj-375', 'obj-413' ];

drawButtons.forEach(id => {
    const b = boxes.find(bx => bx.box && bx.box.id === id);
    if(b) console.log(`${id} is ${b.box.maxclass} with text: ${b.box.text || b.box.message}`);
});
