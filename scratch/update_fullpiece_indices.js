const fs = require('fs');

let filename = 'ATS_Sequencer.maxpat';
let data = JSON.parse(fs.readFileSync(filename, 'utf8'));

let mt = data.patcher.boxes.find(b => b.box.text === 'p mastertoggles');
if (mt && mt.box.patcher && mt.box.patcher.boxes) {
    mt.box.patcher.boxes.forEach(b => {
        let txt = b.box.text || '';
        
        // Update 241 to 421 (Row 22 start)
        if (txt === '241') b.box.text = '421';
        if (txt === 't i 241') b.box.text = 't i 421';
        if (b.box.maxclass === 'comment' && txt.includes('241')) {
            b.box.text = txt.replace('241', '421');
        }

        // Update 250 to 440 (Row 22 end)
        if (txt === '250') b.box.text = '440';
        if (txt === 'sel 250') b.box.text = 'sel 440';
    });
}

fs.writeFileSync(filename, JSON.stringify(data, null, 4));
console.log('Updated Full Piece indices to 421-440.');
