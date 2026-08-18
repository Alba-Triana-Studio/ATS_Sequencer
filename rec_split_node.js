// Node for Max: crea la carpeta de destino de REC SPLIT y TROCEA el maestro.
//
// POR QUE HACE FALTA (carpeta)
//   Max no sabe crear directorios: ni el objeto `File` ni `Folder` de js tienen mkdir, y
//   `savedialog fold` devuelve <carpeta elegida>/<nombre tecleado> SIN crear esa carpeta.
//   Sin esto, `sfrecord~ open` falla y no se graba nada (bug del 2026-08-17).
//
// POR QUE HACE FALTA (troceo) — 2026-08-18
//   El troceo lo hacia [buffer~] con `read <maestro> <inicio_ms> <duracion_ms>`, y ahi los
//   cortes NO caen en la muestra pedida: buffer~ maneja esos tiempos con precision de float
//   de 32 bits (~7 cifras significativas). A los 10 minutos de toma un instante son ~600000
//   ms, o sea 0,03 ms de error = mas de una muestra. Medido en una toma real de 13 min: los
//   trozos empezaban 0 o 1 muestra antes de lo pedido segun su posicion en el maestro, y a
//   varios les faltaba la ultima muestra (que salia en 0). No hay margen de redondeo que lo
//   arregle: el error depende de lo grande que sea el numero.
//   Aqui el corte es aritmetica de ENTEROS sobre bytes, asi que es exacto por construccion, y
//   ademas el trozo es copia byte a byte del maestro: no pasa por el float32 interno de
//   buffer~, que cambiaba algun bit menos significativo al ida y vuelta int24 -> float32.
//
// PROTOCOLO
//   entra:  mkdir <ruta>                     crea la carpeta
//           move  <origen> <destino>         mueve un archivo
//           slicebegin <maestro>             empieza una tanda de troceo
//           slice <ini_muestras> <n_muestras> <ruta>    encola un trozo
//           sliceend <destino_maestro|->     trocea todo y mueve el maestro si se pide
//   sale:   mkdirok   <ruta>     la carpeta existe (creada o ya estaba)
//           mkdirfail <ruta>     no se pudo crear; rec_split.js deja todo en el padre
//           sliceprogress <i> <total>
//           sliceok <escritos> / slicefail <motivo>
//   La ruta se devuelve TAL CUAL llego (en sintaxis de Max), porque rec_split.js y los
//   objetos de Max siguen trabajando con ella; la conversion a POSIX se queda aqui dentro.
//
//   El troceo es AUTONOMO a proposito: node mueve el maestro el solo al terminar, sin esperar
//   a que Max le conteste. Asi funciona igual aunque su outlet solo llegue al [print NODE]:
//   los mensajes de vuelta unicamente sirven para refrescar la linea de estado.
//
//   NADA DE ESTO BLOQUEA LA GRABACION: rec_split.js abre el maestro en el directorio padre
//   sin esperar respuesta. La carpeta solo hace falta al trocear, minutos despues.

const fs = require("fs");
const path = require("path");
const maxAPI = require("max-api");
const aiff = require("./aiff_slice.js");

// savedialog entrega rutas al estilo de Max: "Macintosh HD:/Users/...". Node necesita POSIX.
// /Volumes/<volumen> vale para todos los casos: en macOS el volumen de arranque tambien
// esta ahi como enlace simbolico a "/".
function toPosix(p) {
    const m = /^([^/:]+):(\/.*)$/.exec(p);
    return m ? path.join("/Volumes", m[1], m[2]) : p;
}

let master = null;      // maestro de la tanda de troceo en curso
let queue = [];         // trozos pendientes: {ini, n, dest} en MUESTRAS

maxAPI.addHandlers({
    mkdir: (...args) => {
        // Si la ruta llegara partida en varios atomos, se recompone con espacios.
        const raw = args.join(" ");
        const target = toPosix(raw);
        try {
            fs.mkdirSync(target, { recursive: true });
            maxAPI.post("rec_split_node: carpeta lista -> " + target);
            maxAPI.outlet("mkdirok", raw);
        } catch (err) {
            maxAPI.post("rec_split_node: no se pudo crear " + target + ": " + err.message);
            maxAPI.outlet("mkdirfail", raw);
        }
    },

    // El maestro se graba en el directorio padre (para que el open nunca dependa de node);
    // cuando el troceo termina se lleva dentro de la carpeta.
    move: (origen, destino) => {
        const de = toPosix(String(origen));
        const a = toPosix(String(destino));
        try {
            fs.renameSync(de, a);
            maxAPI.post("rec_split_node: maestro movido a " + a);
        } catch (err) {
            maxAPI.post("rec_split_node: no se pudo mover el maestro: " + err.message);
        }
    },

    // ---- troceo ----------------------------------------------------------------------
    // rec_split.js manda: slicebegin <maestro>, un `slice` por celda y sliceend <destino>.
    // Los tiempos llegan en MUESTRAS (enteros): ver la cabecera y aiff_slice.js.

    slicebegin: (...args) => {
        master = args.join(" ");
        queue = [];
    },

    // La ruta va la ULTIMA para poder recomponerla si llegara partida por los espacios.
    slice: (ini, n, ...destino) => {
        queue.push({ ini: Math.round(Number(ini)), n: Math.round(Number(n)),
                     dest: destino.join(" ") });
    },

    sliceend: (...args) => {
        const destinoMaestro = args.join(" ");
        if (!master || !queue.length) {
            maxAPI.post("rec_split_node: sliceend sin nada encolado");
            maxAPI.outlet("slicefail", "sin tramos");
            return;
        }
        const src = toPosix(master);
        const tanda = queue;
        queue = [];
        let escritos = 0;
        try {
            const info = aiff.readInfo(src);
            maxAPI.post("rec_split_node: maestro " + info.frames + " muestras, " +
                        info.channels + " canales, " + info.bits + " bits");
            for (let i = 0; i < tanda.length; i++) {
                const t = tanda[i];
                const n = aiff.slice(src, info, t.ini, t.n, toPosix(t.dest));
                if (n !== t.n) {
                    maxAPI.post("rec_split_node: OJO, el trozo " + (i + 1) + " pedia " + t.n +
                                " muestras y el maestro solo tenia " + n);
                }
                escritos++;
                maxAPI.outlet("sliceprogress", escritos, tanda.length);
            }
        } catch (err) {
            maxAPI.post("rec_split_node: fallo al trocear: " + err.message);
            maxAPI.outlet("slicefail", err.message);
            return;
        }
        // El maestro se mueve aqui, no desde Max: asi el troceo termina entero aunque la
        // respuesta de node no llegue de vuelta al js.
        if (destinoMaestro && destinoMaestro !== "-") {
            try {
                fs.renameSync(src, toPosix(destinoMaestro));
            } catch (err) {
                maxAPI.post("rec_split_node: no se pudo mover el maestro: " + err.message);
            }
        }
        maxAPI.post("rec_split_node: " + escritos + " trozos escritos");
        maxAPI.outlet("sliceok", escritos);
    },
});
