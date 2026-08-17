autowatch = 1;
inlets = 1;
outlets = 4;

// Grabacion dividida por celdas (boton "SPLIT" del panel MASTER).
//
// QUE RESUELVE
//   El boton REC normal graba una sola toma continua. SPLIT guarda ADEMAS un archivo
//   independiente por cada celda de la matriz de presets que se haya reproducido, dentro de
//   la carpeta que elija el usuario.
//
// POR QUE NO SE PARA Y REARRANCA sfrecord~ EN CADA CELDA
//   La refpage de sfrecord~ dice que tras un `0` hace falta otro `open` para volver a grabar,
//   y ese `open` es una operacion de disco asincrona: cada frontera se comeria unos
//   milisegundos y el error se acumularia toma tras toma. Por eso aqui:
//     1. se graba UNA sola toma continua a un archivo maestro (imposible perder muestras),
//     2. en cada cambio de celda el patch anota el offset en MUESTRAS (count~ + snapshot~;
//        dominio de audio, sin deriva frente al reloj del scheduler),
//     3. al parar se trocea OFFLINE con [buffer~] (`replace` + `writeaiff`), sin riesgo de
//        xruns porque ya no hay nada sonando.
//   Como la marca y el cambio de envolvente salen del MISMO evento del scheduler, el corte
//   cae exactamente donde cambia el sonido.
//
// EL ARRANQUE NO ESPERA A NADIE (leccion del 2026-08-17)
//   Max no sabe crear directorios, asi que la carpeta la crea Node for Max. Una version
//   anterior DIFERIA el arranque de la grabacion hasta que node contestaba: la carpeta se
//   creaba pero no se grababa nada. Ahora el maestro se abre SIEMPRE y de forma sincrona en
//   el directorio PADRE (que existe con seguridad) con el nombre elegido como prefijo, y el
//   mkdir va en paralelo. La carpeta solo hace falta al TROCEAR, varios minutos despues; si
//   para entonces existe, los trozos van dentro y el maestro se mueve ahi; si no, todo se
//   queda en el padre con el prefijo. Grabar nunca depende de node.
//
// LO QUE NO SE ESTA REPRODUCIENDO NO SE TROCEA: los tramos con el Play apagado quedan en el
// maestro pero no generan archivo, que es el comportamiento pedido.
//
// MENSAJES DE ENTRADA
//   folder <ruta>              -> destino elegido; abre el maestro y pide el mkdir si hace falta
//   sr <hz>                    -> sample rate actual (lo manda [adstatus sr])
//   mark <muestra> <celda> <play>
//                              -> frontera; play=1 abre tramo nuevo, play=0 cierra el abierto
//   split                      -> desarma y trocea el maestro
//   dirready / dirfail         -> respuesta de node al mkdir (solo informativa)
//   abort                      -> cancela sin trocear
//
// SALIDAS
//   outlet 0 -> [sfrecord~ 2] del grabador SPLIT      (open <ruta> aiff)
//   outlet 1 -> [buffer~ atssplit]                    (samptype / replace / crop / writeaiff)
//   outlet 2 -> texto de estado (el patch le antepone `set` antes de la caja de mensaje)
//   outlet 3 -> [node.script rec_split_node.js]       (mkdir <ruta> / move <origen> <destino>)

var COLS = 20;                    // columnas por fila (igual que obj-ttx-col-mod y cell_times.js)
var MIN_SEG_MS = 50;              // tramos mas cortos que esto se descartan (marcas espurias)
var MASTER_NAME = "00_maestro.aif";
var INDEX_NAME = "00_indice.txt";
var BUF_NAME = "atssplit";

var armed = false;
var inFolder = false;             // se decide al TROCEAR, no al armar
var base = "";                    // carpeta destino elegida (sin barra final)
var master = "";
var sampleRate = 44100;

var segs = [];                    // {cell, a, b} en muestras desde el arranque de la grabacion
var openSeg = null;

var phase = 0;                    // 0 parado, 1 esperando lectura, 2 esperando escritura
var idx = 0;

function status(txt) {
    outlet(2, txt);
}

function pad2(n) {
    n = Math.round(n);
    return (n < 10 ? "0" : "") + n;
}

