#!/usr/bin/env node
// Anade el boton "REC SPLIT" (grabacion dividida por celdas) al panel MASTER.
//
// Ver rec_split.js para el porque del diseno (una sola toma continua + troceo offline con
// buffer~, en vez de parar y rearrancar sfrecord~ en cada celda).
//
// Idempotente: borra los objetos obj-recs-* y sus conexiones antes de volver a crearlos.
// Uso:  node scratch/patch_rec_split.js

const fs = require("fs");
const path = require("path");

const ROOT = path.resolve(__dirname, "..");
const PATCH = path.join(ROOT, "ATS_Sequencer.maxpat");
const BACKUP = path.join(ROOT, "ATS_Sequencer_backup_20260817_prerecsplit.maxpat");

const raw = fs.readFileSync(PATCH, "utf8");
if (!fs.existsSync(BACKUP)) {
    fs.writeFileSync(BACKUP, raw);
    console.log("backup -> " + path.basename(BACKUP));
}

const doc = JSON.parse(raw);
const p = doc.patcher;

// ---------------------------------------------------------------- limpieza (idempotencia)
const PREFIX = "obj-recs-";
const before = p.boxes.length;
p.boxes = p.boxes.filter((b) => !String(b.box.id).startsWith(PREFIX));
p.lines = p.lines.filter(
    (l) =>
        !String(l.patchline.source[0]).startsWith(PREFIX) &&
        !String(l.patchline.destination[0]).startsWith(PREFIX)
);
if (before !== p.boxes.length) {
    console.log("limpiadas " + (before - p.boxes.length) + " cajas obj-recs-* previas");
}

const byId = Object.fromEntries(p.boxes.map((b) => [b.box.id, b.box]));
const need = ["obj-rec-rl", "obj-rec-rr", "obj-rec-btn", "obj-rec-lbl", "obj-rec-status",
              "obj-rec-clk", "obj-rec-mreset", "obj-3", "obj-59", "obj-133"];
for (const id of need) {
    if (!byId[id]) throw new Error("falta " + id + " en el patch");
}

// ---------------------------------------------------------------- constructores de cajas
function obj(id, text, rect, nin, nout, outtype) {
    return {
        box: {
            fontname: "Arial",
            fontsize: 12,
            id,
            maxclass: "newobj",
            numinlets: nin,
            numoutlets: nout,
            outlettype: outtype,
            patching_rect: rect,
            text,
        },
    };
}

function msg(id, text, rect) {
    return {
        box: {
            fontname: "Arial",
            fontsize: 11,
            id,
            maxclass: "message",
            numinlets: 2,
            numoutlets: 1,
            outlettype: [""],
            patching_rect: rect,
            text,
        },
    };
}

const boxes = [];

// --- cadena de senal / arranque
boxes.push(obj("obj-recs-lb", "loadbang", [2300, 700, 62, 22], 1, 1, ["bang"]));
boxes.push(msg("obj-recs-msamp", "samptype int24", [2300, 740, 110, 22]));
boxes.push(obj("obj-recs-sf", "sfrecord~ 2", [2300, 1140, 96, 22], 2, 1, ["int"]));

// --- boton + dialogo de carpeta
boxes.push({
    box: {
        id: "obj-recs-btn",
        maxclass: "textbutton",
        fontsize: 11,
        numinlets: 1,
        numoutlets: 3,
        outlettype: ["", "", "int"],
        parameter_enable: 0,
        patching_rect: [2500, 700, 110, 24],
        rounded: 4,
        text: "◉ SPLIT",
        bgcolor: [0.286274509803922, 0.290196078431373, 0.298039215686275, 1],
        textcolor: [0.92, 0.92, 0.92, 1],
        textoncolor: [1, 1, 1, 1],
        usebgoncolor: 1,
        mode: 1,
        texton: "■ STOP",
        bgoncolor: [0.9, 0.45, 0.1, 1],
        presentation: 1,
        presentation_rect: [1342, 686, 79, 22],
    },
});
boxes.push(obj("obj-recs-sel", "sel 1 0", [2500, 740, 62, 22], 2, 3, ["bang", "bang", ""]));
boxes.push(obj("obj-recs-dlg", "savedialog", [2500, 820, 84, 22], 1, 3, ["", "", "bang"]));
boxes.push(obj("obj-recs-print", "print SPLIT", [2620, 860, 82, 22], 1, 0, []));
// Nombre distinto en cada pulsacion (Toma_001, Toma_002...). Si se repitiera un nombre que
// ya existe, macOS preguntaria "ya existe, reemplazar?" y al cancelar savedialog banguea su
// outlet 2 igual que ante un error -> "Cancelado" y nada grabado.
boxes.push(obj("obj-recs-tdlg", "t b b", [2500, 780, 50, 22], 1, 2, ["bang", "bang"]));
boxes.push(obj("obj-recs-nctr", "counter 1 999", [2620, 740, 90, 22], 5, 4,
               ["int", "", "", "int"]));
