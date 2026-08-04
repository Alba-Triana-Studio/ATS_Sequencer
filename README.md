# ATS Sequencer - Guía de la Interfaz

Este documento describe el funcionamiento y la interfaz gráfica del parche **ATS_Sequencer.maxpat**. Esta es una herramienta diseñada en Max/MSP para el Alba Triana Studio a partir del patch original LM_2025_Secuencias_CymbalStrobe_AllLevels, que permite secuenciar de forma individual y global diferentes modos frecuenciales, sus amplitudes y evoluciones en el tiempo.

![Funcionamiento de la Interfaz](./Funcionamiento.png)

## Estructura General

La interfaz está dividida principalmente en una sección de **Controles Globales** para monitorear e iniciar toda la pieza, y una serie de paneles o **Canales (Setups)** que operan individualmente (hasta 5 sistemas: **cuatro de sonido y, en el último panel, el de la luz**)

---

### 1. Controles Globales

Esta sección afecta y monitorea todo el sistema de generación de la pieza:
- **Play Full Piece / Play open presets:** Botones (toggles) que inician la automatización global y la secuencia completa de la pieza en el tiempo, ejecutando los canales.
- **Relojes de Tiempo (hours, minutes, seconds, ms):** Muestran el tiempo transcurrido del performance o automatización.
- **TOTAL (m:s / ms):** Indica la posición **dentro de la secuencia**, no el tiempo desde el arranque. Al seleccionar una celda, el TOTAL muestra la suma del *Time Domain* de las celdas anteriores **de su misma fila**; al pulsar **PLAY** (que reproduce desde la celda actual) el reloj continúa desde ese acumulado. Ver *Tiempo acumulado por celda* más abajo.
- **MASTER VOL:** Deslizador (slider) para controlar el volumen maestro de salida del secuenciador completo.
- **STEREO:** Activa el modo estéreo (salida en ambos canales). Si está apagado, solo emite por el canal izquierdo.
- **Phase-lock:** Reinicia la fase de los osciladores al arrancar (suma determinista sin clicks).
- **Medidores de Salida (Meter / dB):** Visualizador de niveles (`meter~` / `levelmeter~`) que indican la intensidad global de la señal enviada, asegurando que no llegue a un nivel de clipeo.
- **Tuning 1, 2, 3:** Switches especiales de configuración que ajustan parámetros finos (como frecuencias estroboscópicas base y afinaciones personalizadas para los platillos o luces).

---

### 2. Canales Individuales (Setups)

La pieza está compuesta por canales o *Setups* en paralelo. Cada bloque contiene los siguientes módulos:

> **Cuántos paneles hay y en qué orden:** de arriba abajo se ven **cinco gráficas**. Las **cuatro primeras son de sonido** y la **última es la de la luz** (su caja *PITCH* alimenta la frecuencia estroboscópica). El cuarto panel de sonido se añadió después que los demás, así que su numeración interna es la **5**: manda `5gpitch` / `5amp`, se silencia con `mute5` y su nivel llega por `5lvl`. La luz conserva el número **4** y todo su cableado original, incluida su salida por el canal **derecho** de la tarjeta (los cuatro canales de sonido salen por el **izquierdo**).
>
> Ese desfase entre el orden en pantalla y el número interno solo se nota si abres el parche por dentro o miras un `.maxpresets`; en la interfaz los cinco paneles son idénticos y todos los controles globales (PLAY, *Time Domain*, *Freq. Domain*, *Clear*, *Adaptar TODOS*, la matriz de presets y el SOLO exclusivo) los abarcan a los cinco.
>
> **Motor de sonido del cuarto panel:** vive en `P5Sound.maxpat` (copia de `P1Sound.maxpat`, el sintetizador de referencia) y ocupa el quinto slot de `SoundMachine.maxpat`. Usa los controladores MIDI **8 y 9**, que estaban libres — los canales 1 a 4 ocupan del 0 al 7.

