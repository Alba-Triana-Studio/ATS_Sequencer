const fs = require('fs');
const data = JSON.parse(fs.readFileSync('ATS_Sequencer.maxpat','utf8'));

function walk(patcher, path){
  const res=[];
  for(const b of patcher.boxes){
    const box=b.box;
    res.push({id:box.id, cls:box.maxclass, text:box.text||'', sub: !!box.patcher, path});
    if(box.patcher) res.push(...walk(box.patcher, path+'/'+(box.text||box.id)));
  }
  return res;
}
const all = walk(data.patcher,'');
// find anything mentioning domain, clocker, function, curve~, count, Time
const kw = /domain|clocker|^function|curve~|counter|Time Sel|setdomain|sig~|cycle|phasor|line~|play~|groove|count\b|round/i;
for(const o of all){
  if(kw.test(o.cls) || kw.test(o.text)){
    console.log(`[${o.path}] ${o.id} (${o.cls}) :: ${o.text.replace(/\n/g,' ').slice(0,80)}`);
  }
}
