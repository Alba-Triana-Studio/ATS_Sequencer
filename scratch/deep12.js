const fs=require('fs');
const data=JSON.parse(fs.readFileSync('ATS_Sequencer.maxpat','utf8'));
const P=data.patcher;const B={};for(const b of P.boxes)B[b.box.id]=b.box;
function lbl(id){const b=B[id];if(!b)return id+'(?)';return id+'['+b.maxclass+':'+((b.text||'').replace(/\n/g,' ').slice(0,24))+']';}
// Full Piece UI comments y elementos cercanos (mensajes que recallan preset)
const fpComments=['obj-251','obj-821','obj-360','obj-69','obj-354'];
for(const id of fpComments){const b=B[id];if(!b)continue;console.log(id+' "'+(b.text||'')+'" rect='+JSON.stringify(b.patching_rect));}
// buscar mensajes numéricos que vayan a los presets (obj-3/198/318/784) inlet0 = recall preset N
console.log('\n=== mensajes/valores que RECALLAN un preset (van a preset inlet0) ===');
const presets=['obj-3','obj-198','obj-318','obj-784'];
for(const l of P.lines){const d=l.patchline.destination;if(presets.includes(d[0])&&d[1]===0){const s=B[l.patchline.source[0]];if(s&&(s.maxclass==='message'||s.maxclass==='number'||/^\d/.test(s.text||''))){console.log('  '+lbl(l.patchline.source[0])+' -> '+d[0]);}}}
// el rango de presets: cuantos presets tiene obj-3 (preset stores)? buscar 'number of slots' o el preset data
// ver si hay un message "73" o "recall 73" en el patch principal cerca de Full Piece
console.log('\n=== mensajes con 73 / 81 / recall en patch principal ===');
for(const b of P.boxes){const t=b.box.text||'';if(/^(73|81|recall 73|recall 81)$/.test(t)||/recall/.test(t))console.log('  '+b.box.id+' ('+b.box.maxclass+') "'+t+'" -> '+P.lines.filter(l=>l.patchline.source[0]===b.box.id).map(l=>l.patchline.destination[0]).join(','));}
// confirmar obj-358 actual
const mt=B['obj-112'].patcher;const o358=mt.boxes.find(b=>b.box.id==='obj-358');
console.log('\nobj-358 (dentro de mastertoggles) text =', JSON.stringify(o358.box.text));
