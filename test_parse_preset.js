const fs = require('fs');
const patch = JSON.parse(fs.readFileSync('ATS_Sequencer.maxpat', 'utf8'));
const presets = patch.patcher.boxes.filter(b => b.box.maxclass === 'preset');
console.log(`Found ${presets.length} presets.`);
if (presets.length > 0) {
    console.log(Object.keys(presets[0].box));
    if (presets[0].box.preset_data) {
        console.log("preset_data found. Length:", presets[0].box.preset_data.length);
    } else {
        console.log("No preset_data found.");
    }
}
