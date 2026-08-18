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
//     3. al parar se trocea OFFLINE, sin riesgo de xruns porque ya no hay nada sonando.
//   Como la marca y el cambio de envolvente salen del MISMO evento del scheduler, el corte
//   cae exactamente donde cambia el sonido.
//
// EL TROCEO LO HACE NODE, NO [buffer~] (2026-08-18)
//   buffer~ solo sabe leer un trozo por INICIO y DURACION EN MILISEGUNDOS, y los maneja con
//   precision de float de 32 bits (~7 cifras). A los 10 minutos de toma un instante son
//   ~600000 ms y el error de representacion ya pasa de UNA MUESTRA. Sintoma medido en tomas
//   reales: los trozos empezaban 0 o 1 muestra antes segun su posicion en el maestro, y a
//   varios les faltaba la ultima muestra, que salia en 0. Ningun margen de redondeo lo
//   arregla, porque el error crece con lo grande que sea el numero. Ahora los cortes van en
//   MUESTRAS (enteros) a rec_split_node.js, que copia los bytes del maestro: exacto por
//   construccion y ademas identico bit a bit (buffer~ pasaba el audio por float32 y cambiaba
//   algun bit menos significativo). Ver aiff_slice.js.
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
//   split                      -> desarma y manda trocear el maestro
//   dirready / dirfail         -> respuesta de node al mkdir (solo informativa)
//   sliceprogress / sliceok / slicefail
//                              -> avance del troceo (solo refrescan la linea de estado)
//   abort                      -> cancela sin trocear
//
// SALIDAS
//   outlet 0 -> [sfrecord~ 2] del grabador SPLIT      (open <ruta> aiff)
//   outlet 1 -> [buffer~ atssplit]                    (sin uso desde que trocea node)
//   outlet 2 -> texto de estado (el patch le antepone `set` antes de la caja de mensaje)
//   outlet 3 -> [node.script rec_split_node.js]       (mkdir / move / slicebegin+slice+sliceend)

var COLS = 20;                    // columnas por fila (igual que obj-ttx-col-mod y cell_times.js)
var MIN_SEG_MS = 50;              // tramos mas cortos que esto se descartan (marcas espurias)
var MASTER_NAME = "00_maestro.aif";
var INDEX_NAME = "00_indice.txt";

var armed = false;
var inFolder = false;             // se decide al TROCEAR, no al armar
var base = "";                    // carpeta destino elegida (sin barra final)
var master = "";
var sampleRate = 44100;

var segs = [];                    // {cell, a, b} en muestras desde el arranque de la grabacion
var openSeg = null;

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

    // El indice primero: no depende de node, asi que existe pase lo que pase despues.
    writeIndex();

    // El troceo lo hace node (ver el comentario de arriba). Los tiempos van en MUESTRAS y
    // la ruta siempre la ULTIMA, para poder recomponerla si Max la partiera por los espacios.
    outlet(3, "slicebegin", master);
    for (var i = 0; i < segs.length; i++) {
        outlet(3, "slice", segs[i].a, segs[i].b - segs[i].a, pathFor(nameFor(i)));
    }
    outlet(3, "sliceend", inFolder ? base + "/" + MASTER_NAME : "-");
    // Si el outlet de node.script no llega hasta aqui (ver scratch/patch_rec_split_reply.js),
    // esta linea no se refresca sola: el avance real va siempre a la consola de Max.
    status("SPLIT: troceando " + segs.length + "… (consola)");
    post("rec_split: troceando " + segs.length + " tramos con node\n");
}

// Respuestas de node. Solo refrescan la linea de estado: el troceo y el traslado del maestro
// los termina node por su cuenta, asi que todo funciona igual si estos mensajes no llegan.
function sliceprogress(i, total) {
    status("SPLIT " + Math.round(i) + "/" + Math.round(total));
}

function sliceok(n) {
    n = Math.round(n);
    status("SPLIT: " + n + " archivos");
    post("rec_split: " + n + " archivos escritos\n");
}

function slicefail() {
    status("✗ SPLIT: fallo al trocear");
    post("rec_split: node no pudo trocear; el maestro esta intacto, mira la consola\n");
}

// Llegan si el outlet de node.script se conecta tambien al js; el aviso ya lo da dirready().
function mkdirok() {}
function mkdirfail() {}

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
