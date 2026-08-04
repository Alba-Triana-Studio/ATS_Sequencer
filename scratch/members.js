// Miembros de cada canal = pares del isomorfismo + islas sin conexion detectadas a mano.
const fs=require('fs'),cp=require('child_process');
function iso(A,B){
  const out=cp.execSync('node scratch/iso.js '+A+' '+B+' list',{encoding:'utf8',maxBuffer:1e8});
  const m={};
  out.split('\n').forEach(l=>{const g=/^\s+(obj-\S+)\s+->\s+(obj-\S+)/.exec(l);if(g)m[g[1]]=g[2];});
  return m;
}
const m01=iso(0,1), m12=iso(1,2), m23=iso(2,3);
// cadena: ch1 -> ch2 -> ch3 -> ch4
const rows=[];
Object.keys(m01).forEach(a=>{const b=m01[a],c=m12[b],d=m23[c];rows.push([a,b,c,d]);});
console.log('filas encadenadas:',rows.length,'completas:',rows.filter(r=>r.every(Boolean)).length);
fs.writeFileSync('scratch/chan_rows.json',JSON.stringify(rows,null,0));
const incomplete=rows.filter(r=>!r.every(Boolean));
incomplete.forEach(r=>console.log('  incompleta',JSON.stringify(r)));
