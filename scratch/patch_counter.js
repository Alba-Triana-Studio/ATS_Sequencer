const fs = require('fs');
const data = JSON.parse(fs.readFileSync('ATS_Sequencer.maxpat', 'utf8'));

let masterToggles = data.patcher.boxes.find(b => b.box.id === 'obj-112');
if (masterToggles && masterToggles.box.patcher) {
    let obj434 = masterToggles.box.patcher.boxes.find(b => b.box.id === 'obj-434');
    if (obj434) {
        console.log("Found obj-434:", obj434.box.text);
        obj434.box.text = '0'; // Change to 0
        fs.writeFileSync('ATS_Sequencer.maxpat', JSON.stringify(data, null, 4));
        console.log("Successfully changed obj-434 to 0");
    } else {
        console.log("obj-434 not found");
    }
}
