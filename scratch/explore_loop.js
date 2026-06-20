const fs=require('fs');
const data=JSON.parse(fs.readFileSync('ATS_Sequencer.maxpat','utf8'));
const P=data.patcher;
const boxes={};
for(const b of P.boxes) boxes[b.box.id]=b.box;
function lbl(id){const b=boxes[id];if(!b)return id;return id+'['+b.maxclass+':'+((b.text||'').replace(/\n/g,' ').slice(0,28))+']';}
// find all == objects, s/r clockms, maximum, +1000, add1000
const interesting=P.boxes.filter(b=>{const t=b.box.text||'';return /^==|clockms|^maximum|^\+ ?1000|^\+ ?100|^sel |^s clock|^r clock|round|clocker/.test(t)|| /add1000/.test(b.box.id)||/-mute|delay/.test(b.box.id);}).map(b=>b.box.id);
for(const id of interesting){
  console.log('=== '+lbl(id));
  for(const l of P.lines.filter(l=>l.patchline.destination[0]===id)){const s=l.patchline.source;console.log('   IN  <- '+lbl(s[0])+' o'+s[1]+'->i'+l.patchline.destination[1]);}
  for(const l of P.lines.filter(l=>l.patchline.source[0]===id)){const d=l.patchline.destination;console.log('   OUT o'+l.patchline.source[1]+' -> '+lbl(d[0])+' i'+d[1]);}
}