boxes.push(obj("obj-recs-spfname", "sprintf name Toma_%03ld", [2620, 780, 150, 22], 1, 1,
               [""]));
boxes.push(msg("obj-recs-cancel", "set ✗ Cancelado / ruta ilegal", [2620, 820, 165, 22]));
boxes.push(msg("obj-recs-breset", "set 0", [2740, 820, 60, 22]));

// --- armado: la ruta va al js (que saca el `open`), luego sr, reset del contador y REC
boxes.push(obj("obj-recs-tpath", "t b s", [2500, 860, 60, 22], 1, 2, ["bang", ""]));
boxes.push(obj("obj-recs-prepfolder", "prepend folder", [2600, 900, 100, 22], 2, 1, [""]));
boxes.push(obj("obj-recs-tstart", "t b b b", [2400, 900, 62, 22], 1, 3,
               ["bang", "bang", "bang"]));
boxes.push(msg("obj-recs-m1", "1", [2400, 940, 32, 22]));

// --- parada: cerrar el maestro y, tras un margen para que sfrecord~ acabe de escribir,
//     lanzar el troceo
boxes.push(obj("obj-recs-tstop", "t b b b", [2740, 860, 62, 22], 1, 3,
               ["bang", "bang", "bang"]));
boxes.push(msg("obj-recs-m0", "0", [2860, 900, 32, 22]));
boxes.push(msg("obj-recs-mwait", "set Cerrando archivo…", [2740, 900, 115, 22]));
boxes.push(obj("obj-recs-delsplit", "del 1200", [2740, 940, 62, 22], 2, 1, ["bang"]));
boxes.push(msg("obj-recs-msplit", "split", [2740, 980, 46, 22]));

// --- logica y troceo
boxes.push({
    box: {
        fontname: "Arial",
        fontsize: 12,
        id: "obj-recs-js",
        maxclass: "newobj",
        numinlets: 1,
        numoutlets: 4,
        outlettype: ["", "", "", ""],
        patching_rect: [2500, 1000, 130, 22],
        saved_object_attributes: { filename: "rec_split.js", parameter_enable: 0 },
        text: "js rec_split.js",
    },
});
// Node for Max es la unica via para crear la carpeta: Max no tiene mkdir. @autostart 1
// arranca el proceso al abrir el patch, asi el primer SPLIT no espera al arranque de node.
boxes.push({
    box: {
        fontname: "Arial",
        fontsize: 12,
        id: "obj-recs-node",
        maxclass: "newobj",
        numinlets: 1,
        numoutlets: 2,
        outlettype: ["", ""],
        patching_rect: [2400, 1040, 250, 22],
        saved_object_attributes: { autostart: 1, defer: 0, watch: 0 },
        text: "node.script rec_split_node.js @autostart 1",
    },
});
boxes.push(obj("obj-recs-nroute", "route mkdirok mkdirfail", [2400, 1080, 160, 22], 3, 3,
               ["", "", ""]));
boxes.push(obj("obj-recs-prepready", "prepend dirready", [2400, 1120, 105, 22], 2, 1, [""]));
boxes.push(obj("obj-recs-prepnodir", "prepend dirfail", [2515, 1120, 95, 22], 2, 1, [""]));
boxes.push(obj("obj-recs-nprint", "print NODE", [2670, 1080, 80, 22], 1, 0, []));

boxes.push(obj("obj-recs-buf", "buffer~ atssplit", [2820, 1000, 120, 22], 1, 2,
               ["float", "bang"]));
boxes.push(obj("obj-recs-prepdone", "prepend done", [2820, 1040, 90, 22], 2, 1, [""]));
boxes.push(obj("obj-recs-prepset", "prepend set", [2820, 1120, 78, 22], 2, 1, [""]));

