const fs = require('fs');
const patcher = JSON.parse(fs.readFileSync('scratch/mastertoggles.json', 'utf8'));

// Print all objects that might be a radiogroup or similar selection logic
let rows = patcher.boxes.filter(b => b.box.text && b.box.text.includes("radiogroup"));
console.log("radiogroups:", rows);

// Print all "s " (send) objects to see if there is something like "s selected_row"
let sends = patcher.boxes.filter(b => b.box.maxclass === 'newobj' && b.box.text && b.box.text.startsWith('s '));
console.log("Sends in mastertoggles:", sends.map(s => s.box.text));
