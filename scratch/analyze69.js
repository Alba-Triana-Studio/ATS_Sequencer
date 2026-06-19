const fs = require('fs');
const patcher = JSON.parse(fs.readFileSync('scratch/mastertoggles.json', 'utf8'));

let obj85 = patcher.boxes.find(b => b.box.id === 'obj-85');
console.log(obj85);

let mutators = patcher.boxes.filter(b => b.box.text && b.box.text.includes("sel"));
console.log("Selectors:", mutators.map(m => m.box.text));
