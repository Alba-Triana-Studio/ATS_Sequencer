#!/usr/bin/env node
// Comprueba aiff_slice.js: que cada trozo tiene EXACTAMENTE las muestras pedidas y que su
// audio es copia byte a byte del original, incluida la ULTIMA muestra — que es justo lo que
// fallaba cuando troceaba [buffer~] (ver la cabecera de aiff_slice.js).
// Uso:  node scratch/test_aiff_slice.js [maestro.aif]

const fs = require("fs");
const path = require("path");
const os = require("os");
const aiff = require(path.resolve(__dirname, "..", "aiff_slice.js"));

const tmp = fs.mkdtempSync(path.join(os.tmpdir(), "atsslice-"));
let fails = 0;
function check(label, got, want) {
    const ok = JSON.stringify(got) === JSON.stringify(want);
    if (!ok) { console.log("FALLO  " + label + "\n   obtenido: " + JSON.stringify(got) +
                           "\n   esperado: " + JSON.stringify(want)); fails++; }
    else console.log("ok     " + label);
}

// ---------- un AIFF sintetico de 24 bits / 2 canales, con cada muestra distinta ----------
// Asi cualquier desplazamiento de una sola muestra se nota: el valor ES el numero de muestra.
function sr80(rate) {                       // sample rate en el extended de 80 bits del AIFF
    const b = Buffer.alloc(10);
    let e = 16398, m = rate;                // 16398 = exponente de 2^14
    while (m < 0x8000000000000000 / 2 && e > 0) { m *= 2; e--; }
    b.writeUInt16BE(e, 0);
    b.writeBigUInt64BE(BigInt(Math.round(m)), 2);
    return b;
}
function makeAiff(file, frames, rate) {
    const bpf = 6, data = Buffer.alloc(frames * bpf);
    for (let i = 0; i < frames; i++) {
        data.writeIntBE(i - 100, i * bpf, 3);            // canal izq: numero de muestra
        data.writeIntBE(-(i + 7), i * bpf + 3, 3);       // canal der: otro valor distinto
    }
    const comm = Buffer.concat([Buffer.alloc(8), sr80(rate)]);
    comm.writeUInt16BE(2, 0); comm.writeUInt32BE(frames, 2); comm.writeUInt16BE(24, 6);
    const parts = [];
    const push = (id, payload) => {
        const h = Buffer.alloc(8); h.write(id, 0, 4, "ascii"); h.writeUInt32BE(payload.length, 4);
        parts.push(h, payload);
        if (payload.length & 1) parts.push(Buffer.alloc(1));
    };
    push("COMM", comm);
    push("ANNO", Buffer.from("prueba impar", "ascii"));   // chunk extra de longitud par/impar
    const ssnd = Buffer.concat([Buffer.alloc(8), data]);
    push("SSND", ssnd);
    const body = Buffer.concat(parts);
    const form = Buffer.alloc(12);
    form.write("FORM", 0, 4, "ascii"); form.writeUInt32BE(4 + body.length, 4);
    form.write("AIFF", 8, 4, "ascii");
    fs.writeFileSync(file, Buffer.concat([form, body]));
    return data;
}

const N = 5000;
const src = path.join(tmp, "origen.aif");
const data = makeAiff(src, N, 44100);
const info = aiff.readInfo(src);
check("lee canales/bits/muestras", [info.channels, info.bits, info.frames], [2, 24, N]);

// El trozo tiene que ser el rango exacto, con su primera y su ULTIMA muestra.
const casos = [[0, 100], [1, 1], [7, 4093], [N - 3, 3], [1234, 2001], [0, N]];
for (const [ini, n] of casos) {
    const dest = path.join(tmp, `t_${ini}_${n}.aif`);
    const escritas = aiff.slice(src, aiff.readInfo(src), ini, n, dest);
    const t = aiff.readInfo(dest);
    const bytes = fs.readFileSync(dest).slice(t.dataStart, t.dataStart + n * 6);
    const esperado = data.slice(ini * 6, (ini + n) * 6);
    check(`[${ini}, ${ini + n}) devuelve ${n} muestras`, escritas, n);
    check(`[${ini}, ${ini + n}) cabecera dice ${n} muestras`, t.frames, n);
    check(`[${ini}, ${ini + n}) audio identico byte a byte`, bytes.equals(esperado), true);
    check(`[${ini}, ${ini + n}) la ultima muestra NO es cero`,
          bytes.readIntBE((n - 1) * 6, 3) !== 0 || ini + n - 1 === 100, true);
    check(`[${ini}, ${ini + n}) conserva sample rate y chunks`,
          [t.formType, t.bits, t.channels, t.chunks.map((c) => c.id)],
          ["AIFF", 24, 2, ["COMM", "ANNO"]]);
}

// El trozo que se sale del final se recorta en vez de inventar ceros.
const corto = path.join(tmp, "corto.aif");
check("se recorta si el maestro se queda corto",
      aiff.slice(src, aiff.readInfo(src), N - 10, 999, corto), 10);
check("y no mete relleno", aiff.readInfo(corto).frames, 10);

let ex = null;
try { aiff.slice(src, aiff.readInfo(src), N + 5, 10, path.join(tmp, "x.aif")); }
catch (e) { ex = e.message; }
check("un trozo fuera del archivo da error", ex !== null, true);

// ---------- contra el maestro real, si esta a mano ----------
const real = process.argv[2] ||
    "/Users/carlosadrianserna/Documents/Proyectos/Alba Triana Studio/LM/Rec 08-2026/M7/00_maestro.aif";
if (fs.existsSync(real)) {
    const ri = aiff.readInfo(real);
    console.log(`\nmaestro real: ${ri.frames} muestras, ${ri.channels} canales, ${ri.bits} bits`);
    const fd = fs.openSync(real, "r");
    for (const [ini, n] of [[27314012, 7371776], [196544, 2644480], [26651072, 663040]]) {
        const dest = path.join(tmp, `real_${ini}.aif`);
        aiff.slice(real, ri, ini, n, dest);
        const t = aiff.readInfo(dest);
        const leer = (fdesc, off, cnt) => {
            const b = Buffer.alloc(cnt); fs.readSync(fdesc, b, 0, cnt, off); return b;
        };
        const df = fs.openSync(dest, "r");
        const K = 682;                                   // muestras comparadas en cada extremo
        const cabeza = leer(df, t.dataStart, K * 6).equals(leer(fd, ri.dataStart + ini * 6, K * 6));
        const cola = leer(df, t.dataStart + (n - K) * 6, K * 6)
                     .equals(leer(fd, ri.dataStart + (ini + n - K) * 6, K * 6));
        const ultima = leer(df, t.dataStart + (n - 1) * 6, 6);
        fs.closeSync(df);
        check(`real [${ini}] muestras exactas`, t.frames, n);
        check(`real [${ini}] principio y final identicos al maestro`, [cabeza, cola], [true, true]);
        check(`real [${ini}] ultima muestra = la del maestro`,
              ultima.equals(leer(fd, ri.dataStart + (ini + n - 1) * 6, 6)), true);
    }
    fs.closeSync(fd);
} else {
    console.log("\n(no hay maestro real a mano; solo pruebas sinteticas)");
}

fs.rmSync(tmp, { recursive: true, force: true });
console.log(fails ? "\n" + fails + " comprobaciones fallidas" : "\ntodo correcto");
process.exit(fails ? 1 : 0);
