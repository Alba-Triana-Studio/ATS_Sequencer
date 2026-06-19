/**
 * Fix: Play Full Piece — Autoplay Guard
 *
 * PROBLEMA:
 *   Cuando Play Full Piece (obj-109) se activa, obj-112 carga el preset 1 en
 *   obj-3 y obj-198. Eso dispara los gates del Autoplay (gate-0 y gate-1),
 *   que a su vez mandan 0 (stop) y luego 1 (play) a los toggles de play. Esto
 *   entra en conflicto con la señal de play directa que ya envía obj-112 vía
 *   outlet 0, produciendo tartamudeo y artefactos de audio.
 *
 * SOLUCIÓN:
 *   Insertar "pre-gates" (obj-fp-guard-pre-gate-0 y -1) entre los outlets 1 de
 *   los presets (obj-3 y obj-198) y los gates del autoplay (obj-gate-0 y
 *   obj-gate-1). Los pre-gates se controlan con s/r fp_block.
 *
 *   Cuando Play Full Piece se activa:
 *     1. obj-fp-guard-sel-on (sel 1) está a x=700, más a la DERECHA que
 *        obj-125 (x=440). Max ejecuta derecha → izquierda, así que esta rama
 *        se ejecuta PRIMERO.
 *     2. sel 1 envía 0 → s fp_block → r fp_block → los pre-gates se CIERRAN.
 *     3. LUEGO obj-125 procesa → obj-112 carga presets → obj-3/obj-198 disparan
 *        outlet 1 → los pre-gates están cerrados → el Autoplay NO se dispara.
 *     4. obj-112 outlet 0 envía play directamente a obj-59, obj-299, obj-766
 *        (sin interferencia del Autoplay).
 *     5. Después de 200 ms, s fp_block = 1 → pre-gates se ABREN → el Autoplay
 *        vuelve a funcionar para los saltos de celda siguientes.
 *
 * IMPORTANTE:
 *   - NO se toca el toggle global de Autoplay (evita el efecto de Global Stop).
 *   - loadbang inicializa fp_block = 1 (pre-gates abiertos) al cargar el patch.
 *   - El script es idempotente: limpia objetos previos antes de insertar los nuevos.
 */

const fs = require('fs');
const data = JSON.parse(fs.readFileSync('ATS_Sequencer.maxpat', 'utf8'));

const PREFIX = 'obj-fp-guard';

const guardIds = [
    `${PREFIX}-sel-on`,
    `${PREFIX}-msg-block`,
    `${PREFIX}-delay-re`,
    `${PREFIX}-msg-renable`,
    `${PREFIX}-block-send`,
    `${PREFIX}-lb`,
    `${PREFIX}-lb-msg`,
    `${PREFIX}-r-0`,
    `${PREFIX}-r-1`,
    `${PREFIX}-pre-gate-0`,
    `${PREFIX}-pre-gate-1`,
];

// Limpiar ejecuciones anteriores
data.patcher.boxes = data.patcher.boxes.filter(b => !guardIds.includes(b.box.id));
data.patcher.lines = data.patcher.lines.filter(l => {
    const src = l.patchline.source[0];
    const dst = l.patchline.destination[0];
    return !(guardIds.includes(src) || guardIds.includes(dst));
});

// Eliminar las conexiones directas que serán reemplazadas por los pre-gates
data.patcher.lines = data.patcher.lines.filter(l => {
    const src = l.patchline.source;
    const dst = l.patchline.destination;
    // obj-3 outlet 1 → gate-0 inlet 1  (setup 0)
    if (src[0] === 'obj-3' && src[1] === 1 && dst[0] === 'obj-gate-0' && dst[1] === 1) return false;
    // obj-198 outlet 1 → gate-1 inlet 1  (setup 1)
    if (src[0] === 'obj-198' && src[1] === 1 && dst[0] === 'obj-gate-1' && dst[1] === 1) return false;
    return true;
});

// ─── Posiciones ───────────────────────────────────────────────────────────────
// Bloque de control cerca de obj-109 (x=440, y=1038), pero a x=700 (más a la
// derecha) para garantizar que se ejecute ANTES que obj-125 (x=440).
const bx = 700;
const by = 1028;

// Pre-gates cerca de gate-0 (x≈1200, y≈180) y gate-1 (x≈1450, y≈180)
const pg0x = 1220, pg0y = 148;
const pg1x = 1470, pg1y = 148;

