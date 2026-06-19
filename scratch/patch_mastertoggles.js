const fs = require('fs');
const data = JSON.parse(fs.readFileSync('ATS_Sequencer.maxpat', 'utf8'));

let masterToggles = data.patcher.boxes.find(b => b.box.id === 'obj-112');
if (masterToggles && masterToggles.box.patcher) {
    let obj358 = masterToggles.box.patcher.boxes.find(b => b.box.id === 'obj-358');
    if (obj358) {
        console.log("Found obj-358, changing text from", obj358.box.text, "to 't i 1'");
        obj358.box.text = 't i 1';
        fs.writeFileSync('ATS_Sequencer.maxpat', JSON.stringify(data, null, 4));
        console.log("Successfully changed to t i 1");
    } else {
        console.log("obj-358 not found inside mastertoggles");
    }
} else {
    console.log("mastertoggles not found");
}
