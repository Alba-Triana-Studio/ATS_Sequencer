const fs = require('fs');
const data = JSON.parse(fs.readFileSync('ATS_Sequencer.maxpat', 'utf8'));

['obj-59', 'obj-180', 'obj-299', 'obj-766', 'obj-383', 'obj-830'].forEach(id => {
    let t = data.patcher.boxes.find(b => b.box.id === id);
    if (t) {
        console.log(id, "Presentation Y:", t.box.presentation_rect ? t.box.presentation_rect[1] : 'Not in presentation');
    } else {
        console.log(id, "Not found");
    }
});
