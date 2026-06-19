const fs = require('fs');
const patcher = JSON.parse(fs.readFileSync('scratch/mastertoggles.json', 'utf8'));

let texts = patcher.boxes.map(b => b.box.text || b.box.maxclass).filter(t => t);
console.log(texts);