function stripSlash(p) {
    while (p.length > 1 && p.charAt(p.length - 1) === "/") p = p.substring(0, p.length - 1);
    return p;
}

// Max's File no crea directorios, y el dialogo devuelve <carpeta>/<nombre tecleado> sin crear
// nada. La carpeta la crea node; aqui solo se comprueba si YA existe.
//
// OJO: no vale sondear con `new File(ruta, "write")`. Si Max no puede resolver la ruta, crea
// el archivo en la carpeta del patch y devuelve isopen = true igualmente (falso positivo
// comprobado el 2026-08-17; a sfrecord~ le pasa lo mismo). Hay que listar el directorio PADRE
// y buscar ahi la carpeta por nombre, que es lo unico que distingue "no existe" de "existe y
// esta vacia".
function folderExists(path) {
    var cut = path.lastIndexOf("/");
    if (cut < 1) return false;
    var parent = path.substring(0, cut);
    var name = path.substring(cut + 1).toLowerCase();
    if (name === "") return false;

    var f;
    try {
        f = new Folder(parent);
        f.typelist = ["fold"];
    } catch (e) {
        return false;
    }
    var found = false;
    while (!f.end) {
        if (String(f.filename).toLowerCase() === name) {
            found = true;
            break;
        }
        f.next();
    }
    f.close();
    return found;
}

// Durante la grabacion todo va al PADRE con prefijo; al trocear se decide si cabe dentro.
function pathFor(name) {
    return inFolder ? base + "/" + name : base + "_" + name;
}

// `:` es el separador de rutas de Max (estilo "Macintosh HD:/Users/..."), asi que Max NO
// puede direccionar un archivo dentro de una carpeta que lleve dos puntos en el nombre: la
// ruta queda ambigua y sfrecord~/buffer~ acaban escribiendo en la carpeta del patch creyendo
// que todo fue bien. Ojo: en Finder ese caracter se VE como "/" — una carpeta que Finder
// muestra como "Grabaciones 08/2026" se llama "Grabaciones 08:2026" en disco.
// node y el shell si las manejan; el limite es de Max.
function hasIllegalColon(p) {
    // se quita el prefijo de volumen ("Macintosh HD:/...") antes de mirar
    var rest = p.replace(/^[^\/:]+:(?=\/)/, "");
    return rest.indexOf(":") >= 0;
}

function folder(path) {
    base = stripSlash("" + path);

    if (hasIllegalColon(base)) {
        armed = false;
        post("rec_split: RUTA NO VALIDA PARA MAX -> " + base + "\n" +
             "rec_split: el caracter ':' es el separador de rutas de Max, asi que no puede " +
             "escribir ahi (Finder lo muestra como '/'). Renombra la carpeta sin ':' ni '/' " +
             "en el nombre, o elige otra.\n");
        status("✗ Ruta con ':' — renombra la carpeta");
        return;
    }

    segs = [];
    openSeg = null;
    phase = 0;
    armed = true;
    inFolder = false;

    if (folderExists(base)) {
        post("rec_split: la carpeta ya existe: " + base + "\n");
    } else {
        post("rec_split: pidiendo a node que cree " + base + "\n");
        outlet(3, "mkdir", base);
    }

    // El maestro va SIEMPRE al padre con prefijo: asi el open no depende de que la carpeta
    // exista ya, y grabar nunca se queda esperando a node.
    master = base + "_" + MASTER_NAME;
    post("rec_split: maestro = " + master + "\n");
    outlet(0, "open", master, "aiff");
    status("◉ SPLIT REC");
}

function dirready() {
    post("rec_split: node confirma la carpeta\n");
}

function dirfail() {
    post("rec_split: node NO pudo crear la carpeta; los trozos se quedaran en el padre " +
         "con el nombre como prefijo\n");
}

function sr(v) {
    v = Math.round(v);
    if (v > 0) sampleRate = v;
}

function samplesToMs(n) {
    return n * 1000.0 / sampleRate;
}

function closeSeg(sample) {
    if (openSeg === null) return;
    if (samplesToMs(sample - openSeg.a) >= MIN_SEG_MS) {
        openSeg.b = sample;
        segs.push(openSeg);
    }
    openSeg = null;
}

