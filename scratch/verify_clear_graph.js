const fs=require('fs');
const p=JSON.parse(fs.readFileSync('ATS_Sequencer.maxpat','utf8'));
const byId={}; for(const b of p.patcher.boxes) byId[b.box.id]=b.box;
const lines=p.patcher.lines.map(l=>l.patchline);
const has=(s,so,d,di)=>lines.some(c=>c.source[0]===s&&c.source[1]===so&&c.destination[0]===d&&c.destination[1]===di);
const CH={1:['obj-77','obj-2'],2:['obj-194','obj-199'],3:['obj-314','obj-319'],4:['obj-780','obj-785'],5:['obj-c5-42','obj-c5-7']};
let ok=true;
for(let n=1;n<=5;n++){
  const [F,A]=CH[n], btn='obj-cl-btn-'+n, ib='obj-cl-i-'+n, sel='obj-cl-sel-'+n, mF='obj-cl-mF-'+n, mA='obj-cl-mA-'+n;
  const checks=[
    ['btn existe', !!byId[btn]],
    ['btn en presentation', byId[btn]&&byId[btn].presentation===1],
    ['btn->i', has(btn,0,ib,0)],
    ['tE->i cold', has('obj-vw-tE-'+n,1,ib,1)],
    ['i->sel', has(ib,0,sel,0)],
    ['sel0->clearFreq', has(sel,0,mF,0)&&has(mF,0,F,0)],
    ['sel1->clearAmp', has(sel,1,mA,0)&&has(mA,0,A,0)],
    ['target freq es function', byId[F]&&byId[F].maxclass==='function'&&byId[F].varname==='fnFreq'+n],
    ['target amp es function', byId[A]&&byId[A].maxclass==='function'&&byId[A].varname==='fnAmp'+n],
  ];
  for(const [name,val] of checks){ if(!val){ok=false; console.log('FAIL ch'+n+': '+name);} }
  console.log('ch'+n, 'pres_rect', JSON.stringify(byId[btn].presentation_rect));
}
// colisiones en presentation con el nuevo boton
function overlap(a,b){return a[0]<b[0]+b[2]&&b[0]<a[0]+a[2]&&a[1]<b[1]+b[3]&&b[1]<a[1]+a[3];}
for(let n=1;n<=5;n++){
  const r=byId['obj-cl-btn-'+n].presentation_rect;
  for(const bb of p.patcher.boxes){const o=bb.box;
    if(!o.presentation||!o.presentation_rect||o.id.startsWith('obj-cl-btn-'))continue;
    if(o.maxclass==='panel'||o.maxclass==='comment')continue;
    if(overlap(r,o.presentation_rect)) console.log('  colision ch'+n+' con',o.id,o.maxclass,JSON.stringify(o.presentation_rect));
  }
}
// ids duplicados
const seen=new Set(); for(const b of p.patcher.boxes){ if(seen.has(b.box.id)){ok=false;console.log('ID DUPLICADO',b.box.id);} seen.add(b.box.id);}
console.log(ok?'\nTODO OK':'\nHAY FALLOS');
