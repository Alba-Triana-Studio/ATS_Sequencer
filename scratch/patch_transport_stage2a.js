/*
 * patch_transport_stage2a.js  (idempotente) — ETAPA 2a: transporte compartido
 *
 * PROBLEMA: solo el setup 0 (obj-59 -> obj-46) arranca/para el reloj maestro.
 * Los setups 1-3 (obj-180/299/766) solo disparan su envolvente UNA vez -> suena
 * sostenido y "nunca se para" ni secuencia la fila.
 *
 * FIX: enrutar los toggles de Play de los setups 1-3 al MISMO punto de entrada del
 * transporte del setup 0 (obj-46 = t b i). Así, al pulsar Play en cualquier setup:
 *   - se arranca el clocker (obj-46 o0 -> obj-42) y, al apagar, se para (vía obj-60
 *     -> obj-115 del 50 -> obj-32 -> stop/reset). Reutiliza la lógica YA probada del
 *     setup 0, en vez de replicarla.
 *   - el avance de celdas (Playbang + recall global) ya es global, así que la fila
 *     secuencia. El audio sigue aislado por la compuerta de amplitud (Etapa 1):
 *     solo suena el setup cuyo toggle está encendido.
 *
 * NOTA: obj-46 o1 -> obj-60 re-dispara las functions del setup 0, pero el setup 0
 * está silenciado por su compuerta (toggle off) -> inaudible. El tempo/loop todavía
 * usa el dominio del setup 0 (obj-12); afinar tempo por setup = Etapa 2b.
 */
const fs = require('fs');
const FILE = 'ATS_Sequencer.maxpat';
const data = JSON.parse(fs.readFileSync(FILE, 'utf8'));
const P = data.patcher;

const ids = new Set(P.boxes.map(b=>b.box.id));
for (const id of ['obj-46','obj-180','obj-299','obj-766']) if(!ids.has(id)) throw new Error('Falta '+id);

const hasLine=(s,so,d,di)=>P.lines.some(l=>l.patchline.source[0]===s&&l.patchline.source[1]===so&&l.patchline.destination[0]===d&&l.patchline.destination[1]===di);
const addLine=(s,so,d,di)=>{ if(!hasLine(s,so,d,di)) P.lines.push({patchline:{source:[s,so],destination:[d,di]}}); };

// Toggles Play de setups 1-3 -> entrada del transporte (obj-46)
addLine('obj-180',0,'obj-46',0); // P2
addLine('obj-299',0,'obj-46',0); // P3
addLine('obj-766',0,'obj-46',0); // P4

fs.writeFileSync(FILE, JSON.stringify(data,null,4));
console.log('OK Etapa 2a: toggles P2/P3/P4 enrutados al transporte del setup 0 (obj-46).');
