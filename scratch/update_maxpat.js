const fs = require('fs');

const labels = [
    "M1", "M2", "M2b", "M2c", "M3", "M3b", "M4", "M5", "M5b", "M5c", 
    "M6", "M6b", "M6c", "M7", "M7b", "M7c", "M8", "M9", "M10", "M11", 
    "", "Full Piece", "E1", "E2", "E3", "E4", "E5", "Eraser", "T1", "T2"
];

function updateMaxpat(filename) {
    let data = JSON.parse(fs.readFileSync(filename, 'utf8'));
    let boxes = data.patcher.boxes;

    const presets = boxes.filter(b => b.box.maxclass === 'preset');
    if (presets.length < 4) {
        console.log('Could not find 4 presets');
        return;
    }

    presets.sort((a, b) => a.box.presentation_rect[1] - b.box.presentation_rect[1]);

    const oldCols = 10;
    const newCols = 20;
    const oldRows = 20;
    const newRows = 30;

    presets.forEach((p, idx) => {
        let pr = p.box.presentation_rect;
        let p_rect = p.box.patching_rect;
        
        // Scale width
        let newWidth = p_rect[2] * (newCols / oldCols);
        let newPWidth = pr[2] * (newCols / oldCols);
        
        let newHeight = p_rect[3] * (newRows / oldRows);
        let newPHeight = pr[3] * (newRows / oldRows);

        p.box.patching_rect = [p_rect[0], p_rect[1], newWidth, newHeight];
        p.box.presentation_rect = [pr[0], pr[1], newPWidth, newPHeight];

        let y_start = pr[1];
        let y_end = pr[1] + newPHeight;
        let x_left = pr[0];

        // Remove old labels
        for (let i = boxes.length - 1; i >= 0; i--) {
            let b = boxes[i];
            if (b.box.maxclass === 'comment' && b.box.presentation_rect) {
                let br = b.box.presentation_rect;
                if (br[0] < x_left + 15 && br[1] >= y_start - 20 && br[1] <= y_end + 20) {
                    boxes.splice(i, 1);
                }
            }
        }

        // Add the 30 new labels
        let rowHeight = newPHeight / newRows;
        labels.forEach((label, i) => {
            if (label === "") return;
            
            let id = "obj-newlabel-" + idx + "-" + i;
            let labelBox = {
                "box": {
                    "id": id,
                    "maxclass": "comment",
                    "text": label,
                    "presentation": 1,
                    "presentation_rect": [
                        x_left - 45, 
                        y_start + (i * rowHeight),
                        42,
                        18
                    ],
                    "patching_rect": [
                        p_rect[0] - 45,
                        p_rect[1] + (i * (newHeight / newRows)),
                        42,
                        18
                    ]
                }
            };
            boxes.push(labelBox);
        });
    });

    // Update the + 100 objects to + 200 (since 10 rows * 20 cols = 200 cells offset)
    boxes.forEach(b => {
        if (b.box.maxclass === 'newobj' && b.box.text === '+ 100') {
            b.box.text = '+ 200';
        }
    });

    fs.writeFileSync(filename, JSON.stringify(data, null, 4));
    console.log('Done updating ' + filename);
}

updateMaxpat('ATS_Sequencer.maxpat');
