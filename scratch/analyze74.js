const fs = require('fs');
const data = JSON.parse(fs.readFileSync('ATS_Sequencer.maxpat', 'utf8'));

['obj-59', 'obj-180', 'obj-299', 'obj-766', 'obj-383', 'obj-830'].forEach(id => {
    let t = data.patcher.boxes.find(b => b.box.id === id);
    if (!t) return;
    let y = t.box.presentation_rect ? t.box.presentation_rect[1] : t.box.patching_rect[1];
    
    // Find closest comment in presentation (if presentation) or patching
    let closest = null;
    let minD = Infinity;
    data.patcher.boxes.forEach(b => {
        if (b.box.maxclass === 'comment') {
            let by = b.box.presentation === 1 ? (b.box.presentation_rect ? b.box.presentation_rect[1] : null) : b.box.patching_rect[1];
            if (by !== null) {
                let d = Math.abs(by - y);
                if (d < minD && d < 50) {
                    minD = d;
                    closest = b.box.text;
                }
            }
        }
    });
    console.log(id, "closest comment:", closest);
});
