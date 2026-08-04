const fs=require('fs');
const p=JSON.parse(fs.readFileSync('ATS_Sequencer.maxpat','utf8'));
const boxes=p.patcher.boxes.map(b=>b.box);
const byId={};boxes.forEach(b=>byId[b.id]=b);
const lines=p.patcher.lines.map(l=>l.patchline);
const adj={};boxes.forEach(b=>adj[b.id]=new Set());
lines.forEach(l=>{if(adj[l.source[0]]&&adj[l.destination[0]]){adj[l.source[0]].add(l.destination[0]);adj[l.destination[0]].add(l.source[0]);}});

function seeds(c){
  const s=[];
  boxes.forEach(b=>{
    const m=/^(obj-.*?)-([0-9])$/.exec(b.id);
    if(!m||/^obj-[0-9]+$/.test(b.id))return;
    const fam=m[1],idx=+m[2];
    if(/^obj-(ms|vw)-/.test(fam)){ if(idx===c+1)s.push(b.id); }
    else if(/^obj-(col-m1|newlabel-0|append-mat)/.test(fam)){}
    else { if(idx===c)s.push(b.id); }
  });
  return s;
}
const SEEDS=[0,1,2,3].map(seeds);
let barrier=new Set();
let owner={};
for(let iter=0;iter<25;iter++){
  const reach=[0,1,2,3].map(c=>{
    const seen=new Set(SEEDS[c]); const q=[...seen];
    while(q.length){const id=q.shift(); if(barrier.has(id)&&!SEEDS[c].includes(id))continue;
      adj[id].forEach(n=>{if(!seen.has(n)){seen.add(n);q.push(n);}});}
    return seen;
  });
  const nb=new Set();
  boxes.forEach(b=>{const hits=[0,1,2,3].filter(c=>reach[c].has(b.id));if(hits.length>1)nb.add(b.id);});
  const same=nb.size===barrier.size&&[...nb].every(x=>barrier.has(x));
  barrier=nb;
  owner={};boxes.forEach(b=>{const hits=[0,1,2,3].filter(c=>reach[c].has(b.id));if(hits.length===1)owner[b.id]=hits[0];});
  if(same){console.log('converged iter',iter);break;}
}
const counts=[0,0,0,0];Object.values(owner).forEach(c=>counts[c]++);
console.log('exclusive per channel:',counts,'barrier:',barrier.size,'unowned:',boxes.length-Object.keys(owner).length-barrier.size);
const mode=process.argv[2];
if(mode==='dump'){const c=+process.argv[3];
  boxes.filter(b=>owner[b.id]===c).sort((a,b)=>a.patching_rect[1]-b.patching_rect[1]).forEach(b=>console.log(' ',b.id.padEnd(22),b.maxclass.padEnd(11),(b.varname||'').padEnd(11),(b.text||'').replace(/\n/g,'|').slice(0,55)));}
if(mode==='barrier'){[...barrier].map(id=>byId[id]).sort((a,b)=>a.patching_rect[1]-b.patching_rect[1]).forEach(b=>console.log(' ',b.id.padEnd(22),b.maxclass.padEnd(11),(b.text||'').replace(/\n/g,'|').slice(0,60)));}
