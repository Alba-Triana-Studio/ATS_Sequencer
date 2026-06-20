const fs=require('fs');
const data=JSON.parse(fs.readFileSync('ATS_Sequencer.maxpat','utf8'));
const P=data.patcher;
let mt=null;
for(const b of P.boxes) if(b.box.id==='obj-112') mt=b.box.patcher;
if(!mt){console.log('not found');process.exit(1);}
const boxes={};
for(const b of mt.boxes) boxes[b.box.id]=b.box;
console.log('--- BOXES inside mastertoggles ---');
for(const b of mt.boxes){
  const x=b.box;
  let extra=x.patcher?' [SUBPATCH]':'';
  console.log(`${x.id} (${x.maxclass})${extra} :: ${(x.text||'').replace(/\n/g,' ').slice(0,50)}`);
}
