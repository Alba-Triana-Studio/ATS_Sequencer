const fs = require('fs');

let filename = 'ATS_Sequencer.maxpat';
let data = JSON.parse(fs.readFileSync(filename, 'utf8'));

let mt = data.patcher.boxes.find(b => b.box.text === 'p mastertoggles');
if (mt && mt.box.patcher && mt.box.patcher.boxes) {
    mt.box.patcher.boxes.forEach(b => {
        let txt = b.box.text || '';
        
        // Exact matches
        if (txt === '121') b.box.text = '241';
        if (txt === '130') b.box.text = '250';
        if (txt === '73') b.box.text = '143';
        
        // Prefix matches
        if (txt === 't i 121') b.box.text = 't i 241';
        if (txt === 'sel 130') b.box.text = 'sel 250';
        if (txt === 't i 97') b.box.text = 't i 187';
        if (txt === 't i 52') b.box.text = 't i 102';
        if (txt === 't i 91') b.box.text = 't i 181';
        if (txt === 't i 50') b.box.text = 't i 90';
        
        // Text in comments that mention 121
        if (b.box.maxclass === 'comment' && txt.includes('121')) {
            b.box.text = txt.replace('121', '241');
        }
    });
}

fs.writeFileSync(filename, JSON.stringify(data, null, 4));
console.log('Updated mastertoggles hardcoded indices successfully.');
