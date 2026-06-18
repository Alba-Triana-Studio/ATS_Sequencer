const fs = require('fs');
const data = JSON.parse(fs.readFileSync('ATS_Sequencer.maxpat', 'utf8'));

let masterToggles = null;

function findSubpatch(obj, name) {
    if (Array.isArray(obj)) {
        obj.forEach(o => findSubpatch(o, name));
    } else if (typeof obj === 'object' && obj !== null) {
        if (obj.maxclass === 'patcher' && obj.name === name) {
            masterToggles = obj;
        } else {
            Object.values(obj).forEach(o => findSubpatch(o, name));
        }
    }
}

// In Max, subpatches inside 'newobj' with text 'p mastertoggles' have a 'patcher' object inside.
function findPatcherByNewobjText(obj, text) {
    if (Array.isArray(obj)) {
        obj.forEach(o => findPatcherByNewobjText(o, text));
    } else if (typeof obj === 'object' && obj !== null) {
        if (obj.box && obj.box.maxclass === 'newobj' && obj.box.text && obj.box.text.includes(text)) {
            if (obj.patcher) {
                masterToggles = obj.patcher;
            }
        } else {
            Object.values(obj).forEach(o => findPatcherByNewobjText(o, text));
        }
    }
}

findPatcherByNewobjText(data, 'mastertoggles');

if (masterToggles) {
    fs.writeFileSync("scratch/mastertoggles.json", JSON.stringify(masterToggles, null, 2));
} else {
    console.log("Not found");
}
