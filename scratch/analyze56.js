const fs = require('fs');
const data = JSON.parse(fs.readFileSync('ATS_Sequencer.maxpat', 'utf8'));

let masterToggles = data.patcher.boxes.find(b => b.box.id === 'obj-112');
fs.writeFileSync('scratch/mastertoggles.json', JSON.stringify(masterToggles.box.patcher, null, 2));
