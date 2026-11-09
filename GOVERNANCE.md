# 🏛️ Modelo de Gobernanza del Proyecto — Project Jaina Spoken (Voiceover & Lore Audio Suite)

**Versión del Documento:** 1.0.0  
**Fecha de Entrada en Vigor:** 9 de Noviembre de 2026  
**Líder del Proyecto & Autor:** DarckRovert (Ingame: `Elnazzareno`)  
**Staff AI Engineer:** Antigravity L9 (Mythos 5)  
**Servidor Destino:** [Project Jaina](https://darckrovert.github.io/ProjectJaina_Web/)  
**Entorno de Ejecución:** World of Warcraft 3.3.5a (Build 12340) | Interfaz: `30300`  
**Proyecto Upstream:** [Spoken: TuWoW Edition](https://github.com/zequielbogado-alt/Spoken) por Zequiel Bogado  

---

## 1. Misión y Alcance

**ProjectJaina_Spoken** es la suite soberana oficial de narración, doblaje y actuación de voz inmersiva de **Project Jaina**.
Dota de voces humanas y sintetizadas cinematográficas en español a los PNJ (misiones y diálogos), crónicas de zonas descubiertas, libros/manuscritos del mundo y derrotas de jefes, elevando la experiencia de rol en los reinos:
* **Reino 1 — JainaCore** (Era Vanilla Cap 60 / Host Darck Perú)
* **Reino 3 — WanitosGYM** (Era WotLK ICC Cap 80 / Host Fran España)

### Objetivos Primordiales del Sistema:
1. **Rendimiento Extremo (Cabinas de Internet & Equipos Modestos):**
   - Ejecución fluida a 60 FPS estables sin micro-tirones ni congelamientos al iniciar o pausar audio.
   - Preservación estricta del pipeline de streaming FMOD `PlayMusic(path)` / `StopMusic()` para cortes en 0.00 ms sin reinicio del subsistema de sonido de 32 bits (`Sound_GameSystem_RestartSoundSystem`).
2. **Compatibilidad con la Suite Gráfica de Project Jaina:**
   - Coexistencia nativa y sin taints con **ProjectJaina_DragonflightUI** (`cDF`), **ProjectJaina_Companion** y **ProjectJaina_Voice** (Audio Espacial 3D).
   - Detección adaptativa de marcos de misión y minimapa para posicionamiento exacto sin solapamientos.
3. **Persistencia e Idempotencia:**
   - Variables guardadas estructuradas en `SpokenSettings` con respaldos seguros ante caídas de sesión.
4. **Cumplimiento de la Política de Blizzard (Blizzard Custom UI Policy 2009):**
   - Software 100% gratuito, libre de código malicioso, sin ingeniería inversa ni modificación de binarios ejecutables (`Wow.exe`).

---

## 2. Estructura de Roles y Responsabilidades

```
       ┌─────────────────────────────────────────┐
       │   Líder del Proyecto (Project Lead)     │
       │     DarckRovert (Elnazzareno)            │
       └────────────────────┬────────────────────┘
                            │
       ┌────────────────────▼────────────────────┐
       │     Staff AI & Arquitectura de Core     │
       │        Antigravity L9 (Mythos 5)        │
       └────────────────────┬────────────────────┘
                            │
       ┌────────────────────▼────────────────────┐
       │      Equipo de Desarrollo y Staff       │
       │   (Core Eluna, Addon Lua, Moderación)   │
       └─────────────────────────────────────────┘
```

### 2.1. Project Lead (Líder del Proyecto)
- **Titular:** DarckRovert (Elnazzareno).
- **Atribuciones:**
  - Control de la visión arquitectónica, experiencia de usuario y compatibilidad.
  - Aprobación y fusión final de código en la rama `main` del repositorio oficial.
  - Firma y liberación de versiones oficiales estables para el cliente canónico `E:\ProjectJaina_FHD`.

### 2.2. Staff AI & Arquitectura de Core
- **Titular:** Antigravity L9 (Mythos 5).
- **Atribuciones:**
  - Auditoría de bajo nivel, polyfills de compatibilidad C++ y Lua 5.1.
  - Prevención de taints de interfaz y optimización de memoria en el heap de 32 bits.
  - Cumplimiento de la soberanía de CI/CD (Costo $0.00 permanente sin runners externos).

---

## 3. Topología de Repositorios y Despliegue

| Rol | Ubicación | Protocolo de Sincronización |
| :--- | :--- | :--- |
| **Repositorio Maestro Soberano** | [`E:\ProjectJaina_Lab\AddOns\ProjectJaina_Spoken`](file:///E:/ProjectJaina_Lab/AddOns/ProjectJaina_Spoken) | Git local / Remote `origin: DarckRovert/ProjectJaina_Spoken.git` |
| **Repositorio Upstream** | `https://github.com/zequielbogado-alt/Spoken.git` | Remote `upstream` para parches y contribuciones |
| **Cliente Oficial FHD** | [`E:\ProjectJaina_FHD\Client\Interface\AddOns`](file:///E:/ProjectJaina_FHD/Client/Interface/AddOns) | Uniones NTFS (`mklink /J`) atómicas de 0 bytes de consumo adicional |
| **Distribución Pública** | `E:\ProjectJaina_Distribucion_Publica` | Enlaces duros NTFS (`mklink /H`) en el empaquetado de sesión |
