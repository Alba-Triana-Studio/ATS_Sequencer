/*
 * patch_autoplay_routing_fix.js  (idempotente)
 *
 * Arregla 3 problemas reportados al reproducir varios setups:
 *  (1) Chasquidos -> REVIERTE el phase-lock anterior (setphase0 en cada celda).
 *  (2) Un "Play" enciende otros setups / toggles que se quedan pegados.
 *  (3) Autoplay no funciona en todos los setups.
 *
 * Mapeo REAL toggle de Play -> sonido:
 *   P1=obj-59  P2=obj-180  P3=obj-299  P4=obj-766
 *   presets:   P1=obj-3    P2=obj-198  P3=obj-318  P4=obj-784  (autoplay data = outlet 1)
 *
 * CAUSA de (2) y (3): las cadenas de autoplay estaban cruzadas/rotas. Cada cadena N
 * (gate-N -> tbbb-N -> msg-one-N/msg-zero-N) debe leer el preset N y escribir el
 * toggle N. Estaban asi:
 *   cadena0: data obj-3  -> obj-59  (P1)   OK
 *   cadena1: data obj-198-> obj-299 (P3)   <- deberia P2 (obj-180)
 *   cadena2: data obj-310(comentario) -> obj-383 (+~ audio)  <- deberia P3 (data obj-318 -> obj-299)
 *   cadena3: data obj-776(comentario) -> obj-830 (comentario)<- deberia P4 (data obj-784 -> obj-766)
 * Por eso, con Autoplay global encendido, tocar un setup encendia otro (msg mal ruteado)
 * y algunos no paraban (msg-zero al toggle equivocado).
 */
const fs = require('fs');
const FILE = 'ATS_Sequencer.maxpat';
const data = JSON.parse(fs.readFileSync(FILE, 'utf8'));
const P = data.patcher;

const byId = {};
for (const b of P.boxes) byId[b.box.id] = b.box;
const need = id => { if (!byId[id]) throw new Error('Falta objeto requerido: ' + id); };
['obj-gate-2','obj-gate-3','obj-318','obj-784',
 'obj-msg-one-1','obj-msg-zero-1','obj-msg-one-2','obj-msg-zero-2','obj-msg-one-3','obj-msg-zero-3',
 'obj-180','obj-299','obj-766'].forEach(need);

const hasLine = (s,so,d,di) => P.lines.some(l =>
    l.patchline.source[0]===s && l.patchline.source[1]===so &&
    l.patchline.destination[0]===d && l.patchline.destination[1]===di);
const addLine = (s,so,d,di) => { if(!hasLine(s,so,d,di)) P.lines.push({patchline:{source:[s,so],destination:[d,di]}}); };
const rmLine = (s,d) => { P.lines = P.lines.filter(l => !(l.patchline.source[0]===s && l.patchline.destination[0]===d)); };

// ============ (A) REVERTIR phase-lock ============
const PHASE_IDS = ['obj-phaselock-send','obj-phaselock-comment'];
P.boxes = P.boxes.filter(b => !PHASE_IDS.includes(b.box.id));
P.lines = P.lines.filter(l => !(PHASE_IDS.includes(l.patchline.source[0]) || PHASE_IDS.includes(l.patchline.destination[0])));

// ============ (B) Fuentes de datos de autoplay para gate-2 (P3) y gate-3 (P4) ============
// Quitar conexiones rotas desde comentarios.
rmLine('obj-310','obj-gate-2');
rmLine('obj-776','obj-gate-3');

// Recrear pre-gates de guardia (mismo patron que setups 0/1) idempotentemente.
const NEW_IDS = ['obj-fp-guard-pre-gate-2','obj-fp-guard-r-2','obj-fp-guard-pre-gate-3','obj-fp-guard-r-3'];
P.boxes = P.boxes.filter(b => !NEW_IDS.includes(b.box.id));
P.lines = P.lines.filter(l => !(NEW_IDS.includes(l.patchline.source[0]) || NEW_IDS.includes(l.patchline.destination[0])));
P.boxes.push(
    { box: { maxclass:'newobj', text:'r fp_block', id:'obj-fp-guard-r-2',         patching_rect:[1600,120,65,22] } },
    { box: { maxclass:'newobj', text:'gate',       id:'obj-fp-guard-pre-gate-2',  patching_rect:[1600,148,40,22] } },
    { box: { maxclass:'newobj', text:'r fp_block', id:'obj-fp-guard-r-3',         patching_rect:[1600,360,65,22] } },
    { box: { maxclass:'newobj', text:'gate',       id:'obj-fp-guard-pre-gate-3',  patching_rect:[1600,388,40,22] } }
);
// Setup 3 (P3): preset obj-318 outlet1 -> pre-gate-2 -> gate-2
addLine('obj-fp-guard-r-2',0,'obj-fp-guard-pre-gate-2',0);   // control (Full Piece block)
addLine('obj-318',1,'obj-fp-guard-pre-gate-2',1);            // data (autoplay)
addLine('obj-fp-guard-pre-gate-2',0,'obj-gate-2',1);
// Setup 4 (P4): preset obj-784 outlet1 -> pre-gate-3 -> gate-3
addLine('obj-fp-guard-r-3',0,'obj-fp-guard-pre-gate-3',0);
addLine('obj-784',1,'obj-fp-guard-pre-gate-3',1);
addLine('obj-fp-guard-pre-gate-3',0,'obj-gate-3',1);

// ============ (C) Ruteo de salida: cada cadena -> su toggle ============
// [msg, destino_incorrecto, destino_correcto]
const ROUTING = [
    ['obj-msg-one-1','obj-299','obj-180'],
    ['obj-msg-zero-1','obj-299','obj-180'],
    ['obj-msg-one-2','obj-383','obj-299'],
    ['obj-msg-zero-2','obj-383','obj-299'],
    ['obj-msg-one-3','obj-830','obj-766'],
    ['obj-msg-zero-3','obj-830','obj-766'],
];
for (const [msg, wrong, right] of ROUTING) {
    rmLine(msg, wrong);   // quitar ruteo erroneo
    rmLine(msg, right);   // evitar duplicado si ya se aplico
    addLine(msg, 0, right, 0);
}

fs.writeFileSync(FILE, JSON.stringify(data, null, 4));
console.log('OK: phase-lock revertido; autoplay 1:1 (P1=obj-59 P2=obj-180 P3=obj-299 P4=obj-766); pre-gates Full Piece para P3/P4.');
