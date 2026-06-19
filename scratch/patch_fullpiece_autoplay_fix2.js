/**
 * Fix v2: Play Full Piece — Bloqueo permanente del Autoplay durante Full Piece
 *
 * PROBLEMA (con fix v1):
 *   El delay de 200ms bloqueaba el autoplay solo al arrancar. Después de 200ms
 *   los pre-gates se reabrían y el autoplay volvía a interferir con cada salto
 *   de celda que obj-112 gestiona internamente → "Play Full Piece no recorre
 *   todas las celdas cuando autoplay está activo."
 *
 * SOLUCIÓN:
 *   Usar un inversor lógico (== 0) conectado directamente a s fp_block.
 *   Los pre-gates permanecen CERRADOS durante TODO el tiempo que Full Piece
 *   esté activo, y se abren solo cuando Full Piece se desactiva.
 *
 *   Mapeo lógico (sin tocar el toggle global de Autoplay):
 *     Full Piece ON  (obj-109 = 1) → == 0 → 0 → fp_block=0 → pre-gates CERRADOS
 *     Full Piece OFF (obj-109 = 0) → == 0 → 1 → fp_block=1 → pre-gates ABIERTOS
 *     Carga del patch                → loadbang → 1 → pre-gates ABIERTOS (init)
 *
 *   Orden de ejecución garantizado por Max (right-to-left):
 *     obj-fp-guard-inv (x=700) dispara PRIMERO — cierra pre-gates
 *     obj-125          (x=440) dispara SEGUNDO — obj-112 carga presets → BLOQUEADO
 *     obj-269          (x=297) dispara TERCERO
 *
 * SIN EFECTO COLATERAL DE GLOBAL STOP:
 *   Nunca tocamos el toggle global de Autoplay (obj-autoplay-toggle).
 *   Los pre-gates solo bloquean la SEÑAL DE DATOS a los gates del autoplay
 *   (no envían señales de stop/play a ningún toggle de reproducción).
 *
 * AVANCE DE CELDAS:
 *   obj-112 gestiona el secuenciado interno de la "fila Full Piece"
 *   independientemente del Autoplay → las celdas siguen avanzando solas.
 *   El Autoplay normal se restaura cuando Full Piece se desactiva.
 */

const fs = require('fs');
const data = JSON.parse(fs.readFileSync('ATS_Sequencer.maxpat', 'utf8'));

const PREFIX = 'obj-fp-guard';

const guardIds = [
    `${PREFIX}-inv`,          // nuevo: == 0
    `${PREFIX}-sel-on`,       // v1: sel 1 (reemplazado por inv)
    `${PREFIX}-msg-block`,    // v1: msg "0" (reemplazado por inv)
    `${PREFIX}-delay-re`,     // v1: delay 200 (eliminado)
    `${PREFIX}-msg-renable`,  // v1: msg "1" re-enable (eliminado)
    `${PREFIX}-block-send`,
    `${PREFIX}-lb`,
    `${PREFIX}-lb-msg`,
    `${PREFIX}-r-0`,
    `${PREFIX}-r-1`,
    `${PREFIX}-pre-gate-0`,
    `${PREFIX}-pre-gate-1`,
];

// ─── Limpiar versiones anteriores (idempotente) ────────────────────────────
data.patcher.boxes = data.patcher.boxes.filter(b => !guardIds.includes(b.box.id));
data.patcher.lines = data.patcher.lines.filter(l => {
    const src = l.patchline.source[0];
    const dst = l.patchline.destination[0];
    return !(guardIds.includes(src) || guardIds.includes(dst));
});

// Eliminar también las conexiones directas pre-existentes (por si acaso)
data.patcher.lines = data.patcher.lines.filter(l => {
    const src = l.patchline.source;
    const dst = l.patchline.destination;
    if (src[0] === 'obj-3'   && src[1] === 1 && dst[0] === 'obj-gate-0' && dst[1] === 1) return false;
    if (src[0] === 'obj-198' && src[1] === 1 && dst[0] === 'obj-gate-1' && dst[1] === 1) return false;
    return true;
});

// ─── Posiciones ────────────────────────────────────────────────────────────
// Bloque de control: x=700 (> x=440 de obj-125) → garantiza ejecución PRIMERO
const bx = 700, by = 1028;
// Pre-gates: cerca de gate-0 (≈x=1200, y=180) y gate-1 (≈x=1450, y=180)
const pg0x = 1220, pg0y = 148;
const pg1x = 1470, pg1y = 148;