> **Controles compartidos:** **Time Domain (s)**, **Freq. Domain (Hz)** (mínimo y máximo) y **Clear** existen únicamente en el panel del **Oscilador 1** y se aplican a los cinco canales. El preset guarda un solo juego de estos valores y lo reparte al recuperarse; los osciladores 2 a 5 ya no los administran por separado. El *Freq. Domain* admite además una excepción por gráfica: ver **Freq. Domain por gráfica**.

#### A. Reproducción, Muteo y Solo
- **PLAY (solo en el Oscilador 1):** Un único switch arranca y detiene los cinco osciladores a la vez. El reloj y la duración del ciclo los marca el *Time Domain* del Oscilador 1.
- **MUTE:** Silencia la salida de ese canal sin detener el sistema.
- **SOLO:** Aísla ese canal. Es **exclusivo**: al activarlo se apaga el SOLO de los demás canales. Mientras haya un SOLO activo solo suena ese canal, aunque esté muteado; al apagarlo vuelve a mandar el MUTE de cada canal.

#### B. Matriz de Presets (El Secuenciador)
- **Matriz única (Oscilador 1):** Es el cerebro del secuenciador. Cada celda de la cuadrícula (`preset`) guarda un estado completo de **los cinco canales** (frecuencias, amplitudes, curvas y dominios de tiempo), que se recuperan juntos durante el avance temporal de la secuencia. Los osciladores 2 a 5 ya no tienen matriz propia.
- **Gestión de Archivos:**
  - **Guardar:** Exporta el banco completo de presets (los 5 canales) a un archivo externo en formato JSON.
  - **Cargar:** Importa un archivo de presets previamente guardado. Si el archivo es de una versión anterior (una matriz por canal), su contenido se carga en el **canal 1** y los demás quedan vacíos, con la amplitud plana a 0 en todos los slots. Los archivos guardados cuando el patch tenía cuatro canales también siguen sirviendo: el canal nuevo entra vacío.
  - **Clear all presets:** Botón de emergencia para borrar inmediatamente todas las celdas guardadas en la matriz y comenzar desde cero.

> **Tiempo acumulado por celda:** las cajas **TOTAL (m:s)** y **TOTAL (ms)** de la banda superior indican en qué punto de la secuencia está la celda seleccionada, no el tiempo desde que se pulsó Play. Al hacer clic en una celda, el TOTAL muestra la **suma del *Time Domain* de las celdas anteriores de su misma fila** (las celdas vacías cuentan 0), y al arrancar con **PLAY** el reloj sigue contando desde ese acumulado. Cada **fila es una secuencia independiente**: la primera celda de cualquier fila arranca en 0 y las filas anteriores no se suman. Al encadenar celdas durante la reproducción el reloj no se reinicia: sigue avanzando de forma continua.
>
> Las duraciones de cada celda se leen del archivo `.maxpresets` en el momento de **Cargar** (es la vía que rellena la tabla completa de golpe) y se refrescan cada vez que se recupera o se guarda (`Shift` + clic) una celda. Por eso, si construyes un banco desde cero sin cargar ningún archivo, el acumulado va apareciendo a medida que visitas las celdas. **Clear all presets** vacía también esta tabla.

#### C. Moldeado de Onda (Envolventes)

> **Gráfica unificada:** desde esta versión cada canal tiene **una sola gráfica de control** en la que se superponen las dos envolventes: la de **frecuencia en cyan** (moviéndose dentro del rango de *Freq. Domain (Hz)*) y la de **amplitud en fucsia** (siempre de 0 a 1). Cada curva conserva su propio eje vertical, así que ninguna deforma a la otra. Bajo la gráfica hay tres botones:
> - **FREQ** y **AMP** — encienden/apagan la visualización de cada curva.
> - **Editar: FREQ / Editar: AMP** — selecciona cuál de las dos capas recibe el clic del ratón (dibujar, mover o borrar puntos). El color del botón indica la curva activa.
>
> **Un solo grupo de controles de dibujo:** encima de la gráfica queda una única fila *Time (s) / Freq. / Curve / Draw*, que también sigue al botón **Editar**. El rótulo del valor alterna entre **Freq.** y **Amplitude** según la capa activa, y cada capa conserva sus propios valores de tiempo, valor y curva (son dos juegos de cajas superpuestos, de los que solo se muestra el que corresponde).
>
> El cambio es únicamente de visualización: los objetos de envolvente son los mismos, siguen conectados a la matriz de presets y a los `curve~`, así que **guardado, cargado y reproducción no cambian en absoluto**.

