const fs = require('fs');
const patcher = JSON.parse(fs.readFileSync('scratch/mastertoggles.json', 'utf8'));

let lines = patcher.lines.filter(l => l.patchline.source[0] === 'obj-85');
console.log("obj-85 connections:", lines);
