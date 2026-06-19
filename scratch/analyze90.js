const fs = require('fs');
const data = JSON.parse(fs.readFileSync('ATS_Sequencer.maxpat', 'utf8'));

let lines = data.patcher.lines.filter(l => l.patchline.source[0] === 'obj-109');
console.log("obj-109 connects to:", lines.map(l => l.patchline.destination[0]));
