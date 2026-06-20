const fs=require('fs');
const data=JSON.parse(fs.readFileSync('ATS_Sequencer.maxpat','utf8'));
const P=data.patcher;
const boxes={};
for(const b of P.boxes) boxes[b.box.id]=b.box;
function lbl(id){const b=boxes[id]; if(!b) return id+'(?)'; return id+'['+(b.maxclass)+':'+((b.text||'').replace(/\n/g,' ').slice(0,30))+']';}
const focus=['obj-42','obj-505','obj-9','obj-200','obj-320','obj-786','obj-2','obj-77','obj-194','obj-199','obj-314','obj-319','obj-780','obj-785','obj-23','obj-24','obj-220','obj-221','obj-244','obj-245','obj-713','obj-714','obj-786'];
for(const id of focus){
  console.log('=== '+lbl(id));
  const outs=P.lines.filter(l=>l.patchline.source[0]===id);
  const ins=P.lines.filter(l=>l.patchline.destination[0]===id);
  for(const l of ins){const s=l.patchline.source; console.log('   IN  <- '+lbl(s[0])+' out'+s[1]+' -> in'+l.patchline.destination[1]);}
  for(const l of outs){const d=l.patchline.destination; console.log('   OUT out'+l.patchline.source[1]+' -> '+lbl(d[0])+' in'+d[1]);}
}
