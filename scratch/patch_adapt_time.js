// patch_adapt_time.js
// Anade un boton "Adaptar al tiempo" por grafica (panel de la izquierda, encima de PITCH)
// y un boton global "Adaptar TODOS" en el menu principal (junto a Time Domain (s)).
//
// QUE HACE: reescala las dos curvas (freq + amp) de una grafica para que ocupen EXACTAMENTE
// el Time Domain actual, midiendo la extension real del dibujo en vez de recordar el dominio
// anterior. Asi cubre los tres casos:
//   - la curva llenaba el dominio viejo  -> se estira/encoge al nuevo (proporcional, como antes)
//   - la curva se queda corta            -> se estira hasta el final de la grafica
//   - la curva se sale del dominio       -> se comprime hasta caber
// Pulsarlo dos veces seguidas no hace nada (la extension ya es igual al dominio).
//
// COMO: el mensaje `setdomain` de [function] fija el maximo del eje X Y desplaza los breakpoints
// para que conserven su posicion relativa; es decir, escala por (nuevo dominio / dominio actual).
// Para escalar por (dominio / extension) primero se pone el eje en la extension medida:
//     `domain <ultimaX>`   (solo mueve el eje, los puntos se quedan en su X absoluta)
//     `setdomain <D>`      (escala los puntos por D/ultimaX)
//
// La ultima X se mide con el mensaje `dump` de [function]: saca cada breakpoint (x y curva) por
// su outlet 2 en orden ascendente, de forma sincrona, asi que basta con ir guardando la X en el
// inlet frio de un [f] y leerlo despues. Se usa la MAYOR de las dos capas (`maximum`) para que
// freq y amp se escalen con el mismo factor y no se desincronicen entre si.
//
// Idempotente: borra todo lo obj-at-* antes de reinsertar.

const fs = require('fs');
const path = require('path');

const ROOT = path.join(__dirname, '..');
const FILE = path.join(ROOT, 'ATS_Sequencer.maxpat');

const patch = JSON.parse(fs.readFileSync(FILE, 'utf8'));
const pat = patch.patcher;

// ---------------------------------------------------------------- limpieza
const PREFIX = 'obj-at-';
const before = pat.boxes.length;
pat.boxes = pat.boxes.filter(b => !String(b.box.id).startsWith(PREFIX));
pat.lines = pat.lines.filter(l => {
  const s = String(l.patchline.source[0]);
  const d = String(l.patchline.destination[0]);
  return !s.startsWith(PREFIX) && !d.startsWith(PREFIX);
});
console.log(`limpieza: ${before - pat.boxes.length} objetos obj-at-* eliminados`);

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
    fontname: 'Arial',
    fontsize: 12.0,
    id,
    maxclass: 'newobj',
    numinlets: nin,
    numoutlets: nout,
    outlettype,
    patching_rect: [x, y, w, 22.0],
    text
  });
}

function message(id, text, x, y, w) {
  return addBox({
    fontname: 'Arial',
    fontsize: 12.0,
    id,
    maxclass: 'message',
    numinlets: 2,
    numoutlets: 1,
    outlettype: [''],
    patching_rect: [x, y, w, 22.0],
    text
  });
}

function textbutton(id, text, px, py, pw, ph, x, y, fontsize) {
  return addBox({
    bgcolor: [0.85, 0.88, 0.9, 1.0],
    bgoncolor: [1.0, 0.62, 0.1, 1.0],
    fontsize,
    id,
    maxclass: 'textbutton',
    numinlets: 1,
    numoutlets: 3,
    outlettype: ['', '', 'int'],
    parameter_enable: 0,
    patching_rect: [x, y, 140.0, 24.0],
    presentation: 1,
    presentation_rect: [px, py, pw, ph],
    rounded: 4.0,
    text,
    textcolor: [0.15, 0.15, 0.15, 1.0],
    textoncolor: [0.0, 0.0, 0.0, 1.0],
    usebgoncolor: 1
  });
}

