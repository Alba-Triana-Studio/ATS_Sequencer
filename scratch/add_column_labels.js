const fs = require('fs');

const path = 'ATS_Sequencer.maxpat';
const data = JSON.parse(fs.readFileSync(path, 'utf8'));
const boxes = data.patcher.boxes;

const oldIds = [
    'obj-226', 'obj-227', 'obj-228', 'obj-233', 'obj-252', 'obj-267', 'obj-272', 'obj-273',
    'obj-324', 'obj-325', 'obj-326', 'obj-329', 'obj-330', 'obj-331', 'obj-332', 'obj-334',
    'obj-49286c', 'obj-57e778', 'obj-8cc8d7', 'obj-67c033', 'obj-b0943d', 'obj-0bdd04', 'obj-5b439d', 'obj-64c17f',
    'obj-339', 'obj-340', 'obj-341', 'obj-347', 'obj-352', 'obj-355', 'obj-356', 'obj-364'
];

// Matrix pairs: [id_of_3, id_of_10, prefix_for_new]
const matrices = [
    ['obj-49286c', 'obj-64c17f', 'obj-col-m1-'],
    ['obj-226', 'obj-273', 'obj-col-m2-'],
    ['obj-324', 'obj-334', 'obj-col-m3-'],
    ['obj-339', 'obj-364', 'obj-col-m4-']
];

let newBoxes = [];

matrices.forEach(m => {
    let box3 = boxes.find(b => b.box.id === m[0]).box;
    let box10 = boxes.find(b => b.box.id === m[1]).box;

    let pX3 = box3.patching_rect[0];
    let pX10 = box10.patching_rect[0];
    let pStep = (pX10 - pX3) / 7;
    let pY = box3.patching_rect[1];
    
    let prX3 = box3.presentation_rect[0];
    let prX10 = box10.presentation_rect[0];
    let prStep = (prX10 - prX3) / 7;
    let prY = box3.presentation_rect[1];

    for (let i = 1; i <= 20; i++) {
        let pX = pX3 + (i - 3) * pStep;
        let prX = prX3 + (i - 3) * prStep;

        let newBox = {
            "box": {
                "id": m[2] + i,
                "maxclass": "comment",
                "text": i.toString(),
                "patching_rect": [pX, pY, 42, 18],
                "presentation": 1,
                "presentation_rect": [prX, prY, (i >= 10 ? 20 : 17), 18],
                "fontname": box3.fontname || "Arial",
                "fontsize": box3.fontsize || 12
            }
        };
        // copy text color if present
        if (box3.textcolor) newBox.box.textcolor = box3.textcolor;
        newBoxes.push(newBox);
    }
});

// Remove old labels
let filteredBoxes = boxes.filter(b => !oldIds.includes(b.box.id));

// Add new labels
data.patcher.boxes = filteredBoxes.concat(newBoxes);

fs.writeFileSync(path, JSON.stringify(data, null, '\t'));
console.log('Done generating 80 column labels and removing the old ones!');
