const fs=require('fs');
const data=JSON.parse(fs.readFileSync('ATS_Sequencer.maxpat','utf8'));
const P=data.patcher;const B={};for(const b of P.boxes)B[b.box.id]=b.box;
function lbl(id){const b=B[id];if(!b)return id+'(?)';return id+'['+b.maxclass+':'+((b.text||'').replace(/\n/g,' ').slice(0,30))+']';}
console.log('=== objetos fp-trans (v3 transicion de celda en Full Piece) ===');
for(const b of P.boxes){if(/^obj-fp-trans/.test(b.box.id)){
  console.log('--- '+lbl(b.box.id));
  for(const l of P.lines.filter(l=>l.patchline.destination[0]===b.box.id)){const s=l.patchline.source;console.log('   IN <- '+lbl(s[0])+' o'+s[1]);}
  for(const l of P.lines.filter(l=>l.patchline.source[0]===b.box.id)){const d=l.patchline.destination;console.log('   OUT o'+l.patchline.source[1]+' -> '+lbl(d[0])+' i'+d[1]);}
}}
console.log('\n=== confirmar r setphase0 en P*Sound y que NO hay s setphase0 ===');
let send=0;for(const b of P.boxes){if((b.box.text||'')==='s setphase0')send++;}
console.log('s setphase0 en patch principal:',send);
