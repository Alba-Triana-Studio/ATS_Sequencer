const fs = require('fs');
const data = JSON.parse(fs.readFileSync('ATS_Sequencer.maxpat', 'utf8'));

let routeObj = data.patcher.boxes.find(b => b.box.id === 'obj-playall-route');
if (routeObj) {
    console.log("obj-playall-route exists");
} else {
    console.log("obj-playall-route not found");
}
