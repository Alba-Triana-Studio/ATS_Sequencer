const fs = require('fs');
const patcher = JSON.parse(fs.readFileSync('scratch/mastertoggles.json', 'utf8'));

let obj358 = patcher.boxes.find(b => b.box.id === 'obj-358');
console.log("obj-358:", obj358);
