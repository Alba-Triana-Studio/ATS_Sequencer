const fs=require('fs');
const data=JSON.parse(fs.readFileSync('ATS_Sequencer.maxpat','utf8'));
const P=data.patcher;const boxes={};for(const b of P.boxes)boxes[b.box.id]=b.box;
function lbl(id){const b=boxes[id];if(!b)return id+'(?)';return id+'['+b.maxclass+':'+((b.text||'').replace(/\n/g,' ').slice(0,22))+']';}
for(const id of ['obj-gate-0','obj-gate-1','obj-gate-2','obj-gate-3','obj-r-autoplay-2','obj-r-autoplay-3','obj-318','obj-784','obj-3','obj-198']){
  const b=boxes[id];
  console.log('=== '+lbl(id)+(b?' inlets='+b.numinlets+' outlets='+b.numoutlets:''));
  for(const l of P.lines.filter(l=>l.patchline.destination[0]===id)){const s=l.patchline.source;console.log('   IN  <- '+lbl(s[0])+' o'+s[1]+' -> i'+l.patchline.destination[1]);}
  for(const l of P.lines.filter(l=>l.patchline.source[0]===id)){const d=l.patchline.destination;console.log('   OUT o'+l.patchline.source[1]+' -> '+lbl(d[0])+' i'+d[1]);}
}
