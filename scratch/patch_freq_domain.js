// patch_freq_domain.js
// "Freq. Domain (Hz)" POR GRAFICA, con el general como valor por defecto.
//
// QUE HACE
//   En el panel izquierdo de cada grafica (encima del boton "Adjust to time") aparecen:
//     [ Hz: Global ]      <- textbutton de 2 estados (Global / Own)
//     [ min ] [ max ]     <- el Freq. Domain propio de esa grafica
//   Mientras el canal esta en "Global", el Freq. Domain general (obj-5 / obj-6) manda: sus
//   valores entran por un [gate] abierto, se aplican al canal y se REFLEJAN en las dos cajas
//   con `set` (sin que estas emitan nada).
//   En cuanto se escribe un valor en una de las dos cajas, el canal pasa a "Own": el gate se
//   cierra y el general deja de tocarlo. Con un clic en el boton se vuelve a "Global" y el
//   general se re-propaga.
//
// POR QUE HACEN FALTA DOS CAMINOS (`set` vs. salida de la caja)
//   Un number box no distingue "me han escrito" de "me han mandado un valor". Si el general
//   escribiera en la caja por su inlet, la caja emitiria y eso marcaria el canal como "Own"
//   solo. Por eso el general entra por `prepend set` (solo pinta) y aplica el valor en
//   paralelo a `sprintf range` / `minimum $1` / `maximum $1`; la SALIDA de la caja solo ocurre
//   cuando el usuario teclea, y es la que enciende el flag.
//
// ESTADO Y PRESETS
//   El flag vive en un number box oculto (`obj-fd-ovr-N`), cliente de [preset] igual que las
//   cajas min/max, asi que cada celda de la matriz recuerda su modo y sus valores.
//   [preset] restaura los number box SIN que emitan (por eso el patch ya tenia obj-486, que
//   rebangea obj-12/5/6 tras cada recall). Aqui se hace lo mismo en orden garantizado:
//     obj-3 outlet 1 -> obj-fd-rseq (t b b b)
//        out2: rebangea los 4 flags   -> gates y boton quedan en el estado del preset
//        out1: obj-486                -> el general se re-propaga a los canales en "Global"
//        out0: obj-fd-trg             -> rebangea min/max de los canales en "Own"
//
// CANALES
//   Los canales 2, 3 y 4 ya tenian sus propias cajas min/max en la vista de edicion
//   (obj-188/186, obj-308/306, obj-774/772): se reutilizan y se sacan a presentacion.
//   El canal 1 no tenia: usaba obj-5/obj-6 (las generales) directamente, asi que se le crean
//   obj-fd-min-0 / obj-fd-max-0 y se re-rutean obj-13, obj-19, obj-474 y obj-475.
//
// Idempotente: borra todo lo obj-fd-* y rehace el re-ruteo antes de reinsertar.

const fs = require('fs');
const path = require('path');

const ROOT = path.join(__dirname, '..');
const FILE = path.join(ROOT, 'ATS_Sequencer.maxpat');

const patch = JSON.parse(fs.readFileSync(FILE, 'utf8'));
const pat = patch.patcher;

const PREFIX = 'obj-fd-';

// ---------------------------------------------------------------- canales
// minBox/maxBox: null = hay que crearlas (canal 1). sprintf = `sprintf range %ld %ld`,
// tbi = el `t b i` que carga el maximo en el inlet frio del sprintf.
const CHANNELS = [
  { panel: 'obj-70', btn: 'obj-at-btn-0',
    minBox: null, maxBox: null,
    sprintf: 'obj-13', tbi: 'obj-19', msgMin: 'obj-475', msgMax: 'obj-474' },
  { panel: 'obj-71', btn: 'obj-at-btn-1',
    minBox: 'obj-188', maxBox: 'obj-186',
    sprintf: 'obj-185', tbi: 'obj-184', msgMin: 'obj-479', msgMax: 'obj-480' },
  { panel: 'obj-72', btn: 'obj-at-btn-2',
    minBox: 'obj-308', maxBox: 'obj-306',
    sprintf: 'obj-305', tbi: 'obj-303', msgMin: 'obj-482', msgMax: 'obj-483' },
  { panel: 'obj-73', btn: 'obj-at-btn-3',
    minBox: 'obj-774', maxBox: 'obj-772',
    sprintf: 'obj-771', tbi: 'obj-770', msgMin: 'obj-645', msgMax: 'obj-646' }
];

