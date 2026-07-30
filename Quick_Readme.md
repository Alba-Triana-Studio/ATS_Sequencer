# ATS Sequencer - Quick Start

## 🎛️ Interfaz Visible (Resumen)
- **MASTER VOL:** Deslizador para controlar el volumen general de todo el sistema.
- **Reloj (hours, min, s, ms):** Muestra el tiempo transcurrido de la secuencia de forma global.
- **STEREO / Phase-lock:** Controles globales. STEREO activa la salida por ambos canales; Phase-lock sincroniza los osciladores al arrancar para evitar *clicks*.
- **Tuning (1, 2, 3) y Luz (≠ 76.2 / ≠ 38.1):** Configuraciones de afinación base y adaptación de frecuencias estroboscópicas.
- **PLAY (Oscilador 1):** Un único botón para los cuatro canales: arranca y detiene los 4 osciladores a la vez.
- **MUTE / SOLO (por canal):** Silencia un canal (MUTE) o aísla uno solo (SOLO). El SOLO es exclusivo: activarlo en un canal apaga el de los demás; con un SOLO activo, ese canal suena aunque esté muteado.
- **Time Domain (s) / Freq. Domain (Hz) / Clear (solo en Oscilador 1):** Definen la duración de la secuencia (segundos) y el rango de frecuencias (Hz mínimo y máximo) de los ejes de las gráficas, y **Clear** limpia los trazados. Son globales: se aplican a los cuatro osciladores a la vez.

## 💾 Gestión de Presets
Hay **una sola matriz** (la del Oscilador 1) y cada preset guarda los cuatro canales a la vez:
- **Guardar:** Exporta toda la matriz de presets (los 4 canales) a un archivo JSON en tu disco.
- **Cargar:** Importa un archivo JSON de presets previamente guardado. Los archivos de versiones anteriores (una matriz por canal) se cargan en el **canal 1** y dejan los canales 2, 3 y 4 vacíos (amplitud plana a 0).
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
- **PLAY:** Arranca los cuatro osciladores con el preset seleccionado. El reloj y el tiempo de ciclo los marca el **Oscilador 1** (su *Time Domain*).
- **Uso de MUTE / SOLO (Canal):** Para escuchar un canal aislado usa su **SOLO**; para quitar canales de la mezcla usa **MUTE**. Ninguno detiene el reloj general ni altera los presets.
