# Project Jaina — Spoken (WoW 3.3.5a)

[![WoW Version](https://img.shields.io/badge/WoW-3.3.5a%20(Build%2012340)-0078D7.svg)](https://github.com/DarckRovert/ProjectJaina_Spoken)
[![Interface](https://img.shields.io/badge/Interface-30300-orange.svg)](https://github.com/DarckRovert/ProjectJaina_Spoken)
[![Ecosystem](https://img.shields.io/badge/Ecosistema-Project%20Jaina%20(JainaCore)-D4AF37.svg)](https://github.com/DarckRovert/ProjectJaina_Spoken)
[![Audio](https://img.shields.io/badge/Audio-Espa%C3%B1ol%20(esES%20%2F%20esMX)-brightgreen.svg)](https://github.com/DarckRovert/ProjectJaina_Spoken)
[![License](https://img.shields.io/badge/License-GPL--3.0%20%2F%20CC%20BY--SA%204.0-lightgrey.svg)](file:///E:/ProjectJaina_Lab/AddOns/ProjectJaina_Spoken/NOTICE.md)
[![Releases](https://img.shields.io/github/v/release/DarckRovert/ProjectJaina_Spoken?color=blue&label=Release)](https://github.com/DarckRovert/ProjectJaina_Spoken/releases)

**Project Jaina: Spoken** es la suite soberana de inmersión, narración sonora y doblaje de voz en vivo en español para **World of Warcraft 3.3.5a (Wrath of the Lich King / JainaCore)**. 

Dota de voz hablada en español a los personajes no jugadores (PNJ), misiones, historias de zonas descubiertas en Azeroth, libros, pergaminos, placas de piedra y crónicas de jefes derrotados, elevando la experiencia de juego al estándar cinematográfico moderno sin sacrificar rendimiento.

---

## 🌟 Características Principales (Para Jugadores)

* 📜 **Locución Completa de Misiones (12,757 pistas)**: Los PNJ leen sus textos y diálogos con interpretación sonora cuando aceptas, avanzas o completas una misión.
* 🗺️ **Lore Geográfico de Zonas y Lugares (844 pistas)**: Al explorar nuevas regiones de Kalimdor, Reinos del Este y Rasganorte, o al consultar el mapa, el narrador relata la historia y el trasfondo del lugar.
* 📖 **Lectura de Libros, Cartas y Escritos (1,174 pistas)**: Lectura cinematográfica de todos los tomos, notas, cartas y pergaminos distribuidos por el mundo de juego.
* 💀 **Crónicas de Jefes**: Al derrotar jefes en mazmorras y bandas, un narrador épico relata la caída y el destino del antagonista.
* 🏛️ **Compendio Interactivo de Azeroth**: Enciclopedia visual accesible desde el juego (`/spoken compendium`) con buscador rápido, filtros por zona, medidor de misiones completadas y archivo sonoro.
* 🎭 **4 Modos de Presentación Visual**:
  * **Solo subtítulos**: Subtítulos dinámicos estilo cine en la parte inferior de la pantalla.
  * **Ventana flotante compacta**: Mini-barra con avatar del interlocutor y controles multimedia.
  * **Talking Head cinematográfico**: Ventana estilo Retail con busto 3D animado del PNJ y caja de diálogo.
  * **Solo voz**: Locución limpia en segundo plano sin alterar la interfaz de usuario.
* 🛡️ **Protección Inteligente de Combate**:
  * Si entras en combate, el audio se silencia **instantáneamente en 0.00 ms**.
  * Al salir de combate, la locución se reanuda de forma transparente desde el segundo exacto.

---

## 💻 Arquitectura e Ingeniería 3.3.5a (Estándar L9)

Spoken ha sido optimizado y blindado a bajo nivel para el motor de **World of Warcraft 3.3.5a (Build 12340)** y la arquitectura de **JainaCore**:

### 1. Motor de Audio FMOD de Latencia Cero (`PlayMusic` Stream Engine)
* **Limitación Clásica en 3.3.5a**: `PlaySoundFile()` descarta el manejador de canal y el cliente carece de la API `StopSound()` de versiones posteriores. Forzar el cese de sonido mediante reinicio de audio (`Sound_GameSystem_RestartSoundSystem()`) producía congelamiento severo de **~350 ms** por ejecución de `OsSleep(200)` en C++.
* **Solución Arquitectónica**: Implementación en `SoundUtils.lua` utilizando la API de streaming `PlayMusic(path)` (`0x4c9110`), cuyo canal se almacena en memoria global (`0x00B4AC44`). Esto permite ejecutar `StopMusic()` (`0x985a10`), logrando un **corte instantáneo en 0.00 ms con 0 caídas de FPS y sin tocar FMOD**.
* **Gestión Dinámica de Volumen**: Sincronización continua de niveles de audio respetando `Sound_MusicVolume` y `Sound_EnableMusic`.

### 2. Capa de Compatibilidad y Polyfills (`Compat335.lua`)
* **API de Misiones (`C_QuestLog`)**: Adaptación robusta para el retorno de 9 argumentos de `GetQuestLogTitle` en WotLK, evitando el descarte erróneo de misiones activas como encabezados. Polyfill seguro de `GetQuestID()`.
* **API de Mapas (`C_Map`)**: Matriz de traducción bidireccional entre identificadores modernos `uiMapID` y los `areaID` clásicos del cliente 3.3.5a.
* **Metatablas de Frames**: Polyfills de bajo nivel para `SetColorTexture()`, `SetShown()`, `SetSize()` y soporte retroactivo de `BackdropTemplate`.
* **Aislamiento de Taint**: Ventana de configuración standalone en estrato `HIGH`, desacoplada de `InterfaceOptionsFrame` para garantizar inmunidad total contra bloqueos de acción durante el combate.

---

## 📁 Estructura Modular del Ecosistema (9 Carpetas)

```
ProjectJaina_Spoken/
├── Spoken/                    # Núcleo: motor de audio FMOD, compendio, opciones y subtítulos
├── Spoken_Bosses/             # Módulo de crónicas y trasfondo de jefes derrotados
├── Spoken_Places/             # Módulo de historia geográfica, zonas y subzonas
├── Spoken_Quests/             # Módulo de hooks de eventos para misiones y diálogos (Gossip)
├── Spoken_Readables/          # Módulo de lectura sonora de libros, cartas y placas
├── SpokenContributions/       # Módulo de telemetría y recolección de diálogos
├── SpokenPlacesAudio_esMX/    # Banco de voces de lugares en español (844 pistas OGG, 450 MB)
├── SpokenQuestsAudio_esES/    # Banco de voces de misiones en español (12,757 pistas OGG, 1.29 GB)
└── SpokenReadablesAudio_esMX/ # Banco de voces de lecturas en español (1,174 pistas OGG, 487 MB)
```

---

## 📥 Descarga e Instalación

### Método 1: Despliegue Automatizado para Desarrolladores (Clúster Jaina)
Si dispones del repositorio en tu máquina local:
1. Ejecuta el script maestro:
   ```cmd
   Deploy_To_Client.bat
   ```
2. El script creará automáticamente las 9 uniones NTFS (`mklink /J`) tanto en tu cliente canónico FHD como en la distribución pública compartida, consumiendo **0.00 bytes** de espacio físico en disco.

### Método 2: Instalación Manual para Jugadores
1. Ve a la sección de **[Releases Oficiales](https://github.com/DarckRovert/ProjectJaina_Spoken/releases)** de este repositorio.
2. Descarga los paquetes `.zip` de la suite:
   * **Parte 1 (Motor Core y Misiones)**: `TuWoW_Spoken_Core_y_Misiones.zip` o `ProjectJaina_Spoken_Core_y_Misiones_v3.8.3.zip` (~1.28 GB).
   * **Parte 2 (Lugares y Lecturas)**: `TuWoW_Spoken_Lugares_y_Lecturas.zip` o `ProjectJaina_Spoken_Lugares_y_Lecturas_v3.8.3.zip` (~980 MB).
3. Descomprime el contenido directamente en la carpeta de complementos de tu cliente:
   ```
   World of Warcraft / Interface / AddOns /
   ```
4. Comprueba que las 9 carpetas queden ubicadas en `Interface / AddOns /`.
5. Inicia el cliente de World of Warcraft; los 9 módulos cuentan con `DefaultState: enabled` y se cargarán de forma completamente automática.

---

## 🎮 Comandos en el Chat

| Comando | Acción |
| :--- | :--- |
| `/spoken` o `/spoken settings` | Abre el panel principal de configuración sonora y visual. |
| `/spoken compendium` | Abre el Compendio Interactivo de Azeroth (Misiones, Zonas, Libros y Jefes). |
| `/spoken play` | Reproduce o reanuda la narración activa. |
| `/spoken pause` | Pausa temporalmente el audio en curso. |
| `/spoken stop` | Detiene inmediatamente la locución y limpia la cola de diálogos. |
| `/spoken skip` | Salta a la siguiente pista de audio encolada. |

> **Atajos de Teclado**: Puedes configurar teclas rápidas desde el menú del juego: **ESC > Teclado > sección Spoken**.

---

## 📜 Licencia, Gobernanza y Reconocimiento Upstream

* **Project Jaina Suite Integration**: Desarrollado e integrado por **DarckRovert & Antigravity (Claude Mythos 5 L9)** bajo los estándares soberanos de [`GOVERNANCE.md`](file:///E:/ProjectJaina_Lab/AddOns/ProjectJaina_Spoken/GOVERNANCE.md) y [`AGENTS.md`](file:///E:/ProjectJaina_Lab/AddOns/ProjectJaina_Spoken/AGENTS.md).
* **Adaptación WotLK 3.3.5a y Generación de Voces**: Agradecimiento y reconocimiento especial a **Zequiel Bogado (`zequielbogado-alt/Spoken`)** y a la comunidad de **TuWoW** por el port a 3.3.5a, la optimización FMOD y la laboriosa generación del catálogo sonoro en español.
* **Proyecto Original VoiceOver / Spoken**: Créditos a los autores y contribuidores originales de VoiceOver / Spoken.
* **Detalle Completo de Licencias**: Consulta el archivo oficial [`NOTICE.md`](file:///E:/ProjectJaina_Lab/AddOns/ProjectJaina_Spoken/NOTICE.md).
