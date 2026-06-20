/*
 * patch_phaselock_stage3.js  (idempotente) — ETAPA 3: phase-lock sin clicks
 *
 * PROBLEMA: los 4 phasor~ de P1..P4Sound corren en fase libre (nadie envia setphase0),
 * asi que al sumarlos en "Play All Piece" la fase relativa depende del instante de
 * arranque -> resultado IMPREVISIBLE/aleatorio (amplitud y forma de onda distintas cada vez).
 *
 * FIX: emitir `s setphase0` (los 4 P*Sound reciben ese MISMO nombre global -> resetean
 * su phasor~ juntos, suavizado 20ms) en el momento de ARRANQUE de la reproduccion, que es
 * cuando la amplitud sube desde 0 -> el reset es inaudible (sin clicks) y la suma queda
 * DETERMINISTA (misma forma de onda cada vez).
 *
 * Disparo: las salidas de arranque de cada setup (sel 0 1 outlet1 = toggle ON):
 *   P1=obj-60  P2=obj-179  P3=obj-298  P4=obj-765
 * En Full Piece arrancan los 4 (resets redundantes, todos a fase 0 -> alineados).
 *
 * NOTA: resetea la fase al INICIO (no en cada celda; un reset a mitad de sonido SI
 * chasca, y no hay momento de amplitud-cero por celda porque el fade v3 fp-trans no
 * existe en el patch). Setups con la MISMA frecuencia quedan bloqueados en fase; con
 * frecuencias distintas baten, pero de forma DETERMINISTA (igual en cada reproduccion).
 */
const fs=require('fs');
const FILE='ATS_Sequencer.maxpat';
const data=JSON.parse(fs.readFileSync(FILE,'utf8'));
const P=data.patcher;

const STARTS=['obj-60','obj-179','obj-298','obj-765']; // sel 0 1 de cada setup; outlet 1 = ON
const ids=new Set(P.boxes.map(b=>b.box.id));
for(const id of STARTS) if(!ids.has(id)) throw new Error('Falta '+id);

// limpieza idempotente
const MINE=id=>/^obj-3ph-/.test(id);
P.boxes=P.boxes.filter(b=>!MINE(b.box.id));
P.lines=P.lines.filter(l=>!(MINE(l.patchline.source[0])||MINE(l.patchline.destination[0])));

const hasLine=(s,so,d,di)=>P.lines.some(l=>l.patchline.source[0]===s&&l.patchline.source[1]===so&&l.patchline.destination[0]===d&&l.patchline.destination[1]===di);
const addLine=(s,so,d,di)=>{ if(!hasLine(s,so,d,di)) P.lines.push({patchline:{source:[s,so],destination:[d,di]}}); };

P.boxes.push({box:{maxclass:'newobj',text:'s setphase0',id:'obj-3ph-send',numinlets:1,numoutlets:0,patching_rect:[760,1700,90,22]}});
P.boxes.push({box:{maxclass:'comment',text:'Phase-lock: resetea los 4 phasor~ al arrancar (sin clicks, suma determinista)',id:'obj-3ph-comment',numinlets:1,numoutlets:0,patching_rect:[860,1700,400,20]}});

for(const id of STARTS) addLine(id,1,'obj-3ph-send',0);

fs.writeFileSync(FILE,JSON.stringify(data,null,4));
console.log('OK Etapa 3: s setphase0 disparado al arranque de cada setup (sel o1). Reset de fase sin clicks.');
