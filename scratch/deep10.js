const fs=require('fs');
const data=JSON.parse(fs.readFileSync('ATS_Sequencer.maxpat','utf8'));
const P=data.patcher;const B={};for(const b of P.boxes)B[b.box.id]=b.box;
function lbl(id){const b=B[id];if(!b)return id+'(?)';return id+'['+b.maxclass+':'+((b.text||'').replace(/\n/g,' ').slice(0,30))+']';}
// 1) buscar texto "Full" / "piece" / "fila" / "row" en comentarios y objetos (todos los patchers)
function walk(p,path,arr){for(const b of p.boxes){arr.push({b:b.box,path});if(b.box.patcher)walk(b.box.patcher,path+'/'+(b.box.text||b.box.id),arr);}}
const all=[];walk(P,'',all);
console.log('=== textos con Full/piece/fila/row/matrix ===');
for(const o of all){const t=o.b.text||'';if(/full ?piece|fullpiece|\bfila\b|\brow\b|matrix|matrixctrl|preset init|preset final|#reps/i.test(t))console.log('  ['+o.path+'] '+o.b.id+' ('+o.b.maxclass+') :: '+t.replace(/\n/g,' ').slice(0,45));}
// 2) objetos matrixctrl / grid
console.log('\n=== matrixctrl / grid / cells UI ===');
for(const o of all){if(/matrixctrl|grid|cellblock|jit\.cellblock/i.test(o.b.maxclass))console.log('  ['+o.path+'] '+o.b.id+' ('+o.b.maxclass+')');}
// 3) obj-109 (Full Piece) flujo completo hacia el secuenciador
console.log('\n=== obj-109 (Full Piece) downstream (3 niveles) ===');
function down(id,d,seen){if(d>3||seen.has(id))return;seen.add(id);for(const l of P.lines.filter(l=>l.patchline.source[0]===id)){const dd=l.patchline.destination;console.log('  '.repeat(d)+lbl(id)+' o'+l.patchline.source[1]+' -> '+lbl(dd[0])+' i'+dd[1]);down(dd[0],d+1,seen);}}
down('obj-109',0,new Set());
