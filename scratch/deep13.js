const fs=require('fs');
const data=JSON.parse(fs.readFileSync('ATS_Sequencer.maxpat','utf8'));
// recorrer todos los patchers buscando message/sel/objetos con numeros "grandes" (posibles indices de celda 1..200)
function walk(p,path,arr){for(const b of p.boxes){arr.push({b:b.box,path});if(b.box.patcher)walk(b.box.patcher,path+'/'+(b.box.text||b.box.id),arr);}}
const all=[];walk(data.patcher,'',all);
console.log('=== posibles numeros de celda hardcodeados (message/sel/t con enteros 20..200) ===');
for(const o of all){
  const t=(o.b.text||'').trim();
  if(o.b.maxclass==='message' && /^\d+$/.test(t) && +t>=20 && +t<=200) console.log('  msg ['+o.path+'] '+o.b.id+' = "'+t+'"');
  else if(o.b.maxclass==='newobj' && /^(sel|t [if] |t [if][if ]|route|>=|<=|==|>|<) /.test(t) && /\b(7[0-9]|8[0-9]|9[0-9]|1[0-9][0-9])\b/.test(t)) console.log('  obj ['+o.path+'] '+o.b.id+' = "'+t+'"');
  else if(o.b.maxclass==='newobj' && /^t [if].*\b(7[0-9]|8[0-9])\b/.test(t)) console.log('  trig ['+o.path+'] '+o.b.id+' = "'+t+'"');
}
console.log('\n=== estado actual de los 4 objetos Full Piece dentro de mastertoggles ===');
const mt=data.patcher.boxes.find(b=>b.box.id==='obj-112').box.patcher;
for(const id of ['obj-358','obj-83','obj-81','obj-433','obj-9']){const b=mt.boxes.find(x=>x.box.id===id);if(b)console.log('  '+id+' ('+b.box.maxclass+') = "'+(b.box.text||'')+'"');}
