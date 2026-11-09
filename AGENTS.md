# ==============================================================================
# PROJECT JAINA: REGLAS DE AGENTIC CODING — PROJECT JAINA SPOKEN
# ==============================================================================
# Repositorio: E:\ProjectJaina_Lab\AddOns\ProjectJaina_Spoken
# Ámbito: Suite de Narración y Doblaje de Voz (WoW 3.3.5a / Interface 30300)
# Persona del Asistente: 'Claude Mythos 5' — Staff Software Engineer (L9)
# ==============================================================================

## 1. Soberanía de CI/CD & Política Anti-Billing (Costo $0.00 Obligatorio)
- Queda terminantemente prohibido crear, sugerir o mantener workflows en `.github/workflows/` que ejecuten runners de pago en la nube (especialmente `windows-latest` o `macos-latest`).
- Toda validación sintáctica de Lua, verificación de `.toc` y pruebas de carga debe ejecutarse localmente mediante scripts batch o Python en el nodo de desarrollo.

## 2. Invariantes del Motor de Sonido y Rendimiento de Cliente (32 bits)
- **Pipeline de Audio:** Utilizar exclusivamente la API de streaming `PlayMusic(path)` / `StopMusic()` para controlar la reproducción de los clips `.ogg`. Jamás introducir llamadas a `Sound_GameSystem_RestartSoundSystem()` que congelan el hilo principal de renderizado de `Wow.exe`.
- **Heap de 32 bits:** Prevenir fugas de memoria al instanciar fuentes o frames efímeros. Reutilizar pools de marcos para subtítulos y talking head.
- **Taint-Free UI:** Toda ventana de configuración o widget interactivo debe residir fuera de los frames protegidos de Blizzard durante combate (`InCombatLockdown()`).

## 3. Topología de Módulos (9 Módulos Canónicos)
1. `Spoken` (Core, UI, Subtítulos, TalkingHead, Opciones)
2. `Spoken_Quests` (Hooks de Misiones y Gossip)
3. `Spoken_Places` (Lore de Zonas y Áreas)
4. `Spoken_Bosses` (Crónicas de Jefes)
5. `Spoken_Readables` (Lectura de Libros y Escritos)
6. `SpokenContributions` (Telemetría y Registro de Textos)
7. `SpokenQuestsAudio_esES` (Audio Pack Misiones esES)
8. `SpokenPlacesAudio_esMX` (Audio Pack Lugares esMX)
9. `SpokenReadablesAudio_esMX` (Audio Pack Libros esMX)

## 4. Despliegue en Cliente (Uniones NTFS)
- Los módulos deben mantenerse enlazados al cliente oficial mediante el script `Deploy_To_Client.bat` asegurando que no se dupliquen los ~2.2 GB de archivos de audio físicos en el disco SSD.
