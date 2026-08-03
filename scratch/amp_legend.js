/*
 * amp_legend.js
 * -------------------------------------------------------------------------
 * Vuelve a mostrar la lectura numerica X,Y de la capa de AMPLITUD.
 *
 * En dual_graph.js se puso `legend = 0` en las funciones fnAmp1..4 para que
 * su leyenda no chocara con la de frecuencia al superponer las dos graficas.
 * Pero el atributo `legend` de `function` es justamente el display numerico
 * que aparece arriba del objeto cuando el cursor resalta o mueve un punto:
 * al apagarlo, la amplitud dejo de mostrar sus valores.
 *
 * Como solo una capa recibe el mouse a la vez (la de amplitud lleva
 * `ignoreclick` cuando se esta editando FREQ), las dos leyendas nunca se
 * dibujan al mismo tiempo. Para que quede claro a que curva pertenece el
 * numero, la leyenda de amplitud se pinta en FUCSIA (el mismo color de su
 * linea) y la de frecuencia en CYAN.
 *
 * No se toca ninguna conexion ni ningun otro atributo.
 */

const fs = require('fs');
const path = require('path');

const FILE = path.join(__dirname, '..', 'ATS_Sequencer.maxpat');
const doc = JSON.parse(fs.readFileSync(FILE, 'utf8'));
const P = doc.patcher;

const CYAN = [0.0, 0.85, 1.0, 1.0];
const FUCSIA = [1.0, 0.15, 0.8, 1.0];

const AMP = ['fnAmp1', 'fnAmp2', 'fnAmp3', 'fnAmp4'];
const FREQ = ['fnFreq1', 'fnFreq2', 'fnFreq3', 'fnFreq4'];

const byName = {};
for (const b of P.boxes) {
  if (b.box.varname) byName[b.box.varname] = b.box;
}

let n = 0;

for (const name of AMP) {
  const f = byName[name];
  if (!f) { console.log('  !! no encontrado: ' + name); continue; }
  f.legend = 1;                 // muestra la lectura X,Y al pasar el cursor
  f.textcolor = FUCSIA.slice(); // color de la curva de amplitud
  console.log('  ' + name + ' (' + f.id + '): legend=1, textcolor=fucsia');
  n++;
}

// La capa de frecuencia no se toca: su leyenda ya estaba activa (el atributo
// `legend` viene en 1 por defecto) y conserva su color de texto original.
for (const name of FREQ) {
  const f = byName[name];
  if (!f) { console.log('  !! no encontrado: ' + name); continue; }
  console.log('  ' + name + ' (' + f.id + '): sin cambios (legend por defecto = 1)');
}

fs.writeFileSync(FILE, JSON.stringify(doc, null, 1));
console.log('\nListo: ' + n + ' objetos actualizados en ' + path.basename(FILE));
