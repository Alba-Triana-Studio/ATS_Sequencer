const fs = require('fs');
const data = JSON.parse(fs.readFileSync('ATS_Sequencer.maxpat', 'utf8'));

let masterToggles = data.patcher.boxes.find(b => b.box.id === 'obj-112');
console.log("Master Toggles:", JSON.stringify(masterToggles, null, 2).substring(0, 500));
