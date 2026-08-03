autowatch = 1;
inlets = 1;
outlets = 1;

// Tabla de duraciones por celda de la matriz unificada (obj-3) y suma acumulada.
//
// QUE RESUELVE
//   El TOTAL (m:s y ms) contaba desde 0 en cada arranque. Ahora, al seleccionar la celda N,
//   el TOTAL muestra la suma del Time Domain de las celdas ANTERIORES DE SU MISMA FILA (la
//   posicion de esa celda dentro de la secuencia), y al pulsar Play el reloj sigue contando
//   desde ese acumulado. Cada fila es una secuencia independiente y arranca en 0.
//
// DE DONDE SALEN LAS DURACIONES
//   El Time Domain de cada celda solo vive dentro del objeto [preset]; no hay forma de
//   preguntarselo. Por eso la tabla se llena por dos vias:
//     1. `read <archivo>`  — al cargar un .maxpresets (lo manda smart_load.js con el JSON ya
//        normalizado): se leen de golpe las duraciones de TODAS las celdas del archivo.
//     2. `learn <celda> <ms>` — cada vez que se recalla (outlet 1 de [preset]) o se guarda
//        (outlet 3) una celda, el patch captura el valor de obj-12 y refresca esa entrada.
//   Una celda que nunca se ha guardado cuenta 0.
//
// MENSAJES
//   query <celda>        -> saca por el outlet el acumulado de la fila hasta celda-1
//   learn <celda> <ms>   -> guarda la duracion y saca el acumulado de esa celda
//   read <archivo>       -> rellena la tabla entera desde un .maxpresets/temp_load_1.json
//   zero                 -> vacia la tabla (Clear all presets)

var MAX_CELLS = 600;          // 20 columnas x 30 filas (ver README)
var COLS = 20;                // columnas por fila; cada FILA es una secuencia independiente
var DOMAIN_ID = "obj-12";     // number box del Time Domain (End Time), en ms

var dur = [];
var lastCell = 1;

function resetTable() {
    dur = [];
    for (var i = 0; i <= MAX_CELLS; i++) dur[i] = 0;
}
resetTable();

// Solo cuentan las celdas anteriores de la MISMA FILA: la fila de la celda N empieza en
// floor((N-1)/COLS)*COLS + 1, igual que la caja COLUMN ((N-1) % 20) + 1.
function offsetOf(cell) {
    var start = Math.floor((cell - 1) / COLS) * COLS + 1;
    var sum = 0;
    for (var i = start; i < cell && i <= MAX_CELLS; i++) sum += dur[i];
    return Math.round(sum);
}

function emit(cell) {
    if (cell < 1) cell = 1;
    if (cell > MAX_CELLS + 1) cell = MAX_CELLS + 1;
    lastCell = cell;
    outlet(0, offsetOf(cell));
}

function query(cell) {
    emit(Math.round(cell));
}

function learn(cell, ms) {
    cell = Math.round(cell);
    if (cell >= 1 && cell <= MAX_CELLS) dur[cell] = (ms > 0 ? ms : 0);
    emit(cell);
}

function zero() {
    resetTable();
    emit(1);
}

// Los datos de un preset son una lista plana de entradas; cada entrada empieza por su propia
// longitud (contandose a si misma):  5 "obj-12" number int 140000   (mismo formato que
// smart_load.js). Se busca la primera entrada escalar del Time Domain.
function domainOf(data) {
    var i = 0;
    while (i < data.length) {
        var len = data[i];
        if (typeof len !== "number" || len < 1 || i + len > data.length) break;
        if (data[i + 1] === DOMAIN_ID && data[i + 3] === "int") return data[i + 4];
        i += len;
    }
    return null;
}

function read(fname) {
    var f = new File(fname, "read");
    if (!f.isopen) {
        post("cell_times: no se pudo abrir " + fname + "\n");
        return;
    }
    var txt = "";
    while (f.isopen && f.position < f.eof) txt += f.readstring(8192);
    f.close();

    var data;
    try {
        data = JSON.parse(txt);
    } catch (e) {
        post("cell_times: JSON invalido en " + fname + ": " + e + "\n");
        return;
    }

    var presets = data.preset_data || [];
    resetTable();
    var n = 0;
    for (var p = 0; p < presets.length; p++) {
        var num = presets[p].number;
        var ms = domainOf(presets[p].data || []);
        if (typeof num === "number" && num >= 1 && num <= MAX_CELLS && ms !== null) {
            dur[num] = ms;
            n++;
        }
    }
    post("cell_times: " + n + " duraciones leidas de " + fname + "\n");
    emit(lastCell);
}
