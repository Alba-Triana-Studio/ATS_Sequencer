const fs = require('fs');
const patcher = JSON.parse(fs.readFileSync('scratch/mastertoggles.json', 'utf8'));

['obj-81', 'obj-434', 'obj-301', 'obj-299', 'obj-300'].forEach(id => {
    let obj = patcher.boxes.find(b => b.box.id === id);
    console.log(id, ":", obj ? obj.box.text || obj.box.maxclass : "not found");
});
