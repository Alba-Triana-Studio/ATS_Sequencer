const fs = require('fs');
const data = JSON.parse(fs.readFileSync('ATS_Sequencer.maxpat', 'utf8'));

// Placing it below "Tuning 3" which is at [ 17.160355, 614.7463223876266 ]
const pX = 17.16;
const pY = 645.0; // 614.74 + 30

const autoplayToggle = {
    "box": {
        "maxclass": "toggle",
        "id": "obj-autoplay-toggle",
        "patching_rect": [ 1200.0, 50.0, 24.0, 24.0 ],
        "presentation": 1,
        "presentation_rect": [ pX, pY, 24.0, 24.0 ]
    }
};

const autoplaySend = {
    "box": {
        "maxclass": "newobj",
        "text": "s autoplay",
        "id": "obj-autoplay-send",
        "patching_rect": [ 1200.0, 80.0, 100.0, 22.0 ]
    }
};

const autoplayLabel = {
    "box": {
        "maxclass": "comment",
        "text": "Autoplay",
        "id": "obj-autoplay-label",
        "patching_rect": [ 1230.0, 50.0, 100.0, 22.0 ],
        "presentation": 1,
        "presentation_rect": [ pX + 28, pY, 100.0, 24.0 ]
    }
};

data.patcher.boxes.push(autoplayToggle);
data.patcher.boxes.push(autoplaySend);
data.patcher.boxes.push(autoplayLabel);
data.patcher.lines.push({
    "patchline": {
        "source": [ "obj-autoplay-toggle", 0 ],
        "destination": [ "obj-autoplay-send", 0 ]
    }
});

const setups = [
    { preset: 'obj-3', toggle: 'obj-59', curve: 'obj-113', time: 'obj-12' },
    { preset: 'obj-198', toggle: 'obj-299', curve: 'obj-280', time: 'obj-195' },
    { preset: 'obj-310', toggle: 'obj-383', curve: 'obj-364', time: 'obj-315' },
    { preset: 'obj-776', toggle: 'obj-830', curve: 'obj-811', time: 'obj-781' }
];

let x = 1200.0;
let y = 150.0;

