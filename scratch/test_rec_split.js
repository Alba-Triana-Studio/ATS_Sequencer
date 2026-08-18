#!/usr/bin/env node
// Simula rec_split.js fuera de Max (stubs de outlet/post/File/Folder) y comprueba la lista de
// tramos, los nombres, los mensajes de troceo que se le mandan a node y —lo que se rompio el
// 2026-08-17— que la grabacion arranca SIN esperar a que node cree la carpeta.
// El troceo en si (que ningun archivo pierda su ultima muestra) lo prueba test_aiff_slice.js.
// Uso:  node scratch/test_rec_split.js

const fs = require("fs");
const path = require("path");
const vm = require("vm");

const SRC = path.resolve(__dirname, "..", "rec_split.js");

const out = [];       // [outletIndex, ...args]
const buf = () => out.filter((o) => o[0] === 1);   // lo que va a [buffer~]
const rec = () => out.filter((o) => o[0] === 0);   // lo que va a [sfrecord~]
const nodemsg = () => out.filter((o) => o[0] === 3); // lo que va a [node.script]
const posts = [];
const written = {};   // ruta -> lineas escritas

// `existing` son las carpetas que hay en el "disco" simulado. El stub de File imita el
// comportamiento real de Max: SIEMPRE dice isopen = true (si no puede resolver la ruta crea
// el archivo en la carpeta del patch), asi que la deteccion tiene que salir de Folder.
function makeSandbox(existing, frames) {
    const dirname = (p) => p.substring(0, p.lastIndexOf("/"));
    const basename = (p) => p.substring(p.lastIndexOf("/") + 1);
    const sandbox = {
        autowatch: 0,
        inlets: 0,
        outlets: 0,
        outlet: (n, ...a) => out.push([n, ...a]),
        post: (s) => posts.push(String(s)),
        File: function (name) {
            this.isopen = true;
            this.lines = [];
            this.eof = 0;
            this.writeline = (s) => this.lines.push(s);
            this.close = () => { written[name] = this.lines; };
        },
        Folder: function (parent) {
            const hijos = existing.filter((d) => dirname(d) === parent).map(basename);
            let i = 0;
            this.typelist = [];
            Object.defineProperty(this, "end", { get: () => i >= hijos.length });
            Object.defineProperty(this, "filename", { get: () => hijos[i] });
            this.next = () => { i++; };
            this.close = () => {};
        },
        Buffer: function () {
            this.framecount = () => frames;
        },
    };
    sandbox.global = sandbox;
    vm.createContext(sandbox);
    vm.runInContext(fs.readFileSync(SRC, "utf8"), sandbox);
    sandbox.mkdirDone = (p) => existing.push(p);   // node crea la carpeta durante la toma
    return sandbox;
}

let fails = 0;
function check(label, got, want) {
    const g = JSON.stringify(got);
    const w = JSON.stringify(want);
    if (g !== w) {
        console.log("FALLO  " + label + "\n   obtenido: " + g + "\n   esperado: " + w);
        fails++;
    } else {
        console.log("ok     " + label);
    }
}

const SR = 48000;
const seg = (ms) => Math.round((ms * SR) / 1000);

// ---------- caso principal: la carpeta NO existe al armar y node la crea durante la toma
// Es la regresion del 2026-08-17: una version anterior difería el `open` hasta que node
// contestaba, y el resultado era "crea la carpeta pero no graba nada".
const s = makeSandbox(["/tmp/padre"], -1);
out.length = 0;

s.folder("/tmp/padre/tomaA");
check("pide el mkdir a node", nodemsg()[0], [3, "mkdir", "/tmp/padre/tomaA"]);
check("abre el maestro YA, sin esperar a node", rec()[0],
      [0, "open", "/tmp/padre/tomaA_00_maestro.aif", "aiff"]);
s.sr(SR);

s.mark(0, 421, 0);              // click en la matriz con el Play parado -> se ignora
s.mark(0, 421, 1);              // Play ON
s.mark(seg(10000), 422, 1);     // cambio de celda a los 10 s
s.mark(seg(20000), 423, 1);
s.mark(seg(25000), 423, 0);     // Play OFF
s.mark(seg(40000), 423, 1);     // vuelve a tocar la misma celda
s.mark(seg(47000), 423, 0);

