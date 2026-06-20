const fs=require('fs');
const data=JSON.parse(fs.readFileSync('ATS_Sequencer.maxpat','utf8'));
const P=data.patcher;const boxes={};for(const b of P.boxes)boxes[b.box.id]=b.box;
function lbl(id){const b=boxes[id];if(!b)return id+'(?)';return id+'['+b.maxclass+':'+((b.text||'').replace(/\n/g,' ').slice(0,26))+']';}
function down(id,d,seen,maxd){if(d>maxd||seen.has(id))return;seen.add(id);for(const l of P.lines.filter(l=>l.patchline.source[0]===id)){const dd=l.patchline.destination;console.log('  '.repeat(d)+'o'+l.patchline.source[1]+' -> '+lbl(dd[0])+' i'+dd[1]);down(dd[0],d+1,seen,maxd);}}

console.log('===== P2 toggle chain (obj-180 -> obj-122 t b i) — ¿hace loop o solo 1 disparo? =====');
down('obj-122',0,new Set(),4);
console.log('\n===== P3 (obj-249) =====');
down('obj-249',0,new Set(),3);
console.log('\n===== P4 (obj-719) =====');
down('obj-719',0,new Set(),3);

console.log('\n===== MUTE: obj-20/143/265/733 (== 0 -> s mute1-4). ¿Donde se reciben r mute? =====');
function walk(p,path,arr){for(const b of p.boxes){arr.push({b:b.box,path});if(b.box.patcher)walk(b.box.patcher,path+'/'+(b.box.text||b.box.id),arr);}}
const all=[];walk(P,'',all);
for(const o of all){const t=o.b.text||'';if(/(^| )(r|receive|receive) +mute|mute[1-4]/i.test(t))console.log('  ['+o.path+'] '+lbl(o.b.id)+' :: '+t);}
// also the 4 mute source toggles
for(const id of ['obj-20','obj-143','obj-265','obj-733']){console.log('  src '+lbl(id));}

console.log('\n===== obj-131 vs obj-109: que son y que disparan =====');
for(const id of ['obj-131','obj-109']){
  console.log(' '+lbl(id));
  for(const l of P.lines.filter(l=>l.patchline.destination[0]===id)){const s=l.patchline.source;console.log('    IN <- '+lbl(s[0])+' o'+s[1]);}
  for(const l of P.lines.filter(l=>l.patchline.source[0]===id)){const d=l.patchline.destination;console.log('    OUT-> '+lbl(d[0])+' i'+d[1]);}
}
