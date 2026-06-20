/*
 * patch_activesetup_stage2b.js  (idempotente) — ETAPA 2b: el secuenciador lee del SETUP ACTIVO
 *
 * PROBLEMA: el secuenciador siempre lee la celda actual (s preset#) de obj-3 (setup 0)
 * y el tempo/loop (obj-99 + Time Sel obj-112 i1) de obj-12 (dominio setup 0). Por eso el
 * salto/selección de celdas queda atado al setup 0 (hay que seleccionar las mismas celdas
 * ahí para que otro setup suene bien).
 *
 * FIX: estado "playactive" (0-3) = setup que se está reproduciendo (0 en Full Piece).
 *   - switch 4 enruta la celda (preset outlet1) del setup activo -> s preset#.
 *   - switch 4 enruta el dominio del setup activo (obj-12/195/315/781) -> obj-99 + Time Sel.
 *   Al pulsar Play en el setup N: se fija playactive=N y se "empuja" su celda y dominio
 *   actuales por el switch. Default y Full Piece = setup 0 (preserva comportamiento actual).
 *
 * switch 4: inlet0 = control (1..4 => abre data inlet 1..4; 0 = cerrado). control = playactive+1.
 */
const fs=require('fs');
const FILE='ATS_Sequencer.maxpat';
const data=JSON.parse(fs.readFileSync(FILE,'utf8'));
const P=data.patcher;

const SET=[ {n:0,preset:'obj-3',  dom:'obj-12', selo1:'obj-60'},
           {n:1,preset:'obj-198',dom:'obj-195',selo1:'obj-179'},
           {n:2,preset:'obj-318',dom:'obj-315',selo1:'obj-298'},
           {n:3,preset:'obj-784',dom:'obj-781',selo1:'obj-765'} ];
const ids=new Set(P.boxes.map(b=>b.box.id));
for(const s of SET) for(const k of ['preset','dom','selo1']) if(!ids.has(s[k])) throw new Error('Falta '+s[k]);
for(const id of ['obj-336','obj-99','obj-112','obj-109']) if(!ids.has(id)) throw new Error('Falta '+id);

const hasLine=(s,so,d,di)=>P.lines.some(l=>l.patchline.source[0]===s&&l.patchline.source[1]===so&&l.patchline.destination[0]===d&&l.patchline.destination[1]===di);
const addLine=(s,so,d,di)=>{ if(!hasLine(s,so,d,di)) P.lines.push({patchline:{source:[s,so],destination:[d,di]}}); };
const rmExact=(s,so,d,di)=>{ P.lines=P.lines.filter(l=>!(l.patchline.source[0]===s&&l.patchline.source[1]===so&&l.patchline.destination[0]===d&&l.patchline.destination[1]===di)); };

// --- limpieza idempotente ---
const MINE=id=>/^obj-2b-/.test(id);
P.boxes=P.boxes.filter(b=>!MINE(b.box.id));
P.lines=P.lines.filter(l=>!(MINE(l.patchline.source[0])||MINE(l.patchline.destination[0])));

const box=(id,maxclass,text,x,y,w,extra={})=>P.boxes.push({box:Object.assign({maxclass,id,patching_rect:[x,y,w||60,22]},maxclass==='message'||maxclass==='newobj'?{text}:{},extra)});

// ===== estado playactive + control de switches =====
box('obj-2b-ractive','newobj','r playactive',2100,1000,90);
box('obj-2b-plus1','newobj','+ 1',2100,1030,40);
box('obj-2b-lb','newobj','loadbang',2300,1000,70);
box('obj-2b-lb0','message','0',2300,1030,30);
box('obj-2b-fpsel','newobj','sel 1',2400,1000,40);      // obj-109 (Full Piece) on -> active 0
box('obj-2b-fp0','message','0',2400,1030,30);
box('obj-2b-rfp','newobj','r fp_block',2500,1000,75);   // gate de modo individual
addLine('obj-2b-lb',0,'obj-2b-lb0',0); addLine('obj-2b-lb0',0,'obj-2b-ractive-dummy',0); // placeholder removed below
// loadbang/fp -> s playactive (creamos los s)
box('obj-2b-spa-lb','newobj','s playactive',2300,1060,90); addLine('obj-2b-lb0',0,'obj-2b-spa-lb',0);
box('obj-2b-spa-fp','newobj','s playactive',2400,1060,90);
addLine('obj-109',0,'obj-2b-fpsel',0); addLine('obj-2b-fpsel',0,'obj-2b-fp0',0); addLine('obj-2b-fp0',0,'obj-2b-spa-fp',0);

