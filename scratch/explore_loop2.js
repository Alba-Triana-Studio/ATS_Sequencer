const fs=require('fs');
const data=JSON.parse(fs.readFileSync('ATS_Sequencer.maxpat','utf8'));
const P=data.patcher;
const boxes={};
for(const b of P.boxes) boxes[b.box.id]=b.box;
function lbl(id){const b=boxes[id];if(!b)return id;return id+'['+b.maxclass+':'+((b.text||'').replace(/\n/g,' ').slice(0,30))+']';}
// per-setup loop chains: del, t b b, msg -, t b i
const ids=['obj-115','obj-80','obj-96','obj-34','obj-122','obj-178','obj-157','obj-249','obj-297','obj-279','obj-719','obj-764','obj-746','obj-716','obj-249','obj-119','obj-118'];
// also find all 'del' and 't b b' and msg '-' objects
for(const b of P.boxes){const t=b.box.text||'';if(/^del\b|^t b b$|^- ?$|^- $/.test(t)&&!ids.includes(b.box.id))ids.push(b.box.id);}
for(const id of ids){
  if(!boxes[id])continue;
  console.log('=== '+lbl(id));
  for(const l of P.lines.filter(l=>l.patchline.destination[0]===id)){const s=l.patchline.source;console.log('   IN  <- '+lbl(s[0])+' o'+s[1]+'->i'+l.patchline.destination[1]);}
  for(const l of P.lines.filter(l=>l.patchline.source[0]===id)){const d=l.patchline.destination;console.log('   OUT o'+l.patchline.source[1]+' -> '+lbl(d[0])+' i'+d[1]);}
}
console.log('\n--- FUNCTION attrs ---');
for(const id of ['obj-2','obj-77','obj-194','obj-199']){const b=boxes[id];console.log(id, JSON.stringify({mode:b.mode,setmode:b.setmode,domain:b.domain,outputmode:b.outputmode, range:b.range}));}