> **Freq. Domain por gráfica:** en el panel izquierdo de cada gráfica, encima del botón *Adaptar al tiempo*, hay un botón de dos estados (**Hz: Global** / **Hz: Own**) y dos cajas con el mínimo y el máximo de frecuencia de **esa** gráfica.
> - En **Global** (estado por defecto) la gráfica sigue al *Freq. Domain (Hz)* del panel principal: cada cambio del general entra en el canal y **repinta** sus dos cajas, de modo que siempre se ve el rango vigente.
> - Al escribir un valor en cualquiera de las dos cajas la gráfica pasa sola a **Own**: a partir de ahí el general ya no la toca, por mucho que se modifique.
> - Un clic en el botón la devuelve a **Global** y le reaplica inmediatamente el general.
>
> Cada celda de la matriz guarda, por canal, el modo y los dos valores propios, así que un preset puede tener cuatro gráficas compartiendo el dominio general y una quinta con su propio rango. Al recuperar una celda el orden es siempre el mismo: primero se restauran los cinco modos (y con ellos se abren o cierran las compuertas), después se reparte el general entre las gráficas en *Global*, y por último se reaplican los valores propios de las que están en *Own*.
>
> **Compatibilidad:** los archivos `.maxpresets` guardados antes de este cambio no traen esta información. Al cargarlos, `smart_load.js` la completa celda a celda con modo *Global* y con el *Freq. Domain* general de esa misma celda — exactamente el comportamiento anterior, un único dominio para todas las gráficas —, así que los bancos antiguos siguen cargando sin tocar nada.

> **Adaptar al tiempo:** cambiar el *Time Domain (s)* alarga o acorta el eje X, pero los puntos ya dibujados conservan su posición absoluta, así que la curva deja de ocupar toda la gráfica. El botón **Adaptar al tiempo**, encima del rótulo **PITCH** de cada gráfica, reescala las dos curvas de ese canal para que ocupen **exactamente** el tiempo actual, conservando su forma. En el panel principal, junto a *Time Domain (s)*, el botón **Adaptar TODOS** hace lo mismo sobre los cinco canales a la vez. Cubre los tres casos:
> - la curva llenaba el tiempo anterior → se estira o encoge proporcionalmente al nuevo;
> - la curva **se queda corta** (no tiene puntos a partir de cierto momento) → se estira hasta el final de la gráfica;
> - la curva **se sale** del tiempo actual → se comprime hasta caber.
>
> Internamente no recuerda ningún dominio anterior: **mide el dibujo**. Manda `dump` a las dos capas, se queda con la X del último breakpoint de cada una (`dump` sale de forma sincrónica por el outlet 2 de `function`, en orden ascendente), toma la mayor con `maximum` y aplica `domain <extensión>` seguido de `setdomain <Time Domain>`; `setdomain` fija el máximo del eje X y desplaza los breakpoints para que mantengan su posición relativa, de modo que la relación entre ambos mensajes es justo el factor de escala. Se usa la extensión **mayor** de las dos capas para que frecuencia y amplitud se escalen con el mismo factor y no se desincronicen entre sí. Pulsarlo dos veces seguidas no hace nada, y sobre una gráfica vacía tampoco. La adaptación **no guarda el preset**: si quieres conservarla, haz `Shift` + clic en la celda.

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
- **Clear:** Un único botón (Oscilador 1) que limpia y reinicia el trazado de las gráficas de los cinco canales.
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
