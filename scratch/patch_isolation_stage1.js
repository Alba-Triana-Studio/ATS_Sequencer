/*
 * patch_isolation_stage1.js  (idempotente)  — ETAPA 1: aislamiento por setup
 *
 * Inserta una COMPUERTA DE AMPLITUD por setup, controlada por su propio toggle de Play.
 *   toggle ON  -> la amplitud (curve~) pasa normal -> el setup suena.
 *   toggle OFF -> se fuerza amp=0 -> el setup queda en silencio (sin interferencia,
 *                 porque en P*Sound el audio es cycle~ * amp; amp=0 => salida 0).
 *
 * Arregla: el Play de un setup que activaba/interfería con otros; setups que no se
 * apagaban; y separa "Play" individual de "Play All Piece" (en Full Piece se encienden
 * los 4 toggles -> suenan los 4; individual -> solo el toggle encendido suena).
 *
 * Mapeo [toggle Play, change de amplitud, send s {N}amp]:
 *   P1: obj-59  obj-47  obj-31
 *   P2: obj-180 obj-209 obj-210
 *   P3: obj-299 obj-239 obj-240
 *   P4: obj-766 obj-708 obj-709
 *
 * El corte es AFTER curve~ (no toca las envolventes ni los fades v3), 100% aditivo.
 */
const fs = require('fs');
const FILE = 'ATS_Sequencer.maxpat';
const data = JSON.parse(fs.readFileSync(FILE, 'utf8'));
const P = data.patcher;

const SETUPS = [
    { n:0, toggle:'obj-59',  change:'obj-47',  amp:'obj-31'  },
    { n:1, toggle:'obj-180', change:'obj-209', amp:'obj-210' },
    { n:2, toggle:'obj-299', change:'obj-239', amp:'obj-240' },
    { n:3, toggle:'obj-766', change:'obj-708', amp:'obj-709' },
];

const ids = new Set(P.boxes.map(b=>b.box.id));
for (const s of SETUPS) for (const k of ['toggle','change','amp'])
    if (!ids.has(s[k])) throw new Error('Falta '+s[k]);

const hasLine=(s,so,d,di)=>P.lines.some(l=>l.patchline.source[0]===s&&l.patchline.source[1]===so&&l.patchline.destination[0]===d&&l.patchline.destination[1]===di);
const addLine=(s,so,d,di)=>{ if(!hasLine(s,so,d,di)) P.lines.push({patchline:{source:[s,so],destination:[d,di]}}); };
const rmExact=(s,so,d,di)=>{ P.lines=P.lines.filter(l=>!(l.patchline.source[0]===s&&l.patchline.source[1]===so&&l.patchline.destination[0]===d&&l.patchline.destination[1]===di)); };

// --- Limpieza idempotente: quitar mis objetos y sus lineas ---
const MINE = id => /^obj-engate-|^obj-enzsel-|^obj-enzmsg-/.test(id);
P.boxes = P.boxes.filter(b => !MINE(b.box.id));
P.lines = P.lines.filter(l => !(MINE(l.patchline.source[0]) || MINE(l.patchline.destination[0])));

let X = 760, Y0 = 1300;
for (const s of SETUPS) {
    const g = 'obj-engate-'+s.n, sel = 'obj-enzsel-'+s.n, msg = 'obj-enzmsg-'+s.n;
    const Y = Y0 + s.n*70;
    // Reconstruir estado base: garantizar que la conexion directa change->amp exista,
    // para luego sustituirla (idempotencia si se re-ejecuta).
    addLine(s.change,0,s.amp,0);
    rmExact(s.change,0,s.amp,0);

    P.boxes.push(
        { box:{ maxclass:'newobj', text:'gate',  id:g,   numinlets:2, numoutlets:1, patching_rect:[X,    Y,    40,22] } },
        { box:{ maxclass:'newobj', text:'sel 0', id:sel, numinlets:2, numoutlets:2, patching_rect:[X+120,Y+28, 40,22] } },
        { box:{ maxclass:'message',text:'0',     id:msg, numinlets:2, numoutlets:1, patching_rect:[X+120,Y+56, 30,22] } }
    );
    // amp (curve~ envolvente) -> gate.data ; gate -> s {N}amp
    addLine(s.change,0,g,1);
    addLine(g,0,s.amp,0);
    // toggle controla la compuerta (open/close)
    addLine(s.toggle,0,g,0);
    // toggle OFF -> forzar 0 a s {N}amp (silencio inmediato; line~ en P*Sound suaviza 20ms)
    addLine(s.toggle,0,sel,0);
    addLine(sel,0,msg,0);
    addLine(msg,0,s.amp,0);
}

fs.writeFileSync(FILE, JSON.stringify(data,null,4));
console.log('OK Etapa 1: compuerta de amplitud por setup (P1=obj-59 P2=obj-180 P3=obj-299 P4=obj-766).');
