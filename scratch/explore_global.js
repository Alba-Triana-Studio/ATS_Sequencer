const fs=require('fs');
const data=JSON.parse(fs.readFileSync('ATS_Sequencer.maxpat','utf8'));
function walk(patcher,path,arr){
  for(const b of patcher.boxes){
    arr.push({box:b.box,path});
    if(b.box.patcher) walk(b.box.patcher,path+'/'+(b.box.text||b.box.id),arr);
  }
}
const all=[]; walk(data.patcher,'',all);
const re=/clockms|dac~|^cycle|^phasor|^saw|^tri~|^rect~|^line~|^sig~|^groove|^play~|^metro|^pictslider|out~|^send~|^receive~|^s~|^r~|^mc\./i;
for(const o of all){
  const t=o.box.text||'';
  if(re.test(t)||re.test(o.box.maxclass)){
    console.log(`[${o.path}] ${o.box.id} (${o.box.maxclass}) :: ${t.replace(/\n/g,' ').slice(0,50)}`);
  }
}
console.log('\n--- number~ downstream (audio path) ---');
const P=data.patcher; const boxes={}; for(const b of P.boxes) boxes[b.box.id]=b.box;
function lbl(id){const b=boxes[id];if(!b)return id+'(sub?)';return id+'['+b.maxclass+':'+((b.text||'').replace(/\n/g,' ').slice(0,25))+']';}
for(const id of ['obj-27','obj-28','obj-211','obj-214','obj-241','obj-242','obj-710','obj-711']){
  for(const l of P.lines.filter(l=>l.patchline.source[0]===id)){const d=l.patchline.destination;console.log(lbl(id)+' o'+l.patchline.source[1]+' -> '+lbl(d[0])+' i'+d[1]);}
}
