/*
 * patch_play_sequence.js  (idempotente)
 *
 * Crea el botón "Play all sequence": funciona igual que "Play Full Piece"
 * (obj-109) pero el motor secuenciador (p mastertoggles) recorre la FILA
 * determinada por la celda seleccionada en la matriz de presets 1 (obj-3),
 * en vez de la fila Full Piece fija (presets 421-440).
 *
 * Matriz 1 = 20 columnas x 30 filas. Para el preset N seleccionado:
 *   filaStart = ((N-1) div 20) * 20 + 1     (si N<1 -> 1, primera fila)
 *   filaEnd   = filaStart + 19
 *
 * Estrategia: el motor compartido se parametriza con dos rangos globales
 * (send/receive "seqrange_start" / "seqrange_end"). Full Piece fija 421/440;
 * Play all sequence fija la fila de la selección.
 *
 * Robustez (#1): el rango se fija de forma SINCRONICA y luego, con un `pipe`,
 * el disparo del motor (inlet 3) ocurre unos ms despues -> imposible que el
 * motor lea un rango residual. Asi Full Piece SIEMPRE vuelve a 421/440.
 *
 * Stop al final (#2): al llegar a la ultima columna de la fila, la
 * reproduccion se detiene en silencio (apaga los toggles -> fade-out + para
 * el reloj) en vez de hacer loop. Aplica a Full Piece y a Play all sequence.
 */
const fs = require('fs');
const FILE = 'ATS_Sequencer.maxpat';
const data = JSON.parse(fs.readFileSync(FILE, 'utf8'));
const top = data.patcher;
const mt = top.boxes.find(b => b.box.text === 'p mastertoggles').box.patcher;

// ---------- helpers ----------
function box(o) { return { box: o }; }
function line(s, si, dst, di) { return { patchline: { source: [s, si], destination: [dst, di] } }; }
function cleanup(patcher, ids) {
  const set = new Set(ids);
  patcher.boxes = patcher.boxes.filter(b => !set.has(b.box.id));
  patcher.lines = patcher.lines.filter(l =>
    !set.has(l.patchline.source[0]) && !set.has(l.patchline.destination[0]));
}
function dropLine(patcher, s, si, dst, di) {
  patcher.lines = patcher.lines.filter(l => {
    const p = l.patchline;
    return !(p.source[0] === s && p.source[1] === si &&
             p.destination[0] === dst && p.destination[1] === di);
  });
}

// ---------- ids creados por este script ----------
const TOP_IDS = [
  'obj-seq-toggle', 'obj-seq-comment', 'obj-seq-route', 'obj-seq-selstore',
  'obj-seq-clip', 'obj-seq-sub', 'obj-seq-div', 'obj-seq-mul', 'obj-seq-add',
  'obj-seq-sstart', 'obj-seq-add2', 'obj-seq-send', 'obj-seq-scap',
  'obj-seq-lb', 'obj-seq-lb0', 'obj-seq-rcap', 'obj-seq-capinv', 'obj-seq-capgate',
  'obj-fp-pre', 'obj-fp-mstart', 'obj-fp-mend',
  'obj-seq-phsel', 'obj-seq-phdel', 'obj-seq-phsend',  // (obsoletos: reset de fase ahora en P*Sound)
  'obj-fp-pipe', 'obj-seq-pipe', 'obj-stop-rrecv', 'obj-stop-zero'
];
const SUB_IDS = [
  'obj-seq-rstart', 'obj-seq-rend', 'obj-seq-startmsg',
  'obj-stop-armdel', 'obj-stop-arm', 'obj-stop-gate', 'obj-stop-disarm', 'obj-stop-ssend'
];

cleanup(top, TOP_IDS);
cleanup(mt, SUB_IDS);

// ================================================================
//  DENTRO de p mastertoggles : parametrizar start / end del motor
// ================================================================
// obj-358 "t i 421": recall inicial del preset start. Lo volvemos dinamico.
const b358 = mt.boxes.find(b => b.box.id === 'obj-358').box;
b358.text = 't i b';
b358.numinlets = 1; b358.numoutlets = 2;
b358.outlettype = ['int', 'bang'];
// quitar el viejo recall fijo  obj-358:1 -> obj-3 (preset)
dropLine(mt, 'obj-358', 1, 'obj-3', 0);

