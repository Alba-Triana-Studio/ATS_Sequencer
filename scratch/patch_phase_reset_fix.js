/*
 * patch_phase_reset_fix.js  (idempotente, 4 archivos P*Sound)
 *
 * PROBLEMA: el reset de fase no funcionaba -> osciladores desincronizados.
 *   r setphase0 -> msg "0 20" -> line~ -> phasor~ inlet derecho (fase)
 * line~ rampa 0->0 (no-op) y, aun moviendose, un SIGNAL en el inlet derecho
 * del phasor~ es un offset sumado al acumulador interno (que sigue libre),
 * NO un reset del acumulador. Resultado: cada phasor corre con fase libre.
 *
 * FIX: resetear el acumulador con un FLOAT 0 directo al inlet derecho del
 * phasor~ (un float SI fija/resetea la fase). Se quita el signal de line~ del
 * inlet derecho (un signal conectado bloquea los floats). El reset ocurre al
 * arrancar cada setup (amplitud ~0) => inaudible. Al hacerlo los 4 phasor~
 * se ponen en fase 0 a la vez => sincronizados (misma frec) / deterministas
 * (frecs distintas).
 */
const fs = require('fs');
const FILES = ['P1Sound.maxpat', 'P2Sound.maxpat', 'P3Sound.maxpat', 'P4Sound.maxpat'];

for (const FILE of FILES) {
  const data = JSON.parse(fs.readFileSync(FILE, 'utf8'));
  const p = data.patcher;

  const setph = p.boxes.find(b => /r setphase0/.test(b.box.text || ''));
  const phasor = p.boxes.find(b => /phasor~/.test(b.box.text || ''));
  if (!setph || !phasor) { console.log(FILE + ': NO setphase0/phasor~ -> skip'); continue; }

  // line~ que entra al inlet derecho (fase) del phasor~
  const lineToPhase = p.lines.find(l =>
    l.patchline.destination[0] === phasor.box.id && l.patchline.destination[1] === 1);
  const lineId = lineToPhase ? lineToPhase.patchline.source[0] : null;

  // mensaje "0 20" que alimenta ese line~ (lo desconectamos del setphase0)
  // 1) quitar conexiones viejas del camino de reset
  p.lines = p.lines.filter(l => {
    const s = l.patchline.source, d = l.patchline.destination;
    // r setphase0 -> "0 20"
    if (s[0] === setph.box.id) return false;
    // line~ -> phasor:1
    if (lineId && s[0] === lineId && d[0] === phasor.box.id && d[1] === 1) return false;
    return true;
  });

  // 2) limpiar objeto previo de este script (idempotencia)
  p.boxes = p.boxes.filter(b => b.box.id !== 'obj-phase-reset0');
  p.lines = p.lines.filter(l =>
    l.patchline.source[0] !== 'obj-phase-reset0' && l.patchline.destination[0] !== 'obj-phase-reset0');

  // 3) nuevo: r setphase0 -> [0] (float) -> phasor~ inlet derecho (reset duro)
  const pr = phasor.box.patching_rect || [100, 100, 40, 22];
  p.boxes.push({ box: {
    maxclass: 'message', text: '0', id: 'obj-phase-reset0',
    numinlets: 2, numoutlets: 1, outlettype: [''],
    patching_rect: [pr[0] + 60, pr[1] - 40, 30, 22]
  }});
  p.lines.push(
    { patchline: { source: [setph.box.id, 0], destination: ['obj-phase-reset0', 0] } },
    { patchline: { source: ['obj-phase-reset0', 0], destination: [phasor.box.id, 1] } }
  );

  fs.writeFileSync(FILE, JSON.stringify(data, null, 4));
  console.log(FILE + ': reset de fase -> float 0 directo al phasor~ ' + phasor.box.id +
              ' (line~ ' + lineId + ' desconectado del inlet de fase).');
}
console.log('OK: reset de fase corregido en los 4 osciladores.');
