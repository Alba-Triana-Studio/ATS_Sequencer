const fs = require('fs');
const data = JSON.parse(fs.readFileSync('ATS_Sequencer.maxpat', 'utf8'));

// 1. Remove old connections from obj-109
data.patcher.lines = data.patcher.lines.filter(line => {
    let src = line.patchline.source[0];
    let dest = line.patchline.destination[0];
    if (src === 'obj-109' && (dest === 'obj-125' || dest === 'obj-269')) {
        return false;
    }
    return true;
});

// 2. Add new objects
let x = 1500;
let y = 1000;

const newBoxes = [
    { "box": { "maxclass": "newobj", "text": "sel 1", "id": "obj-playall-sel1", "patching_rect": [x, y, 50, 22] } },
    { "box": { "maxclass": "newobj", "text": "i 0", "id": "obj-playall-i", "patching_rect": [x, y+30, 50, 22] } },
    
    // tracking rows
    { "box": { "maxclass": "message", "text": "0", "id": "obj-playall-msg0", "patching_rect": [x-50, y+30, 30, 22] } },
    { "box": { "maxclass": "message", "text": "1", "id": "obj-playall-msg1", "patching_rect": [x-50, y+60, 30, 22] } },
    { "box": { "maxclass": "message", "text": "2", "id": "obj-playall-msg2", "patching_rect": [x-50, y+90, 30, 22] } },
    { "box": { "maxclass": "message", "text": "3", "id": "obj-playall-msg3", "patching_rect": [x-50, y+120, 30, 22] } },
    
    { "box": { "maxclass": "newobj", "text": "t b", "id": "obj-playall-tb0", "patching_rect": [x-100, y+30, 30, 22] } },
    { "box": { "maxclass": "newobj", "text": "t b", "id": "obj-playall-tb1", "patching_rect": [x-100, y+60, 30, 22] } },
    { "box": { "maxclass": "newobj", "text": "t b", "id": "obj-playall-tb2", "patching_rect": [x-100, y+90, 30, 22] } },
    { "box": { "maxclass": "newobj", "text": "t b", "id": "obj-playall-tb3", "patching_rect": [x-100, y+120, 30, 22] } },

    // routing
    { "box": { "maxclass": "newobj", "text": "route 0 1 2 3", "id": "obj-playall-route", "patching_rect": [x, y+60, 100, 22] } },
    
    // triggers (msg 1 to preset and msg 1 to toggle)
    { "box": { "maxclass": "message", "text": "1", "id": "obj-playall-trig0", "patching_rect": [x, y+90, 30, 22] } },
    { "box": { "maxclass": "message", "text": "1", "id": "obj-playall-trig1", "patching_rect": [x+40, y+90, 30, 22] } },
    { "box": { "maxclass": "message", "text": "1", "id": "obj-playall-trig2", "patching_rect": [x+80, y+90, 30, 22] } },
    { "box": { "maxclass": "message", "text": "1", "id": "obj-playall-trig3", "patching_rect": [x+120, y+90, 30, 22] } },
    
    // reset play all piece button
    { "box": { "maxclass": "message", "text": "0", "id": "obj-playall-reset", "patching_rect": [x, y+120, 30, 22] } }
];

data.patcher.boxes.push(...newBoxes);

// 3. Add new lines
const newLines = [
    { "patchline": { "source": ["obj-109", 0], "destination": ["obj-playall-sel1", 0] } },
    { "patchline": { "source": ["obj-playall-sel1", 0], "destination": ["obj-playall-i", 0] } },
    { "patchline": { "source": ["obj-playall-i", 0], "destination": ["obj-playall-route", 0] } },
    
    // Tracking active row
    { "patchline": { "source": ["obj-3", 0], "destination": ["obj-playall-tb0", 0] } },
    { "patchline": { "source": ["obj-playall-tb0", 0], "destination": ["obj-playall-msg0", 0] } },
    { "patchline": { "source": ["obj-playall-msg0", 0], "destination": ["obj-playall-i", 1] } },
    
    { "patchline": { "source": ["obj-198", 0], "destination": ["obj-playall-tb1", 0] } },
    { "patchline": { "source": ["obj-playall-tb1", 0], "destination": ["obj-playall-msg1", 0] } },
    { "patchline": { "source": ["obj-playall-msg1", 0], "destination": ["obj-playall-i", 1] } },
    
    { "patchline": { "source": ["obj-310", 0], "destination": ["obj-playall-tb2", 0] } },
    { "patchline": { "source": ["obj-playall-tb2", 0], "destination": ["obj-playall-msg2", 0] } },
    { "patchline": { "source": ["obj-playall-msg2", 0], "destination": ["obj-playall-i", 1] } },
    
    { "patchline": { "source": ["obj-776", 0], "destination": ["obj-playall-tb3", 0] } },
    { "patchline": { "source": ["obj-playall-tb3", 0], "destination": ["obj-playall-msg3", 0] } },
    { "patchline": { "source": ["obj-playall-msg3", 0], "destination": ["obj-playall-i", 1] } },
    
    // Triggering selected row
    { "patchline": { "source": ["obj-playall-route", 0], "destination": ["obj-playall-trig0", 0] } },
    { "patchline": { "source": ["obj-playall-route", 1], "destination": ["obj-playall-trig1", 0] } },
    { "patchline": { "source": ["obj-playall-route", 2], "destination": ["obj-playall-trig2", 0] } },
    { "patchline": { "source": ["obj-playall-route", 3], "destination": ["obj-playall-trig3", 0] } },
    
    // Row 1 (preset obj-3, toggle obj-59)
    { "patchline": { "source": ["obj-playall-trig0", 0], "destination": ["obj-3", 0] } },
    { "patchline": { "source": ["obj-playall-trig0", 0], "destination": ["obj-59", 0] } },
    { "patchline": { "source": ["obj-playall-trig0", 0], "destination": ["obj-playall-reset", 0] } },

    // Row 2 (preset obj-198, toggle obj-180)
    { "patchline": { "source": ["obj-playall-trig1", 0], "destination": ["obj-198", 0] } },
    { "patchline": { "source": ["obj-playall-trig1", 0], "destination": ["obj-180", 0] } },
    { "patchline": { "source": ["obj-playall-trig1", 0], "destination": ["obj-playall-reset", 0] } },

    // Row 3 (preset obj-310, toggle obj-299)
    { "patchline": { "source": ["obj-playall-trig2", 0], "destination": ["obj-310", 0] } },
    { "patchline": { "source": ["obj-playall-trig2", 0], "destination": ["obj-299", 0] } },
    { "patchline": { "source": ["obj-playall-trig2", 0], "destination": ["obj-playall-reset", 0] } },

    // Row 4 (preset obj-776, toggle obj-766)
    { "patchline": { "source": ["obj-playall-trig3", 0], "destination": ["obj-776", 0] } },
    { "patchline": { "source": ["obj-playall-trig3", 0], "destination": ["obj-766", 0] } },
    { "patchline": { "source": ["obj-playall-trig3", 0], "destination": ["obj-playall-reset", 0] } },

    // Reset Play Full Piece toggle
    { "patchline": { "source": ["obj-playall-reset", 0], "destination": ["obj-109", 0] } }
];

data.patcher.lines.push(...newLines);

fs.writeFileSync('ATS_Sequencer.maxpat', JSON.stringify(data, null, 4));
console.log("Play Full Piece modified successfully!");
