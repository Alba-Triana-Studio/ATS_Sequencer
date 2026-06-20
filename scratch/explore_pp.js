const fs=require('fs');
const data=JSON.parse(fs.readFileSync('ATS_Sequencer.maxpat','utf8'));
const P=data.patcher;
// how many prespopup subpatchers? find boxes whose patcher contains 'r clockms'
let count=0;
for(const b of P.boxes){
  if(b.box.patcher){
    const has=JSON.stringify(b.box.patcher).includes('clockms');
    if(has){count++;console.log('subpatch with clockms:',b.box.id,b.box.text||'');}
  }
}
// Find prespopup subpatch and dump its boxes + clockms connections
let pp=null,ppid=null;
for(const b of P.boxes) if(b.box.patcher && /prespopup/.test(b.box.text||'')){pp=b.box.patcher;ppid=b.box.id;}
console.log('\nprespopup id=',ppid);
if(pp){
  const boxes={};for(const b of pp.boxes)boxes[b.box.id]=b.box;
  function lbl(id){const b=boxes[id];if(!b)return id;return id+'['+b.maxclass+':'+((b.text||'').replace(/\n/g,' ').slice(0,30))+']';}
  // downstream of r clockms (obj-395)
  console.log('--- inside prespopup: trace from r clockms (obj-395) ---');
  function down(id,d,seen){if(d>6||seen.has(id))return;seen.add(id);for(const l of pp.lines.filter(l=>l.patchline.source[0]===id)){const dd=l.patchline.destination;console.log('  '.repeat(d)+lbl(id)+' o'+l.patchline.source[1]+' -> '+lbl(dd[0])+' i'+dd[1]);down(dd[0],d+1,seen);}}
  down('obj-395',0,new Set());
}
