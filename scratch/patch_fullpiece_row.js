/*
 * patch_fullpiece_row.js  (idempotente)
 *
 * "Play Full Piece" debe reproducir la fila Full Piece, no la primera fila.
 * La matriz ahora tiene 10 COLUMNAS (el usuario la agrandó), asi que la fila Full Piece
 * pasó de presets 73→81 (layout viejo) a 121→130 (layout nuevo de 10 columnas).
 *
 * Objetos con numeros de celda hardcodeados (todos dentro de p mastertoggles):
 *   obj-358  "t i 73"  -> "t i 121"   (recall del preset INICIAL al pulsar Full Piece)
 *   obj-83   "73"      -> "121"       (init / loop-back start)
 *   obj-81   "81"      -> "130"       (preset final)
 *   obj-433  "sel 81"  -> "sel 130"   (detector de fin de fila -> loop)
 * Mapeo directo segun el usuario: 73<->121 (init), 81<->130 (final).
 *
 * NOTA: estos son los UNICOS numeros de celda hardcodeados del patch (obj-114="127" es
 * MASTER VOL, no celda). Si se vuelve a cambiar el nº de columnas, recalcular estos 4.
 */
const fs=require('fs');
const FILE='ATS_Sequencer.maxpat';
const data=JSON.parse(fs.readFileSync(FILE,'utf8'));
const mt=data.patcher.boxes.find(b=>b.box.id==='obj-112').box.patcher;
const get=id=>mt.boxes.find(b=>b.box.id===id);

// [id, valores viejos aceptados, valor nuevo]
const CHANGES=[
  ['obj-358', ['t i 73','t i 1','t i 121'], 't i 121'],
  ['obj-83',  ['73','121'],                 '121'],
  ['obj-81',  ['81','130'],                 '130'],
  ['obj-433', ['sel 81','sel 130'],         'sel 130'],
];
for(const [id,oldvals,nv] of CHANGES){
  const b=get(id); if(!b) throw new Error('Falta '+id+' en mastertoggles');
  const cur=b.box.text;
  if(!oldvals.includes(cur)) throw new Error(id+' texto inesperado: "'+cur+'"');
  b.box.text=nv;
}
// comentario cosmetico
const c=get('obj-9'); if(c && /73/.test(c.box.text)) c.box.text=c.box.text.replace(/73/,'121');

fs.writeFileSync(FILE,JSON.stringify(data,null,4));
console.log('OK: fila Full Piece = presets 121..130 (10 columnas). obj-358=t i 121, obj-83=121, obj-81=130, obj-433=sel 130.');
