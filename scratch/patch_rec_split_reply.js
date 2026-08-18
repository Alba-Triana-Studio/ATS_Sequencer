#!/usr/bin/env node
// Conecta el outlet izquierdo de [node.script rec_split_node.js] TAMBIEN al [js rec_split.js].
//
// PARA QUE: desde el 2026-08-18 el troceo lo hace node, y sus avisos de avance
// (sliceprogress / sliceok / slicefail) son los que refrescan la linea de estado del panel
// MASTER. Sin esta conexion todo funciona igual —node trocea y mueve el maestro por su
// cuenta—, pero la linea se queda en "SPLIT: troceando N…" y el avance solo se ve en la
// consola de Max, porque esos mensajes caen en el outlet de rechazo del [route].
//
// EJECUTAR CON EL PATCH CERRADO EN MAX: si Max lo tiene abierto y lo guarda despues, se
// pierde la conexion. Hace copia de seguridad antes de tocar nada.
// Uso:  node scratch/patch_rec_split_reply.js

const fs = require("fs");
const path = require("path");

const PATCH = path.resolve(__dirname, "..", "ATS_Sequencer.maxpat");
const SRC = "obj-recs-node", DST = "obj-recs-js";

// El .maxpat se toca como TEXTO, no reserializando el JSON: Max lo escribe con un formato
// propio (tabulaciones, arrays en una linea, la coma al principio de cada entrada) que un
// JSON.stringify normaliza entero — el archivo seguiria siendo valido, pero el diff pasaria
// de 7 lineas a 60000 y el historial dejaria de servir para nada. El JSON solo se parsea
// para COMPROBAR, nunca para escribir.
const raw = fs.readFileSync(PATCH, "utf8");
const d = JSON.parse(raw);
const pat = d.patcher;

const ids = new Set(pat.boxes.map((b) => b.box.id));
if (!ids.has(SRC) || !ids.has(DST)) {
    console.error("No encuentro " + SRC + " y " + DST + " en el patcher raiz. Nada que hacer.");
    process.exit(1);
}
const ya = pat.lines.some((l) => {
    const p = l.patchline;
    return p.source[0] === SRC && p.source[1] === 0 &&
           p.destination[0] === DST && p.destination[1] === 0;
});
if (ya) {
    console.log("La conexion ya existe; no toco nada.");
    process.exit(0);
}

const backup = PATCH.replace(/\.maxpat$/, "_backup_" +
    new Date().toISOString().slice(0, 10).replace(/-/g, "") + "_prenodereply.maxpat");
fs.writeFileSync(backup, raw);

// Se copia la entrada de la conexion que YA existe (node -> route) y se cambia el destino,
// asi la nueva sale con la misma sangria y el mismo estilo que las demas.
const ancla = '\t\t\t\t\t"destination" : [ "obj-recs-nroute", 0 ],\n' +
              '\t\t\t\t\t"source" : [ "' + SRC + '", 0 ]\n\t\t\t\t}\n\n\t\t\t}\n';
if (!raw.includes(ancla)) {
    console.error("No reconozco el formato del .maxpat; no toco nada.");
    process.exit(1);
}
const entrada = ', \t\t\t{\n\t\t\t\t"patchline" : \t\t\t\t{\n' +
                '\t\t\t\t\t"destination" : [ "' + DST + '", 0 ],\n' +
                '\t\t\t\t\t"source" : [ "' + SRC + '", 0 ]\n\t\t\t\t}\n\n\t\t\t}\n';
const salida = raw.replace(ancla, ancla + entrada);

JSON.parse(salida);          // red de seguridad: nunca dejar un .maxpat que Max no pueda abrir
fs.writeFileSync(PATCH, salida);

console.log("Conexion añadida: " + SRC + " (outlet 0) -> " + DST + " (inlet 0)");
console.log("Copia de seguridad: " + path.basename(backup));