function connect(srcId, srcOut, dstId, dstIn) {
  requireBox(srcId);
  requireBox(dstId);
  pat.lines.push({
    patchline: {
      destination: [dstId, dstIn],
      source: [srcId, srcOut]
    }
  });
}

// ---------------------------------------------------------------- canales
// domNum = number (ms) que alimenta `prepend domain`; fnFreq/fnAmp = las dos capas superpuestas.
const CHANNELS = [
  { domNum: 'obj-12',  fnFreq: 'obj-77',  fnAmp: 'obj-2',   panelTop: 4.0 },
  { domNum: 'obj-195', fnFreq: 'obj-194', fnAmp: 'obj-199', panelTop: 195.5 },
  { domNum: 'obj-315', fnFreq: 'obj-314', fnAmp: 'obj-319', panelTop: 389.0 },
  { domNum: 'obj-781', fnFreq: 'obj-780', fnAmp: 'obj-785', panelTop: 580.6 }
];

const BTN_X = 332.0;             // panel izquierdo de cada grafica: x 329.5 .. 414.5
const BTN_W = 81.0;
const BTN_H = 30.0;
const BTN_DY = 16.0;             // offset desde el borde superior del panel

const BASE_X = 3600.0;           // zona de patching libre (max actual ~4920 x ~4675)
const BASE_Y = 4760.0;
const ROW_H = 300.0;

