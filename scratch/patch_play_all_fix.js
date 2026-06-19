const fs = require('fs');
const data = JSON.parse(fs.readFileSync('ATS_Sequencer.maxpat', 'utf8'));

// Identify IDs to remove
const myIds = [
    "obj-playall-sel1", "obj-playall-i", "obj-playall-msg0", "obj-playall-msg1", 
    "obj-playall-msg2", "obj-playall-msg3", "obj-playall-tb0", "obj-playall-tb1", 
    "obj-playall-tb2", "obj-playall-tb3", "obj-playall-route", "obj-playall-trig0", 
    "obj-playall-trig1", "obj-playall-trig2", "obj-playall-trig3", "obj-playall-reset"
];

// Remove my old boxes
data.patcher.boxes = data.patcher.boxes.filter(b => !myIds.includes(b.box.id));

// Remove my old lines
data.patcher.lines = data.patcher.lines.filter(l => {
    let src = l.patchline.source[0];
    let dest = l.patchline.destination[0];
    return !(myIds.includes(src) || myIds.includes(dest));
});

// Add simple new logic:
// obj-109 -> sel 1 -> t b -> msg 1 -> all presets and all toggles, and msg 0 -> obj-109
let x = 1500;
let y = 1000;

const newBoxes = [
    { "box": { "maxclass": "newobj", "text": "sel 1", "id": "obj-playall-sel1", "patching_rect": [x, y, 50, 22] } },
    { "box": { "maxclass": "newobj", "text": "t b b", "id": "obj-playall-tb", "patching_rect": [x, y+30, 50, 22] } },
    { "box": { "maxclass": "message", "text": "1", "id": "obj-playall-msg1", "patching_rect": [x, y+60, 30, 22] } },
    { "box": { "maxclass": "message", "text": "0", "id": "obj-playall-msg0", "patching_rect": [x+50, y+60, 30, 22] } }
];

data.patcher.boxes.push(...newBoxes);

const newLines = [
    { "patchline": { "source": ["obj-109", 0], "destination": ["obj-playall-sel1", 0] } },
    { "patchline": { "source": ["obj-playall-sel1", 0], "destination": ["obj-playall-tb", 0] } },
    { "patchline": { "source": ["obj-playall-tb", 0], "destination": ["obj-playall-msg1", 0] } },
    { "patchline": { "source": ["obj-playall-tb", 1], "destination": ["obj-playall-msg0", 0] } },
    
    // Msg 0 goes back to obj-109
    { "patchline": { "source": ["obj-playall-msg0", 0], "destination": ["obj-109", 0] } },

    // Msg 1 goes to all 4 presets
    { "patchline": { "source": ["obj-playall-msg1", 0], "destination": ["obj-3", 0] } },
    { "patchline": { "source": ["obj-playall-msg1", 0], "destination": ["obj-198", 0] } },
    { "patchline": { "source": ["obj-playall-msg1", 0], "destination": ["obj-310", 0] } },
    { "patchline": { "source": ["obj-playall-msg1", 0], "destination": ["obj-776", 0] } },
    
    // Msg 1 goes to all 4 toggles
    { "patchline": { "source": ["obj-playall-msg1", 0], "destination": ["obj-59", 0] } },
    { "patchline": { "source": ["obj-playall-msg1", 0], "destination": ["obj-180", 0] } },
    { "patchline": { "source": ["obj-playall-msg1", 0], "destination": ["obj-299", 0] } },
    { "patchline": { "source": ["obj-playall-msg1", 0], "destination": ["obj-766", 0] } }
];

data.patcher.lines.push(...newLines);

fs.writeFileSync('ATS_Sequencer.maxpat', JSON.stringify(data, null, 4));
console.log("Play Full Piece fixed to trigger ALL rows!");
