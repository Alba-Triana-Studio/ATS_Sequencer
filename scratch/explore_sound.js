const fs=require('fs');
for(const f of ['P1Sound.maxpat']){
  const data=JSON.parse(fs.readFileSync(f,'utf8'));
  const objs=[];
  function walk(p){for(const b of p.boxes){objs.push(b.box);if(b.box.patcher)walk(b.box.patcher);}}
  walk(data.patcher);
  console.log('=== '+f+' ('+objs.length+' objs) ===');
  // signal generators and receives
  const re=/cycle~|phasor~|saw~|tri~|rect~|noise~|line~|sig~|groove~|play~|wave~|mc\.|^r |^receive|gpitch|amp\b|dac~|out~|send~|^\*~|^\+~|adsr|curve~/i;
  for(const o of objs){const t=o.text||o.maxclass;if(re.test(t)||re.test(o.maxclass))console.log('  '+o.maxclass+' :: '+(o.text||'').replace(/\n/g,' ').slice(0,55));}
}
