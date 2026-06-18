const fs = require('fs');
const data = JSON.parse(fs.readFileSync('ATS_Sequencer.maxpat', 'utf8'));

function findTexts(obj) {
    if (Array.isArray(obj)) {
        obj.forEach(findTexts);
    } else if (typeof obj === 'object' && obj !== null) {
        if (obj.maxclass === 'newobj' && obj.text) {
            const txt = obj.text.toLowerCase();
            if ((txt.startsWith('s ') || txt.startsWith('r ')) && 
                (txt.includes('play') || txt.includes('bang') || txt.includes('trig') || txt.includes('draw'))) {
                console.log(`${obj.id}: ${obj.text}`);
            }
        }
        Object.values(obj).forEach(findTexts);
    }
}

findTexts(data);
