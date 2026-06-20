const fs=require('fs');
const data=JSON.parse(fs.readFileSync('ATS_Sequencer.maxpat','utf8'));
const P=data.patcher;const boxes={};for(const b of P.boxes)boxes[b.box.id]=b.box;
function lbl(id){const b=boxes[id];if(!b)return id+'(?)';return id+'['+b.maxclass+':'+((b.text||'').replace(/\n/g,' ').slice(0,30))+']';}
// 1) where is r mute / mute1-4 consumed (all patchers incl subpatch)
function walk(p,path,arr){for(const b of p.boxes){arr.push({b:b.box,path});if(b.box.patcher)walk(b.box.patcher,path+'/'+(b.box.text||b.box.id),arr);}}
const all=[];walk(P,'',all);
console.log('=== consumidores de mute / lvl / mixout ===');
for(const o of all){const t=o.b.text||'';if(/\bmute[1-4]?\b|\dlvl\b|mixout[1-4]/i.test(t))console.log('  ['+o.path+'] '+o.b.id+' ('+o.b.maxclass+') :: '+t.replace(/\n/g,' ').slice(0,45));}
// 2) trace mute1 source toggle obj-20 upstream (what controls mute) and the == 0
console.log('\n=== mute toggles (obj-20/143/265/733) — quien los controla, donde van ===');
for(const id of ['obj-20','obj-143','obj-265','obj-733','obj-162','obj-141','obj-263','obj-731']){
  const ins=P.lines.filter(l=>l.patchline.destination[0]===id).map(l=>lbl(l.patchline.source[0])+'.o'+l.patchline.source[1]);
  const outs=P.lines.filter(l=>l.patchline.source[0]===id).map(l=>lbl(l.patchline.destination[0]));
  console.log('  '+lbl(id)+(ins.length?'  IN<-'+ins.join(','):'')+(outs.length?'  OUT->'+outs.join(','):''));
}
// 3) the audio mix chain: receive~ mixout & lvl in main, and the dac
console.log('\n=== cadena audio principal: number~ -> ? -> send~ mixout ===');
// trace from one curve~ output number~ obj-27 (P1) all the way
function down(id,d,seen,maxd){if(d>maxd||seen.has(id))return;seen.add(id);for(const l of P.lines.filter(l=>l.patchline.source[0]===id)){const dd=l.patchline.destination;const db=boxes[dd[0]];console.log('  '.repeat(d)+lbl(id)+' o'+l.patchline.source[1]+' -> '+lbl(dd[0]));down(dd[0],d+1,seen,maxd);}}
console.log('-- P1 amp curve~ obj-24 -> number~ obj-28 -> ...');
down('obj-28',0,new Set(),5);
