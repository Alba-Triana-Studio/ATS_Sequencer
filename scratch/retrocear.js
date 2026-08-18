#!/usr/bin/env node
// Vuelve a trocear una carpeta de REC SPLIT a partir de su 00_maestro.aif y su 00_indice.txt,
// con el troceador bueno (aiff_slice.js). Sirve para rehacer las tomas grabadas antes del
// 2026-08-18, cuando troceaba [buffer~] y los cortes se desplazaban hasta una muestra y a
// varios archivos les faltaba la ultima (ver la cabecera de aiff_slice.js).
//
// Los tiempos del indice estan en ms con 3 decimales, pero salieron de un numero ENTERO de
// muestras, asi que redondear los recupera exactos (el error de ida y vuelta es de ~1e-7).
//
// Rehace todas las filas del indice; con --saltar=<nombre>[,<nombre>] se excluyen las que no
// quieras. Cada archivo se escribe primero como .tmp y se compara contra el maestro antes de
// ocupar su sitio, asi que un fallo a mitad no deja la carpeta peor de lo que estaba.
//
// Uso:  node scratch/retrocear.js [--saltar=a.aif,b.aif] <carpeta> [<carpeta>...]

const fs = require("fs");
const path = require("path");
const aiff = require(path.resolve(__dirname, "..", "aiff_slice.js"));

function leerIndice(dir) {
    const txt = fs.readFileSync(path.join(dir, "00_indice.txt"), "utf8");
    let sr = 44100;
    const filas = [];
    for (const linea of txt.split("\n")) {
        const m = /^#\s*sample rate:\s*(\d+)/.exec(linea);
        if (m) { sr = Number(m[1]); continue; }
        if (!linea.trim() || linea.startsWith("#")) continue;
        const c = linea.split("\t");
        if (c.length < 6) continue;
        filas.push({ nombre: c[0], ini: Number(c[4]), dur: Number(c[5]) });
    }
    return { sr: sr, filas: filas };
}

function leer(fd, off, n) {
    const b = Buffer.alloc(n);
    fs.readSync(fd, b, 0, n, off);
    return b;
}

const args = process.argv.slice(2);
const saltar = new Set(
    args.filter((a) => a.startsWith("--saltar=")).join(",").replace(/--saltar=/g, "").split(",")
        .filter(Boolean));

let problemas = 0;
for (const dir of args.filter((a) => !a.startsWith("--"))) {
    const master = path.join(dir, "00_maestro.aif");
    console.log("\n== " + dir);
    if (!fs.existsSync(master)) { console.log("   no hay 00_maestro.aif; me lo salto"); problemas++; continue; }

    const { sr, filas } = leerIndice(dir);
    const info = aiff.readInfo(master);
    console.log(`   maestro: ${info.frames} muestras, ${info.channels} ch, ${info.bits} bits, ${sr} Hz`);
    const fdM = fs.openSync(master, "r");

    for (const f of filas) {
        const destino = path.join(dir, f.nombre);
        if (saltar.has(f.nombre)) { console.log(`   ${f.nombre}  (excluido, no lo creo)`); continue; }
        const a = Math.round((f.ini * sr) / 1000);
        const n = Math.round((f.dur * sr) / 1000);
        const antes = fs.existsSync(destino) ? aiff.readInfo(destino).frames : null;
        const tmp = destino + ".tmp";
        const escritas = aiff.slice(master, info, a, n, tmp);

        // verificacion: cabecera, primeras y ULTIMAS muestras identicas al maestro
        const t = aiff.readInfo(tmp);
        const fdT = fs.openSync(tmp, "r");
        const bpf = info.bytesPerFrame;
        const K = Math.min(4096, escritas);
        const ok = t.frames === escritas &&
            leer(fdT, t.dataStart, K * bpf).equals(leer(fdM, info.dataStart + a * bpf, K * bpf)) &&
            leer(fdT, t.dataStart + (escritas - K) * bpf, K * bpf)
                .equals(leer(fdM, info.dataStart + (a + escritas - K) * bpf, K * bpf));
        const ultima = leer(fdT, t.dataStart + (escritas - 1) * bpf, bpf);
        fs.closeSync(fdT);

        if (!ok) {
            console.log(`   ${f.nombre}  FALLO la verificacion; lo dejo como estaba`);
            fs.unlinkSync(tmp); problemas++; continue;
        }
        fs.renameSync(tmp, destino);
        const cero = ultima.equals(Buffer.alloc(bpf));
        console.log(`   ${f.nombre}  ${antes === null ? "nuevo" : antes} -> ${escritas} muestras` +
                    (escritas !== n ? ` (el maestro solo daba para ${escritas} de ${n})` : "") +
                    (cero ? "   [ultima muestra a 0 tambien en el maestro]" : ""));
    }
    fs.closeSync(fdM);
}
console.log(problemas ? "\n" + problemas + " problemas" : "\nhecho");
process.exit(problemas ? 1 : 0);
