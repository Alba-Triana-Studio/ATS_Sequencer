const fs = require('fs');
const data = JSON.parse(fs.readFileSync('ATS_Sequencer.maxpat', 'utf8'));

['obj-46', 'obj-122', 'obj-249', 'obj-719'].forEach(id => {
    let t = data.patcher.boxes.find(b => b.box.id === id);
    console.log(id, t ? t.box.text || t.box.maxclass : "not found");
});
