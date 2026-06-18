const fs = require('fs');

const inputFile = 'ATS_Sequencer.maxpat';
const data = JSON.parse(fs.readFileSync(inputFile, 'utf8'));

let boxes = data.patcher.boxes || data.patcher.box || [];
let lines = data.patcher.lines || [];

let idCounter = 9400;
const getNextId = () => `obj-${idCounter++}`;

// We already have the global toggle. We need to find its ID.
// Let's assume its ID is 'obj-9200' because I hardcoded it in the previous script.
const globalToggleId = 'obj-9200';

const selZeroId = getNextId();
const stopMsgId = getNextId();

// Add sel 0
boxes.push({
    "box": {
        "maxclass": "newobj",
        "text": "sel 0",
        "id": selZeroId,
        "patching_rect": [20.0, 520.0, 40.0, 22.0]
    }
});

// Add message "0. 50"
boxes.push({
    "box": {
        "maxclass": "message",
        "text": "0. 50",
        "id": stopMsgId,
        "patching_rect": [20.0, 550.0, 40.0, 22.0]
    }
});

// toggle -> sel 0
lines.push({
    "patchline": {
        "source": [globalToggleId, 0],
        "destination": [selZeroId, 0]
    }
});

// sel 0 -> message
lines.push({
    "patchline": {
        "source": [selZeroId, 0],
        "destination": [stopMsgId, 0]
    }
});

// message -> curve~ objects
const targetCurves = ['obj-24', 'obj-220', 'obj-244', 'obj-713'];
targetCurves.forEach(curveId => {
    lines.push({
        "patchline": {
            "source": [stopMsgId, 0],
            "destination": [curveId, 0]
        }
    });
});

if (data.patcher.boxes) data.patcher.boxes = boxes;
if (data.patcher.box) data.patcher.box = boxes;
data.patcher.lines = lines;

fs.writeFileSync(inputFile, JSON.stringify(data, null, 4));
console.log('Patched stop logic', inputFile);