setups.forEach((setup, index) => {
    const rAutoplayId = `obj-r-autoplay-${index}`;
    const gateId = `obj-gate-${index}`;
    const tbbbId = `obj-tbbb-${index}`;
    
    const msgZeroId = `obj-msg-zero-${index}`;
    const delayStartId = `obj-delay-start-${index}`;
    const msgOneId = `obj-msg-one-${index}`;
    
    const add1000Id = `obj-add1000-${index}`;
    const delayStopId = `obj-delay-stop-${index}`;
    const msgFadeId = `obj-msg-fade-${index}`;

    data.patcher.boxes.push(
        { "box": { "maxclass": "newobj", "text": "r autoplay", "id": rAutoplayId, "patching_rect": [x, y, 80.0, 22.0] } },
        { "box": { "maxclass": "newobj", "text": "gate", "id": gateId, "patching_rect": [x, y+30, 50.0, 22.0] } },
        { "box": { "maxclass": "newobj", "text": "t b b b", "id": tbbbId, "patching_rect": [x, y+60, 80.0, 22.0] } },
        { "box": { "maxclass": "message", "text": "0", "id": msgZeroId, "patching_rect": [x-60, y+90, 30.0, 22.0] } },
        { "box": { "maxclass": "newobj", "text": "delay 100", "id": delayStartId, "patching_rect": [x, y+90, 60.0, 22.0] } },
        { "box": { "maxclass": "message", "text": "1", "id": msgOneId, "patching_rect": [x, y+120, 30.0, 22.0] } },
        { "box": { "maxclass": "newobj", "text": "+ 100", "id": add1000Id, "patching_rect": [x+100, y+90, 60.0, 22.0] } },
        { "box": { "maxclass": "newobj", "text": "delay", "id": delayStopId, "patching_rect": [x+60, y+120, 60.0, 22.0] } },
        { "box": { "maxclass": "message", "text": "0. 50", "id": msgFadeId, "patching_rect": [x+120, y+150, 50.0, 22.0] } }
    );

    data.patcher.lines.push({ "patchline": { "source": [rAutoplayId, 0], "destination": [gateId, 0] } });
    
    // THIS WAS THE BUG: using 0 instead of 1. Outlet 1 is the bang output of the preset object!
    data.patcher.lines.push({ "patchline": { "source": [setup.preset, 1], "destination": [gateId, 1] } });
    
    data.patcher.lines.push({ "patchline": { "source": [gateId, 0], "destination": [tbbbId, 0] } });
    
    data.patcher.lines.push({ "patchline": { "source": [tbbbId, 2], "destination": [msgZeroId, 0] } });
    data.patcher.lines.push({ "patchline": { "source": [msgZeroId, 0], "destination": [setup.toggle, 0] } });
    
    data.patcher.lines.push({ "patchline": { "source": [tbbbId, 1], "destination": [delayStartId, 0] } });
    data.patcher.lines.push({ "patchline": { "source": [delayStartId, 0], "destination": [msgOneId, 0] } });
    data.patcher.lines.push({ "patchline": { "source": [msgOneId, 0], "destination": [setup.toggle, 0] } });
    
    data.patcher.lines.push({ "patchline": { "source": [setup.time, 0], "destination": [add1000Id, 0] } });
    data.patcher.lines.push({ "patchline": { "source": [add1000Id, 0], "destination": [delayStopId, 1] } });
    
    data.patcher.lines.push({ "patchline": { "source": [tbbbId, 0], "destination": [delayStopId, 0] } });
    
    data.patcher.lines.push({ "patchline": { "source": [delayStopId, 0], "destination": [msgZeroId, 0] } });
    data.patcher.lines.push({ "patchline": { "source": [delayStopId, 0], "destination": [msgFadeId, 0] } });
    data.patcher.lines.push({ "patchline": { "source": [msgFadeId, 0], "destination": [setup.curve, 0] } });

    x += 250.0;
});

const rAutoplayStop = "obj-r-autoplay-stop";
const selZero = "obj-sel-zero";
const msgGlobalStop = "obj-msg-global-stop";
const msgGlobalFade = "obj-msg-global-fade";

data.patcher.boxes.push(
    { "box": { "maxclass": "newobj", "text": "r autoplay", "id": rAutoplayStop, "patching_rect": [ 1200.0, 350.0, 80.0, 22.0 ] } },
    { "box": { "maxclass": "newobj", "text": "sel 0", "id": selZero, "patching_rect": [ 1200.0, 380.0, 50.0, 22.0 ] } },
    { "box": { "maxclass": "message", "text": "0", "id": msgGlobalStop, "patching_rect": [ 1200.0, 410.0, 30.0, 22.0 ] } },
    { "box": { "maxclass": "message", "text": "0. 50", "id": msgGlobalFade, "patching_rect": [ 1250.0, 410.0, 50.0, 22.0 ] } }
);

data.patcher.lines.push({ "patchline": { "source": [rAutoplayStop, 0], "destination": [selZero, 0] } });
data.patcher.lines.push({ "patchline": { "source": [selZero, 0], "destination": [msgGlobalStop, 0] } });
data.patcher.lines.push({ "patchline": { "source": [selZero, 0], "destination": [msgGlobalFade, 0] } });

setups.forEach(setup => {
    data.patcher.lines.push({ "patchline": { "source": [msgGlobalStop, 0], "destination": [setup.toggle, 0] } });
    data.patcher.lines.push({ "patchline": { "source": [msgGlobalFade, 0], "destination": [setup.curve, 0] } });
});

fs.writeFileSync('ATS_Sequencer.maxpat', JSON.stringify(data, null, 4));
console.log("Fixed outlet bug and placed UI perfectly.");
