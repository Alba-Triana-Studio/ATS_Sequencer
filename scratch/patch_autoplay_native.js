const fs = require('fs');

const inputFile = 'ATS_Sequencer.maxpat';
const data = JSON.parse(fs.readFileSync(inputFile, 'utf8'));

let boxes = data.patcher.boxes || data.patcher.box || [];
let lines = data.patcher.lines || [];

let idCounter = 9500;
const getNextId = () => `obj-${idCounter++}`;

// --- GLOBAL UI ---
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

// --- GLOBAL STOP ON UNCHECK ---
const selZeroId = getNextId();
const stopToggleMsgId = getNextId();
const stopCurveMsgId = getNextId();

boxes.push({
    "box": {
        "maxclass": "newobj",
        "text": "sel 0",
        "id": selZeroId,
        "patching_rect": [20.0, 520.0, 40.0, 22.0]
    }
});

boxes.push({
    "box": {
        "maxclass": "message",
        "text": "0",
        "id": stopToggleMsgId,
        "patching_rect": [20.0, 550.0, 30.0, 22.0]
    }
});

boxes.push({
    "box": {
        "maxclass": "message",
        "text": "0. 50",
        "id": stopCurveMsgId,
        "patching_rect": [60.0, 550.0, 40.0, 22.0]
    }
});

lines.push({
    "patchline": {
        "source": [globalToggleId, 0],
        "destination": [selZeroId, 0]
    }
});

lines.push({
    "patchline": {
        "source": [selZeroId, 0],
        "destination": [stopToggleMsgId, 0]
    }
});

lines.push({
    "patchline": {
        "source": [selZeroId, 0],
        "destination": [stopCurveMsgId, 0]
    }
});

// All PLAY PRESET toggles and curve~ objects
const playToggles = ['obj-59', 'obj-299', 'obj-766', 'obj-180'];
const curveObjects = ['obj-24', 'obj-220', 'obj-244', 'obj-713'];

playToggles.forEach(toggleId => {
    lines.push({
        "patchline": {
            "source": [stopToggleMsgId, 0],
            "destination": [toggleId, 0]
        }
    });
});

curveObjects.forEach(curveId => {
    lines.push({
        "patchline": {
            "source": [stopCurveMsgId, 0],
            "destination": [curveId, 0]
        }
    });
});

// --- PER CHANNEL PLAY TRIGGER LOGIC ---
const setups = [
    { preset: 'obj-3', toggle: 'obj-59', yOffset: 480 },
    { preset: 'obj-198', toggle: 'obj-299', yOffset: 1550 },
    { preset: 'obj-318', toggle: 'obj-766', yOffset: 2800 },
    { preset: 'obj-784', toggle: 'obj-180', yOffset: 3950 }
];

setups.forEach(setup => {
    const recvId = getNextId();
    const gateId = getNextId();
    const tbbId = getNextId();
    const delayId = getNextId();
    const msgOneId = getNextId();
    const msgZeroId = getNextId();

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
            "text": "t b b",
            "id": tbbId,
            "patching_rect": [420.0, setup.yOffset, 40.0, 22.0]
        }
    });

    boxes.push({
        "box": {
            "maxclass": "message",
            "text": "0",
            "id": msgZeroId,
            "patching_rect": [470.0, setup.yOffset + 30, 30.0, 22.0]
        }
    });

    boxes.push({
        "box": {
            "maxclass": "newobj",
            "text": "delay 100",
            "id": delayId,
            "patching_rect": [420.0, setup.yOffset + 30, 40.0, 22.0]
        }
    });

    boxes.push({
        "box": {
            "maxclass": "message",
            "text": "1",
            "id": msgOneId,
            "patching_rect": [420.0, setup.yOffset + 60, 30.0, 22.0]
        }
    });

    // recv -> gate left inlet
    lines.push({
        "patchline": {
            "source": [recvId, 0],
            "destination": [gateId, 0]
        }
    });

    // preset outlet 1 -> gate right inlet
    lines.push({
        "patchline": {
            "source": [setup.preset, 1],
            "destination": [gateId, 1]
        }
    });

    // gate output -> t b b
    lines.push({
        "patchline": {
            "source": [gateId, 0],
            "destination": [tbbId, 0]
        }
    });

    // t b b right outlet (fires first) -> msgZero -> toggle
    lines.push({
        "patchline": {
            "source": [tbbId, 1],
            "destination": [msgZeroId, 0]
        }
    });
    lines.push({
        "patchline": {
            "source": [msgZeroId, 0],
            "destination": [setup.toggle, 0]
        }
    });

    // t b b left outlet (fires second) -> delay -> msgOne -> toggle
    lines.push({
        "patchline": {
            "source": [tbbId, 0],
            "destination": [delayId, 0]
        }
    });
    lines.push({
        "patchline": {
            "source": [delayId, 0],
            "destination": [msgOneId, 0]
        }
    });
    lines.push({
        "patchline": {
            "source": [msgOneId, 0],
            "destination": [setup.toggle, 0]
        }
    });
});

if (data.patcher.boxes) data.patcher.boxes = boxes;
if (data.patcher.box) data.patcher.box = boxes;
data.patcher.lines = lines;

fs.writeFileSync(inputFile, JSON.stringify(data, null, 4));
console.log('Successfully applied native Autoplay logic to', inputFile);
