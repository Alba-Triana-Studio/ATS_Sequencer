// verify_adapt_time.js — comprobaciones sin abrir Max
// 1) estructura: objetos y cableado obj-at-*
// 2) simulacion: mini-interprete del flujo de mensajes de Max sobre el subgrafo obj-at-*,
//    con [function] simulada (dump / domain / setdomain), para comprobar el orden de los
//    trigger y el factor de escala resultante.
const fs = require('fs');
const path = require('path');
const FILE = path.join(__dirname, '..', 'ATS_Sequencer.maxpat');
const pat = JSON.parse(fs.readFileSync(FILE, 'utf8')).patcher;
const boxes = new Map(pat.boxes.map(b => [b.box.id, b.box]));
const lines = pat.lines.map(l => l.patchline);

let fail = 0;
const ok = (c, m) => { console.log((c ? '  ok   ' : '  FAIL ') + m); if (!c) fail++; };

const out = (id, o) => lines.filter(l => l.source[0] === id && (o === undefined || l.source[1] === o))
  .map(l => `${l.destination[0]}:${l.destination[1]}`).sort();

const CH = [
  { dom: 'obj-12',  f: 'obj-77',  a: 'obj-2' },
  { dom: 'obj-195', f: 'obj-194', a: 'obj-199' },
  { dom: 'obj-315', f: 'obj-314', a: 'obj-319' },
  { dom: 'obj-781', f: 'obj-780', a: 'obj-785' }
];

console.log('== estructura por canal ==');
CH.forEach((c, n) => {
  const id = s => `obj-at-${s}-${n}`;
  ['btn','fcur','selzd','tgo','seq','mzero','mdumpf','mdumpa','unpf','unpa','lastf','lasta','max','selz','mdom','msetdom']
    .forEach(s => ok(boxes.has(id(s)), `${id(s)} existe`));

  ok(out(id('btn'), 0).join() === `${id('fcur')}:0`, `boton ${n} -> fcur`);
  ok(out(c.dom, 0).includes(`${id('fcur')}:1`), `${c.dom} (Time Domain ms) -> fcur frio`);
  ok(out(id('fcur'), 0).join() === `${id('selzd')}:0`, `fcur -> sel 0.`);
  ok(out(id('selzd'), 1).join() === `${id('tgo')}:0`, `sel 0. outlet1 (D valido) -> t f b`);
  ok(out(id('tgo'), 1).join() === `${id('seq')}:0`, `t f b outlet1 (bang, 1º) -> t b b b b b`);
  ok(out(id('tgo'), 0).join() === `${id('msetdom')}:0`, `t f b outlet0 (D, 2º) -> prepend setdomain`);

  ok(out(id('seq'), 4).join() === `${id('mzero')}:0`, `seq o4 (1º) -> msg 0 (reset)`);
  ok(out(id('seq'), 3).join() === `${id('mdumpf')}:0`, `seq o3 (2º) -> dump freq`);
  ok(out(id('seq'), 2).join() === `${id('mdumpa')}:0`, `seq o2 (3º) -> dump amp`);
  ok(out(id('seq'), 1).join() === `${id('lasta')}:0`, `seq o1 (4º) -> lasta`);
  ok(out(id('seq'), 0).join() === `${id('lastf')}:0`, `seq o0 (5º) -> lastf`);

  ok(out(id('mzero'), 0).sort().join() === [`${id('lastf')}:1`, `${id('lasta')}:1`].sort().join(), `msg 0 -> ambos acumuladores`);
  ok(out(id('mdumpf'), 0).join() === `${c.f}:0`, `dump -> fnFreq`);
  ok(out(id('mdumpa'), 0).join() === `${c.a}:0`, `dump -> fnAmp`);
  ok(out(c.f, 2).join() === `${id('unpf')}:0`, `fnFreq outlet2 (dump) -> unpack`);
  ok(out(c.a, 2).join() === `${id('unpa')}:0`, `fnAmp outlet2 (dump) -> unpack`);
  ok(out(id('unpf'), 0).join() === `${id('lastf')}:1`, `unpack freq X -> acumulador frio`);
  ok(out(id('unpa'), 0).join() === `${id('lasta')}:1`, `unpack amp X -> acumulador frio`);
  ok(out(id('lasta'), 0).join() === `${id('max')}:1`, `lasta -> maximum frio`);
  ok(out(id('lastf'), 0).join() === `${id('max')}:0`, `lastf -> maximum caliente`);
  ok(out(id('max'), 0).join() === `${id('selz')}:0`, `maximum -> sel 0.`);
  ok(out(id('selz'), 1).join() === `${id('mdom')}:0`, `sel 0. outlet1 (extension > 0) -> prepend domain`);
  ok(out(id('mdom'), 0).sort().join() === [`${c.a}:0`, `${c.f}:0`].sort().join(), `prepend domain -> ambas functions`);
  ok(out(id('msetdom'), 0).sort().join() === [`${c.a}:0`, `${c.f}:0`].sort().join(), `prepend setdomain -> ambas functions`);
  ok(boxes.get(id('mdom')).text === 'prepend domain', `texto prepend domain (${n})`);
  ok(boxes.get(id('msetdom')).text === 'prepend setdomain', `texto prepend setdomain (${n})`);
});