data.patcher.boxes.push(
    // sel 1: solo actúa cuando Full Piece se ENCIENDE (valor 1)
    { "box": { "maxclass": "newobj", "text": "sel 1",
               "id": `${PREFIX}-sel-on`, "patching_rect": [bx, by, 40, 22] } },

    // msg "0": cierra los pre-gates inmediatamente
    { "box": { "maxclass": "message", "text": "0",
               "id": `${PREFIX}-msg-block`, "patching_rect": [bx, by + 28, 25, 22] } },

    // delay 200: re-habilita los pre-gates 200 ms después
    { "box": { "maxclass": "newobj", "text": "delay 200",
               "id": `${PREFIX}-delay-re`, "patching_rect": [bx + 60, by + 28, 65, 22] } },

    // msg "1": abre los pre-gates tras el delay
    { "box": { "maxclass": "message", "text": "1",
               "id": `${PREFIX}-msg-renable`, "patching_rect": [bx + 60, by + 56, 25, 22] } },

    // s fp_block: broadcaster del estado de los pre-gates
    { "box": { "maxclass": "newobj", "text": "s fp_block",
               "id": `${PREFIX}-block-send`, "patching_rect": [bx + 15, by + 84, 70, 22] } },

    // loadbang: inicializa fp_block = 1 al cargar el patch (pre-gates abiertos)
    { "box": { "maxclass": "newobj", "text": "loadbang",
               "id": `${PREFIX}-lb`, "patching_rect": [bx, by + 120, 60, 22] } },

    // msg "1" de init
    { "box": { "maxclass": "message", "text": "1",
               "id": `${PREFIX}-lb-msg`, "patching_rect": [bx, by + 148, 25, 22] } },

    // r fp_block para el pre-gate de setup 0
    { "box": { "maxclass": "newobj", "text": "r fp_block",
               "id": `${PREFIX}-r-0`, "patching_rect": [pg0x, pg0y - 28, 65, 22] } },

    // r fp_block para el pre-gate de setup 1
    { "box": { "maxclass": "newobj", "text": "r fp_block",
               "id": `${PREFIX}-r-1`, "patching_rect": [pg1x, pg1y - 28, 65, 22] } },

    // pre-gate setup 0: se cierra cuando Full Piece carga (fp_block = 0)
    { "box": { "maxclass": "newobj", "text": "gate",
               "id": `${PREFIX}-pre-gate-0`, "patching_rect": [pg0x, pg0y, 40, 22] } },

    // pre-gate setup 1: ídem para setup 1
    { "box": { "maxclass": "newobj", "text": "gate",
               "id": `${PREFIX}-pre-gate-1`, "patching_rect": [pg1x, pg1y, 40, 22] } }
);

data.patcher.lines.push(
    // obj-109 → sel 1  (se ejecuta PRIMERO por estar más a la derecha que obj-125)
    { "patchline": { "source": ["obj-109", 0], "destination": [`${PREFIX}-sel-on`, 0] } },

    // sel 1 bang → msg "0" → s fp_block  (cierre inmediato)
    { "patchline": { "source": [`${PREFIX}-sel-on`, 0], "destination": [`${PREFIX}-msg-block`, 0] } },
    { "patchline": { "source": [`${PREFIX}-msg-block`, 0], "destination": [`${PREFIX}-block-send`, 0] } },

    // sel 1 bang → delay 200 → msg "1" → s fp_block  (reapertura diferida)
    { "patchline": { "source": [`${PREFIX}-sel-on`, 0], "destination": [`${PREFIX}-delay-re`, 0] } },
    { "patchline": { "source": [`${PREFIX}-delay-re`, 0], "destination": [`${PREFIX}-msg-renable`, 0] } },
    { "patchline": { "source": [`${PREFIX}-msg-renable`, 0], "destination": [`${PREFIX}-block-send`, 0] } },

    // loadbang → msg "1" → s fp_block  (inicialización: pre-gates abiertos)
    { "patchline": { "source": [`${PREFIX}-lb`, 0], "destination": [`${PREFIX}-lb-msg`, 0] } },
    { "patchline": { "source": [`${PREFIX}-lb-msg`, 0], "destination": [`${PREFIX}-block-send`, 0] } },

    // r fp_block → control de los pre-gates (inlet 0 = control)
    { "patchline": { "source": [`${PREFIX}-r-0`, 0], "destination": [`${PREFIX}-pre-gate-0`, 0] } },
    { "patchline": { "source": [`${PREFIX}-r-1`, 0], "destination": [`${PREFIX}-pre-gate-1`, 0] } },

    // Setup 0: obj-3 outlet 1 → pre-gate-0 data (inlet 1) → gate-0 inlet 1
    { "patchline": { "source": ["obj-3", 1], "destination": [`${PREFIX}-pre-gate-0`, 1] } },
    { "patchline": { "source": [`${PREFIX}-pre-gate-0`, 0], "destination": ["obj-gate-0", 1] } },

    // Setup 1: obj-198 outlet 1 → pre-gate-1 data (inlet 1) → gate-1 inlet 1
    { "patchline": { "source": ["obj-198", 1], "destination": [`${PREFIX}-pre-gate-1`, 1] } },
    { "patchline": { "source": [`${PREFIX}-pre-gate-1`, 0], "destination": ["obj-gate-1", 1] } }
);

fs.writeFileSync('ATS_Sequencer.maxpat', JSON.stringify(data, null, 4));

console.log("✓ Autoplay guard instalado para Play Full Piece.");
console.log("  Objetos añadidos:", guardIds.join(', '));
console.log("  Conexiones reemplazadas:");
console.log("    obj-3:1 → [pre-gate-0] → gate-0:1");
console.log("    obj-198:1 → [pre-gate-1] → gate-1:1");
console.log("  Flujo de control:");
console.log("    obj-109→sel1 (x=700, fires FIRST) → fp_block=0 (block)");
console.log("    200ms later → fp_block=1 (re-enable)");
console.log("    loadbang → fp_block=1 (init)");