mt.boxes.push(
  box({ maxclass: 'newobj', text: 'r seqrange_start', id: 'obj-seq-rstart',
        numinlets: 0, numoutlets: 1, outlettype: [''], patching_rect: [430, 250, 110, 22] }),
  box({ maxclass: 'newobj', text: 'r seqrange_end', id: 'obj-seq-rend',
        numinlets: 0, numoutlets: 1, outlettype: [''], patching_rect: [560, 250, 110, 22] }),
  box({ maxclass: 'message', text: '421', id: 'obj-seq-startmsg',
        numinlets: 2, numoutlets: 1, outlettype: [''], patching_rect: [32, 215, 40, 22] }),

  // --- Stop al final (no loop): al detectar fin (obj-433) se ARMA; en el
  //     siguiente borde de columna (obj-28) -> detener.  El borde que recala
  //     la ultima columna ocurre ANTES de armar, asi la ultima columna suena
  //     completa y se detiene en el borde siguiente.
  // armado retrasado 1ms: evita depender del orden de fan-out de obj-28 en el
  // borde que recala la ultima columna (asi NO se detiene en ese mismo borde).
  box({ maxclass: 'newobj', text: 'del 1', id: 'obj-stop-armdel',
        numinlets: 2, numoutlets: 1, outlettype: ['bang'], patching_rect: [620, 330, 40, 22] }),
  box({ maxclass: 'message', text: '1', id: 'obj-stop-arm',
        numinlets: 2, numoutlets: 1, outlettype: [''], patching_rect: [620, 360, 30, 22] }),
  box({ maxclass: 'newobj', text: 'gate', id: 'obj-stop-gate',
        numinlets: 2, numoutlets: 1, outlettype: [''], patching_rect: [560, 400, 40, 22] }),
  box({ maxclass: 'message', text: '0', id: 'obj-stop-disarm',
        numinlets: 2, numoutlets: 1, outlettype: [''], patching_rect: [500, 360, 30, 22] }),
  box({ maxclass: 'newobj', text: 's seqend_reached', id: 'obj-stop-ssend',
        numinlets: 1, numoutlets: 0, patching_rect: [560, 440, 120, 22] })
);

mt.lines.push(
  // recall inicial dinamico: obj-358 bang -> startmsg -> preset (obj-3)
  line('obj-358', 1, 'obj-seq-startmsg', 0),
  line('obj-seq-startmsg', 0, 'obj-3', 0),
  // start dinamico hacia los consumidores existentes (inlet derecho = set contenido)
  line('obj-seq-rstart', 0, 'obj-seq-startmsg', 1),
  line('obj-seq-rstart', 0, 'obj-83', 1),   // msg "421" (loop start)
  // end dinamico
  line('obj-seq-rend', 0, 'obj-81', 1),      // msg "440"
  line('obj-seq-rend', 0, 'obj-433', 1),     // sel 440 (detector de fin)

  // stop-at-end
  line('obj-433', 0, 'obj-stop-armdel', 0),  // fin detectado -> armar (con del 1)
  line('obj-stop-armdel', 0, 'obj-stop-arm', 0),
  line('obj-stop-arm', 0, 'obj-stop-gate', 0),
  line('obj-28', 0, 'obj-stop-gate', 1),     // borde de columna -> dato del gate
  line('obj-stop-gate', 0, 'obj-stop-ssend', 0),
  line('obj-stop-gate', 0, 'obj-stop-disarm', 0),  // auto-desarmar al disparar
  line('obj-stop-disarm', 0, 'obj-stop-gate', 0),
  line('obj-5', 0, 'obj-stop-disarm', 0)     // cada arranque/parada desarma (estado limpio)
);

// ================================================================
//  FUERA : Full Piece debe fijar 421/440 antes de disparar inlet 3
// ================================================================
dropLine(top, 'obj-109', 0, 'obj-125', 0);   // ya no va directo

top.boxes.push(
  box({ maxclass: 'newobj', text: 't i b', id: 'obj-fp-pre',
        numinlets: 1, numoutlets: 2, outlettype: ['int', 'bang'], patching_rect: [1300, 1250, 40, 22] }),
  box({ maxclass: 'message', text: '421', id: 'obj-fp-mstart',
        numinlets: 2, numoutlets: 1, outlettype: [''], patching_rect: [1300, 1290, 40, 22] }),
  box({ maxclass: 'message', text: '440', id: 'obj-fp-mend',
        numinlets: 2, numoutlets: 1, outlettype: [''], patching_rect: [1350, 1290, 40, 22] }),
  // pipe: garantiza que el rango (fijado en el bang) ya esta listo antes de
  // que el int llegue al trigger del motor.
  box({ maxclass: 'newobj', text: 'pipe 3', id: 'obj-fp-pipe',
        numinlets: 2, numoutlets: 1, outlettype: [''], patching_rect: [1300, 1330, 40, 22] })
);