console.log('== global ==');
ok(out('obj-at-all-btn', 0).join() === 'obj-at-tall:0', 'boton global -> t b b b b');
CH.forEach((c, n) => ok(out('obj-at-tall', 3 - n).join() === `obj-at-fcur-${n}:0`, `tall outlet${3 - n} -> fcur-${n}`));

console.log('== cadena original de Time Domain intacta ==');
[['obj-12','obj-9'],['obj-195','obj-200'],['obj-315','obj-320'],['obj-781','obj-786']]
  .forEach(([d, p]) => ok(out(d, 0).includes(`${p}:0`), `${d} -> ${p} (prepend domain original)`));
CH.forEach(c => ok(out(c.f, 1).length > 0 && out(c.a, 1).length > 0,
  `${c.f}/${c.a} outlet1 -> curve~ sigue conectado`));

console.log('== solapes en presentacion ==');
const news = pat.boxes.map(b => b.box).filter(b => String(b.id).startsWith('obj-at-') && b.presentation === 1);
const others = pat.boxes.map(b => b.box).filter(b => b.presentation === 1 && !String(b.id).startsWith('obj-at-') && b.maxclass !== 'panel');
const hit = (a, b) => {
  const [ax, ay, aw, ah] = a.presentation_rect, [bx, by, bw, bh] = b.presentation_rect;
  return ax < bx + bw && bx < ax + aw && ay < by + bh && by < ay + ah;
};
news.forEach(n => {
  const c = others.filter(o => hit(n, o));
  ok(c.length === 0, `${n.id} "${n.text}" @ [${n.presentation_rect.map(v => Math.round(v))}] sin solapes` +
    (c.length ? ` -> choca con ${c.map(o => o.id).join(', ')}` : ''));
});

// ============================================================ simulacion
// Mini-interprete: depth-first, outlets de derecha a izquierda en los trigger.
function simulate(chIdx, { pointsF, pointsA, domain, presses = 1 }) {
  const c = CH[chIdx];
  const fn = {
    [c.f]: { domain, pts: pointsF.map(p => p.slice()) },
    [c.a]: { domain, pts: pointsA.map(p => p.slice()) }
  };
  const state = new Map();   // id -> { store, right }
  const st = id => { if (!state.has(id)) state.set(id, {}); return state.get(id); };

  const dests = (id, o) => lines.filter(l => l.source[0] === id && l.source[1] === o)
    .map(l => [l.destination[0], l.destination[1]]);
  const emit = (id, o, msg) => dests(id, o).forEach(([d, i]) => send(d, i, msg));

  function send(id, inlet, msg) {
    if (fn[id]) {                                   // [function] simulada
      if (inlet !== 0 || msg.sym === undefined) return;
      const F = fn[id];
      if (msg.sym === 'dump') {
        F.pts.forEach(p => emit(id, 2, { list: p.slice() }));
      } else if (msg.sym === 'domain') {
        F.domain = msg.args[0];
      } else if (msg.sym === 'setdomain') {
        const v = msg.args[0], k = v / F.domain;
        F.pts = F.pts.map(p => [p[0] * k, p[1], p[2]]);
        F.domain = v;
      }
      return;
    }
    const b = boxes.get(id);
    if (!b) return;
    const t = String(b.text || '');
    const S = st(id);

    if (b.maxclass === 'textbutton') { emit(id, 0, { bang: true }); return; }

    if (b.maxclass === 'message') {
      if (t === '0') emit(id, 0, { float: 0 });
      else emit(id, 0, { sym: t, args: [] });
      return;
    }

    const arg = t.split(/\s+/);
    if (arg[0] === 't') {
      const spec = arg.slice(1);
      for (let i = spec.length - 1; i >= 0; i--) {
        emit(id, i, spec[i] === 'b' ? { bang: true } : { float: msg.float });
      }
      return;
    }
    if (arg[0] === 'f') {
      if (inlet === 1) { S.store = msg.float; return; }
      if (msg.float !== undefined) S.store = msg.float;
      emit(id, 0, { float: S.store === undefined ? 0 : S.store });
      return;
    }
    if (arg[0] === 'sel') {
      const target = parseFloat(arg[1]);
      if (msg.float === target) emit(id, 0, { bang: true });
      else emit(id, 1, { float: msg.float });
      return;
    }
    if (arg[0] === 'maximum') {
      if (inlet === 1) { S.right = msg.float; return; }
      const r = S.right === undefined ? parseFloat(arg[1]) : S.right;
      emit(id, 0, { float: Math.max(msg.float, r) });
      return;
    }
    if (arg[0] === 'unpack') {
      const L = msg.list || [];
      for (let i = arg.length - 2; i >= 0; i--) if (L[i] !== undefined) emit(id, i, { float: L[i] });
      return;
    }
    if (arg[0] === 'prepend') {
      const payload = msg.float !== undefined ? [msg.float] : (msg.list || []);
      emit(id, 0, { sym: arg[1], args: payload });
      return;
    }
    throw new Error('objeto no simulado: ' + t);
  }

  // el Time Domain vive en el inlet frio de fcur
  st(`obj-at-fcur-${chIdx}`).store = domain;
  for (let i = 0; i < presses; i++) send(`obj-at-btn-${chIdx}`, 0, { bang: true });

  const lastX = a => (a.pts.length ? a.pts[a.pts.length - 1][0] : 0);
  return {
    domF: fn[c.f].domain, lastF: lastX(fn[c.f]),
    domA: fn[c.a].domain, lastA: lastX(fn[c.a]),
    ptsF: fn[c.f].pts.map(p => Math.round(p[0]))
  };
}

