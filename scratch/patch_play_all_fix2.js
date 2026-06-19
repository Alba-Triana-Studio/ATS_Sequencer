const fs = require('fs');
const data = JSON.parse(fs.readFileSync('ATS_Sequencer.maxpat', 'utf8'));

// Identify IDs to remove
const myIds = [
    "obj-playall-sel1", "obj-playall-tb", "obj-playall-msg1", "obj-playall-msg0",
    "obj-playall-tb-fixed", "obj-playall-msg-preset", "obj-playall-msg-toggle"
];

// Remove my old boxes
data.patcher.boxes = data.patcher.boxes.filter(b => !myIds.includes(b.box.id));

// Remove my old lines
data.patcher.lines = data.patcher.lines.filter(l => {
    let src = l.patchline.source[0];
    let dest = l.patchline.destination[0];
    return !(myIds.includes(src) || myIds.includes(dest));
});

let x = 1500;
let y = 1000;

const newBoxes = [
    { "box": { "maxclass": "newobj", "text": "sel 1", "id": "obj-playall-sel1", "patching_rect": [x, y, 50, 22] } },
    { "box": { "maxclass": "newobj", "text": "t b b b", "id": "obj-playall-tb-fixed", "patching_rect": [x, y+30, 60, 22] } },
    
    // Message for toggles (leftmost, executed LAST)
    { "box": { "maxclass": "message", "text": "1", "id": "obj-playall-msg-toggle", "patching_rect": [x-50, y+60, 30, 22] } },
    
    // Message for presets (middle, executed SECOND)
    { "box": { "maxclass": "message", "text": "1", "id": "obj-playall-msg-preset", "patching_rect": [x, y+60, 30, 22] } },
    
    // Message to reset button (rightmost, executed FIRST)
    { "box": { "maxclass": "message", "text": "0", "id": "obj-playall-msg0", "patching_rect": [x+50, y+60, 30, 22] } }
];

data.patcher.boxes.push(...newBoxes);

const newLines = [
    // obj-109 connects to sel 1
    { "patchline": { "source": ["obj-109", 0], "destination": ["obj-playall-sel1", 0] } },
    { "patchline": { "source": ["obj-playall-sel1", 0], "destination": ["obj-playall-tb-fixed", 0] } },
    
    // left outlet (0) -> msg 1 for toggles
    { "patchline": { "source": ["obj-playall-tb-fixed", 0], "destination": ["obj-playall-msg-toggle", 0] } },
    
    // middle outlet (1) -> msg 1 for presets
    { "patchline": { "source": ["obj-playall-tb-fixed", 1], "destination": ["obj-playall-msg-preset", 0] } },
    
    // right outlet (2) -> msg 0 to reset button
    { "patchline": { "source": ["obj-playall-tb-fixed", 2], "destination": ["obj-playall-msg0", 0] } },
    
    // Reset button connection
    { "patchline": { "source": ["obj-playall-msg0", 0], "destination": ["obj-109", 0] } },

    // Presets connection (correct IDs: obj-3, obj-198, obj-318, obj-784)
    { "patchline": { "source": ["obj-playall-msg-preset", 0], "destination": ["obj-3", 0] } },
    { "patchline": { "source": ["obj-playall-msg-preset", 0], "destination": ["obj-198", 0] } },
    { "patchline": { "source": ["obj-playall-msg-preset", 0], "destination": ["obj-318", 0] } },
    { "patchline": { "source": ["obj-playall-msg-preset", 0], "destination": ["obj-784", 0] } },
    
    // Toggles connection (obj-59, obj-180, obj-299, obj-766)
    { "patchline": { "source": ["obj-playall-msg-toggle", 0], "destination": ["obj-59", 0] } },
    { "patchline": { "source": ["obj-playall-msg-toggle", 0], "destination": ["obj-180", 0] } },
    { "patchline": { "source": ["obj-playall-msg-toggle", 0], "destination": ["obj-299", 0] } },
    { "patchline": { "source": ["obj-playall-msg-toggle", 0], "destination": ["obj-766", 0] } }
];

data.patcher.lines.push(...newLines);

fs.writeFileSync('ATS_Sequencer.maxpat', JSON.stringify(data, null, 4));
console.log("Fixed! Presets correctly targeted and order of execution guaranteed.");
