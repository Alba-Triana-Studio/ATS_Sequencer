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
    
    // Check if the file is old (no matrix_size) and map the preset numbers
    try {
        var data = JSON.parse(newDataStr);
        if (!data.matrix_size || data.matrix_size !== "20x30") {
            post("Loading old 10x17 preset file. Mapping to top-right corner...\n");
            if (data.preset_data) {
                var oldCols = 10;
                var newCols = 20;
                for (var j = 0; j < data.preset_data.length; j++) {
                    var item = data.preset_data[j];
                    if (item && item.number) {
                        var oldIdx = item.number;
                        var oldRow = Math.floor((oldIdx - 1) / oldCols);
                        var oldCol = (oldIdx - 1) % oldCols;
                        
                        // Map to top left: newRow = oldRow, newCol = oldCol
                        var newRow = oldRow;
                        var newCol = oldCol;
                        
                        var newIdx = newRow * newCols + newCol + 1;
                        item.number = newIdx;
                    }
                }
            }
        }
        newDataStr = JSON.stringify(data, null, '\t');
    } catch(e) {
        post("Error parsing JSON in smart_load: " + e + "\n");
    }
    
    // Create a temporary file to load
    var outFile = new File("temp_load_" + setupIndex + ".json", "write", "TEXT");
    if (outFile.isopen) {
        outFile.eof = 0; // Truncar el archivo para evitar corrupción de JSON
        outFile.writestring(newDataStr);
        outFile.close();
        
        // Output the command to read the newly translated file
        outlet(0, "read", "temp_load_" + setupIndex + ".json");
    } else {
        post("Error writing temporary load file.\n");
    }
}
