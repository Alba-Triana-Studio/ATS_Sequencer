const fs = require('fs');

const path = 'ATS_Sequencer.maxpat';
const data = JSON.parse(fs.readFileSync(path, 'utf8'));
const boxes = data.patcher.boxes;
const lines = data.patcher.lines;

const presetIds = ['obj-3', 'obj-198', 'obj-318', 'obj-784'];
let newBoxes = [];
let newLines = [];

presetIds.forEach((presetId, idx) => {
    let presetBox = boxes.find(b => b.box.id === presetId).box;
    let newId = 'obj-append-mat-' + (idx + 1);
    
    // Create new JS box right next to the preset box
    let newBox = {
        "box": {
            "id": newId,
            "maxclass": "newobj",
            "text": "js append_matrix_size.js",
            "patching_rect": [
                presetBox.patching_rect[0] + 100,
                presetBox.patching_rect[1] - 30,
                150,
                22
            ],
            "fontname": "Arial",
            "fontsize": 12
        }
    };
    newBoxes.push(newBox);
    
    // Connect preset 5th outlet (index 4) to new JS object (inlet 0)
    let newLine = {
        "patchline": {
            "destination": [newId, 0],
            "source": [presetId, 4]
        }
    };
    newLines.push(newLine);
});

data.patcher.boxes = boxes.concat(newBoxes);
data.patcher.lines = lines.concat(newLines);

fs.writeFileSync(path, JSON.stringify(data, null, '\t'));
console.log('Added js append_matrix_size.js objects and connected them to the presets!');
