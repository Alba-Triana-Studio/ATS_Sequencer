autowatch = 1;

// Post-proceso del archivo que acaba de escribir el objeto [preset]:
// anade el tamano de la matriz y el marcador de formato "unified4".
//
// OJO: este objeto (obj-append-mat-1) esta conectado al 5o outlet de [preset],
// que NO notifica escrituras ("Connect to Object to Capture Attributes"): el
// patch nunca llama a write(), asi que ningun .maxpresets guardado desde el
// boton Guardar lleva el marcador. Por eso smart_load.js deduce el formato del
// contenido y no del marcador. Queda como utilidad manual: mandarle
// "write <ruta>" a este objeto para marcar un archivo ya escrito.
function write(filepath) {
    var f = new File(filepath, "read");
    if (!f.isopen) {
        post("Error opening file for appending matrix size: " + filepath + "\n");
        return;
    }
    var jsonStr = "";
    while (f.isopen && f.position < f.eof) {
        jsonStr += f.readstring(8192);
    }
    f.close();

    try {
        var data = JSON.parse(jsonStr);
        data.matrix_size = "20x30";
        data.ats_format = "unified4";

        var outFile = new File(filepath, "write", "TEXT");
        if (outFile.isopen) {
            outFile.eof = 0;
            // JSON compacto: con los 4 canales el archivo es ~4x mas grande.
            var out = JSON.stringify(data);
            // writestring corta a ~32767 bytes por llamada: escribir por bloques.
            var chunkSize = 8192;
            for (var i = 0; i < out.length; i += chunkSize) {
                outFile.writestring(out.substring(i, i + chunkSize));
            }
            outFile.close();
            post("Saved unified preset file (" + out.length + " bytes): " + filepath + "\n");
        }
    } catch(e) {
        post("Error parsing JSON in append_matrix_size: " + e + "\n");
    }
}
