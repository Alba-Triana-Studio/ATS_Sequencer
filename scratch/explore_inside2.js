const fs=require('fs');
const data=JSON.parse(fs.readFileSync('ATS_Sequencer.maxpat','utf8'));
const P=data.patcher;
let mt=null;
for(const b of P.boxes) if(b.box.id==='obj-112') mt=b.box.patcher;
const boxes={};
for(const b of mt.boxes) boxes[b.box.id]=b.box;
function lbl(id){const b=boxes[id];if(!b)return id;return id+'['+b.maxclass+':'+((b.text||'').replace(/\n/g,' ').slice(0,22))+']';}
// inlets/outlets ordered by x
const ins=mt.boxes.filter(b=>b.box.maxclass==='inlet').map(b=>b.box).sort((a,b)=>a.patching_rect[0]-b.patching_rect[0]);
const outs=mt.boxes.filter(b=>b.box.maxclass==='outlet').map(b=>b.box).sort((a,b)=>a.patching_rect[0]-b.patching_rect[0]);
console.log('INLETS (left->right = inlet 0..N):');
ins.forEach((b,i)=>console.log('  inlet'+i+' = '+b.id+' x='+b.patching_rect[0]));
console.log('OUTLETS (left->right = outlet 0..N):');
outs.forEach((b,i)=>console.log('  outlet'+i+' = '+b.id+' x='+b.patching_rect[0]));
console.log('\n--- ALL CONNECTIONS inside ---');
for(const l of mt.lines){const s=l.patchline.source,d=l.patchline.destination;console.log(lbl(s[0])+' o'+s[1]+' -> '+lbl(d[0])+' i'+d[1]);}
