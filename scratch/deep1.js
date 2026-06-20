const fs=require('fs');
const data=JSON.parse(fs.readFileSync('ATS_Sequencer.maxpat','utf8'));
const P=data.patcher;const boxes={};for(const b of P.boxes)boxes[b.box.id]=b.box;
function lbl(id){const b=boxes[id];if(!b)return id+'(?)';return id+'['+b.maxclass+':'+((b.text||'').replace(/\n/g,' ').slice(0,24))+']';}

console.log('============ 1) QUIEN ARRANCA/PARA EL RELOJ MAESTRO (obj-42 clocker) ============');
for(const l of P.lines.filter(l=>l.patchline.destination[0]==='obj-42')){const s=l.patchline.source;console.log('  IN <- '+lbl(s[0])+' o'+s[1]);}

console.log('\n============ 2) PLAYBANG (obj-112 o1) -> que functions ============');
const pb=P.lines.filter(l=>l.patchline.source[0]==='obj-112'&&l.patchline.source[1]===1).map(l=>l.patchline.destination[0]);
console.log('  ->', pb.join(', '));
console.log('  (functions por setup: P1=obj-2/77  P2=obj-194/199  P3=obj-314/319  P4=obj-780/785)');

console.log('\n============ 3) PRESET RECALL (obj-112 o3) -> que presets ============');
console.log('  ->', P.lines.filter(l=>l.patchline.source[0]==='obj-112'&&l.patchline.source[1]===3).map(l=>l.patchline.destination[0]).join(', '));

console.log('\n============ 4) Cada PLAY TOGGLE: que arranca el reloj? ============');
for(const[k,id]of Object.entries({P1:'obj-59',P2:'obj-180',P3:'obj-299',P4:'obj-766'})){
  // does its t-b-i chain reach obj-42 clocker?
  const tbi=P.lines.filter(l=>l.patchline.source[0]===id).map(l=>l.patchline.destination[0]);
  console.log(`  ${k} ${id} -> ${tbi.join(',')}`);
}

console.log('\n============ 5) Receives en P*Sound (crosstalk?) ============');
for(const f of ['P1Sound.maxpat','P2Sound.maxpat','P3Sound.maxpat','P4Sound.maxpat']){
  const d=JSON.parse(fs.readFileSync(f,'utf8'));
  const rs=[];function w(p){for(const b of p.boxes){const t=b.box.text||'';const m=t.match(/^(r|receive|s|send) (.+)/);if(m)rs.push(t);if(b.box.patcher)w(b.box.patcher);}}w(d.patcher);
  console.log('  '+f+': '+rs.join(' | '));
}
