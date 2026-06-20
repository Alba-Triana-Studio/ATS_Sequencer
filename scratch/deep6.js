const fs=require('fs');
const data=JSON.parse(fs.readFileSync('ATS_Sequencer.maxpat','utf8'));
const P=data.patcher;const B={};for(const b of P.boxes)B[b.box.id]=b.box;
function lbl(id){const b=B[id];if(!b)return id+'(?)';return id+'['+b.maxclass+':'+((b.text||'').replace(/\n/g,' ').slice(0,24))+']';}
console.log('=== Transporte/loop setup 0: cada objeto, IN y OUT ===');
for(const id of ['obj-46','obj-60','obj-32','obj-41','obj-43','obj-33','obj-115','obj-34','obj-99','obj-36','obj-35','obj-85']){
  console.log('--- '+lbl(id));
  for(const l of P.lines.filter(l=>l.patchline.destination[0]===id)){const s=l.patchline.source;console.log('   IN <- '+lbl(s[0])+' o'+s[1]+'->i'+l.patchline.destination[1]);}
  for(const l of P.lines.filter(l=>l.patchline.source[0]===id)){const d=l.patchline.destination;console.log('   OUT o'+l.patchline.source[1]+' -> '+lbl(d[0])+' i'+d[1]);}
}
console.log('\n=== Time Sel (obj-112 inlet1) source + domain a obj-99 ===');
for(const l of P.lines.filter(l=>l.patchline.destination[0]==='obj-112'&&l.patchline.destination[1]===1)){console.log('  Time Sel <- '+lbl(l.patchline.source[0]));}

console.log('\n=== Contador de celdas dentro de mastertoggles (issue 4ta celda) ===');
const mt=B['obj-112'].patcher;const MB={};for(const b of mt.boxes)MB[b.box.id]=b.box;
function mlbl(id){const b=MB[id];if(!b)return id;return id+'['+b.maxclass+':'+((b.text||'').replace(/\n/g,' ').slice(0,22))+']';}
for(const id of ['obj-290','obj-320','obj-28','obj-67','obj-77','obj-79','obj-433','obj-437','obj-434','obj-301','obj-299','obj-300']){
  const b=MB[id];if(!b)continue;
  const outs=mt.lines.filter(l=>l.patchline.source[0]===id).map(l=>mlbl(l.patchline.destination[0])+'.i'+l.patchline.destination[1]);
  const ins=mt.lines.filter(l=>l.patchline.destination[0]===id).map(l=>mlbl(l.patchline.source[0])+'.o'+l.patchline.source[1]);
  console.log('  '+mlbl(id)+(ins.length?'  IN<-'+ins.join(','):'')+(outs.length?'  OUT->'+outs.join(','):''));
}