// ─── Nuevos objetos ────────────────────────────────────────────────────────
data.patcher.boxes.push(
    // Inversor lógico: Full Piece ON(1) → 0 (cerrar gates); OFF(0) → 1 (abrir)
    { "box": { "maxclass": "newobj", "text": "== 0",
               "id": `${PREFIX}-inv`, "patching_rect": [bx, by, 35, 22] } },

    // Broadcaster del estado de bloqueo
    { "box": { "maxclass": "newobj", "text": "s fp_block",
               "id": `${PREFIX}-block-send`, "patching_rect": [bx, by + 28, 70, 22] } },

    // Inicialización: abre los pre-gates al cargar el patch
    { "box": { "maxclass": "newobj", "text": "loadbang",
               "id": `${PREFIX}-lb`, "patching_rect": [bx + 80, by + 28, 60, 22] } },

    // msg "1" de init
    { "box": { "maxclass": "message", "text": "1",
               "id": `${PREFIX}-lb-msg`, "patching_rect": [bx + 80, by + 56, 25, 22] } },

    // Receptor fp_block para el pre-gate del setup 0
    { "box": { "maxclass": "newobj", "text": "r fp_block",
               "id": `${PREFIX}-r-0`, "patching_rect": [pg0x, pg0y - 28, 65, 22] } },

    // Receptor fp_block para el pre-gate del setup 1
    { "box": { "maxclass": "newobj", "text": "r fp_block",
               "id": `${PREFIX}-r-1`, "patching_rect": [pg1x, pg1y - 28, 65, 22] } },

    // Pre-gate setup 0: bloquea el Autoplay de setup 0 durante Full Piece
    { "box": { "maxclass": "newobj", "text": "gate",
               "id": `${PREFIX}-pre-gate-0`, "patching_rect": [pg0x, pg0y, 40, 22] } },

    // Pre-gate setup 1: bloquea el Autoplay de setup 1 durante Full Piece
    { "box": { "maxclass": "newobj", "text": "gate",
               "id": `${PREFIX}-pre-gate-1`, "patching_rect": [pg1x, pg1y, 40, 22] } }
);

// ─── Nuevas conexiones ─────────────────────────────────────────────────────
data.patcher.lines.push(
    // obj-109 → == 0 → s fp_block
    // (== 0 a x=700 garantiza que se ejecute ANTES que obj-125 a x=440)
    { "patchline": { "source": ["obj-109", 0], "destination": [`${PREFIX}-inv`, 0] } },
    { "patchline": { "source": [`${PREFIX}-inv`, 0], "destination": [`${PREFIX}-block-send`, 0] } },

    // loadbang → msg "1" → s fp_block  (init: pre-gates ABIERTOS al cargar)
    { "patchline": { "source": [`${PREFIX}-lb`, 0], "destination": [`${PREFIX}-lb-msg`, 0] } },
    { "patchline": { "source": [`${PREFIX}-lb-msg`, 0], "destination": [`${PREFIX}-block-send`, 0] } },

    // r fp_block → control de pre-gates (inlet 0 = control)
    { "patchline": { "source": [`${PREFIX}-r-0`, 0], "destination": [`${PREFIX}-pre-gate-0`, 0] } },
    { "patchline": { "source": [`${PREFIX}-r-1`, 0], "destination": [`${PREFIX}-pre-gate-1`, 0] } },

    // Setup 0: obj-3 outlet 1 → pre-gate-0 (data, inlet 1) → gate-0 inlet 1
    { "patchline": { "source": ["obj-3", 1], "destination": [`${PREFIX}-pre-gate-0`, 1] } },
    { "patchline": { "source": [`${PREFIX}-pre-gate-0`, 0], "destination": ["obj-gate-0", 1] } },

    // Setup 1: obj-198 outlet 1 → pre-gate-1 (data, inlet 1) → gate-1 inlet 1
    { "patchline": { "source": ["obj-198", 1], "destination": [`${PREFIX}-pre-gate-1`, 1] } },
    { "patchline": { "source": [`${PREFIX}-pre-gate-1`, 0], "destination": ["obj-gate-1", 1] } }
);

fs.writeFileSync('ATS_Sequencer.maxpat', JSON.stringify(data, null, 4));

console.log("✓ Fix v2 aplicado: bloqueo PERMANENTE del Autoplay durante Full Piece.");
console.log();
console.log("  Lógica de control:");
console.log("    Full Piece ON  (obj-109=1) → == 0 → fp_block=0 → pre-gates CERRADOS");
console.log("    Full Piece OFF (obj-109=0) → == 0 → fp_block=1 → pre-gates ABIERTOS");
console.log("    loadbang                   →         fp_block=1 → init (abiertos)");
console.log();
console.log("  Sin efectos colaterales:");
console.log("    ✓ Toggle global de Autoplay NO se toca");
console.log("    ✓ Sin Global Stop");
console.log("    ✓ Sin señales de stop/play accidentales");
console.log("    ✓ obj-112 gestiona el avance de celdas independientemente");
