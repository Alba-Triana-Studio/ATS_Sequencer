const fs=require('fs');
const data=JSON.parse(fs.readFileSync('ATS_Sequencer.maxpat','utf8'));
const P=data.patcher;
const boxes={};for(const b of P.boxes)boxes[b.box.id]=b.box;
function lbl(id){const b=boxes[id];if(!b)return id;return id+'['+b.maxclass+':'+((b.text||'').replace(/\n/g,' ').slice(0,30))+']';}
function down(id,d,seen){if(d>7||seen.has(id))return;seen.add(id);for(const l of P.lines.filter(l=>l.patchline.source[0]===id)){const dd=l.patchline.destination;console.log('  '.repeat(d)+lbl(id)+' o'+l.patchline.source[1]+' -> '+lbl(dd[0])+' i'+dd[1]);down(dd[0],d+1,seen);}}
for(const id of ['obj-48','obj-209']){
  console.log('\n###### downstream of '+lbl(id));
  down(id,0,new Set());
}
