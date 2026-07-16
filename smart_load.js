autowatch = 1;

var setupIndex = jsarguments[1] || 1;

// Mappings for the 5 key objects in each setup:
// [End Time, Freq Min, Freq Max, Pitch Curve, Amp Curve]
var maps = [
    ['obj-12', 'obj-5', 'obj-6', 'obj-77', 'obj-2'], // Setup 1
    ['obj-195', 'obj-188', 'obj-186', 'obj-194', 'obj-199'], // Setup 2
    ['obj-315', 'obj-308', 'obj-306', 'obj-314', 'obj-319'], // Setup 3
    ['obj-781', 'obj-774', 'obj-772', 'obj-780', 'obj-785']  // Setup 4
];

var targetMap = maps[setupIndex - 1];

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
    
    var newDataStr = jsonStr;
    
    // Replace any of the other maps with the targetMap
    for (var m = 0; m < 4; m++) {
        if (m === (setupIndex - 1)) continue; // Don't replace self
        
        var sourceMap = maps[m];
        for (var i = 0; i < sourceMap.length; i++) {
            var regex = new RegExp('"' + sourceMap[i] + '"', 'g');
            newDataStr = newDataStr.replace(regex, '"' + targetMap[i] + '"');
        }
    }
    
    // Parse to compact the JSON and avoid inflating size with tabs
    try {
        var data = JSON.parse(newDataStr);
        newDataStr = JSON.stringify(data); // compacto: evita inflar el tamaño con tabs
    } catch(e) {
        post("Error parsing JSON in smart_load: " + e + "\n");
    }

    // Create a temporary file to load
    var outFile = new File("temp_load_" + setupIndex + ".json", "write", "TEXT");
    if (outFile.isopen) {
        outFile.eof = 0; // Truncar el archivo para evitar corrupción de JSON
        // writestring de Max tiene un tope de ~32767 bytes por llamada;
        // escribimos en bloques para no truncar archivos grandes.
        var chunkSize = 8192;
        for (var p = 0; p < newDataStr.length; p += chunkSize) {
            outFile.writestring(newDataStr.substring(p, p + chunkSize));
        }
        outFile.close();
        
        // Output the command to read the newly translated file
        outlet(0, "read", "temp_load_" + setupIndex + ".json");
    } else {
        post("Error writing temporary load file.\n");
    }
}
