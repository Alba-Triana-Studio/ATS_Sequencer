// Simulador del flujo de datos de Max, limitado al subgrafo MUTE/SOLO leido del
// propio .maxpat. Comprueba el valor que llega a cada `s muteN` (1 = gate~ abierto)
// para todas las combinaciones de mute y solo, y con los dos ordenes posibles de
// fan-out (Max no garantiza el orden entre conexiones de un mismo outlet).
const fs = require('fs');
const p = JSON.parse(fs.readFileSync('ATS_Sequencer.maxpat', 'utf8'));
const boxes = {}; for (const b of p.patcher.boxes) boxes[b.box.id] = b.box;

const MUTE_TOGGLE = { 1: 'obj-20', 2: 'obj-143', 3: 'obj-265', 4: 'obj-733' };
const SEND = { 1: 'obj-177', 2: 'obj-140', 3: 'obj-262', 4: 'obj-730' };

// nodos que participan: los obj-ms-*, los toggles de mute y los `s muteN`
const inScope = id => /^obj-ms-/.test(id) ||
  Object.values(MUTE_TOGGLE).includes(id) || Object.values(SEND).includes(id);

function build(reverseFanout) {
  const outs = {}; // id -> outlet -> [[dstId, dstInlet]]
  for (const l of p.patcher.lines) {
    const s = l.patchline.source, d = l.patchline.destination;
    if (!inScope(s[0]) || !inScope(d[0])) continue;
    (outs[s[0]] = outs[s[0]] || {});
    (outs[s[0]][s[1]] = outs[s[0]][s[1]] || []).push([d[0], d[1]]);
  }
  if (reverseFanout) for (const id in outs) for (const o in outs[id]) outs[id][o].reverse();
  return outs;
}

function run(outs, opts) {
  const state = {};   // valores guardados (int, inlet derecho de &&/||, toggles)
  const result = {};  // s muteN recibido
  const recv = {};    // nombre de r -> [ids]
  for (const id in boxes) {
    const m = /^r (\w+)$/.exec(boxes[id].text || '');
    if (m && inScope(id)) (recv[m[1]] = recv[m[1]] || []).push(id);
  }

  function emit(id, outlet, val) {
    const dst = (outs[id] || {})[outlet] || [];
    for (const [d, i] of dst) send(d, i, val);
  }

  function send(id, inlet, val) {
    const b = boxes[id];
    if (!b) return;
    const txt = b.text || '';

    if (b.maxclass === 'toggle') {
      if (val === 'set 0') { state[id] = 0; return; }       // set: no produce salida
      state[id] = val; emit(id, 0, val); return;
    }
    if (b.maxclass === 'message') {
      if (inlet !== 0) return;
      const out = txt === 'set 0' ? 'set 0' : Number(txt);
      emit(id, 0, out); return;
    }
    let m;
    if (txt === 'int') {
      if (inlet === 1) { state[id] = val; return; }
      if (val === 'bang') { emit(id, 0, state[id] | 0); return; }
      state[id] = val; emit(id, 0, val); return;
    }
    if (txt === 't i i') { emit(id, 1, val); emit(id, 0, val); return; }
    if (txt === 't b i') { emit(id, 1, val); emit(id, 0, 'bang'); return; }
    if (txt === 't b b') { emit(id, 1, 'bang'); emit(id, 0, 'bang'); return; }
    if ((m = /^== (-?\d+)$/.exec(txt))) {
      if (inlet === 1) { state[id] = val; return; }
      const k = id in state ? state[id] : Number(m[1]);
      emit(id, 0, val === k ? 1 : 0); return;
    }
    if ((m = /^(&&|\|\|) (-?\d+)$/.exec(txt))) {
      if (inlet === 1) { state[id] = val; return; }
      const r = id in state ? state[id] : Number(m[2]);
      emit(id, 0, m[1] === '&&' ? ((val && r) ? 1 : 0) : ((val || r) ? 1 : 0)); return;
    }
    if ((m = /^sel ([\d ]+)$/.exec(txt))) {
      const args = m[1].trim().split(/\s+/).map(Number);
      const idx = args.indexOf(val);
      if (idx >= 0) emit(id, idx, 'bang'); else emit(id, args.length, val);
      return;
    }
    if (/^s solostate$/.test(txt)) {
      for (const r of (recv.solostate || [])) emit(r, 0, val);
      return;
    }
    if (/^s mute[1-4]$/.test(txt)) { result[txt] = val; return; }
    if (txt === 'loadbang') { return; }
  }

  // --- arranque: loadbang de solostate y de los toggles de mute (como en el patch) ---
  send('obj-ms-lb0', 0, 'bang');                    // solostate = 0
  for (const n of [1, 2, 3, 4]) send(MUTE_TOGGLE[n], 0, 0);

  // --- eventos del usuario ---
  for (const n of opts.mute || []) send(MUTE_TOGGLE[n], 0, 1);
  if (opts.solo) send('obj-ms-solo-' + opts.solo, 0, 1);
  return { result, state };
}

// audible esperado = ((solo == 0) && !mute) || (solo == N)
function expected(n, opts) {
  const muted = (opts.mute || []).includes(n);
  return opts.solo ? (opts.solo === n ? 1 : 0) : (muted ? 0 : 1);
}

const cases = [];
for (const solo of [0, 1, 2, 3, 4])
  for (const mute of [[], [1], [2, 3], [1, 2, 3, 4], [4]])
    cases.push({ solo, mute });

let fail = 0;
for (const order of [false, true]) {
  const outs = build(order);
  for (const c of cases) {
    const { result } = run(outs, c);
    for (const n of [1, 2, 3, 4]) {
      const got = result['s mute' + n];
      const want = expected(n, c);
      if (got !== want) {
        console.log('FALLO [fanout ' + (order ? 'inverso' : 'directo') + '] solo=' + c.solo +
          ' mute=[' + c.mute + '] canal ' + n + ': obtuvo ' + got + ', esperaba ' + want);
        fail++;
      }
    }
  }
}

// el SOLO debe ser exclusivo: activar uno apaga el toggle de los otros
const outs = build(false);
const st = run(outs, { solo: 2 }).state;
for (const n of [1, 3, 4]) if (st['obj-ms-solo-' + n]) {
  console.log('FALLO: al activar solo 2, el toggle del canal ' + n + ' sigue encendido'); fail++;
}

console.log(fail === 0
  ? 'OK: ' + (cases.length * 4 * 2) + ' comprobaciones de mute/solo correctas en ambos ordenes de fan-out, y SOLO exclusivo'
  : fail + ' FALLOS');
process.exit(fail ? 1 : 0);
