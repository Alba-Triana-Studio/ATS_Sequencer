const fs=require('fs');
const data=JSON.parse(fs.readFileSync('ATS_Sequencer.maxpat','utf8'));
const P=data.patcher;const B={};for(const b of P.boxes)B[b.box.id]=b.box;
function lbl(id){const b=B[id];if(!b)return id+'(?)';return id+'['+b.maxclass+':'+((b.text||'').replace(/\n/g,' ').slice(0,22))+']';}
// 1) s preset# senders
console.log('=== quien envia s preset# ===');
for(const b of P.boxes){if((b.box.text||'')==='s preset#'){console.log('  '+b.box.id+' IN<- '+P.lines.filter(l=>l.patchline.destination[0]===b.box.id).map(l=>lbl(l.patchline.source[0])+'.o'+l.patchline.source[1]).join(','));}}
// 2) preset outlet1 de cada setup: a donde va
console.log('\n=== preset outlet1 (cell index / selección) de cada setup ===');
for(const[k,id]of Object.entries({P1:'obj-3',P2:'obj-198',P3:'obj-318',P4:'obj-784'})){
  console.log('  '+k+' '+id+' o1 -> '+P.lines.filter(l=>l.patchline.source[0]===id&&l.patchline.source[1]===1).map(l=>lbl(l.patchline.destination[0])+'.i'+l.patchline.destination[1]).join(', '));
}
// 3) obj-99 y obj-112 inlet1 (domain/TimeSel) inputs
console.log('\n=== obj-99 (loop) IN, obj-112 inlet1 (TimeSel) IN ===');
console.log('  obj-99 IN <-', P.lines.filter(l=>l.patchline.destination[0]==='obj-99').map(l=>lbl(l.patchline.source[0])).join(','));
console.log('  obj-112 i1 <-', P.lines.filter(l=>l.patchline.destination[0]==='obj-112'&&l.patchline.destination[1]===1).map(l=>lbl(l.patchline.source[0])).join(','));
// 4) domain number boxes
console.log('\n=== domain boxes: obj-12,195,315,781 (salidas) ===');
for(const id of ['obj-12','obj-195','obj-315','obj-781']) console.log('  '+id+' -> '+P.lines.filter(l=>l.patchline.source[0]===id).map(l=>lbl(l.patchline.destination[0])).join(', '));
// 5) fp_block / fp-guard receivers and obj-109
console.log('\n=== obj-109 (Full Piece toggle) salidas ===');
console.log('  obj-109 ->', P.lines.filter(l=>l.patchline.source[0]==='obj-109').map(l=>lbl(l.patchline.destination[0])).join(', '));
