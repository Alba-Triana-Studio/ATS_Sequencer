// Node for Max: lo unico que hace es crear la carpeta de destino de REC SPLIT.
//
// POR QUE HACE FALTA
//   Max no sabe crear directorios: ni el objeto `File` ni `Folder` de js tienen mkdir, y
//   `savedialog fold` devuelve <carpeta elegida>/<nombre tecleado> SIN crear esa carpeta.
//   Sin esto, `sfrecord~ open` falla y no se graba nada (bug del 2026-08-17).
//
// PROTOCOLO
//   entra:  mkdir <ruta>                  crea la carpeta
//           move  <origen> <destino>      mueve el maestro dentro de la carpeta al terminar
//   sale:   mkdirok   <ruta>     la carpeta existe (creada o ya estaba)
//           mkdirfail <ruta>     no se pudo crear; rec_split.js deja todo en el padre
//   La ruta se devuelve TAL CUAL llego (en sintaxis de Max), porque rec_split.js y los
//   objetos de Max siguen trabajando con ella; la conversion a POSIX se queda aqui dentro.
//
//   NADA DE ESTO BLOQUEA LA GRABACION: rec_split.js abre el maestro en el directorio padre
//   sin esperar respuesta. La carpeta solo hace falta al trocear, minutos despues.

const fs = require("fs");
const path = require("path");
const maxAPI = require("max-api");

// savedialog entrega rutas al estilo de Max: "Macintosh HD:/Users/...". Node necesita POSIX.
// /Volumes/<volumen> vale para todos los casos: en macOS el volumen de arranque tambien
// esta ahi como enlace simbolico a "/".
function toPosix(p) {
    const m = /^([^/:]+):(\/.*)$/.exec(p);
    return m ? path.join("/Volumes", m[1], m[2]) : p;
}

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
});
