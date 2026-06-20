const fs=require('fs');
const data=JSON.parse(fs.readFileSync('ATS_Sequencer.maxpat','utf8'));
const P=data.patcher;const B={};for(const b of P.boxes)B[b.box.id]=b.box;
function info(id){const b=B[id];if(!b)return id+' MISSING';return id+' ('+b.maxclass+') pres='+(b.presentation?'SI':'no')+' rect='+JSON.stringify(b.patching_rect)+(b.presentation?' presrect='+JSON.stringify(b.presentation_rect):'')+' text="'+(b.text||'')+'"';}
console.log('=== Play toggles ===');
for(const id of ['obj-59','obj-180','obj-299','obj-766']) console.log(info(id));
console.log('\n=== Qué escribe a cada toggle (fuente y tipo) ===');
for(const[k,id]of Object.entries({P1:'obj-59',P2:'obj-180',P3:'obj-299',P4:'obj-766'})){
  console.log(k,id+':');
  for(const l of P.lines.filter(l=>l.patchline.destination[0]===id)){const s=l.patchline.source[0];const sb=B[s];console.log('   <- '+s+' ('+(sb?sb.maxclass:'?')+(sb&&sb.text?':'+sb.text.replace(/\n/g,' ').slice(0,18):'')+')');}
}
console.log('\n=== Elementos de presentación tipo Play/botón (textbutton, button, message "1") cercanos ===');
for(const b of P.boxes){const t=b.box.text||'';if((b.box.maxclass==='textbutton'||b.box.maxclass==='button'||(b.box.maxclass==='message'&&/^1$|play/i.test(t)))&&b.box.presentation){
  // does it connect to a play toggle?
  const dst=P.lines.filter(l=>l.patchline.source[0]===b.box.id).map(l=>l.patchline.destination[0]);
  if(dst.some(d=>['obj-59','obj-180','obj-299','obj-766'].includes(d)))
    console.log('  '+b.box.id+' ('+b.box.maxclass+') "'+t.replace(/\n/g,' ')+'" -> '+dst.join(','));
}}
