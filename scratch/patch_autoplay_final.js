const fs = require('fs');

const inputFile = 'ATS_Sequencer.maxpat';
const data = JSON.parse(fs.readFileSync(inputFile, 'utf8'));

let boxes = data.patcher.boxes || data.patcher.box || [];
let lines = data.patcher.lines || [];

let idCounter = 9300;
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

// Setup mapping to the true FUNCTION objects (not Draw buttons!)
const setups = [
    { preset: 'obj-784', functions: ['obj-780', 'obj-785'], yOffset: 3950 },
    { preset: 'obj-318', functions: ['obj-314', 'obj-319'], yOffset: 2800 },
    { preset: 'obj-198', functions: ['obj-194', 'obj-199'], yOffset: 1550 },
    { preset: 'obj-3', functions: ['obj-77', 'obj-2'], yOffset: 480 }
];

setups.forEach(setup => {
    const recvId = getNextId();
    const gateId = getNextId();
    const triggerId = getNextId();
    const delayId = getNextId();

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
            "maxclass": "newobj",
            "text": "t b",
            "id": triggerId,
            "patching_rect": [420.0, setup.yOffset, 30.0, 22.0]
        }
    });

    boxes.push({
        "box": {
            "maxclass": "newobj",
            "text": "delay 100",
            "id": delayId,
            "patching_rect": [420.0, setup.yOffset + 30, 60.0, 22.0]
        }
    });

    // recv -> gate left inlet
    lines.push({
        "patchline": {
            "source": [recvId, 0],
            "destination": [gateId, 0]
        }
    });

    // preset outlet 1 -> trigger
    lines.push({
        "patchline": {
            "source": [setup.preset, 1],
            "destination": [triggerId, 0]
        }
    });

    // trigger output -> delay
    lines.push({
        "patchline": {
            "source": [triggerId, 0],
            "destination": [delayId, 0]
        }
    });

    // delay output -> gate right inlet
    lines.push({
        "patchline": {
            "source": [delayId, 0],
            "destination": [gateId, 1]
        }
    });

    // gate output -> function objects
    setup.functions.forEach(funcId => {
        lines.push({
            "patchline": {
                "source": [gateId, 0],
                "destination": [funcId, 0]
            }
        });
    });
});

if (data.patcher.boxes) data.patcher.boxes = boxes;
if (data.patcher.box) data.patcher.box = boxes;
data.patcher.lines = lines;

fs.writeFileSync(inputFile, JSON.stringify(data, null, 4));
console.log('Patched', inputFile);
