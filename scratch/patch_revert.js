const fs = require('fs');
const data = JSON.parse(fs.readFileSync('ATS_Sequencer.maxpat', 'utf8'));

// Identify my IDs
const myIds = [
    "obj-playall-sel1", "obj-playall-tb", "obj-playall-msg1", "obj-playall-msg0",
    "obj-playall-tb-fixed", "obj-playall-msg-preset", "obj-playall-msg-toggle",
    "obj-playall-i", "obj-playall-msg2", "obj-playall-msg3", "obj-playall-tb0", 
    "obj-playall-tb1", "obj-playall-tb2", "obj-playall-tb3", "obj-playall-route", 
    "obj-playall-trig0", "obj-playall-trig1", "obj-playall-trig2", "obj-playall-trig3", 
    "obj-playall-reset"
];

// Remove my old boxes
data.patcher.boxes = data.patcher.boxes.filter(b => !myIds.includes(b.box.id));

// Remove my old lines
data.patcher.lines = data.patcher.lines.filter(l => {
    let src = l.patchline.source[0];
    let dest = l.patchline.destination[0];
    return !(myIds.includes(src) || myIds.includes(dest));
});

// Restore original obj-109 connections:
// obj-109 -> obj-125
// obj-109 -> obj-269
data.patcher.lines.push({ "patchline": { "source": ["obj-109", 0], "destination": ["obj-125", 0] } });
data.patcher.lines.push({ "patchline": { "source": ["obj-109", 0], "destination": ["obj-269", 0] } });

fs.writeFileSync('ATS_Sequencer.maxpat', JSON.stringify(data, null, 4));
console.log("Reverted ATS_Sequencer.maxpat to original connections.");
