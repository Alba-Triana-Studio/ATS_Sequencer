const fs = require('fs');
const data = JSON.parse(fs.readFileSync('ATS_Sequencer.maxpat', 'utf8'));

const subpatches = {};
let counter = 0;

function walk(obj) {
    if (Array.isArray(obj)) {
        obj.forEach(walk);
    } else if (typeof obj === 'object' && obj !== null) {
        if (obj.box && obj.box.patcher) {
            const name = obj.box.text ? obj.box.text.replace(/[^a-zA-Z0-9]/g, '_') : 'subpatch';
            subpatches[name + '_' + counter++] = obj.box.patcher;
        }
        Object.values(obj).forEach(walk);
    }
}

walk(data);

Object.keys(subpatches).forEach(k => {
    fs.writeFileSync(`scratch/${k}.json`, JSON.stringify(subpatches[k], null, 2));
});
console.log('Dumped', Object.keys(subpatches).length, 'subpatches');