const GMIN = 'obj-5';      // Freq. Domain (Hz) general — minimo
const GMAX = 'obj-6';      // Freq. Domain (Hz) general — maximo
const PRESET = 'obj-3';
const RECALL_BTN = 'obj-486';   // button que rebangea obj-12/5/6 tras un recall

// Lineas de loadbang / botones sueltos que escribian directamente en las cajas del canal:
// ahora encenderian el flag "Own" al abrir el patch. El general ya las alcanza por el gate.
const DROP_DIRECT = [
  ['obj-121', 'obj-186'], ['obj-121', 'obj-188'],
  ['obj-248', 'obj-306'], ['obj-248', 'obj-308'],
  ['obj-718', 'obj-772'], ['obj-718', 'obj-774'],
  ['obj-490', 'obj-306'], ['obj-490', 'obj-308']
];

// ---------------------------------------------------------------- limpieza
const before = pat.boxes.length;
pat.boxes = pat.boxes.filter(b => !String(b.box.id).startsWith(PREFIX));
pat.lines = pat.lines.filter(l => {
  const s = String(l.patchline.source[0]);
  const d = String(l.patchline.destination[0]);
  return !s.startsWith(PREFIX) && !d.startsWith(PREFIX);
});
console.log(`limpieza: ${before - pat.boxes.length} objetos obj-fd-* eliminados`);

// ---------------------------------------------------------------- helpers
const boxIndex = new Map(pat.boxes.map(b => [b.box.id, b.box]));

function requireBox(id) {
  if (!boxIndex.has(id)) throw new Error(`No existe ${id} en el patch`);
  return boxIndex.get(id);
}

function addBox(o) {
  pat.boxes.push({ box: o });
  boxIndex.set(o.id, o);
  return o;
}

function newobj(id, text, x, y, w, nin, nout, outlettype) {
  return addBox({
    fontname: 'Arial', fontsize: 12.0, id, maxclass: 'newobj',
    numinlets: nin, numoutlets: nout, outlettype,
    patching_rect: [x, y, w, 22.0], text
  });
}

function message(id, text, x, y, w) {
  return addBox({
    fontname: 'Arial', fontsize: 12.0, id, maxclass: 'message',
    numinlets: 2, numoutlets: 1, outlettype: [''],
    patching_rect: [x, y, w, 22.0], text
  });
}

function numberBox(id, x, y, pres) {
  const o = {
    fontname: 'Arial', fontsize: pres ? 10.0 : 12.0, id, maxclass: 'number',
    numinlets: 1, numoutlets: 2, outlettype: ['', 'bang'],
    parameter_enable: 0, patching_rect: [x, y, 46.0, 22.0]
  };
  if (pres) { o.presentation = 1; o.presentation_rect = pres; }
  return addBox(o);
}

// Idempotente: las conexiones que NO llevan el prefijo (las que salen de [preset] hacia las
// cajas de canal que ya existian) sobreviven a la limpieza, asi que no se pueden duplicar.
function connect(srcId, srcOut, dstId, dstIn) {
  requireBox(srcId);
  requireBox(dstId);
  const dup = pat.lines.some(l => {
    const p = l.patchline;
    return String(p.source[0]) === srcId && p.source[1] === srcOut &&
           String(p.destination[0]) === dstId && p.destination[1] === dstIn;
  });
  if (dup) return;
  pat.lines.push({ patchline: { destination: [dstId, dstIn], source: [srcId, srcOut] } });
}

function disconnect(srcId, srcOut, dstId, dstIn) {
  const n = pat.lines.length;
  pat.lines = pat.lines.filter(l => {
    const p = l.patchline;
    if (String(p.source[0]) !== srcId || String(p.destination[0]) !== dstId) return true;
    if (srcOut !== null && p.source[1] !== srcOut) return true;
    if (dstIn !== null && p.destination[1] !== dstIn) return true;
    return false;
  });
  return n - pat.lines.length;
}

