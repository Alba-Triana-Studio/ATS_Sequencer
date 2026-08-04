// Correspondencia estructural entre dos canales del secuenciador.
// Semilla: las familias de ids con sufijo de canal. Propagacion: vecinos por
// (outlet, inlet) con la misma firma. Lo que queda mapeado a si mismo es global.
const fs=require('fs');
const p=JSON.parse(fs.readFileSync('ATS_Sequencer.maxpat','utf8'));
const boxes=p.patcher.boxes.map(b=>b.box);
const byId={};boxes.forEach(b=>byId[b.id]=b);
const lines=p.patcher.lines.map(l=>l.patchline);

const A=+process.argv[2], B=+process.argv[3];   // indices 0-based de canal

function famIndex(id){
  const m=/^(obj-.*?)-([0-9])$/.exec(id);
  if(!m||/^obj-[0-9]+$/.test(id))return null;
  const fam=m[1],idx=+m[2];
  if(/^obj-(col-m1|newlabel-0|append-mat)/.test(fam))return null;
  if(/^obj-(ms|vw)-/.test(fam))return {fam,c:idx-1};   // 1-based
  return {fam,c:idx};                                   // 0-based
}
// firma: clase + texto normalizado (digitos de canal fuera)
function sig(b){
  let t=(b.text||'');
  t=t.replace(/([1-4])(gpitch|amp|lvl|Fpitch|mute|zero)/g,'#$2')
     .replace(/(mute|zero|exact)([1-4])/g,'$1#')
     .replace(/(fnFreq|fnAmp)([1-4])/g,'$1#')
     .replace(/number\[[0-9]+\]/g,'number[#]')
     .replace(/row[FA][a-z]?[1-4]/g,'row#');
  return b.maxclass+'|'+t;
}
const map={}, rmap={};
boxes.forEach(b=>{const f=famIndex(b.id);if(!f)return;
  if(f.c===A){const other=b.id.replace(/-([0-9])$/, (m,d)=>'-'+(+d+(B-A)));
    if(byId[other]){map[b.id]=other;rmap[other]=b.id;}}});
const seedCount=Object.keys(map).length;

// conexiones indexadas
const out={},inn={};
lines.forEach(l=>{(out[l.source[0]]=out[l.source[0]]||[]).push(l);(inn[l.destination[0]]=inn[l.destination[0]]||[]).push(l);});

let changed=true,rounds=0;
while(changed&&rounds<60){changed=false;rounds++;
  for(const a of Object.keys(map)){
    const a2=map[a];
    const step=(dir)=>{
      const la=(dir==='o'?out[a]:inn[a])||[], lb=(dir==='o'?out[a2]:inn[a2])||[];
      la.forEach(l=>{
        const n=dir==='o'?l.destination[0]:l.source[0];
        if(map[n]||!byId[n])return;
        const key=l.source[1]+'>'+l.destination[1];
        const cands=lb.filter(m=>{
          const n2=dir==='o'?m.destination[0]:m.source[0];
          return byId[n2]&&(m.source[1]+'>'+m.destination[1])===key&&sig(byId[n2])===sig(byId[n])&&!rmap[n2];
        }).map(m=>dir==='o'?m.destination[0]:m.source[0]);
        const uniq=[...new Set(cands)];
        if(uniq.length===1&&uniq[0]!==n){map[n]=uniq[0];rmap[uniq[0]]=n;changed=true;}
      });
    };
    step('o');step('i');
  }
}
const pairs=Object.keys(map).filter(k=>map[k]!==k);
console.log('seed',seedCount,'rounds',rounds,'pairs',pairs.length);
if(process.argv[4]==='list'){
  pairs.sort().forEach(k=>console.log(' ',k.padEnd(22),'->',map[k].padEnd(22),byId[k].maxclass.padEnd(11),(byId[k].text||'').replace(/\n/g,'|').slice(0,45)));
}
// objetos del canal A que NO se mapearon (posibles huecos)
if(process.argv[4]==='gaps'){
  fs.writeFileSync('scratch/map_'+A+'_'+B+'.json',JSON.stringify(map,null,1));
  console.log('escrito scratch/map_'+A+'_'+B+'.json');
}
module.exports={map};

if(process.argv[4]==='gapsn'){
  const mapped=new Set(Object.keys(map));
  const rep={};
  lines.forEach(l=>{
    [[l.source[0],l.destination[0]],[l.destination[0],l.source[0]]].forEach(([a,n])=>{
      if(mapped.has(a)&&!mapped.has(n)&&byId[n]) (rep[n]=rep[n]||new Set()).add(a);
    });
  });
  Object.keys(rep).forEach(n=>{
    const b=byId[n];
    console.log(' ',n.padEnd(20),b.maxclass.padEnd(11),(b.text||'').replace(/\n/g,'|').slice(0,40).padEnd(42),'via',[...rep[n]].slice(0,4).join(','));
  });
}
