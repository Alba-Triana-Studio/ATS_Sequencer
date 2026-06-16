# ATS Sequencer - Guía de la Interfaz

Este documento describe el funcionamiento y la interfaz gráfica del parche **ATS_Sequencer.maxpat**. Esta es una herramienta diseñada en Max/MSP para el Alba Triana Studio a partir del patch original LM_2025_Secuencias_CymbalStrobe_AllLevels, que permite secuenciar de forma individual y global diferentes modos frecuenciales, sus amplitudes y evoluciones en el tiempo.

![Funcionamiento de la Interfaz](./Funcionamiento.png)

## Estructura General

La interfaz está dividida principalmente en una sección de **Controles Globales** para monitorear e iniciar toda la pieza, y una serie de paneles o **Canales (Setups)** que operan individualmente (hasta 4 sistemas)

---

### 1. Controles Globales

Esta sección afecta y monitorea todo el sistema de generación de la pieza:
- **Play Full Piece / Play open presets:** Botones (toggles) que inician la automatización global y la secuencia completa de la pieza en el tiempo, ejecutando los canales.
- **Relojes de Tiempo (hours, minutes, seconds, ms):** Muestran el tiempo transcurrido del performance o automatización.
- **MASTER VOL:** Deslizador (slider) para controlar el volumen maestro de salida del secuenciador completo.
- **Medidores de Salida (Meter / dB):** Visualizador de niveles (`meter~` / `levelmeter~`) que indican la intensidad global de la señal enviada, asegurando que no llegue a un nivel de clipeo.
- **Tuning 1** Switches especiales de configuración que ajustan parámetros finos (como frecuencias estroboscópicas base y afinaciones personalizadas para los platillos o luces).

---

### 2. Canales Individuales (Setups)

La pieza está compuesta por canales o *Setups* en paralelo. Cada bloque contiene los siguientes módulos:

#### A. Reproducción y Muteo
- **PLAY / MUTE:** Switches para activar individualmente la secuencia del canal o silenciar todo lo que emite. Es útil para probar modos sin detener todo el sistema ("Solo por mute").

#### B. Matriz de Presets (El Secuenciador)
- **Matriz de columnas 1 a 10:** Es el cerebro del secuenciador individual. Cada columna en esta cuadrícula (`preset`) corresponde a un modo o "preset" almacenado. Las filas controlan los modos de vibración y la matriz guarda toda la configuración de estados (frecuencias, amplitudes, curvas) para ser llamados durante el avance temporal de la secuencia.

#### C. Moldeado de Onda (Envolventes)
Para crear transiciones de sonido suaves a nivel percusivo o continuo, cada setup tiene generadores de envolventes:
- **Freq. / PITCH:** Establece la frecuencia base (Hz) o tono que producirá ese canal.
- **Amplitude:** Nivel de intensidad que alcanzará el canal en dicho momento.
- **Time (ms):** Define el tiempo de duración en milisegundos en que un parámetro tarda en transicionar (como el rampa de volumen).
- **Curve:** Define el tipo de curva o suavizado del ataque y decaimiento.
- **Draw:** Un botón vital que, una vez se han ajustado los valores de frecuencia, tiempo y curva, dibuja o inscribe estos datos en la envolvente visual de Max.

#### D. Visualización y Monitoreo (Scopes)
Al lado de cada sistema de control, hay herramientas visuales para corroborar qué ocurre físicamente:
- **Time Domain (ms):** Visualizador osciloscópico de onda, donde se ve la forma de onda producida en relación al tiempo.
- **Freq. Domain (ms):** Visualizador espectral que ayuda a constatar cuáles frecuencias están emitiéndose realmente y en qué magnitud.
- **Clear:** Botones que limpian y reinician la visualización o el trazado de los scopes.
- **dB:** Medidores individuales de nivel que muestran los decibeles de ganancia en la salida final de dicho canal o "Setup".

---

### Flujo Básico de Uso

1. **Afinación Base:** Asegurarse de activar/desactivar las calibraciones de iluminación (Ej: `Luz ≠ 76.2`).
2. **Construcción Sonora:** Ingresar a cada Setup e introducir una frecuencia en **Freq / PITCH** y su amplitud.
3. **Comportamiento Temporal:** Ajustar **Time (ms)** y **Curve**, luego pulsar el botón **Draw** para dibujar la trayectoria y transiciones paramétricas.
4. **Almacenamiento:** Guardar dicho estado en la **Matriz** del canal (columnas 1 al 10) para crear la progresión o paso deseado.
5. **Ejecución:** Finalmente, presionar **Play Full Piece** para correr las progresiones y observar en tiempo real la salida de los monitores de tiempo (*Time Domain*) y frecuencia (*Freq Domain*).