// ---------------------------------------------------------------- geometria
// Panel izquierdo de cada grafica: x 329.5..414.5. Las filas se anclan al borde superior del
// panel; el boton "Adjust to time" mas alto esta a +40.8, asi que caben dos filas (2..36).
const ROW1_DY = 2.0;    // textbutton Global/Own
const ROW1_H = 14.0;
const ROW2_DY = 18.0;   // cajas min / max
const ROW2_H = 18.0;
const NUM_W = 39.0;
const NUM_GAP = 3.0;

const BASE_X = 3600.0;  // zona de patching libre (obj-at-* llega hasta y~6000)
const BASE_Y = 6400.0;
const ROW_H = 340.0;

// ---------------------------------------------------------------- por canal
CHANNELS.forEach((ch, n) => {
  const panel = requireBox(ch.panel);
  const btn = requireBox(ch.btn);
  const px = btn.presentation_rect[0];
  const py = panel.presentation_rect[1];
  const bw = btn.presentation_rect[2];

  const y0 = BASE_Y + n * ROW_H;
  const id = s => `${PREFIX}${s}-${n}`;

  // --- cajas min / max: las de los canales 2-4 ya existian (solo se sacan a presentacion)
  let minId = ch.minBox, maxId = ch.maxBox;
  if (minId === null) {
    minId = id('min'); maxId = id('max');
    numberBox(minId, BASE_X + 200, y0 + 300, null);
    numberBox(maxId, BASE_X + 260, y0 + 300, null);
    // El canal 1 colgaba directamente del general: se corta y se rerutea a las cajas nuevas.
    disconnect(GMIN, 0, ch.sprintf, 0);
    disconnect(GMIN, 0, ch.msgMin, 0);
    disconnect(GMAX, 0, ch.tbi, 0);
    disconnect(GMAX, 0, ch.msgMax, 0);
  } else {
    requireBox(minId); requireBox(maxId);
    // El general ya no escribe en la caja: entra por el gate.
    disconnect(GMIN, 0, minId, 0);
    disconnect(GMAX, 0, maxId, 0);
  }
  const minBox = boxIndex.get(minId), maxBox = boxIndex.get(maxId);
  minBox.fontsize = 10.0;
  maxBox.fontsize = 10.0;
  minBox.presentation = 1;
  maxBox.presentation = 1;
  minBox.presentation_rect = [px, py + ROW2_DY, NUM_W, ROW2_H];
  maxBox.presentation_rect = [px + NUM_W + NUM_GAP, py + ROW2_DY, NUM_W, ROW2_H];

  // --- boton Global / Own
  addBox({
    bgcolor: [0.85, 0.88, 0.9, 1.0],
    bgoncolor: [1.0, 0.62, 0.1, 1.0],
    fontsize: 9.0,
    id: id('btn'),
    maxclass: 'textbutton',
    mode: 1,
    numinlets: 1, numoutlets: 3, outlettype: ['', '', 'int'],
    parameter_enable: 0,
    patching_rect: [BASE_X, y0, 100.0, 22.0],
    presentation: 1,
    presentation_rect: [px, py + ROW1_DY, bw, ROW1_H],
    rounded: 4.0,
    text: 'Hz: Global',
    textcolor: [0.25, 0.25, 0.25, 1.0],
    texton: 'Hz: Own',
    textoncolor: [0.0, 0.0, 0.0, 1.0],
    usebgoncolor: 1
  });

  // --- estado (cliente de [preset]) y su distribucion
  //
  // El flag SOLO reparte estado (boton, gates): no re-propaga el general. Si lo hiciera, el
  // refresco de los cuatro flags tras un recall se pisaria a si mismo — el primer canal en
  // "Global" rebangearia el general y este entraria en los canales que todavia no han
  // cerrado su gate, borrando sus valores propios. La re-propagacion cuelga del BOTON, que
  // es la unica via por la que se vuelve a "Global" a mano.
  numberBox(id('ovr'), BASE_X, y0 + 60, null);
  newobj(id('t'), 't i i i', BASE_X, y0 + 90, 54.0, 1, 3, ['int', 'int', 'int']);
  newobj(id('setbtn'), 'prepend set', BASE_X + 300, y0 + 120, 78.0, 1, 1, ['']);
  newobj(id('inv'), '== 0', BASE_X + 150, y0 + 120, 40.0, 2, 1, ['int']);
  newobj(id('tbtn'), 't i i', BASE_X, y0 + 30, 40.0, 1, 2, ['int', 'int']);
  newobj(id('sel0'), 'sel 0', BASE_X, y0 + 120, 40.0, 2, 2, ['bang', '']);
  newobj(id('tg'), 't b b', BASE_X, y0 + 150, 40.0, 1, 2, ['bang', 'bang']);

  // gate de recall: reaplica los valores propios del canal tras un recall en "Own"
  newobj(id('rgate'), 'gate', BASE_X + 450, y0 + 180, 40.0, 2, 1, ['']);
  newobj(id('trec'), 't b b', BASE_X + 450, y0 + 210, 40.0, 1, 2, ['bang', 'bang']);

  connect(id('btn'), 0, id('tbtn'), 0);
  connect(id('tbtn'), 1, id('ovr'), 0);      // 1º guardar el modo (abre/cierra los gates)
  connect(id('tbtn'), 0, id('sel0'), 0);     // 2º si vuelve a Global, re-propagar el general
  connect(id('ovr'), 0, id('t'), 0);
  connect(id('t'), 2, id('setbtn'), 0);      // 1º refrescar el boton (set: no reemite)
  connect(id('setbtn'), 0, id('btn'), 0);
  connect(id('t'), 1, id('rgate'), 0);       // 2º control del gate de recall
  connect(id('t'), 0, id('inv'), 0);         // 3º abrir/cerrar los gates del general

  // --- gates del general
  newobj(id('gmin'), 'gate', BASE_X + 150, y0 + 180, 40.0, 2, 1, ['']);
  newobj(id('gmax'), 'gate', BASE_X + 300, y0 + 180, 40.0, 2, 1, ['']);
  newobj(id('setmin'), 'prepend set', BASE_X + 150, y0 + 240, 78.0, 1, 1, ['']);
  newobj(id('setmax'), 'prepend set', BASE_X + 300, y0 + 240, 78.0, 1, 1, ['']);

  connect(id('inv'), 0, id('gmin'), 0);
  connect(id('inv'), 0, id('gmax'), 0);
  connect(GMIN, 0, id('gmin'), 1);
  connect(GMAX, 0, id('gmax'), 1);

  // El general pinta la caja (`set`, sin salida) y aplica el valor en paralelo.
  connect(id('gmin'), 0, id('setmin'), 0);
  connect(id('setmin'), 0, minId, 0);
  connect(id('gmin'), 0, ch.sprintf, 0);
  connect(id('gmin'), 0, ch.msgMin, 0);
  connect(id('gmax'), 0, id('setmax'), 0);
  connect(id('setmax'), 0, maxId, 0);
  connect(id('gmax'), 0, ch.tbi, 0);
  connect(id('gmax'), 0, ch.msgMax, 0);

  // El canal 1 estrena cajas: hay que darles las conexiones que antes salian del general.
  if (ch.minBox === null) {
    connect(minId, 0, ch.sprintf, 0);
    connect(minId, 0, ch.msgMin, 0);
    connect(maxId, 0, ch.tbi, 0);
    connect(maxId, 0, ch.msgMax, 0);
  }

  // --- escribir en una caja = pasar a "Own"
  message(id('one'), '1', BASE_X + 450, y0 + 60, 24.0);
  connect(minId, 0, id('one'), 0);
  connect(maxId, 0, id('one'), 0);
  connect(id('one'), 0, id('ovr'), 0);

  // --- volver a Global: rebangear el general (el maximo primero, carga el inlet frio)
  connect(id('sel0'), 0, id('tg'), 0);
  connect(id('tg'), 1, GMAX, 0);
  connect(id('tg'), 0, GMIN, 0);

  // --- recall: si el canal esta en "Own", reaplicar sus propios valores
  connect(id('rgate'), 0, id('trec'), 0);
  connect(id('trec'), 1, maxId, 0);
  connect(id('trec'), 0, minId, 0);

  // --- clientes de [preset]
  connect(PRESET, 0, minId, 0);
  connect(PRESET, 0, maxId, 0);
  connect(PRESET, 0, id('ovr'), 0);
});

