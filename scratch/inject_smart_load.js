const fs = require('fs');
const file = 'ATS_Sequencer.maxpat';
const d = JSON.parse(fs.readFileSync(file, 'utf8'));

let b_id = 10000;

const setups = [
    { num: 1, preset: 'obj-3', btn: 'obj-855' },
    { num: 2, preset: 'obj-198', btn: 'obj-851' },
    { num: 3, preset: 'obj-318', btn: 'obj-847' },
    { num: 4, preset: 'obj-784', btn: 'obj-843' }
];

setups.forEach(setup => {
    // 1. Remove the direct patchline from btn to preset
    d.patcher.lines = d.patcher.lines.filter(l => {
        return !(l.patchline.source[0] === setup.btn && l.patchline.destination[0] === setup.preset);
    });
    
    // Also check if we already injected these objects so we don't duplicate them
    const existingJS = d.patcher.boxes.find(b => b.box.text === `js smart_load.js ${setup.num}`);
    if (existingJS) {
        console.log(`Setup ${setup.num} already has smart_load.js injected. Skipping.`);
        return;
    }

    const btnBox = d.patcher.boxes.find(b => b.box.id === setup.btn).box;
    const px = btnBox.patching_rect[0];
    const py = btnBox.patching_rect[1];

    // 2. Create `t b` object
    const tb = {
        "box": {
            "maxclass": "newobj",
            "text": "t b",
            "id": `obj-${b_id++}`,
            "patching_rect": [ px, py + 30, 30.0, 22.0 ]
        }
    };
    
    // 3. Create `opendialog` object
    const opendlg = {
        "box": {
            "maxclass": "newobj",
            "text": "opendialog",
            "id": `obj-${b_id++}`,
            "patching_rect": [ px, py + 60, 70.0, 22.0 ]
        }
    };
    
    // 4. Create `js smart_load.js N` object
    const jsObj = {
        "box": {
            "maxclass": "newobj",
            "text": `js smart_load.js ${setup.num}`,
            "id": `obj-${b_id++}`,
            "patching_rect": [ px, py + 90, 120.0, 22.0 ]
        }
    };
    
    d.patcher.boxes.push(tb, opendlg, jsObj);
    
    // Wire them up
    // btn -> tb
    d.patcher.lines.push({ "patchline": { "source": [ setup.btn, 0 ], "destination": [ tb.box.id, 0 ] } });
    // tb -> opendialog
    d.patcher.lines.push({ "patchline": { "source": [ tb.box.id, 0 ], "destination": [ opendlg.box.id, 0 ] } });
    // opendialog -> js
    d.patcher.lines.push({ "patchline": { "source": [ opendlg.box.id, 0 ], "destination": [ jsObj.box.id, 0 ] } });
    // js -> preset
    d.patcher.lines.push({ "patchline": { "source": [ jsObj.box.id, 0 ], "destination": [ setup.preset, 0 ] } });
});

fs.writeFileSync(file, JSON.stringify(d, null, 4));
console.log("Injected smart_load objects into ATS_Sequencer.maxpat");
