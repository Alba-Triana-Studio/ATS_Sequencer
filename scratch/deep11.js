const fs=require('fs');
const data=JSON.parse(fs.readFileSync('ATS_Sequencer.maxpat','utf8'));
const P=data.patcher;const B={};for(const b of P.boxes)B[b.box.id]=b.box;
// full comment obj-110
console.log('obj-110:', (B['obj-110'].text||''));
console.log('obj-251:', (B['obj-251']||{}).text);
// mastertoggles 73/81/counter logic detallado
const mt=B['obj-112'].patcher;const MB={};for(const b of mt.boxes)MB[b.box.id]=b.box;
function mlbl(id){const b=MB[id];if(!b)return id;return id+'['+b.maxclass+':'+((b.text||'').replace(/\n/g,' ').slice(0,26))+']';}
console.log('\n=== mastertoggles: lógica de preset init/final/reps + inlet3 (Full Piece) ===');
// inlet ids: inlet3 = obj-5 (Full piece). Let's trace from obj-5 and the 73/81 chain
for(const id of ['obj-5','obj-358','obj-83','obj-81','obj-85','obj-67','obj-72','obj-77','obj-79','obj-433','obj-434','obj-437','obj-301','obj-299','obj-300','obj-290','obj-23','obj-88','obj-10']){
  const b=MB[id];if(!b)continue;
  const ins=mt.lines.filter(l=>l.patchline.destination[0]===id).map(l=>mlbl(l.patchline.source[0])+'.o'+l.patchline.source[1]+'>i'+l.patchline.destination[1]);
  const outs=mt.lines.filter(l=>l.patchline.source[0]===id).map(l=>'o'+l.patchline.source[1]+'>'+mlbl(l.patchline.destination[0])+'.i'+l.patchline.destination[1]);
  console.log(mlbl(id));
  if(ins.length)console.log('    IN  '+ins.join('  '));
  if(outs.length)console.log('    OUT '+outs.join('  '));
}
// the number boxes 88 (#reps?) and 10, 72, 299 default values
console.log('\n88 val=',MB['obj-88'].value,' 10 val=',MB['obj-10']?MB['obj-10'].value:'?',' 72 val=',MB['obj-72']?MB['obj-72'].value:'?');
