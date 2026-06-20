const fs=require('fs');
const data=JSON.parse(fs.readFileSync('ATS_Sequencer.maxpat','utf8'));
const P=data.patcher;
const boxes={};
for(const b of P.boxes) boxes[b.box.id]=b.box;
function lbl(id){const b=boxes[id];if(!b)return id;return id+'['+b.maxclass+':'+((b.text||'').replace(/\n/g,' ').slice(0,32))+']';}
function trace(id,depth,seen){
  if(depth>4||seen.has(id))return; seen.add(id);
  for(const l of P.lines.filter(l=>l.patchline.destination[0]===id)){
    const s=l.patchline.source;
    console.log('  '.repeat(depth)+lbl(s[0])+' o'+s[1]+' -> i'+l.patchline.destination[1]+' of '+id);
    trace(s[0],depth+1,seen);
  }
}
for(const id of ['obj-639','obj-125','obj-138','obj-145','obj-150','obj-153']){
  console.log('\n###### upstream of '+lbl(id));
  trace(id,0,new Set());
}