top.lines.push(
  line('obj-109', 0, 'obj-fp-pre', 0),
  line('obj-fp-pre', 1, 'obj-fp-mstart', 0),   // bang (primero) -> set rango
  line('obj-fp-pre', 1, 'obj-fp-mend', 0),
  line('obj-fp-mstart', 0, 'obj-seq-sstart', 0),
  line('obj-fp-mend', 0, 'obj-seq-send', 0),
  line('obj-fp-pre', 0, 'obj-fp-pipe', 0),     // luego, con retardo, dispara
  line('obj-fp-pipe', 0, 'obj-125', 0)
);

// ================================================================
//  FUERA : nuevo boton Play all sequence
// ================================================================
top.boxes.push(
  // UI (presentacion, debajo de "Play Full Piece")
  box({ maxclass: 'toggle', id: 'obj-seq-toggle', numinlets: 1, numoutlets: 1,
        patching_rect: [1500, 1250, 20, 20],
        presentation: 1, presentation_rect: [295, 95, 23.443939, 23.443939] }),
  box({ maxclass: 'comment', text: 'Play all sequence', id: 'obj-seq-comment',
        numinlets: 1, numoutlets: 0, fontsize: 14, patching_rect: [1530, 1250, 130, 22],
        presentation: 1, presentation_rect: [150, 95, 140, 22] }),

  // activacion: bang (1ro) calcula rango, int (2do) dispara como Full Piece
  box({ maxclass: 'newobj', text: 't i b', id: 'obj-seq-route',
        numinlets: 1, numoutlets: 2, outlettype: ['int', 'bang'], patching_rect: [1500, 1290, 40, 22] }),

  // memoria de la celda seleccionada en matriz 1 (almacen frio, leido al pulsar)
  box({ maxclass: 'newobj', text: 'int', id: 'obj-seq-selstore',
        numinlets: 2, numoutlets: 1, outlettype: [''], patching_rect: [1700, 1250, 40, 22] }),

  // calculo de la fila:  ((N-1) div 20)*20 + 1   (clip 1..600 -> default fila 1)
  box({ maxclass: 'newobj', text: 'clip 1 600', id: 'obj-seq-clip',
        numinlets: 3, numoutlets: 1, outlettype: [''], patching_rect: [1700, 1290, 70, 22] }),
  box({ maxclass: 'newobj', text: '- 1', id: 'obj-seq-sub',
        numinlets: 2, numoutlets: 1, outlettype: [''], patching_rect: [1700, 1320, 40, 22] }),
  box({ maxclass: 'newobj', text: '/ 20', id: 'obj-seq-div',
        numinlets: 2, numoutlets: 1, outlettype: [''], patching_rect: [1700, 1350, 40, 22] }),
  box({ maxclass: 'newobj', text: '* 20', id: 'obj-seq-mul',
        numinlets: 2, numoutlets: 1, outlettype: [''], patching_rect: [1700, 1380, 40, 22] }),
  box({ maxclass: 'newobj', text: '+ 1', id: 'obj-seq-add',
        numinlets: 2, numoutlets: 1, outlettype: [''], patching_rect: [1700, 1410, 40, 22] }),
  box({ maxclass: 'newobj', text: 's seqrange_start', id: 'obj-seq-sstart',
        numinlets: 1, numoutlets: 0, patching_rect: [1700, 1440, 120, 22] }),
  box({ maxclass: 'newobj', text: '+ 19', id: 'obj-seq-add2',
        numinlets: 2, numoutlets: 1, outlettype: [''], patching_rect: [1830, 1410, 45, 22] }),
  box({ maxclass: 'newobj', text: 's seqrange_end', id: 'obj-seq-send',
        numinlets: 1, numoutlets: 0, patching_rect: [1830, 1440, 120, 22] }),

  // pipe: rango listo antes del trigger (igual que Full Piece)
  box({ maxclass: 'newobj', text: 'pipe 3', id: 'obj-seq-pipe',
        numinlets: 2, numoutlets: 1, outlettype: [''], patching_rect: [1500, 1330, 40, 22] }),

  // bloqueo de captura: no actualizar la seleccion mientras se reproduce
  box({ maxclass: 'newobj', text: 's captureblock', id: 'obj-seq-scap',
        numinlets: 1, numoutlets: 0, patching_rect: [1420, 1290, 110, 22] }),
  box({ maxclass: 'newobj', text: 'loadbang', id: 'obj-seq-lb',
        numinlets: 1, numoutlets: 1, outlettype: ['bang'], patching_rect: [1980, 1250, 60, 22] }),
  box({ maxclass: 'message', text: '0', id: 'obj-seq-lb0',
        numinlets: 2, numoutlets: 1, outlettype: [''], patching_rect: [1980, 1290, 30, 22] }),
  box({ maxclass: 'newobj', text: 'r captureblock', id: 'obj-seq-rcap',
        numinlets: 0, numoutlets: 1, outlettype: [''], patching_rect: [1960, 1330, 110, 22] }),
  box({ maxclass: 'newobj', text: '== 0', id: 'obj-seq-capinv',
        numinlets: 2, numoutlets: 1, outlettype: [''], patching_rect: [1960, 1360, 45, 22] }),
  box({ maxclass: 'newobj', text: 'gate', id: 'obj-seq-capgate',
        numinlets: 2, numoutlets: 1, outlettype: [''], patching_rect: [1960, 1390, 40, 22] }),

  // NOTA: el reset de fase de los osciladores se hace ahora correctamente en
  // los P*Sound (r setphase0 -> float 0 -> phasor~), disparado por los emisores
  // por-setup en el arranque (amplitud=0, inaudible). Ya no se resetea aqui.

  // --- stop al final: receptor que apaga ambos toggles (silencio) ---
  box({ maxclass: 'newobj', text: 'r seqend_reached', id: 'obj-stop-rrecv',
        numinlets: 0, numoutlets: 1, outlettype: ['bang'], patching_rect: [1300, 1430, 120, 22] }),
  box({ maxclass: 'message', text: '0', id: 'obj-stop-zero',
        numinlets: 2, numoutlets: 1, outlettype: [''], patching_rect: [1300, 1460, 30, 22] })
);

