const fs=require('fs');
const data=JSON.parse(fs.readFileSync('ATS_Sequencer.maxpat','utf8'));
const P=data.patcher;const boxes={};for(const b of P.boxes)boxes[b.box.id]=b.box;
function lbl(id){const b=boxes[id];if(!b)return id+'(?)';return id+'['+b.maxclass+':'+((b.text||'').replace(/\n/g,' ').slice(0,26))+']';}
// REAL mapping: P1=obj-59, P2=obj-180, P3=obj-299, P4=obj-766
console.log('TOGGLE->SOUND map: P1=obj-59  P2=obj-180  P3=obj-299  P4=obj-766\n');
// autoplay msg boxes
const aps=[];
for(const b of P.boxes){if(/^obj-(msg-one|msg-zero|msg-fade|tbbb|gate|delay-start|delay-stop|add1000|fp-guard|fp-trans|delay-mute|mute-msg)/.test(b.box.id))aps.push(b.box.id);}
for(const id of aps.sort()){
  const outs=P.lines.filter(l=>l.patchline.source[0]===id).map(l=>lbl(l.patchline.destination[0])+'.i'+l.patchline.destination[1]);
  const ins=P.lines.filter(l=>l.patchline.destination[0]===id).map(l=>lbl(l.patchline.source[0])+'.o'+l.patchline.source[1]);
  console.log(lbl(id));
  if(ins.length)console.log('   IN  <- '+ins.join(' , '));
  if(outs.length)console.log('   OUT -> '+outs.join(' , '));
}
console.log('\n##### obj-131 (master?) '+lbl('obj-131'));
for(const l of P.lines.filter(l=>l.patchline.destination[0]==='obj-131')){const s=l.patchline.source;console.log('   IN  <- '+lbl(s[0])+' o'+s[1]);}
for(const l of P.lines.filter(l=>l.patchline.source[0]==='obj-131')){const d=l.patchline.destination;console.log('   OUT -> '+lbl(d[0])+' i'+d[1]);}
