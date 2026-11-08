#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
batch_push.py - Agrega y empuja archivos en lotes de ~120 MB para evitar errores HTTP 500 en GitHub.
"""

import os
import subprocess
import sys
from pathlib import Path

REPO = Path(r"c:\Users\bogad\Downloads\Spoken-3.8.3")
os.chdir(REPO)

BATCH_SIZE_MB = 100  # Lotes de 100 MB para máxima estabilidad HTTP


def run(cmd):
    res = subprocess.run(cmd, capture_output=True, text=True, encoding="utf-8", errors="replace")
    if res.returncode != 0:
        print("ERROR:", res.stderr)
        raise RuntimeError(f"Command failed: {cmd}")
    return res


def push_folder_in_batches(folder_name):
    folder_path = REPO / folder_name
    if not folder_path.exists():
        print(f"Skipping {folder_name}, not found.")
        return

    print(f"\n=== Procesando {folder_name} ===")
    all_files = [f for f in folder_path.rglob("*") if f.is_file()]
    print(f"Total archivos en {folder_name}: {len(all_files)}")

    batch = []
    batch_size = 0
    batch_num = 1

    for f in all_files:
        rel = f.relative_to(REPO)
        fsize = f.stat().st_size
        batch.append(str(rel))
        batch_size += fsize

        if batch_size >= BATCH_SIZE_MB * 1024 * 1024:
            print(f"Commit y push lote {batch_num} de {folder_name} ({batch_size / 1024 / 1024:.2f} MB, {len(batch)} archivos)...")
            # Agregar archivos del lote
            # Para evitar sobrecargar la línea de comandos de Windows, pasamos en chunks de 50
            for i in range(0, len(batch), 50):
                chunk = batch[i:i+50]
                run(["git", "add"] + chunk)
            
            run(["git", "commit", "-m", f"feat(audio): {folder_name} part {batch_num}"])
            print("  Pushing to origin main...")
            run(["git", "push", "origin", "main"])
            print("  + Push OK!")
            batch = []
            batch_size = 0
            batch_num += 1

    if batch:
        print(f"Commit y push lote final {batch_num} de {folder_name} ({batch_size / 1024 / 1024:.2f} MB, {len(batch)} archivos)...")
        for i in range(0, len(batch), 50):
            chunk = batch[i:i+50]
            run(["git", "add"] + chunk)
        
        run(["git", "commit", "-m", f"feat(audio): {folder_name} final part {batch_num}"])
        print("  Pushing to origin main...")
        run(["git", "push", "origin", "main"])
        print("  + Push OK!")


def main():
    print("Iniciando subida incremental de paquetes de audio...")
    push_folder_in_batches("SpokenPlacesAudio_esMX")
    push_folder_in_batches("SpokenReadablesAudio_esMX")
    push_folder_in_batches("SpokenQuestsAudio_esES")

    print("\n=== Creando y empujando rama 'produccion' ===")
    run(["git", "checkout", "-B", "produccion"])
    
    # Reemplazar README con el de producción y quitar archivos internos
    shutil_copy = REPO / "README_PRODUCCION.md"
    if shutil_copy.exists():
        import shutil
        shutil.copy2(shutil_copy, REPO / "README.md")
    
    for bad in ["tools", "PLAN_DE_ACCION_TUWOW.md", "README_PRODUCCION.md"]:
        p = REPO / bad
        if p.exists():
            subprocess.run(["git", "rm", "-r", "-f", bad], capture_output=True)

    subprocess.run(["git", "add", "README.md", "LEEME.txt"], capture_output=True)
    subprocess.run(["git", "commit", "-m", "release(produccion): sync clean functional Spoken suite for TuWoW"], capture_output=True)
    print("Empujando rama 'produccion' a origin...")
    run(["git", "push", "-u", "origin", "produccion", "--force"])
    
    # Volver a main
    run(["git", "checkout", "main"])
    print("\n>>> ¡TODO EL PROYECTO SUBIDO CON ÉXITO A GITHUB EN AMBAS RAMAS! <<<")


if __name__ == "__main__":
    main()

