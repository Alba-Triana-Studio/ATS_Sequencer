autowatch = 1;

// Cargador de .maxpresets para la matriz unificada (obj-3 guarda los 4 canales).
//
//  - Archivo nuevo  ("ats_format":"unified4"): se carga tal cual.
//  - Archivo antiguo (una sola matriz): sus objetos se remapean al CANAL 1 y se
//    rellenan los canales 2, 3 y 4 con envolventes planas a 0 (vacios/silencio)
//    en todos los slots de preset.

// [End Time, Freq Min, Freq Max, Pitch Curve, Amp Curve] por canal
var MAPS = [
    ['obj-12',  'obj-5',   'obj-6',   'obj-77',  'obj-2'],    // canal 1
    ['obj-195', 'obj-188', 'obj-186', 'obj-194', 'obj-199'],  // canal 2
    ['obj-315', 'obj-308', 'obj-306', 'obj-314', 'obj-319'],  // canal 3
    ['obj-781', 'obj-774', 'obj-772', 'obj-780', 'obj-785']   // canal 4
];

var DEFAULTS = { end: 140000, fmin: 25, fmax: 28 };

// Clientes reales de la matriz unificada: los 5 objetos del canal 1 (End Time y
// Freq Min/Max son globales y se propagan a los otros canales) mas las dos
// graficas de cada uno de los canales 2, 3 y 4.
function knownIds() {
    var s = {};
    for (var i = 0; i < 5; i++) s[MAPS[0][i]] = true;
    for (var c = 1; c < 4; c++) { s[MAPS[c][3]] = true; s[MAPS[c][4]] = true; }
    s['obj-append-mat-1'] = true; // cliente del outlet de escritura
    return s;
}

// Los datos de un preset son una lista plana de entradas; cada entrada empieza
// por su propia longitud (contandose a si misma):  5 "obj-12" number int 140000
function splitEntries(data) {
    var out = [], i = 0;
    while (i < data.length) {
        var len = data[i];
        if (typeof len !== 'number' || len < 1 || i + len > data.length) break;
        out.push(data.slice(i, i + len));
        i += len;
    }
    return out;
}

function flatten(entries) {
    var out = [];
    for (var i = 0; i < entries.length; i++) out = out.concat(entries[i]);
    return out;
}

// Detecta de que canal proviene un archivo antiguo contando ids de cada mapa.
function detectChannel(entries) {
    var best = 0, bestHits = -1;
    for (var c = 0; c < 4; c++) {
        var hits = 0;
        for (var e = 0; e < entries.length; e++)
            for (var i = 0; i < 5; i++)
                if (entries[e][1] === MAPS[c][i]) hits++;
        if (hits > bestHits) { bestHits = hits; best = c; }
    }
    return best;
}

function scalarOf(entries, id, fallback) {
    for (var e = 0; e < entries.length; e++)
        if (entries[e][1] === id && entries[e][3] === 'int')
            return entries[e][4];
    return fallback;
}

// Canal vacio: pitch plano en fmin, amplitud plana en 0 (silencio real).
// Solo las dos graficas: End Time y Freq Min/Max son globales (canal 1).
function emptyChannel(c, end, fmin, fmax) {
    var m = MAPS[c], P = m[3], A = m[4];
    return [
        [4, P, 'function', 'clear'],
        [8, P, 'function', 'add_with_curve', 0,   fmin, 0, 0],
        [8, P, 'function', 'add_with_curve', end, fmin, 0, 0],
        [5, P, 'function', 'domain', end],
        [6, P, 'function', 'range', fmin, fmax],
        [5, P, 'function', 'mode', 1],
        [4, A, 'function', 'clear'],
        [8, A, 'function', 'add_with_curve', 0,   0, 0, 0],
        [8, A, 'function', 'add_with_curve', end, 0, 0, 0],
        [5, A, 'function', 'domain', end],
        [6, A, 'function', 'range', 0, 1],
        [5, A, 'function', 'mode', 1]
    ];
}

// Descarta entradas de objetos que ya no son clientes de la matriz: un preset
// unificado guardado con una version anterior traia tambien las cajas de End
// Time / Freq de los canales 2-4, y recuperarlas provocaria errores en Max.
function filterClients(data) {
    var known = knownIds();
    var presets = data.preset_data || [];
    var dropped = 0;
    for (var n = 0; n < presets.length; n++) {
        var entries = splitEntries(presets[n].data || []);
        var kept = [];
        for (var e = 0; e < entries.length; e++) {
            if (known[entries[e][1]]) kept.push(entries[e]); else dropped++;
        }
        presets[n].data = flatten(kept);
    }
    post("smart_load: archivo unificado (" + presets.length + " presets" +
         (dropped ? ", " + dropped + " entradas obsoletas descartadas" : "") + ")\n");
    return data;
}

function convertLegacy(data) {
    var known = knownIds();
    var presets = data.preset_data || [];
    var src = null;

    for (var n = 0; n < presets.length; n++) {
        var entries = splitEntries(presets[n].data || []);
        if (src === null) src = detectChannel(entries);

        // Remapear los ids del canal de origen a los del canal 1
        for (var e = 0; e < entries.length; e++) {
            for (var i = 0; i < 5; i++) {
                if (entries[e][1] === MAPS[src][i]) { entries[e][1] = MAPS[0][i]; break; }
            }
            if (/^obj-append-mat-/.test(String(entries[e][1]))) entries[e][1] = 'obj-append-mat-1';
        }

        // Descartar entradas de objetos que ya no son clientes de la matriz
        var kept = [];
        for (var e2 = 0; e2 < entries.length; e2++)
            if (known[entries[e2][1]]) kept.push(entries[e2]);

        var end  = scalarOf(kept, MAPS[0][0], DEFAULTS.end);
        var fmin = scalarOf(kept, MAPS[0][1], DEFAULTS.fmin);
        var fmax = scalarOf(kept, MAPS[0][2], DEFAULTS.fmax);

        for (var c = 1; c < 4; c++)
            kept = kept.concat(emptyChannel(c, end, fmin, fmax));

        presets[n].data = flatten(kept);
    }

    post("smart_load: archivo antiguo (canal " + (src + 1) + ") -> canal 1; " +
         "canales 2-4 vacios en " + presets.length + " presets\n");
    return data;
}

function anything() {
    var filepath = messagename;
    if (inlet !== 0) return;
    if (filepath === "bang") return;

    var f = new File(filepath, "read");
    if (!f.isopen) {
        post("Error opening file: " + filepath + "\n");
        return;
    }
    var jsonStr = "";
    while (f.isopen && f.position < f.eof) {
        jsonStr += f.readstring(8192);
    }
    f.close();

    var data;
    try {
        data = JSON.parse(jsonStr);
    } catch(e) {
        post("Error parsing JSON in smart_load: " + e + "\n");
        return;
    }

    if (data.ats_format !== "unified4") {
        data = convertLegacy(data);
    } else {
        data = filterClients(data);
    }

    var out = JSON.stringify(data);
    var outFile = new File("temp_load_1.json", "write", "TEXT");
    if (!outFile.isopen) {
        post("Error writing temporary load file.\n");
        return;
    }
    outFile.eof = 0; // truncar para no dejar restos de una carga anterior
    // writestring corta a ~32767 bytes por llamada: escribir por bloques.
    var chunkSize = 8192;
    for (var i = 0; i < out.length; i += chunkSize) {
        outFile.writestring(out.substring(i, i + chunkSize));
    }
    outFile.close();

    outlet(0, "read", "temp_load_1.json");
}
