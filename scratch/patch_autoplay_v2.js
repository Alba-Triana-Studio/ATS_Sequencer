const fs = require('fs');

const inputFile = 'ATS_Sequencer.maxpat';
const data = JSON.parse(fs.readFileSync(inputFile, 'utf8'));

let boxes = data.patcher.boxes || data.patcher.box || [];
let lines = data.patcher.lines || [];

let idCounter = 9100;
const getNextId = () => `obj-${idCounter++}`;

// Global UI
const globalToggleId = getNextId();
const globalSendId = getNextId();
const globalLabelId = getNextId();

boxes.push({
    "box": {
        "maxclass": "toggle",
        "id": globalToggleId,
        "patching_rect": [20.0, 450.0, 30.0, 30.0],
        "presentation": 1,
        "presentation_rect": [ 20.0, 470.0, 24.0, 24.0 ]
    }
});

boxes.push({
    "box": {
        "maxclass": "newobj",
        "text": "s autoplay",
        "id": globalSendId,
        "patching_rect": [20.0, 490.0, 70.0, 22.0]
    }
});

boxes.push({
    "box": {
        "maxclass": "comment",
        "text": "AUTOPLAY",
        "id": globalLabelId,
        "patching_rect": [60.0, 450.0, 100.0, 20.0],
        "presentation": 1,
        "presentation_rect": [ 50.0, 470.0, 100.0, 20.0 ]
    }
});

lines.push({
    "patchline": {
        "source": [globalToggleId, 0],
        "destination": [globalSendId, 0]
    }
});

// For each setup, use the correct BUTTON ids instead of comment ids
const setups = [
    { preset: 'obj-784', draws: ['obj-663', 'obj-675'], yOffset: 3950 },
    { preset: 'obj-318', draws: ['obj-456', 'obj-442'], yOffset: 2800 },
    { preset: 'obj-198', draws: ['obj-429', 'obj-405'], yOffset: 1550 },
    { preset: 'obj-3', draws: ['obj-389', 'obj-417'], yOffset: 480 }
];

setups.forEach(setup => {
    const recvId = getNextId();
    const gateId = getNextId();
    const buttonId = getNextId();

    boxes.push({
        "box": {
            "maxclass": "newobj",
            "text": "r autoplay",
            "id": recvId,
            "patching_rect": [360.0, setup.yOffset, 70.0, 22.0]
        }
    });

    boxes.push({
        "box": {
            "maxclass": "newobj",
            "text": "gate",
            "id": gateId,
            "patching_rect": [360.0, setup.yOffset + 30, 40.0, 22.0]
        }
    });

    boxes.push({
        "box": {
            "maxclass": "button",
            "id": buttonId,
            "patching_rect": [360.0, setup.yOffset + 60, 24.0, 24.0]
        }
    });

    lines.push({
        "patchline": {
            "source": [recvId, 0],
            "destination": [gateId, 0]
        }
    });

    lines.push({
        "patchline": {
            "source": [setup.preset, 1],
            "destination": [gateId, 1]
        }
    });

    lines.push({
        "patchline": {
            "source": [gateId, 0],
            "destination": [buttonId, 0]
        }
    });

    setup.draws.forEach(drawId => {
        lines.push({
            "patchline": {
                "source": [buttonId, 0],
                "destination": [drawId, 0]
            }
        });
    });
});

if (data.patcher.boxes) data.patcher.boxes = boxes;
if (data.patcher.box) data.patcher.box = boxes;
data.patcher.lines = lines;

fs.writeFileSync(inputFile, JSON.stringify(data, null, 4));
console.log('Patched', inputFile);
