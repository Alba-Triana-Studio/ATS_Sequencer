autowatch = 1;

function write(filepath) {
    post("Intercepted write: " + filepath + "\n");
    
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
        
        var outFile = new File(filepath, "write", "TEXT");
        if (outFile.isopen) {
            outFile.eof = 0;
            outFile.writestring(JSON.stringify(data, null, '\t'));
            outFile.close();
            post("Successfully appended matrix_size to " + filepath + "\n");
        }
    } catch(e) {
        post("Error parsing JSON in append_matrix_size: " + e + "\n");
    }
}
