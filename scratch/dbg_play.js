const fs=require('fs');
const data=JSON.parse(fs.readFileSync('ATS_Sequencer.maxpat','utf8'));
const P=data.patcher;const boxes={};for(const b of P.boxes)boxes[b.box.id]=b.box;
function lbl(id){const b=boxes[id];if(!b)return id+'(?)';return id+'['+b.maxclass+':'+((b.text||'').replace(/\n/g,' ').slice(0,26))+']';}
// The 4 play toggles and what feeds + what they drive
const toggles={'setup0':'obj-59','setup1':'obj-180','setup2':'obj-299','setup3':'obj-766'};
for(const[k,id]of Object.entries(toggles)){
  console.log('\n##### PLAY TOGGLE '+k+' = '+lbl(id));
  for(const l of P.lines.filter(l=>l.patchline.destination[0]===id)){const s=l.patchline.source;console.log('   IN  <- '+lbl(s[0])+' o'+s[1]);}
  for(const l of P.lines.filter(l=>l.patchline.source[0]===id)){const d=l.patchline.destination;console.log('   OUT -> '+lbl(d[0])+' i'+d[1]);}
}
