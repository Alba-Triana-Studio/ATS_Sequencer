/*
 * patch_phaselock.js  (idempotente)
 *
 * PROBLEMA: Al reproducir varios setups a la vez (Play Full Piece) con celdas
 * de distinto Time Domain, el sonido suena con interferencia/batido.
 *
 * CAUSA: El audio lo generan P1Sound..P4Sound, cada uno con un phasor~ cuya
 * frecuencia viene de la envolvente del secuenciador (r Ngpitch). Los 4
 * subpatches incluyen "r setphase0 -> 0 20 -> phasor~" (reset de fase suave),
 * y los 4 escuchan el MISMO nombre global "setphase0" (estan disenados para
 * resetearse juntos). Pero NADIE emitia "s setphase0" en el patch, asi que los
 * phasors corrian libres y sus fases derivaban -> interferencia al sumarlos.
 *
 * SOLUCION: Emitir "s setphase0" (resetea los 4 phasors a la vez) en el
 * instante de re-disparo gobernado por el Time Domain del PRIMER setup:
 *   - obj-112 (p mastertoggles) outlet 1 = "Playbang". Dispara cuando el reloj
 *     maestro alcanza "Time Sel" (= obj-12 = Time Domain del setup 0) y re-dispara
 *     las 8 functions/envolventes. Atar el reset de fase aqui = alinear todos los
 *     phasors al Time Domain del setup 0, coincidiendo con el reinicio de la
 *     envolvente (sin clicks).
 *   - obj-46 (t b i) outlet 0 = arranque del clocker al pulsar Play. Resetea la
 *     fase tambien al iniciar, para que la primera celda ya quede alineada.
 *
 * No modifica ninguna conexion existente; solo anade un objeto y 2 fan-outs.
 */
const fs = require('fs');
const FILE = 'ATS_Sequencer.maxpat';
const data = JSON.parse(fs.readFileSync(FILE, 'utf8'));
const P = data.patcher;

const MY_IDS = ['obj-phaselock-send', 'obj-phaselock-comment'];

// --- Limpieza idempotente: quitar objetos y lineas previas de este script ---
P.boxes = P.boxes.filter(b => !MY_IDS.includes(b.box.id));
P.lines = P.lines.filter(l => {
    const s = l.patchline.source[0];
    const d = l.patchline.destination[0];
    return !(MY_IDS.includes(s) || MY_IDS.includes(d));
});

// --- Verificacion de objetos requeridos ---
const ids = new Set(P.boxes.map(b => b.box.id));
for (const req of ['obj-112', 'obj-46', 'obj-12']) {
    if (!ids.has(req)) throw new Error('Falta objeto requerido: ' + req);
}

// --- Nuevos objetos ---
const X = 1500, Y = 1180;
P.boxes.push(
    {
        box: {
            maxclass: 'newobj',
            text: 's setphase0',
            id: 'obj-phaselock-send',
            numinlets: 1,
            numoutlets: 0,
            patching_rect: [X, Y, 80, 22]
        }
    },
    {
        box: {
            maxclass: 'comment',
            text: 'Phase-lock: resetea los 4 phasor~ (setphase0) al Time Domain del setup 0',
            id: 'obj-phaselock-comment',
            numinlets: 1,
            numoutlets: 0,
            patching_rect: [X + 90, Y, 360, 22]
        }
    }
);

// --- Nuevas conexiones (fan-out, no alteran nada existente) ---
P.lines.push(
    // Playbang (re-disparo periodico gobernado por Time Domain del setup 0)
    { patchline: { source: ['obj-112', 1], destination: ['obj-phaselock-send', 0] } },
    // Arranque del Play (alinea la primera celda)
    { patchline: { source: ['obj-46', 0], destination: ['obj-phaselock-send', 0] } }
);

fs.writeFileSync(FILE, JSON.stringify(data, null, 4));
console.log('OK: phase-lock anadido. s setphase0 disparado por obj-112 o1 (Playbang) y obj-46 o0 (Play start).');
