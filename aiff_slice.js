// Troceo de AIFF por MUESTRAS, en aritmetica de enteros.
//
// Lo usa rec_split_node.js (Node for Max) para partir el maestro de REC SPLIT. Va en un
// archivo aparte para poder probarlo sin Max ni max-api: scratch/test_aiff_slice.js.
//
// POR QUE NO LO HACE [buffer~] (2026-08-18)
//   buffer~ solo sabe leer un trozo dandole INICIO y DURACION EN MILISEGUNDOS, y los maneja
//   con precision de float de 32 bits: a los 10 minutos de grabacion, un instante son ~600000
//   ms y el error de representacion ya pasa de una muestra. Los cortes se desplazaban y a
//   varios trozos les faltaba la ultima muestra. Aqui todo son enteros y offsets de byte.
//
// COMO CONSERVA EL FORMATO
//   No se reconstruye la cabecera: se COPIAN tal cual todos los trozos del archivo original
//   menos el SSND (los datos), y del COMM solo se reescriben los 4 bytes de numSampleFrames.
//   Asi el trozo hereda exactamente el sample rate (que en AIFF es un float de 80 bits), la
//   profundidad de bits y, si el archivo fuera AIFC, su chunk FVER y su tipo de compresion.
//   Los datos se copian byte a byte: el trozo es una porcion literal del maestro.

const fs = require("fs");

const COPY_BUF = 4 * 1024 * 1024;

// Devuelve {formType, chunks, comm, channels, bits, frames, dataStart, bytesPerFrame}
function readInfo(file) {
    const fd = fs.openSync(file, "r");
    try {
        const size = fs.fstatSync(fd).size;
        const head = Buffer.alloc(12);
        if (fs.readSync(fd, head, 0, 12, 0) < 12) throw new Error("archivo demasiado corto");
        if (head.toString("ascii", 0, 4) !== "FORM") throw new Error("no es un AIFF (falta FORM)");
        const formType = head.toString("ascii", 8, 12);   // AIFF o AIFC

        const chunks = [];         // todo menos SSND, en su orden original
        let comm = null, dataStart = -1, dataBytes = 0;
        let pos = 12;
        while (pos + 8 <= size) {
            const h = Buffer.alloc(8);
            fs.readSync(fd, h, 0, 8, pos);
            const id = h.toString("ascii", 0, 4);
            const len = h.readUInt32BE(4);
            if (id === "SSND") {
                const s = Buffer.alloc(8);
                fs.readSync(fd, s, 0, 8, pos + 8);
                dataStart = pos + 16 + s.readUInt32BE(0);   // + offset del propio SSND
                dataBytes = len - 8 - s.readUInt32BE(0);
            } else {
                const d = Buffer.alloc(len);
                if (len) fs.readSync(fd, d, 0, len, pos + 8);
                chunks.push({ id: id, data: d });
                if (id === "COMM") comm = d;
            }
            pos += 8 + len + (len & 1);                     // los chunks van a bytes pares
        }
        if (!comm) throw new Error("AIFF sin chunk COMM");
        if (dataStart < 0) throw new Error("AIFF sin chunk SSND");

        const channels = comm.readUInt16BE(0);
        const bits = comm.readUInt16BE(6);
        const bytesPerFrame = channels * Math.ceil(bits / 8);
        if (!bytesPerFrame) throw new Error("cabecera COMM inconsistente");
        return {
            formType: formType,
            chunks: chunks,
            channels: channels,
            bits: bits,
            frames: Math.min(comm.readUInt32BE(2), Math.floor(dataBytes / bytesPerFrame)),
            dataStart: dataStart,
            bytesPerFrame: bytesPerFrame,
        };
    } finally {
        fs.closeSync(fd);
    }
}

function chunkSpace(c) {
    return 8 + c.data.length + (c.data.length & 1);
}

// Escribe en `dest` las muestras [start, start+frames) de `file`. `frames` se recorta si el
// original se queda corto; devuelve las que se escribieron de verdad.
function slice(file, info, start, frames, dest) {
    if (start < 0) throw new Error("inicio negativo");
    const avail = Math.max(0, info.frames - start);
    const n = Math.max(0, Math.min(frames, avail));
    if (n === 0) throw new Error("el trozo cae fuera del archivo");

    const bpf = info.bytesPerFrame;
    const dataBytes = n * bpf;
    const header = [];
    for (const c of info.chunks) {
        if (c.id === "COMM") c.data.writeUInt32BE(n, 2);    // numSampleFrames del trozo
        const h = Buffer.alloc(8);
        h.write(c.id, 0, 4, "ascii");
        h.writeUInt32BE(c.data.length, 4);
        header.push(h, c.data);
        if (c.data.length & 1) header.push(Buffer.alloc(1));
    }
    const ssnd = Buffer.alloc(16);
    ssnd.write("SSND", 0, 4, "ascii");
    ssnd.writeUInt32BE(8 + dataBytes, 4);                   // offset y blockSize cuentan
    header.push(ssnd);                                      // offset = 0, blockSize = 0

    let formSize = 4;                                       // el tipo de FORM
    for (const c of info.chunks) formSize += chunkSpace(c);
    formSize += 8 + 8 + dataBytes + (dataBytes & 1);

    const form = Buffer.alloc(12);
    form.write("FORM", 0, 4, "ascii");
    form.writeUInt32BE(formSize, 4);
    form.write(info.formType, 8, 4, "ascii");

    const src = fs.openSync(file, "r");
    const out = fs.openSync(dest, "w");
    try {
        fs.writeSync(out, form);
        for (const b of header) fs.writeSync(out, b);
        const buf = Buffer.alloc(Math.min(COPY_BUF, dataBytes));
        let done = 0;
        while (done < dataBytes) {
            const want = Math.min(buf.length, dataBytes - done);
            const got = fs.readSync(src, buf, 0, want, info.dataStart + start * bpf + done);
            if (got <= 0) throw new Error("lectura corta en el maestro");
            fs.writeSync(out, buf, 0, got);
            done += got;
        }
        if (dataBytes & 1) fs.writeSync(out, Buffer.alloc(1));
    } finally {
        fs.closeSync(src);
        fs.closeSync(out);
    }
    return n;
}

module.exports = { readInfo: readInfo, slice: slice };
