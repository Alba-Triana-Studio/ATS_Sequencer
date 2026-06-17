const fs = require('fs');
const patch = JSON.parse(fs.readFileSync('ATS_Sequencer.maxpat', 'utf8'));
const presets = patch.patcher.boxes.filter(b => b.box.maxclass === 'preset');
console.log(JSON.stringify(presets[0].box.preset_data, null, 2).slice(0, 500));