s.mkdirDone("/tmp/padre/tomaA");   // node ha tenido toda la toma para crearla
out.length = 0;
s.split();

check("nº de tramos", s.segs.length, 4);
check("celdas", s.segs.map((x) => x.cell), [421, 422, 423, 423]);
check("inicios (ms)", s.segs.map((x) => Math.round((x.a * 1000) / SR)),
      [0, 10000, 20000, 40000]);
check("duraciones (ms)", s.segs.map((x) => Math.round(((x.b - x.a) * 1000) / SR)),
      [10000, 10000, 5000, 7000]);
check("no se toca [buffer~]: trocea node", buf().length, 0);
check("le dice a node cual es el maestro", nodemsg()[0],
      [3, "slicebegin", "/tmp/padre/tomaA_00_maestro.aif"]);
check("primer trozo: inicio y duracion en MUESTRAS, ruta al final", nodemsg()[1],
      [3, "slice", 0, seg(10000), "/tmp/padre/tomaA/01_f22_b01.aif"]);

// El silencio entre el Play OFF y el siguiente Play ON (25 s -> 40 s) no genera archivo.
const hueco = s.segs.some((x) => Math.round((x.a * 1000) / SR) === 25000);
check("el tramo sin reproducir no se trocea", hueco, false);

const trozos = nodemsg().filter((m) => m[1] === "slice");
check("un trozo por tramo", trozos.length, 4);
check("todos los tiempos son enteros (muestras, nunca ms)",
      trozos.every((m) => Number.isInteger(m[2]) && Number.isInteger(m[3])), true);
check("los trozos van DENTRO de la carpeta", trozos.map((m) => m[4]), [
    "/tmp/padre/tomaA/01_f22_b01.aif",
    "/tmp/padre/tomaA/02_f22_b02.aif",
    "/tmp/padre/tomaA/03_f22_b03.aif",
    "/tmp/padre/tomaA/04_f22_b03.aif",
]);
check("node cierra la tanda y se lleva el maestro dentro", nodemsg()[nodemsg().length - 1],
      [3, "sliceend", "/tmp/padre/tomaA/00_maestro.aif"]);
s.sliceok(4);                    // node contesta (si su outlet llega al js)
check("la linea de estado la cierra la respuesta de node", out[out.length - 1],
      [2, "SPLIT: 4 archivos"]);
check("indice escrito", written["/tmp/padre/tomaA/00_indice.txt"].length, 3 + 4);

// ---------- la carpeta ya existia al armar: no se pide mkdir
const s2 = makeSandbox(["/tmp/padre", "/tmp/padre/tomaB"], -1);
out.length = 0;
s2.folder("/tmp/padre/tomaB");
check("carpeta existente: no pide mkdir", nodemsg().length, 0);
check("aun asi el maestro va al padre", rec()[0],
      [0, "open", "/tmp/padre/tomaB_00_maestro.aif", "aiff"]);

// ---------- node nunca creo la carpeta: todo se queda en el padre con prefijo
const s3 = makeSandbox(["/tmp/padre"], -1);
out.length = 0;
s3.folder("/tmp/padre/tomaC");
s3.sr(SR);
s3.mark(0, 1, 1);
s3.mark(seg(3000), 1, 0);
out.length = 0;
s3.split();
check("sin carpeta, nombre con prefijo",
      nodemsg().find((m) => m[1] === "slice")[4], "/tmp/padre/tomaC_01_f01_b01.aif");
check("sin carpeta no se mueve el maestro",
      nodemsg().find((m) => m[1] === "sliceend")[2], "-");

// ---------- sin nada reproducido
const s4 = makeSandbox(["/tmp/padre", "/tmp/padre/tomaD"], -1);
s4.folder("/tmp/padre/tomaD");
s4.sr(SR);
s4.mark(0, 5, 0);
out.length = 0;
s4.split();
check("sin tramos no se manda trocear", nodemsg().length, 0);

// La regresion de la ultima muestra a cero se comprueba en scratch/test_aiff_slice.js, que
// trocea de verdad (incluido el maestro real si esta a mano) y compara byte a byte.

console.log(fails ? "\n" + fails + " comprobaciones fallidas" : "\ntodo correcto");
process.exit(fails ? 1 : 0);
