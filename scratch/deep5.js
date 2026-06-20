const fs=require('fs');
// 1) Duplicados de s Namp en patch principal
const data=JSON.parse(fs.readFileSync('ATS_Sequencer.maxpat','utf8'));
function walk(p,arr){for(const b of p.boxes){arr.push(b.box);if(b.box.patcher)walk(b.box.patcher,arr);}}
const all=[];walk(data.patcher,all);
console.log('=== Emisores s {N}amp / s {N}gpitch en ATS principal ===');
for(const b of all){const t=b.text||'';if(/^s [1-4](amp|gpitch|Fpitch)\b/.test(t))console.log('  '+b.id+' :: '+t);}

// 2) Cadena de señal en cada P*Sound: rastrear desde el oscilador hasta la salida
for(const f of ['P2Sound.maxpat','P3Sound.maxpat','P4Sound.maxpat','P1Sound.maxpat']){
  const d=JSON.parse(fs.readFileSync(f,'utf8'));const P=d.patcher;const B={};for(const b of P.boxes)B[b.box.id]=b.box;
  const L=lbl=>{const b=B[lbl];return b?b.id+'['+b.maxclass+':'+((b.text||'').replace(/\n/g,' ').slice(0,16))+']':lbl;};
  console.log('\n===== '+f+' : conexiones de señal (~) =====');
  // print all lines where source or dest is a signal-ish object
  for(const l of P.lines){const s=l.patchline.source,dd=l.patchline.destination;
    const sb=B[s[0]],db=B[dd[0]];
    const sig=x=>x&&/~|amp|phasor|cycle|line/.test(x.text||x.maxclass);
    if(sig(sb)||sig(db)) console.log('  '+L(s[0])+' o'+s[1]+' -> '+L(dd[0])+' i'+dd[1]);
  }
}
