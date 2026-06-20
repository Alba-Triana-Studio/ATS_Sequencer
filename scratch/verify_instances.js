const fs=require('fs');
const data=JSON.parse(fs.readFileSync('ATS_Sequencer.maxpat','utf8'));
function walk(p,path,arr){for(const b of p.boxes){arr.push({b:b.box,path});if(b.box.patcher)walk(b.box.patcher,path+'/'+(b.box.text||b.box.id),arr);}}
const all=[];walk(data.patcher,'',all);
for(const o of all){const t=o.b.text||'';if(/P[1-4]Sound|bpatcher|setphase/i.test(t)||/bpatcher/i.test(o.b.maxclass)){
  console.log(`[${o.path}] ${o.b.id} (${o.b.maxclass}) name=${o.b.name||''} :: ${t.replace(/\n/g,' ').slice(0,40)}`);
}}
// confirm obj-46 outlet count/text and obj-112 still present
const P=data.patcher;const boxes={};for(const b of P.boxes)boxes[b.box.id]=b.box;
for(const id of ['obj-46','obj-112','obj-12']){const b=boxes[id];console.log('MAIN',id,b?('('+b.maxclass+') '+(b.text||'')):'MISSING');}