// --- reloj de muestras y marcas de frontera
boxes.push(obj("obj-recs-sr", "adstatus sr", [2960, 700, 82, 22], 2, 2, ["", "int"]));
boxes.push(obj("obj-recs-prepsr", "prepend sr", [2960, 740, 70, 22], 2, 1, [""]));
boxes.push(obj("obj-recs-cnt", "count~", [3120, 740, 55, 22], 2, 1, ["signal"]));
boxes.push(obj("obj-recs-snap", "snapshot~", [3120, 820, 72, 22], 2, 1, ["float"]));
boxes.push(obj("obj-recs-pack", "pack 0. 0 0", [3120, 900, 90, 22], 3, 1, [""]));
boxes.push(obj("obj-recs-prepmark", "prepend mark", [3120, 940, 90, 22], 2, 1, [""]));
boxes.push(obj("obj-recs-tc", "t b i", [3230, 740, 45, 22], 1, 2, ["bang", "int"]));
boxes.push(obj("obj-recs-tp", "t b i", [3300, 740, 45, 22], 1, 2, ["bang", "int"]));

boxes.push({
    box: {
        fontname: "Arial",
        fontsize: 11,
        id: "obj-recs-cmt",
        maxclass: "comment",
        numinlets: 1,
        numoutlets: 0,
        patching_rect: [2300, 1230, 760, 62],
        text:
            "REC SPLIT: graba UNA toma continua al maestro 00_maestro.aif y anota en muestras " +
            "(count~ + snapshot~) la frontera de cada celda; al parar, buffer~ trocea el " +
            "maestro offline en un archivo por celda. No se rearranca sfrecord~ por celda " +
            "porque cada `open` es asincrono y se comeria muestras en cada frontera. Lo que " +
            "no se reproduce no se trocea. El maestro se abre SIEMPRE en el directorio " +
            "padre con el nombre como prefijo, asi que grabar no depende de nada externo; " +
            "la carpeta la crea [node.script] en paralelo (Max no tiene mkdir) y solo hace " +
            "falta al trocear. REC y SPLIT son alternativos: no usar los dos a la vez.",
    },
});

// ---------------------------------------------------------------- insercion (z-order)
// Indice menor = mas al frente. Las cajas nuevas van ANTES del panel obj-133 para que el
// boton en presentacion no quede detras del fondo.
const panelIdx = p.boxes.findIndex((b) => b.box.id === "obj-133");
p.boxes.splice(panelIdx, 0, ...boxes);