console.log('== simulacion del flujo de mensajes ==');
const P = (...xs) => xs.map(x => [x, 0.5, 0]);

// A) la curva llenaba el dominio viejo (10 s) y el Time Domain paso a 20 s
let r = simulate(0, { pointsF: P(0, 5000, 10000), pointsA: P(0, 10000), domain: 20000 });
ok(r.lastF === 20000 && r.domF === 20000 && r.ptsF.join() === '0,10000,20000',
  `A) curva 0..10 s con dominio 20 s -> se estira x2 y llena (${r.ptsF.join(' ')})`);

// B) la curva se queda corta
r = simulate(0, { pointsF: P(0, 2500, 5000), pointsA: P(0, 5000), domain: 20000 });
ok(r.lastF === 20000 && r.ptsF.join() === '0,10000,20000',
  `B) curva 0..5 s con dominio 20 s -> se estira x4 y llena (${r.ptsF.join(' ')})`);

// C) la curva se sale del dominio
r = simulate(0, { pointsF: P(0, 7500, 15000), pointsA: P(0, 15000), domain: 10000 });
ok(r.lastF === 10000 && r.ptsF.join() === '0,5000,10000',
  `C) curva 0..15 s con dominio 10 s -> se comprime y cabe (${r.ptsF.join(' ')})`);

// D) las dos capas con extensiones distintas: mismo factor, manda la mas larga
r = simulate(0, { pointsF: P(0, 5000), pointsA: P(0, 10000), domain: 20000 });
ok(r.lastA === 20000 && r.lastF === 10000,
  `D) freq 0..5 s y amp 0..10 s con dominio 20 s -> ambas x2, siguen alineadas (freq ${r.lastF}, amp ${r.lastA})`);

// E) idempotencia
r = simulate(0, { pointsF: P(0, 5000, 10000), pointsA: P(0, 10000), domain: 20000, presses: 3 });
ok(r.lastF === 20000 && r.ptsF.join() === '0,10000,20000',
  `E) pulsar 3 veces = pulsar 1 vez (${r.ptsF.join(' ')})`);

// F) una capa vacia (un solo punto en 0)
r = simulate(0, { pointsF: P(0), pointsA: P(0, 10000), domain: 20000 });
ok(r.lastA === 20000 && r.domF === 20000,
  `F) capa freq con un solo punto en 0 -> manda amp, x2 (amp ${r.lastA})`);

// G) sin Time Domain (0) no se toca nada
r = simulate(0, { pointsF: P(0, 10000), pointsA: P(0, 10000), domain: 0 });
ok(r.lastF === 10000 && r.domF === 0,
  `G) Time Domain 0 -> la guarda bloquea, los puntos no se tocan (${r.lastF})`);

// H) grafica totalmente vacia -> la guarda de extension bloquea el `domain`
r = simulate(0, { pointsF: [], pointsA: [], domain: 20000 });
ok(r.domF === 20000 && r.lastF === 0,
  `H) grafica vacia -> no se altera el dominio (${r.domF})`);

// los cuatro canales se comportan igual
[1, 2, 3].forEach(n => {
  const x = simulate(n, { pointsF: P(0, 5000), pointsA: P(0, 5000), domain: 20000 });
  ok(x.lastF === 20000 && x.lastA === 20000, `canal ${n + 1}: misma cadena, x4 correcto`);
});

console.log(fail === 0 ? '\nTODO OK' : `\n${fail} FALLOS`);
process.exit(fail ? 1 : 0);
