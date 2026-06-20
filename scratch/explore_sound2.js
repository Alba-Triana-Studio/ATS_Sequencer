const fs=require('fs');
for(const f of ['P1Sound.maxpat','P2Sound.maxpat','P3Sound.maxpat','P4Sound.maxpat']){
  let data;try{data=JSON.parse(fs.readFileSync(f,'utf8'));}catch(e){console.log(f,'ERR');continue;}
  const P=data.patcher;const boxes={};for(const b of P.boxes)boxes[b.box.id]=b.box;
  function lbl(id){const b=boxes[id];if(!b)return id;return id+'['+b.maxclass+':'+((b.text||'').replace(/\n/g,' ').slice(0,24))+']';}
  console.log('\n========= '+f+' =========');
  // list phasor/cycle/setphase/r-objects and their connections
  const focus=P.boxes.filter(b=>/phasor~|cycle~|setphase|^r |line~/.test(b.box.text||'')).map(b=>b.box.id);
  for(const id of focus){
    console.log(lbl(id));
    for(const l of P.lines.filter(l=>l.patchline.source[0]===id)){const d=l.patchline.destination;console.log('   o'+l.patchline.source[1]+' -> '+lbl(d[0])+' i'+d[1]);}
  }
}
