const fs = require('fs');
const file = 'ATS_Sequencer.maxpat';
let d = JSON.parse(fs.readFileSync(file, 'utf8'));

function genId() { return 'obj-' + Math.random().toString(36).substr(2, 9); }

const delayObjId = 'obj-delay-mute';
// Check if it exists first
if (!d.patcher.boxes.find(b => b.box.id === delayObjId)) {
    d.patcher.boxes.push({
        "box": {
            "maxclass": "newobj",
            "text": "delay",
            "id": delayObjId,
            "patching_rect": [ 300, 650, 50, 22 ]
        }
    });
}

// Ensure obj-12 (End Time) connects to delay right inlet (Inlet 1)
d.patcher.lines = d.patcher.lines.filter(l => !(l.patchline.source[0] === 'obj-12' && l.patchline.destination[0] === delayObjId));
d.patcher.lines.push({ "patchline": { "source": [ "obj-12", 0 ], "destination": [ delayObjId, 1 ] } });

// Ensure obj-60 Outlet 1 (start pulse) connects to delay left inlet (Inlet 0)
d.patcher.lines = d.patcher.lines.filter(l => !(l.patchline.source[0] === 'obj-60' && l.patchline.source[1] === 1 && l.patchline.destination[0] === delayObjId));
d.patcher.lines.push({ "patchline": { "source": [ "obj-60", 1 ], "destination": [ delayObjId, 0 ] } });

// Ensure delay Outlet 0 connects to obj-mute-msg (which is obj-24/obj-23 trigger)
d.patcher.lines = d.patcher.lines.filter(l => !(l.patchline.source[0] === delayObjId && l.patchline.destination[0] === 'obj-mute-msg'));
d.patcher.lines.push({ "patchline": { "source": [ delayObjId, 0 ], "destination": [ "obj-mute-msg", 0 ] } });

// Ensure obj-msg-global-stop doesn't send "0 50" to envelopes anymore so it doesn't double-mute?
// Actually in the previous fix, I just let obj-delay-mute do the precise muting.

fs.writeFileSync(file, JSON.stringify(d, null, 4));
console.log("Re-applied parallel_delay_mute logic!");
