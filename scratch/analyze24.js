const fs = require('fs');
const data = JSON.parse(fs.readFileSync('ATS_Sequencer.maxpat', 'utf8'));

// find all subpatches
const subpatches = {};
let counter = 0;

function walk(obj, path) {
    if (Array.isArray(obj)) {
        obj.forEach((o, i) => walk(o, path + '[' + i + ']'));
    } else if (typeof obj === 'object' && obj !== null) {
        if (obj.maxclass === 'patcher') {
            subpatches['subpatch_' + counter++] = obj;
        }
        Object.keys(obj).forEach(k => {
            if (k !== 'patcher') {
                walk(obj[k], path + '.' + k);
            }
        });
    }
}

walk(data, 'root');

// write subpatches to scratch dir
Object.keys(subpatches).forEach(k => {
    fs.writeFileSync(`scratch/${k}.json`, JSON.stringify(subpatches[k], null, 2));
});
console.log('Dumped', Object.keys(subpatches).length, 'subpatches');
