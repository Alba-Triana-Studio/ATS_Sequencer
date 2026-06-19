const fs = require('fs');
const data = JSON.parse(fs.readFileSync('ATS_Sequencer.maxpat', 'utf8'));

// The play toggles for the rows are:
// obj-59, obj-194?, obj-299, obj-766? Let's check setups:
// setups = [
//  { preset: 'obj-3', toggle: 'obj-59' },
//  { preset: 'obj-198', toggle: 'obj-299' },
//  { preset: 'obj-310', toggle: 'obj-383' }, // wait, obj-383? In presentation we saw obj-180 and obj-766.
//  { preset: 'obj-776', toggle: 'obj-830' }
// ]
// Let's verify the toggles for the rows.

const presetIds = ['obj-3', 'obj-198', 'obj-310', 'obj-776'];
presetIds.forEach(p => {
    let lines = data.patcher.lines.filter(l => l.patchline.destination[0] === p && l.patchline.destination[1] === 0);
    // Find what triggers the preset object. The Autoplay logic uses setup.toggle!
    console.log("Preset", p, "is triggered by:", lines.map(l => l.patchline.source[0]));
});