function mark(sample, cell, play) {
    if (!armed) return;
    if (sample < 0) return;
    cell = Math.round(cell);
    play = Math.round(play);

    closeSeg(sample);
    if (play && cell >= 1) openSeg = { cell: cell, a: sample, b: sample };
}

function abort() {
    armed = false;
    segs = [];
    openSeg = null;
    phase = 0;
    status("SPLIT cancelado");
}

function nameFor(i) {
    var cell = segs[i].cell;
    var row = Math.floor((cell - 1) / COLS) + 1;
    var bar = ((cell - 1) % COLS) + 1;
    return pad2(i + 1) + "_f" + pad2(row) + "_b" + pad2(bar) + ".aif";
}

function split() {
    if (!armed) return;
    armed = false;
    closeSeg(openSeg === null ? 0 : openSeg.b);

    // Node ha tenido toda la toma para crear la carpeta; el disco manda.
    inFolder = folderExists(base);
    if (!inFolder) {
        post("rec_split: la carpeta no existe; los trozos van al padre con prefijo\n");
    }

    if (segs.length === 0) {
        status("SPLIT: sin tramos");
        post("rec_split: no se reprodujo ninguna celda, no hay nada que trocear\n");
        return;
    }

    outlet(1, "samptype", "int24");
    idx = 0;
    startSeg();
}

function startSeg() {
    var s = segs[idx];
    var startMs = samplesToMs(s.a);
    var durMs = samplesToMs(s.b - s.a);
    phase = 1;
    status("SPLIT " + (idx + 1) + "/" + segs.length);
    outlet(1, "replace", master, startMs, durMs, 2);
}

// El outlet derecho de buffer~ da un bang cuando termina una lectura O una escritura de
// archivo; por eso hace falta la maquina de estados de `phase`.
function done() {
    if (phase === 1) {
        var s = segs[idx];
        var want = Math.round(s.b - s.a);
        var got = frameCount();
        // `replace` deberia redimensionar al trozo pedido. Si por lo que sea trajo mas
        // muestras (p.ej. leyo el archivo entero), se recorta antes de escribir.
        if (got > 0 && want > 0 && got > want + 128) {
            post("rec_split: buffer con " + got + " frames, se esperaban " + want +
                 "; se recorta\n");
            outlet(1, "crop", 0, samplesToMs(s.b - s.a));
        }
        phase = 2;
        outlet(1, "writeaiff", pathFor(nameFor(idx)));
        return;
    }
    if (phase === 2) {
        idx++;
        if (idx < segs.length) {
            startSeg();
        } else {
            phase = 0;
            writeIndex();
            // El maestro se grabo en el padre; si la carpeta existe, se lleva dentro.
            if (inFolder) outlet(3, "move", master, base + "/" + MASTER_NAME);
            status("SPLIT: " + segs.length + " archivos");
            post("rec_split: " + segs.length + " archivos escritos\n");
        }
    }
}

function frameCount() {
    try {
        var b = new Buffer(BUF_NAME);
        return b.framecount();
    } catch (e) {
        return 0;
    }
}

function writeIndex() {
    var f;
    try {
        f = new File(pathFor(INDEX_NAME), "write");
    } catch (e) {
        return;
    }
    if (!f.isopen) return;
    f.eof = 0;
    // el maestro se graba en el padre y se mueve dentro al final: se anota donde acabara
    f.writeline("# Grabacion dividida ATS - maestro: " + pathFor(MASTER_NAME));
    f.writeline("# sample rate: " + sampleRate);
    f.writeline("# archivo\tcelda\tfila\tbar\tinicio_ms\tduracion_ms");
    for (var i = 0; i < segs.length; i++) {
        var s = segs[i];
        var cell = s.cell;
        var row = Math.floor((cell - 1) / COLS) + 1;
        var bar = ((cell - 1) % COLS) + 1;
        f.writeline(nameFor(i) + "\t" + cell + "\t" + row + "\t" + bar + "\t" +
                    samplesToMs(s.a).toFixed(3) + "\t" + samplesToMs(s.b - s.a).toFixed(3));
    }
    f.close();
}
