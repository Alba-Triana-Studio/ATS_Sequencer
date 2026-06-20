const fs=require('fs');
const data=JSON.parse(fs.readFileSync('ATS_Sequencer.maxpat','utf8'));
const P=data.patcher;const boxes={};for(const b of P.boxes)boxes[b.box.id]=b.box;
function lbl(id){const b=boxes[id];if(!b)return id+'(?)';return id+'['+b.maxclass+':'+((b.text||'').replace(/\n/g,' ').slice(0,20))+']';}
// For each 's Namp' find the upstream change and number~ and curve~
const ampSends={ 'obj-31':'1amp','obj-210':'2amp','obj-240':'3amp','obj-709':'4amp' };
for(const[send,name]of Object.entries(ampSends)){
  const up1=P.lines.filter(l=>l.patchline.destination[0]===send).map(l=>l.patchline.source[0]);
  const change=up1[0];
  const up2=P.lines.filter(l=>l.patchline.destination[0]===change).map(l=>l.patchline.source);
  console.log(`s ${name} (${send})  <- change ${lbl(change)}  <- ${up2.map(s=>lbl(s[0])+'.o'+s[1]).join(',')}`);
}
console.log('\n--- gpitch sends para referencia ---');
const gp={'obj-25':'1gpitch','obj-216':'2gpitch','obj-243':'3gpitch','obj-712':'4gpitch'};
for(const[send,name]of Object.entries(gp)){
  const up1=P.lines.filter(l=>l.patchline.destination[0]===send).map(l=>l.patchline.source[0]);
  console.log(`s ${name} (${send}) <- ${up1.map(lbl).join(',')}`);
}
console.log('\n--- play toggles: estado actual de salidas (para enable mask) ---');
for(const[k,id]of Object.entries({P1:'obj-59',P2:'obj-180',P3:'obj-299',P4:'obj-766'})){
  console.log(k,id,'-> outlets:',P.lines.filter(l=>l.patchline.source[0]===id).map(l=>lbl(l.patchline.destination[0])).join(', '));
}
console.log('\n--- clock start: obj-46 (P1) y como iniciar desde otros ---');
console.log('obj-46 IN:', P.lines.filter(l=>l.patchline.destination[0]==='obj-46').map(l=>lbl(l.patchline.source[0])).join(','));
console.log('obj-46 OUT:', P.lines.filter(l=>l.patchline.source[0]==='obj-46').map(l=>'o'+l.patchline.source[1]+'->'+lbl(l.patchline.destination[0])).join(','));
