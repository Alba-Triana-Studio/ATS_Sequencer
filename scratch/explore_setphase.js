const fs=require('fs');
const data=JSON.parse(fs.readFileSync('ATS_Sequencer.maxpat','utf8'));
const P=data.patcher;
const boxes={};for(const b of P.boxes)boxes[b.box.id]=b.box;
function lbl(id){const b=boxes[id];if(!b)return id+'(sub)';return id+'['+b.maxclass+':'+((b.text||'').replace(/\n/g,' ').slice(0,30))+']';}
// find all boxes mentioning setphase, gpitch, amp, zero, exact across all patchers
function walk(p,path,arr){for(const b of p.boxes){arr.push({b:b.box,path});if(b.box.patcher)walk(b.box.patcher,path+'/'+(b.box.text||b.box.id),arr);}}
const all=[];walk(P,'',all);
console.log('--- setphase / phase reset senders & related ---');
for(const o of all){const t=o.b.text||'';if(/setphase|zero\d|#exact|phasereset|s \dgpitch|s \damp/i.test(t))console.log(`[${o.path}] ${o.b.id} (${o.b.maxclass}) :: ${t.replace(/\n/g,' ').slice(0,45)}`);}
// trace upstream of setphase senders in main patcher
console.log('\n--- upstream of any "s setphase*" or "setphase" senders in MAIN patcher ---');
for(const b of P.boxes){const t=b.box.text||'';if(/setphase/i.test(t)){
  console.log('### '+lbl(b.box.id));
  function up(id,d,seen){if(d>5||seen.has(id))return;seen.add(id);for(const l of P.lines.filter(l=>l.patchline.destination[0]===id)){const s=l.patchline.source;console.log('  '.repeat(d)+'<- '+lbl(s[0])+' o'+s[1]);up(s[0],d+1,seen);}}
  up(b.box.id,0,new Set());
}}
