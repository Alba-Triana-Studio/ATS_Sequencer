# ATS Sequencer - Quick Start

## 🎛️ Interfaz Visible (Resumen)
- **MASTER VOL:** Deslizador para controlar el volumen general de todo el sistema.
- **Reloj (hours, min, s, ms):** Muestra el tiempo transcurrido de la secuencia de forma global.
- **STEREO / Phase-lock:** Controles globales. STEREO activa la salida por ambos canales; Phase-lock sincroniza los osciladores al arrancar para evitar *clicks*.
- **Tuning (1, 2, 3) y Luz (≠ 76.2 / ≠ 38.1):** Configuraciones de afinación base y adaptación de frecuencias estroboscópicas.
- **PLAY / MUTE (por canal):** Activa o silencia independientemente los canales (Setups 1 al 4).
- **Time Domain (s) / Freq. Domain (Hz):** Osciloscopio en el dominio del tiempo (segundos) y espectrómetro de frecuencias (Hertz) para monitorear la salida visual de cada canal.

## 💾 Gestión de Presets
Cada canal tiene su propia matriz de almacenamiento de estados:
- **Guardar:** Exporta toda la matriz de presets actual del canal a un archivo JSON en tu disco.
- **Cargar:** Importa un archivo JSON de presets previamente guardado.
- **Clear all presets:** Borra absolutamente toda la matriz. *¡Usar con precaución!*
- **Guardado Manual Rápido:** Para sobreescribir o guardar un preset manualmente, mantén presionado `Shift` y haz clic en la celda deseada de la matriz.

## 📈 Dibujo en Gráficas (Envolventes)
Las gráficas permiten dibujar la evolución de la frecuencia o la amplitud en el tiempo.
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
- **Uso de MUTE / PLAY (Canal):** Muy útiles para escuchar un canal aislado en modo "Solo", silenciando los demás sin necesidad de detener el reloj general o borrar presets.
