import os
import subprocess
import re
import urllib.request
import json

def get_token():
    token = os.environ.get("GITHUB_TOKEN")
    if not token:
        try:
            url = subprocess.check_output(["git", "config", "--get", "remote.origin.url"], text=True)
            m = re.search(r":([^@]+)@github\.com", url)
            if m:
                token = m.group(1)
        except Exception:
            pass
    return token

RELEASE_ID = 438186276
REPO = "zequielbogado-alt/Spoken"

body = """# Spoken - TuWoW Edition v3.8.3 (Voces y Narración en Español)

Versión optimizada y adaptada específicamente para **TuWoW** (World of Warcraft 3.3.5a Build 12340). Incluye locución y narración completa en español para misiones, zonas de exploración, historias de Azeroth y libros.

---

### Enlaces de Descarga Directa

Para que la descarga sea rápida y compatible sin límites de peso, la suite está organizada en dos paquetes estándar:

* **[Descargar Parte 1: Motor Principal y Misiones (1.28 GB)](https://github.com/zequielbogado-alt/Spoken/releases/download/v3.8.3-tuwow/TuWoW_Spoken_Core_y_Misiones.zip)**
  * Incluye el motor de Spoken, bases de datos y todas las voces en español de las misiones (`SpokenQuestsAudio_esES`).
* **[Descargar Parte 2: Lugares, Zonas y Lecturas (980 MB)](https://github.com/zequielbogado-alt/Spoken/releases/download/v3.8.3-tuwow/TuWoW_Spoken_Lugares_y_Lecturas.zip)**
  * Incluye las historias de todas las zonas de Azeroth (`SpokenPlacesAudio_esMX`) y los libros/cartas del mundo (`SpokenReadablesAudio_esMX`).

---

### Instrucciones de Instalación en TuWoW

1. Descarga ambos archivos `.zip` (`TuWoW_Spoken_Core_y_Misiones.zip` y `TuWoW_Spoken_Lugares_y_Lecturas.zip`).
2. Descomprime ambos archivos dentro de la carpeta de AddOns de tu cliente de TuWoW:
   `World of Warcraft / Interface / AddOns /`
3. Asegúrate de que las 9 carpetas queden directamente dentro de `Interface / AddOns`:
   * `Spoken`
   * `Spoken_Bosses`
   * `Spoken_Places`
   * `Spoken_Quests`
   * `Spoken_Readables`
   * `SpokenContributions`
   * `SpokenPlacesAudio_esMX`
   * `SpokenQuestsAudio_esES`
   * `SpokenReadablesAudio_esMX`
4. Entra al juego y asegúrate de marcar **"Cargar accesorios antiguos"** en la pantalla de personajes si fuera necesario.

---

### Características Especiales TuWoW Edition

* **Cero Lag en Combate:** Motor de audio migrado al canal de música (`StopMusic` a `0.00 ms`) para eliminar el parón de 350 ms al entrar en combate.
* **Compatibilidad 3.3.5a:** Interfaz ajustada a la API nativa de Wrath of the Lich King.
* **Comandos en el juego:** Usa `/spoken` o `/spp` para abrir la configuración del narrador.
"""

token = get_token()
data = json.dumps({'body': body}).encode('utf-8')
req = urllib.request.Request(
    f"https://api.github.com/repos/{REPO}/releases/{RELEASE_ID}",
    data=data,
    headers={
        'Authorization': f"Bearer {token}",
        'User-Agent': 'TuWoW',
        'Content-Type': 'application/json'
    },
    method='PATCH'
)

with urllib.request.urlopen(req) as resp:
    print('Release notes updated successfully!')
