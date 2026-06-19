const fs = require('fs');
const patcher = JSON.parse(fs.readFileSync('scratch/mastertoggles.json', 'utf8'));

patcher.boxes.forEach(b => {
    if (b.box.maxclass !== 'patchline' && b.box.maxclass !== 'message' && b.box.maxclass !== 'newobj' && b.box.maxclass !== 'comment') {
        console.log("UI Element:", b.box.maxclass, b.box.id);
    }
});