CHANNELS.forEach((ch, n) => {
  requireBox(ch.domNum);
  requireBox(ch.fnFreq);
  requireBox(ch.fnAmp);

  const y0 = BASE_Y + n * ROW_H;
  const id = s => `${PREFIX}${s}-${n}`;

  // --- boton en presentacion, dentro del panel, encima del rotulo PITCH
  textbutton(id('btn'), 'Adaptar al tiempo',
    BTN_X, ch.panelTop + BTN_DY, BTN_W, BTN_H,
    BASE_X, y0, 9.0);

  // --- guarda: sin Time Domain valido no se toca nada
  newobj(id('fcur'), 'f', BASE_X, y0 + 30, 30.0, 2, 1, ['float']);
  newobj(id('selzd'), 'sel 0.', BASE_X, y0 + 60, 44.0, 2, 2, ['bang', '']);
  newobj(id('tgo'), 't f b', BASE_X, y0 + 90, 40.0, 1, 2, ['float', 'bang']);

  // --- medicion de la extension real del dibujo
  newobj(id('seq'), 't b b b b b', BASE_X, y0 + 120, 70.0, 1, 5,
    ['bang', 'bang', 'bang', 'bang', 'bang']);
  message(id('mzero'), '0', BASE_X + 400, y0 + 150, 24.0);
  message(id('mdumpf'), 'dump', BASE_X + 300, y0 + 150, 42.0);
  message(id('mdumpa'), 'dump', BASE_X + 350, y0 + 150, 42.0);
  newobj(id('unpf'), 'unpack 0. 0. 0.', BASE_X + 300, y0 + 180, 105.0, 1, 3,
    ['float', 'float', 'float']);
  newobj(id('unpa'), 'unpack 0. 0. 0.', BASE_X + 430, y0 + 180, 105.0, 1, 3,
    ['float', 'float', 'float']);
  newobj(id('lastf'), 'f', BASE_X + 300, y0 + 210, 30.0, 2, 1, ['float']);
  newobj(id('lasta'), 'f', BASE_X + 430, y0 + 210, 30.0, 2, 1, ['float']);
  newobj(id('max'), 'maximum 0.', BASE_X + 300, y0 + 240, 72.0, 2, 2, ['float', 'int']);

  // --- aplicacion
  newobj(id('selz'), 'sel 0.', BASE_X + 150, y0 + 210, 44.0, 2, 2, ['bang', '']);
  newobj(id('mdom'), 'prepend domain', BASE_X + 150, y0 + 240, 97.0, 1, 1, ['']);
  newobj(id('msetdom'), 'prepend setdomain', BASE_X, y0 + 270, 115.0, 1, 1, ['']);

  // --- cableado -------------------------------------------------------
  connect(id('btn'), 0, id('fcur'), 0);
  connect(ch.domNum, 0, id('fcur'), 1);          // Time Domain (ms) en frio
  connect(id('fcur'), 0, id('selzd'), 0);
  connect(id('selzd'), 1, id('tgo'), 0);         // outlet 1 = no coincide con 0 -> D valido

  // t f b: el bang (outlet 1) sale PRIMERO -> mide y pone `domain <extension>`;
  //        luego el float D (outlet 0) -> `setdomain <D>` reescala.
  connect(id('tgo'), 1, id('seq'), 0);
  connect(id('tgo'), 0, id('msetdom'), 0);

  // t b b b b b, los outlets salen de derecha a izquierda:
  connect(id('seq'), 4, id('mzero'), 0);         // 1º reiniciar acumuladores
  connect(id('seq'), 3, id('mdumpf'), 0);        // 2º volcar la capa de frecuencia
  connect(id('seq'), 2, id('mdumpa'), 0);        // 3º volcar la capa de amplitud
  connect(id('seq'), 1, id('lasta'), 0);         // 4º ultima X de amp -> inlet frio de maximum
  connect(id('seq'), 0, id('lastf'), 0);         // 5º ultima X de freq -> dispara maximum

  connect(id('mzero'), 0, id('lastf'), 1);
  connect(id('mzero'), 0, id('lasta'), 1);
  connect(id('mdumpf'), 0, ch.fnFreq, 0);
  connect(id('mdumpa'), 0, ch.fnAmp, 0);
  connect(ch.fnFreq, 2, id('unpf'), 0);          // outlet 2 = salida de `dump` (x y curva)
  connect(ch.fnAmp, 2, id('unpa'), 0);
  connect(id('unpf'), 0, id('lastf'), 1);        // se sobrescribe punto a punto -> queda la ultima
  connect(id('unpa'), 0, id('lasta'), 1);
  connect(id('lasta'), 0, id('max'), 1);
  connect(id('lastf'), 0, id('max'), 0);

  connect(id('max'), 0, id('selz'), 0);
  connect(id('selz'), 1, id('mdom'), 0);         // extension > 0 -> `domain <extension>`
  connect(id('mdom'), 0, ch.fnFreq, 0);
  connect(id('mdom'), 0, ch.fnAmp, 0);
  connect(id('msetdom'), 0, ch.fnFreq, 0);
  connect(id('msetdom'), 0, ch.fnAmp, 0);
});

// ---------------------------------------------------------------- global
const GY = BASE_Y + CHANNELS.length * ROW_H;

// Boton "Adaptar TODOS" en el menu principal, a la derecha de Time Domain (s)
textbutton(`${PREFIX}all-btn`, 'Adaptar TODOS', 131.0, 197.0, 96.0, 32.0, BASE_X, GY, 11.0);
newobj(`${PREFIX}tall`, 't b b b b', BASE_X, GY + 40, 62.0, 1, 4,
  ['bang', 'bang', 'bang', 'bang']);
connect(`${PREFIX}all-btn`, 0, `${PREFIX}tall`, 0);
CHANNELS.forEach((ch, n) => connect(`${PREFIX}tall`, 3 - n, `${PREFIX}fcur-${n}`, 0));

// ---------------------------------------------------------------- guardar
fs.writeFileSync(FILE, JSON.stringify(patch, null, '\t'));
const added = pat.boxes.filter(b => String(b.box.id).startsWith(PREFIX)).length;
const wired = pat.lines.filter(l =>
  String(l.patchline.source[0]).startsWith(PREFIX) ||
  String(l.patchline.destination[0]).startsWith(PREFIX)).length;
console.log(`OK: ${added} objetos obj-at-*, ${wired} conexiones. Total boxes ${pat.boxes.length}, lines ${pat.lines.length}`);
