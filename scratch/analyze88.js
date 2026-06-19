const fs = require('fs');
const patcher = JSON.parse(fs.readFileSync('scratch/mastertoggles.json', 'utf8'));

let obj28 = patcher.boxes.find(b => b.box.id === 'obj-28');
console.log("obj-28:", obj28);