// ---------------------------------------------------------------- conexiones
const LINES = [
    // loadbang y entrada de audio (las mismas tomas que alimentan el REC normal)
    ["obj-recs-lb", 0, "obj-recs-msamp", 0],
    ["obj-recs-msamp", 0, "obj-recs-sf", 0],
    ["obj-rec-rl", 0, "obj-recs-sf", 0],
    ["obj-rec-rr", 0, "obj-recs-sf", 1],

    // Boton -> dialogo normal de "Guardar como" (el mismo que el REC). NO se usa
    // `types fold`: ese modo es un panel de GUARDAR restringido a carpetas, asi que elegir
    // una que ya existe dispara el aviso "ya existe, reemplazar?" de macOS y cualquier
    // cancelacion llega como bang por el outlet 2 -> "Cancelado" y nada grabado.
    // Aqui se teclea ruta + nombre y la carpeta la crea node.
    ["obj-recs-btn", 0, "obj-recs-sel", 0],
    ["obj-recs-sel", 0, "obj-recs-tdlg", 0],
    ["obj-recs-tdlg", 1, "obj-recs-nctr", 0],
    ["obj-recs-nctr", 0, "obj-recs-spfname", 0],
    ["obj-recs-spfname", 0, "obj-recs-dlg", 0],
    ["obj-recs-tdlg", 0, "obj-recs-dlg", 0],
    ["obj-recs-dlg", 0, "obj-recs-print", 0],
    ["obj-recs-dlg", 0, "obj-recs-tpath", 0],
    ["obj-recs-dlg", 2, "obj-recs-cancel", 0],
    ["obj-recs-dlg", 2, "obj-recs-breset", 0],
    ["obj-recs-cancel", 0, "obj-rec-status", 0],
    ["obj-recs-breset", 0, "obj-recs-btn", 0],

    // Armado en dos tiempos. `t b s` manda primero la ruta (el js pide el mkdir a node si
    // hace falta) y luego `arm`. El arranque real NO sale de aqui: lo dispara el js por su
    // outlet 4 cuando la carpeta ya existe, para que el `open` no falle.
    ["obj-recs-tpath", 1, "obj-recs-prepfolder", 0],
    ["obj-recs-prepfolder", 0, "obj-recs-js", 0],
    ["obj-recs-tpath", 0, "obj-recs-tstart", 0],
    ["obj-recs-tstart", 2, "obj-recs-sr", 0],
    ["obj-recs-sr", 1, "obj-recs-prepsr", 0],
    ["obj-recs-prepsr", 0, "obj-recs-js", 0],
    ["obj-recs-tstart", 1, "obj-recs-cnt", 0],
    ["obj-recs-tstart", 0, "obj-recs-m1", 0],

    // creacion de la carpeta (Node for Max) y vuelta al js
    ["obj-recs-js", 3, "obj-recs-node", 0],
    ["obj-recs-node", 0, "obj-recs-nroute", 0],
    ["obj-recs-node", 1, "obj-recs-nprint", 0],
    ["obj-recs-nroute", 0, "obj-recs-prepready", 0],
    ["obj-recs-prepready", 0, "obj-recs-js", 0],
    ["obj-recs-nroute", 1, "obj-recs-prepnodir", 0],
    ["obj-recs-prepnodir", 0, "obj-recs-js", 0],

    // Arranque DIRECTO (como la v1, que grababa bien): el js saca el `open` al recibir la
    // ruta y el `t b b b` dispara el `1` acto seguido. NO se espera a node: el maestro se
    // abre en el directorio padre, que existe seguro.
    ["obj-recs-js", 0, "obj-recs-sf", 0],
    ["obj-recs-m1", 0, "obj-recs-sf", 0],
    ["obj-recs-m1", 0, "obj-rec-clk", 0],
    ["obj-recs-m1", 0, "obj-rec-mreset", 0],

    // parada -> cerrar maestro -> troceo
    ["obj-recs-sel", 1, "obj-recs-tstop", 0],
    ["obj-recs-tstop", 2, "obj-recs-m0", 0],
    ["obj-recs-m0", 0, "obj-recs-sf", 0],
    ["obj-recs-m0", 0, "obj-rec-clk", 0],
    ["obj-recs-tstop", 1, "obj-recs-mwait", 0],
    ["obj-recs-mwait", 0, "obj-rec-status", 0],
    ["obj-recs-tstop", 0, "obj-recs-delsplit", 0],
    ["obj-recs-delsplit", 0, "obj-recs-msplit", 0],
    ["obj-recs-msplit", 0, "obj-recs-js", 0],

    // marcas de frontera: obj-3 outlet 1 = celda recallada; obj-59 = estado de Play
    ["obj-recs-cnt", 0, "obj-recs-snap", 0],
    ["obj-3", 1, "obj-recs-tc", 0],
    ["obj-recs-tc", 1, "obj-recs-pack", 1],
    ["obj-recs-tc", 0, "obj-recs-snap", 0],
    ["obj-59", 0, "obj-recs-tp", 0],
    ["obj-recs-tp", 1, "obj-recs-pack", 2],
    ["obj-recs-tp", 0, "obj-recs-snap", 0],
    ["obj-recs-snap", 0, "obj-recs-pack", 0],
    ["obj-recs-pack", 0, "obj-recs-prepmark", 0],
    ["obj-recs-prepmark", 0, "obj-recs-js", 0],

    // troceo offline
    ["obj-recs-js", 1, "obj-recs-buf", 0],
    ["obj-recs-buf", 1, "obj-recs-prepdone", 0],
    ["obj-recs-prepdone", 0, "obj-recs-js", 0],
    ["obj-recs-js", 2, "obj-recs-prepset", 0],
    ["obj-recs-prepset", 0, "obj-rec-status", 0],
];

for (const [s, so, d, di] of LINES) {
    p.lines.push({ patchline: { destination: [d, di], source: [s, so] } });
}

// ---------------------------------------------------------------- UI existente
// El REC pasa a media anchura para dejar sitio al SPLIT a su derecha.
byId["obj-rec-btn"].presentation_rect = [1259, 686, 79, 22];
byId["obj-rec-lbl"].text = "GRABACIÓN";
byId["obj-rec-lbl"].presentation_rect = [1259, 660, 162, 20];

// JSON.stringify de Node escribe UTF-8 literal; json.dump de Python romperia los acentos.
fs.writeFileSync(PATCH, JSON.stringify(doc, null, 1));
console.log("anadidas " + boxes.length + " cajas y " + LINES.length + " conexiones");
