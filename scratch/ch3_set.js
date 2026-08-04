const fs=require('fs');
const rows=require('./chan_rows.json').filter(r=>r.every(Boolean));
const EXTRA=['obj-72','obj-79','obj-316','obj-276','obj-277','obj-237','obj-282','obj-317','obj-236',
 'obj-271','obj-275','obj-466','obj-264','obj-440','obj-439','obj-438','obj-437','obj-454','obj-452',
 'obj-453','obj-455','obj-456','obj-457','obj-313','obj-490','obj-307','obj-309','obj-312','obj-257'];
const set=new Set(rows.map(r=>r[2]).concat(EXTRA));
const dup=EXTRA.filter(x=>rows.some(r=>r[2]===x));
console.log('total ch3:',set.size,'extras ya presentes:',dup);
const p=JSON.parse(fs.readFileSync(__dirname+'/../ATS_Sequencer.maxpat','utf8'));
const boxes=p.patcher.boxes.map(b=>b.box);
const others=new Set();rows.forEach(r=>[r[0],r[1],r[3]].forEach(x=>others.add(x)));
// que queda en la banda de patching de ch3 sin clasificar
console.log('--- en banda patching 2150-3200 sin clasificar ---');
boxes.filter(b=>b.patching_rect[1]>=2150&&b.patching_rect[1]<3200&&!set.has(b.id)&&!others.has(b.id))
 .sort((a,b)=>a.patching_rect[1]-b.patching_rect[1])
 .forEach(b=>console.log('  ',b.id.padEnd(20),b.maxclass.padEnd(11),(b.text||'').replace(/\n/g,'|').slice(0,50)));
console.log('--- en presentacion y=380..578 sin clasificar ---');
boxes.filter(b=>b.presentation==1&&b.presentation_rect[1]>=380&&b.presentation_rect[1]<578&&!set.has(b.id)&&!others.has(b.id))
 .forEach(b=>console.log('  ',b.id.padEnd(20),b.maxclass.padEnd(11),(b.text||'').replace(/\n/g,'|').slice(0,50)));
console.log('--- miembros ch3 fuera de la banda ---');
boxes.filter(b=>set.has(b.id)&&(b.patching_rect[1]<2150||b.patching_rect[1]>=3200))
 .sort((a,b)=>a.patching_rect[1]-b.patching_rect[1])
 .forEach(b=>console.log('  ',String(Math.round(b.patching_rect[1])).padStart(5),b.id.padEnd(20),b.maxclass.padEnd(11),(b.text||'').replace(/\n/g,'|').slice(0,45)));
fs.writeFileSync(__dirname+'/ch3_ids.json',JSON.stringify([...set]));