// ===== switches =====
box('obj-2b-psswitch','newobj','switch 4',1900,1100,70);   // preset# selector
box('obj-2b-domswitch','newobj','switch 4',1900,1140,70);  // domain selector
addLine('obj-2b-ractive',0,'obj-2b-plus1',0);
addLine('obj-2b-plus1',0,'obj-2b-psswitch',0);
addLine('obj-2b-plus1',0,'obj-2b-domswitch',0);

// preset# salida -> s preset# (sustituye a obj-3 o1 -> obj-336)
rmExact('obj-3',1,'obj-336',0);
addLine('obj-2b-psswitch',0,'obj-336',0);
// domain salida -> obj-99 (loop) + obj-112 i1 (Time Sel) (sustituye obj-12 directo)
rmExact('obj-12',0,'obj-99',0);
rmExact('obj-12',0,'obj-112',1);
addLine('obj-2b-domswitch',0,'obj-99',0);
addLine('obj-2b-domswitch',0,'obj-112',1);

// ===== por setup: stores de celda y dominio, data a switches, fijar/empujar al pulsar Play =====
// Usamos cajas-store PROPIAS para celda y dominio, de modo que "empujar" (bang) solo afecte
// a mis cajas y NUNCA re-envie a las cajas compartidas (evita re-setear el dominio de las
// function en pleno play -> sin glitches).
for(const s of SET){
  const yo=1200+s.n*90;
  box('obj-2b-storeps-'+s.n,'number','',1600,yo,50);     // store de celda (preset#)
  box('obj-2b-storedom-'+s.n,'number','',1680,yo,50);    // store de dominio
  box('obj-2b-tbbb-'+s.n,'newobj','t b b b',1400,yo,60);
  box('obj-2b-gact-'+s.n,'newobj','gate',1400,yo+28,40);
  box('obj-2b-msg-'+s.n,'message',String(s.n),1400,yo+56,30);
  box('obj-2b-spa-'+s.n,'newobj','s playactive',1400,yo+84,90);
  // stores <- fuentes (fan-out; no quita lo existente)
  addLine(s.preset,1,'obj-2b-storeps-'+s.n,0);   // celda <- preset outlet1
  addLine(s.dom,0,'obj-2b-storedom-'+s.n,0);      // dominio <- caja de dominio
  // data a los switches (inlet n+1)
  addLine('obj-2b-storeps-'+s.n,0,'obj-2b-psswitch',s.n+1);
  addLine('obj-2b-storedom-'+s.n,0,'obj-2b-domswitch',s.n+1);
  // al encender el toggle (sel o1): fijar active=N (gated por fp_block) y empujar celda+dominio
  addLine(s.selo1,1,'obj-2b-tbbb-'+s.n,0);
  // o2 (primero): fija active=N solo en modo individual (gate por fp_block)
  addLine('obj-2b-rfp',0,'obj-2b-gact-'+s.n,0);
  addLine('obj-2b-tbbb-'+s.n,2,'obj-2b-gact-'+s.n,1);
  addLine('obj-2b-gact-'+s.n,0,'obj-2b-msg-'+s.n,0);
  addLine('obj-2b-msg-'+s.n,0,'obj-2b-spa-'+s.n,0);
  // o1: empuja celda actual (bang store propio -> ps-switch -> s preset#)
  addLine('obj-2b-tbbb-'+s.n,1,'obj-2b-storeps-'+s.n,0);
  // o0 (ultimo): empuja dominio actual (bang store propio -> dom-switch -> obj-99/Time Sel)
  addLine('obj-2b-tbbb-'+s.n,0,'obj-2b-storedom-'+s.n,0);
}

// limpiar placeholder accidental
P.boxes=P.boxes.filter(b=>b.box.id!=='obj-2b-ractive-dummy');
P.lines=P.lines.filter(l=>l.patchline.destination[0]!=='obj-2b-ractive-dummy');

fs.writeFileSync(FILE,JSON.stringify(data,null,4));
console.log('OK Etapa 2b: selector de setup activo (preset# + dominio) via switch 4.');
