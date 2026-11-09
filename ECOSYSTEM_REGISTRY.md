# 🌐 Registro de Ecosistema — ProjectJaina_Spoken

Ficha técnica oficial de registro en la infraestructura multi-addon de **Project Jaina**.

---

## 1. Identidad del Addon en el Ecosistema

| Campo | Valor |
|---|---|
| **Nombre Técnico** | `ProjectJaina_Spoken` |
| **Carpeta Local** | `ProjectJaina_Spoken` (Monorepositorio de 9 módulos) |
| **Versión Actual** | `3.8.3-JainaCore` |
| **Clasificación** | Cliente / Narración, Doblaje & Lore de Audio |
| **Licencia Formal** | GPL-3.0 / Upstream Attribution |
| **Repositorio GitHub** | [ProjectJaina_Spoken](https://github.com/DarckRovert/ProjectJaina_Spoken) |
| **Repositorio Upstream** | [Spoken: TuWoW Edition](https://github.com/zequielbogado-alt/Spoken) por Zequiel Bogado |
| **Entorno de Juego** | World of Warcraft 3.3.5a (Build 12340) / JainaCore (Interface `30300`) |

---

## 2. Pipeline de Audio y Motor de Sonido

| Propiedad | Valor |
|---|---|
| **Motor de Audio** | FMOD Streaming `PlayMusic(path)` / `StopMusic()` |
| **Latencia de Parada / Fade** | **0.00 ms** (Sin freeze ni reinicio de FMOD, 0 caídas de FPS) |
| **Formato de Archivos** | Ogg Vorbis (.ogg) con compresión optimizada |
| **Total de Pistas en Español** | **14,775 archivos** (12,757 misiones esES + 844 lugares esMX + 1,174 libros esMX) |
| **Pausa Inteligente** | Automática en `PLAYER_REGEN_DISABLED` y reanudación en `PLAYER_REGEN_ENABLED` |

---

## 3. Topología de Módulos (9 Carpetas Canónicas)

| # | Módulo | Propósito en el Ecosistema | Archivos | Peso en Disco |
|:---:|---|---|:---:|:---:|
| 01 | `Spoken` | Núcleo del addon: motor de audio, interfaz, subtítulos, talking head y opciones | 201 | 7.46 MB |
| 02 | `Spoken_Quests` | Módulo de locución y seguimiento de misiones y diálogos (Gossip) | 128 | 22.98 MB |
| 03 | `Spoken_Places` | Módulo de lore geográfico, zonas y subzonas | 922 | 88.57 MB |
| 04 | `Spoken_Bosses` | Módulo de narraciones épicas al derrotar jefes | 20 | 1.77 MB |
| 05 | `Spoken_Readables` | Módulo de libros del mundo, pergaminos, notas y placas | 28 | 1.42 MB |
| 06 | `SpokenContributions` | Módulo de telemetría para registrar y exportar textos/diálogos pendientes | 2 | 0.02 MB |
| 07 | `SpokenPlacesAudio_esMX` | Paquete de audio de zonas y lugares en español | 844 | 450.24 MB |
| 08 | `SpokenQuestsAudio_esES` | Paquete de audio de misiones en español | 12,757 | 1,295.09 MB |
| 09 | `SpokenReadablesAudio_esMX` | Paquete de audio de libros y lecturas en español | 1,174 | 487.36 MB |

---

## 4. Matriz de Integración del Ecosistema Project Jaina

| Sistema Coexistente | Modo de Interacción | Flujo de Datos |
|---|---|---|
| **`ProjectJaina_DragonflightUI (cDF)`** | UI / Anclajes de Frames | Botones de narración inyectados en QuestLogFrame y minimapa circular |
| **`ProjectJaina_Companion`** | Telemetría / Detección Social | Registrado en lista de presencia social de addons activos |
| **`ProjectJaina_Voice`** | Coexistencia de Audio | `ProjectJaina_Voice` maneja WebRTC 3D entre jugadores; `ProjectJaina_Spoken` maneja la voz PNJ/Lore |
| **`ProjectJaina_LoreHUD`** | Diálogos Cinemáticos | Posibilidad de sincronizar subtítulos tipográficos con las fuentes de LoreHUD |
| **`JainaCore (Reino 1 Cap 60)`** | Progresión de Contenido | Cobertura total de locución para las misiones clásicas de Kalimdor y Reinos del Este |

---

## 5. Garantías de Rendimiento y Memoria

- **Tiempo de Cuadro:** < 0.02 ms por fotograma en reposo.
- **Consumo de Memoria Lua:** ~ 8 MB en núcleo (los archivos OGG se reproducen por streaming en disco y no residen en el heap de Lua).
- **Despliegue a Cliente:** Realizado mediante Uniones NTFS (`mklink /J`) hacia `E:\ProjectJaina_FHD\Client\Interface\AddOns` consumiendo **0 bytes adicionales** en el SSD.
- **Soberanía de CI/CD:** 0 workflows de GitHub Actions en la nube ($0.00 permanente).
