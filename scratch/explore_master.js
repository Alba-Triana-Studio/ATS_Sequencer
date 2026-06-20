const fs=require('fs');
const data=JSON.parse(fs.readFileSync('ATS_Sequencer.maxpat','utf8'));
const P=data.patcher;
const boxes={};
for(const b of P.boxes) boxes[b.box.id]=b.box;
function lbl(b,id){if(!b) return id+'(?)'; return id+'['+(b.maxclass)+':'+((b.text||'').replace(/\n/g,' ').slice(0,35))+']';}
// top-level connections for these
const focus=['obj-112','obj-85','obj-46','obj-32','obj-12','obj-195','obj-315','obj-781','obj-505'];
for(const id of focus){
  const b=boxes[id];
  console.log('=== '+lbl(b,id));
  for(const l of P.lines.filter(l=>l.patchline.destination[0]===id)){const s=l.patchline.source;console.log('   IN  <- '+lbl(boxes[s[0]],s[0])+' out'+s[1]+'->in'+l.patchline.destination[1]);}
  for(const l of P.lines.filter(l=>l.patchline.source[0]===id)){const d=l.patchline.destination;console.log('   OUT out'+l.patchline.source[1]+' -> '+lbl(boxes[d[0]],d[0])+' in'+d[1]);}
}