top.lines.push(
  // toggle -> route + bloqueo de captura
  line('obj-seq-toggle', 0, 'obj-seq-route', 0),
  line('obj-seq-toggle', 0, 'obj-seq-scap', 0),
  line('obj-109', 0, 'obj-seq-scap', 0),   // Full Piece tambien bloquea captura

  // route bang (1ro): lee seleccion y fija rango de la fila
  line('obj-seq-route', 1, 'obj-seq-selstore', 0),
  line('obj-seq-selstore', 0, 'obj-seq-clip', 0),
  line('obj-seq-clip', 0, 'obj-seq-sub', 0),
  line('obj-seq-sub', 0, 'obj-seq-div', 0),
  line('obj-seq-div', 0, 'obj-seq-mul', 0),
  line('obj-seq-mul', 0, 'obj-seq-add', 0),
  line('obj-seq-add', 0, 'obj-seq-sstart', 0),
  line('obj-seq-add', 0, 'obj-seq-add2', 0),
  line('obj-seq-add2', 0, 'obj-seq-send', 0),

  // route int (2do): playactive/rectrigger/guardia inmediatos; el trigger del
  // motor pasa por el pipe (despues del rango). Igual que Full Piece.
  line('obj-seq-route', 0, 'obj-seq-pipe', 0),
  line('obj-seq-pipe', 0, 'obj-125', 0),             // -> inlet 3 (trigger motor)
  line('obj-seq-route', 0, 'obj-269', 0),            // -> s rectrigger (reset reloj)
  line('obj-seq-route', 0, 'obj-2b-fpsel', 0),       // -> playactive = setup 0
  line('obj-seq-route', 0, 'obj-fp-guard-inv', 0),   // -> guardia de autoplay

  // captura de la celda seleccionada (matriz 1) gateada por captureblock
  line('obj-3', 1, 'obj-seq-capgate', 1),
  line('obj-seq-capgate', 0, 'obj-seq-selstore', 1),  // almacen frio
  line('obj-seq-rcap', 0, 'obj-seq-capinv', 0),
  line('obj-seq-capinv', 0, 'obj-seq-capgate', 0),

  // init: captureblock = 0 al cargar (gate abierto)
  line('obj-seq-lb', 0, 'obj-seq-lb0', 0),
  line('obj-seq-lb0', 0, 'obj-seq-scap', 0),

  // stop al final -> apagar ambos toggles (silencio via fade + para reloj)
  line('obj-stop-rrecv', 0, 'obj-stop-zero', 0),
  line('obj-stop-zero', 0, 'obj-109', 0),
  line('obj-stop-zero', 0, 'obj-seq-toggle', 0)
);

fs.writeFileSync(FILE, JSON.stringify(data, null, 4));
console.log('OK: Full Piece reasegura 421/440 (pipe); Play all sequence usa la fila seleccionada; ambos se detienen en silencio al llegar a la ultima columna.');
