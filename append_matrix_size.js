autowatch = 1;

// Post-proceso del archivo que acaba de escribir el objeto [preset].
// Anade el tamano de la matriz y el marcador de formato que usa smart_load.js
// para distinguir un .maxpresets unificado (4 canales) de uno antiguo (1 canal).
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
