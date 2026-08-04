# ATS Sequencer - Quick Start

## 🎛️ Interfaz Visible (Resumen)
- **Cinco paneles:** las **cuatro gráficas de arriba son de sonido** y la **última es la de la luz**. Todos los controles globales (PLAY, *Time Domain*, *Freq. Domain*, *Clear*, *Adaptar TODOS*, la matriz y el SOLO exclusivo) actúan sobre los cinco. Por dentro el cuarto panel de sonido se llama **canal 5** (la luz sigue siendo el 4), pero eso solo se ve al abrir el parche.
- **MASTER VOL:** Deslizador para controlar el volumen general de todo el sistema.
- **Reloj (hours, min, s, ms):** Muestra el tiempo transcurrido de la secuencia de forma global.
- **TOTAL (m:s y ms) — posición dentro de la secuencia:** No cuenta desde cero, sino desde el **tiempo acumulado de las celdas anteriores de su misma fila**. Al hacer clic en una celda, el TOTAL muestra la suma del *Time Domain* de las celdas que van antes en esa fila (dónde empieza esa celda dentro de la secuencia); al pulsar **PLAY** el reloj sigue contando desde ahí. Cada fila es una secuencia independiente: la primera celda de cualquier fila arranca en 0. Las celdas vacías cuentan 0. Las duraciones se leen del `.maxpresets` al cargarlo y se refrescan solas cada vez que recuperas o guardas (`Shift` + clic) una celda.
- **STEREO / Phase-lock:** Controles globales. STEREO activa la salida por ambos canales; Phase-lock sincroniza los osciladores al arrancar para evitar *clicks*.
- **Tuning (1, 2, 3) y Luz (≠ 76.2 / ≠ 38.1):** Configuraciones de afinación base y adaptación de frecuencias estroboscópicas.
- **PLAY (Oscilador 1):** Un único botón para los cinco canales: arranca y detiene los 5 osciladores a la vez.
- **MUTE / SOLO (por canal):** Silencia un canal (MUTE) o aísla uno solo (SOLO). El SOLO es exclusivo: activarlo en un canal apaga el de los demás; con un SOLO activo, ese canal suena aunque esté muteado.
- **Time Domain (s) / Freq. Domain (Hz) / Clear (solo en Oscilador 1):** Definen la duración de la secuencia (segundos) y el rango de frecuencias (Hz mínimo y máximo) de los ejes de las gráficas, y **Clear** limpia los trazados. Se aplican a los cinco osciladores a la vez; el *Freq. Domain* puede además ajustarse gráfica por gráfica (ver abajo).
- **Hz: Global / Hz: Own (por gráfica):** En el panel izquierdo de cada gráfica, encima de *Adaptar al tiempo*, hay dos cajas con el **Freq. Domain (Hz) propio** de esa gráfica (mínimo y máximo) y un botón que indica su modo. En **Global** la gráfica sigue al *Freq. Domain* general y sus cajas se actualizan solas. En cuanto escribes un valor en una de las dos cajas la gráfica pasa a **Own** y el general deja de tocarla, aunque lo cambies después. Un clic en el botón la devuelve a **Global** y le reaplica el general. El modo y los valores propios se guardan en cada celda de la matriz de presets.
- **Adaptar TODOS (junto a Time Domain):** Al cambiar el *Time Domain* el eje se estira pero los puntos ya dibujados se quedan donde estaban. Este botón reescala **las diez curvas de los cinco canales** para que ocupen exactamente el tiempo actual, conservando su forma: estira las que se quedan cortas y comprime las que se salen. Cada gráfica tiene además su propio botón **Adaptar al tiempo** (encima del rótulo PITCH) para hacerlo canal por canal. Ojo: no guarda el preset, para conservarlo hay que hacer `Shift` + clic en la celda.

## 💾 Gestión de Presets
Hay **una sola matriz** (la del Oscilador 1) y cada preset guarda los cinco canales a la vez:
- **Guardar:** Exporta toda la matriz de presets (los 5 canales) a un archivo JSON en tu disco.
- **Cargar:** Importa un archivo JSON de presets previamente guardado. Los archivos de versiones anteriores (una matriz por canal) se cargan en el **canal 1** y dejan los demás vacíos (amplitud plana a 0). Los `.maxpresets` de cuando había cuatro canales también cargan: el canal nuevo entra vacío.
- **Clear all presets:** Borra absolutamente toda la matriz. *¡Usar con precaución!*
- **Guardado Manual Rápido:** Para sobreescribir o guardar un preset manualmente, mantén presionado `Shift` y haz clic en la celda deseada de la matriz.

## 📈 Dibujo en Gráficas (Envolventes)
Cada canal tiene **una sola gráfica** en la que conviven las dos envolventes:
- **Cyan = frecuencia** (se mueve dentro del rango *Freq. Domain (Hz)*).
- **Fucsia = amplitud** (conserva su rango de 0 a 1).

Debajo de la gráfica hay tres botones:
- **FREQ / AMP:** encienden y apagan la visualización de cada curva.
- **Editar: FREQ ⇄ Editar: AMP:** elige cuál de las dos curvas responde al ratón. El color del botón (cyan o fucsia) indica la curva que estás editando. La leyenda numérica del eje corresponde siempre a la escala de frecuencia; la amplitud siempre va de 0 a 1.

Encima de la gráfica hay **un solo grupo de controles de dibujo** (*Time (s) / Freq. / Curve / Draw*). Ese grupo también obedece al botón **Editar**: cuando editas frecuencia el rótulo dice **Freq.**, y al pasar a amplitud dice **Amplitude**. Cada modo recuerda sus propios valores de tiempo, valor y curva, así que puedes ir y volver sin perder lo que tenías escrito.

Los pasos para dibujar son los mismos de siempre:
1. Ajusta los valores de destino en las cajas numéricas de **Freq / PITCH** o **Amplitude**.
2. Define la duración de esta transición en la caja **Time (s)** (en segundos).
3. Ajusta el valor del suavizado en **Curve**.
4. Presiona el botón **Draw** para que el secuenciador trace la curva automáticamente en la gráfica.
5. Usa el botón **Erase** para borrar el trazado de la gráfica actual si te equivocas.
- **Modificación Manual:** 
  - *Añadir Curvas:* Mantén `ALT` + clic sobre una línea trazada y mueve el ratón arriba/abajo.
  - *Borrar Puntos:* Mantén `Shift` + clic sobre el punto que deseas eliminar.

## ▶️ Reproducción (Playback)
- **Play Full Piece:** Inicia la ejecución automática de toda la pieza desde el tiempo cero, activando la sincronía global y corriendo las automatizaciones.
- **Play open presets:** Reproduce y avanza continuamente la secuencia de presets habilitados.
- **Play Preset (En la matriz):** Haz clic directamente en un preset (cuadro rojo/gris) de la matriz para cargar y reproducir instantáneamente esa configuración sonora específica.
- **PLAY:** Arranca los cinco osciladores con el preset seleccionado. El reloj y el tiempo de ciclo los marca el **Oscilador 1** (su *Time Domain*).
- **Uso de MUTE / SOLO (Canal):** Para escuchar un canal aislado usa su **SOLO**; para quitar canales de la mezcla usa **MUTE**. Ninguno detiene el reloj general ni altera los presets.
