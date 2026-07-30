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
- **STEREO:** Activa el modo estéreo (salida en ambos canales). Si está apagado, solo emite por el canal izquierdo.
- **Phase-lock:** Reinicia la fase de los osciladores al arrancar (suma determinista sin clicks).
- **Medidores de Salida (Meter / dB):** Visualizador de niveles (`meter~` / `levelmeter~`) que indican la intensidad global de la señal enviada, asegurando que no llegue a un nivel de clipeo.
- **Tuning 1, 2, 3:** Switches especiales de configuración que ajustan parámetros finos (como frecuencias estroboscópicas base y afinaciones personalizadas para los platillos o luces).

---

### 2. Canales Individuales (Setups)

La pieza está compuesta por canales o *Setups* en paralelo. Cada bloque contiene los siguientes módulos:

> **Controles compartidos:** **Time Domain (s)**, **Freq. Domain (Hz)** (mínimo y máximo) y **Clear** existen únicamente en el panel del **Oscilador 1** y se aplican a los cuatro canales. El preset guarda un solo juego de estos valores y lo reparte al recuperarse; los osciladores 2, 3 y 4 ya no los administran por separado.

#### A. Reproducción, Muteo y Solo
- **PLAY (solo en el Oscilador 1):** Un único switch arranca y detiene los cuatro osciladores a la vez. El reloj y la duración del ciclo los marca el *Time Domain* del Oscilador 1.
- **MUTE:** Silencia la salida de ese canal sin detener el sistema.
- **SOLO:** Aísla ese canal. Es **exclusivo**: al activarlo se apaga el SOLO de los demás canales. Mientras haya un SOLO activo solo suena ese canal, aunque esté muteado; al apagarlo vuelve a mandar el MUTE de cada canal.

#### B. Matriz de Presets (El Secuenciador)
- **Matriz única (Oscilador 1):** Es el cerebro del secuenciador. Cada celda de la cuadrícula (`preset`) guarda un estado completo de **los cuatro canales** (frecuencias, amplitudes, curvas y dominios de tiempo), que se recuperan juntos durante el avance temporal de la secuencia. Los osciladores 2, 3 y 4 ya no tienen matriz propia.
- **Gestión de Archivos:**
  - **Guardar:** Exporta el banco completo de presets (los 4 canales) a un archivo externo en formato JSON.
  - **Cargar:** Importa un archivo de presets previamente guardado. Si el archivo es de una versión anterior (una matriz por canal), su contenido se carga en el **canal 1** y los canales 2, 3 y 4 quedan vacíos, con la amplitud plana a 0 en todos los slots.
  - **Clear all presets:** Botón de emergencia para borrar inmediatamente todas las celdas guardadas en la matriz y comenzar desde cero.

#### C. Moldeado de Onda (Envolventes)
Para crear transiciones de sonido suaves a nivel percusivo o continuo, cada setup tiene generadores de envolventes:
- **Freq. / PITCH:** Establece la frecuencia base (Hz) o tono que producirá ese canal.
- **Amplitude:** Nivel de intensidad que alcanzará el canal en dicho momento.
- **Time (s):** Define el tiempo de duración en segundos en que un parámetro tarda en transicionar (como la rampa de volumen).
- **Curve:** Define el tipo de curva o suavizado del ataque y decaimiento.
- **Draw / Erase:** Una vez ajustados la frecuencia, tiempo y curva, el botón **Draw** inscribe estos datos en la envolvente visual de Max. El botón **Erase** permite limpiar dicho trazado.

#### D. Visualización y Monitoreo (Scopes)
Al lado de cada sistema de control, hay herramientas visuales para corroborar qué ocurre físicamente:
- **Time Domain (s):** Visualizador osciloscópico de onda, donde se ve la forma de onda producida en relación al tiempo (segundos).
- **Freq. Domain (Hz):** Visualizador espectral que ayuda a constatar cuáles frecuencias están emitiéndose realmente y en qué magnitud (Hertz).
- **Clear:** Un único botón (Oscilador 1) que limpia y reinicia el trazado de las gráficas de los cuatro canales.
- **dB:** Medidores individuales de nivel que muestran los decibeles de ganancia en la salida final de dicho canal o "Setup".

---

### Flujo Básico de Uso

1. **Afinación Base:** Asegurarse de activar/desactivar las calibraciones de iluminación (Ej: `Luz ≠ 76.2` o `Luz ≠ 38.1`).
2. **Construcción Sonora:** Ingresar a cada Setup e introducir una frecuencia en **Freq / PITCH** y su amplitud.
3. **Comportamiento Temporal:** Ajustar **Time (s)** y **Curve**, luego pulsar el botón **Draw** para dibujar la trayectoria y transiciones paramétricas.
4. **Almacenamiento:** Guardar dicho estado en la **Matriz** del canal (columnas 1 al 10) para crear la progresión o paso deseado.
5. **Ejecución:** Finalmente, presionar **Play Full Piece** para correr las progresiones y observar en tiempo real la salida de los monitores de tiempo (*Time Domain*) y frecuencia (*Freq Domain*).

---

### 3. Migración y Rescate de Presets (Novedad)

Si posees archivos `.maxpat` de versiones antiguas del secuenciador (anteriores a la existencia de los botones "Guardar/Cargar") y deseas rescatar los presets que quedaron incrustados en su código, se ha creado la utilidad complementaria **`Migrador_de_Presets.maxpat`**.

> **Nota tras la unificación de matrices:** el migrador exige que el archivo destino tenga **4 matrices**, así que ya no acepta el `ATS_Sequencer.maxpat` actual (dará el error *"El archivo nuevo tiene 1 presets. Se requieren 4"*). El camino ahora es en dos pasos:
> 1. Usa como **archivo NUEVO** un respaldo previo a la unificación (p. ej. `ATS_Sequencer_backup_*_preunify.maxpat`) y migra ahí la matriz que quieras rescatar.
> 2. Abre ese respaldo, pulsa **Guardar** en la matriz rescatada para obtener un `.maxpresets`, y cárgalo en el parche actual con **Cargar**: entrará en el canal 1 y dejará los canales 2–4 vacíos.

#### Cómo utilizar el Migrador:
1. **Precaución:** Asegúrate de cerrar tu parche principal (`ATS_Sequencer.maxpat`) antes de proceder.
2. Abre la utilidad **`Migrador_de_Presets.maxpat`**.
3. Haz clic en **1. Seleccionar archivo ANTIGUO** y localiza tu `.maxpat` de la versión previa.
   * El sistema escaneará automáticamente el archivo. Si detecta presets guardados en alguna de las 4 matrices, encenderá la casilla (**M1, M2, M3 o M4**) correspondiente.
4. Haz clic en **2. Seleccionar archivo NUEVO** y localiza la nueva versión de tu parche.
5. Selecciona en las casillas encendidas cuáles matrices deseas rescatar y cuáles deseas ignorar (puedes desmarcarlas con un clic).
6. Presiona **3. Migrar Seleccionados**. La utilidad inyectará silenciosa y quirúrgicamente los presets elegidos en el nuevo archivo.
7. Abre nuevamente tu `ATS_Sequencer.maxpat` y usa los botones de **Guardar** para respaldar tus presets rescatados como archivos JSON individuales.