// ---------------------------------------------------------------- recall global
// Orden garantizado tras cada recall: flags -> general -> valores propios.
const GY = BASE_Y + CHANNELS.length * ROW_H;
newobj(`${PREFIX}rseq`, 't b b b', BASE_X, GY, 52.0, 1, 3, ['bang', 'bang', 'bang']);
newobj(`${PREFIX}tref`, 't b b b b', BASE_X + 200, GY + 40, 62.0, 1, 4,
  ['bang', 'bang', 'bang', 'bang']);
newobj(`${PREFIX}trg`, 't b b b b', BASE_X, GY + 40, 62.0, 1, 4,
  ['bang', 'bang', 'bang', 'bang']);

disconnect(PRESET, 1, RECALL_BTN, 0);
connect(PRESET, 1, `${PREFIX}rseq`, 0);
connect(`${PREFIX}rseq`, 2, `${PREFIX}tref`, 0);
connect(`${PREFIX}rseq`, 1, RECALL_BTN, 0);
connect(`${PREFIX}rseq`, 0, `${PREFIX}trg`, 0);
CHANNELS.forEach((ch, n) => {
  connect(`${PREFIX}tref`, 3 - n, `${PREFIX}ovr-${n}`, 0);   // bang -> el flag reemite
  connect(`${PREFIX}trg`, 3 - n, `${PREFIX}rgate-${n}`, 1);
});

