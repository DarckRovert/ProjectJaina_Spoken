# Project Jaina — Spoken (WoW 3.3.5a)

[![WoW Version](https://img.shields.io/badge/WoW-3.3.5a%20(Build%2012340)-0078D7.svg)](https://github.com/DarckRovert/ProjectJaina_Spoken)
[![Interface](https://img.shields.io/badge/Interface-30300-orange.svg)](https://github.com/DarckRovert/ProjectJaina_Spoken)
[![Ecosystem](https://img.shields.io/badge/Ecosistema-Project%20Jaina%20(JainaCore)-D4AF37.svg)](https://github.com/DarckRovert/ProjectJaina_Spoken)
[![Language](https://img.shields.io/badge/Audio-Espa%C3%B1ol-brightgreen.svg)](https://github.com/DarckRovert/ProjectJaina_Spoken)

**Project Jaina: Spoken** es la suite soberana de narración y actuación de voz en vivo en español para **World of Warcraft 3.3.5a (JainaCore)**. Transforma tu viaje por Azeroth haciendo que cada misión, cada zona descubierta, cada libro antiguo y cada jefe derrotado cobren vida con locuciones en español de alta fidelidad.

---

## 🚀 Instalación Rápida

### Opción A: Despliegue Automático (Desarrolladores)
Ejecuta el script maestro en la raíz del repositorio:
```cmd
Deploy_To_Client.bat
```
Enlaza las 9 carpetas vía uniones NTFS en los clientes canónicos con **0 bytes duplicados**.

### Opción B: Instalación Manual (Jugadores)
1. Descarga los archivos `.zip` desde la sección de [Releases de GitHub](https://github.com/DarckRovert/ProjectJaina_Spoken/releases/tag/v3.8.3-tuwow).
2. Descomprime ambos archivos dentro de tu carpeta de complementos:

> 🌐 **Mirror Alternativo de Descarga (MEGA)**:
> Si la descarga desde GitHub presenta saturación o lentitud, puedes descargar el paquete unificado completo directamente desde:
> 🔗 **[Descarga Directa en MEGA (Suite Completa Spoken)](https://mega.nz/file/5E0T2YoS#KOXXULZDztTR6E8GXcXNoLTQxhxk295eJ283sjsWLCs)**
   ```
   World of Warcraft/Interface/AddOns/
   ```
3. Asegúrate de que las 9 carpetas del addon queden ubicadas directamente dentro de `AddOns`:
   * `Interface/AddOns/Spoken/`
   * `Interface/AddOns/Spoken_Bosses/`
   * `Interface/AddOns/Spoken_Places/`
   * `Interface/AddOns/Spoken_Quests/`
   * `Interface/AddOns/Spoken_Readables/`
   * `Interface/AddOns/SpokenContributions/`
   * `Interface/AddOns/SpokenPlacesAudio_esMX/`
   * `Interface/AddOns/SpokenQuestsAudio_esES/`
   * `Interface/AddOns/SpokenReadablesAudio_esMX/`
4. Todos los módulos cuentan con `DefaultState: enabled`. ¡Entra a jugar! Si ya tenías el juego abierto, escribe `/reload` en el chat.

---

## ✨ Qué hace Spoken

* 📜 **Misiones con Voz**: Cada vez que abres una misión, el personaje no jugador (PNJ) te hablará directamente narrando el diálogo en español (12,757 pistas).
* 🗺️ **Historias de Zonas y Lugares**: Al explorar nuevos rincones de Azeroth o consultar el mapa del mundo, escucharás la historia y secretos de la región (844 pistas).
* 📖 **Libros y Cartas**: Abre cualquier libro, pergamino o placa del mundo para escucharlo relatado con tono inmersivo (1,174 pistas).
* 💀 **Narración de Jefes**: Al abatir bosses en mazmorras y bandas, escucharás una crónica de su caída.
* ⚔️ **Pausa Inteligente en Combate**: Si un enemigo te ataca mientras estás escuchando una historia, el audio se pausa instantáneamente en **0.00 ms** (gracias al motor de streaming FMOD `PlayMusic`/`StopMusic`) y se reanuda de inmediato cuando salgas de combate.

---

## 📜 Créditos y Agradecimientos

* **Integración Soberana Project Jaina**: DarckRovert & Antigravity (Claude Mythos 5 L9).
* **Adaptación WotLK 3.3.5a y Locución en Español**: Zequiel Bogado (`zequielbogado-alt/Spoken`) y TuWoW.