// ---------------------------------------------------------------- init
// Al abrir el patch todos los canales arrancan en "Global". Los gates nacen cerrados, asi
// que despues de ponerlos a 0 hay que rebangear el general para que llegue a las graficas.
newobj(`${PREFIX}lb`, 'loadbang', BASE_X + 400, GY, 60.0, 1, 1, ['bang']);
newobj(`${PREFIX}del`, 'del 600', BASE_X + 400, GY + 40, 50.0, 2, 1, ['bang']);
newobj(`${PREFIX}tinit`, 't b b', BASE_X + 400, GY + 80, 40.0, 1, 2, ['bang', 'bang']);
message(`${PREFIX}zero`, '0', BASE_X + 400, GY + 120, 24.0);
newobj(`${PREFIX}tgi`, 't b b', BASE_X + 500, GY + 120, 40.0, 1, 2, ['bang', 'bang']);
connect(`${PREFIX}lb`, 0, `${PREFIX}del`, 0);
connect(`${PREFIX}del`, 0, `${PREFIX}tinit`, 0);
connect(`${PREFIX}tinit`, 1, `${PREFIX}zero`, 0);   // 1º los 4 flags en Global
connect(`${PREFIX}tinit`, 0, `${PREFIX}tgi`, 0);    // 2º el general se propaga
connect(`${PREFIX}tgi`, 1, GMAX, 0);
connect(`${PREFIX}tgi`, 0, GMIN, 0);
CHANNELS.forEach((ch, n) => connect(`${PREFIX}zero`, 0, `${PREFIX}ovr-${n}`, 0));

// ---------------------------------------------------------------- lineas sueltas
let dropped = 0;
DROP_DIRECT.forEach(([s, d]) => { dropped += disconnect(s, null, d, null); });
console.log(`re-ruteo: ${dropped} conexiones directas a las cajas de canal eliminadas`);

// ---------------------------------------------------------------- guardar
// Red de seguridad por si una version anterior del script dejo lineas repetidas.
const seenLine = new Set();
const dedup = pat.lines.length;
pat.lines = pat.lines.filter(l => {
  const k = l.patchline.source.join(':') + '>' + l.patchline.destination.join(':');
  if (seenLine.has(k)) return false;
  seenLine.add(k);
  return true;
});
if (dedup !== pat.lines.length) console.log(`dedup: ${dedup - pat.lines.length} lineas repetidas eliminadas`);

fs.writeFileSync(FILE, JSON.stringify(patch, null, '\t'));
const added = pat.boxes.filter(b => String(b.box.id).startsWith(PREFIX)).length;
const wired = pat.lines.filter(l =>
  String(l.patchline.source[0]).startsWith(PREFIX) ||
  String(l.patchline.destination[0]).startsWith(PREFIX)).length;
console.log(`OK: ${added} objetos obj-fd-*, ${wired} conexiones. Total boxes ${pat.boxes.length}, lines ${pat.lines.length}`);
