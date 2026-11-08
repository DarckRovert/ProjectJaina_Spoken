#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
sync_production_branch.py - Sincroniza la rama 'produccion' de GitHub
con los módulos limpios de Spoken para la plataforma de TuWoW.

Excluye herramientas internas, planes de acción, documentación técnica y temporales.
"""

import os
import sys
import shutil
import subprocess
import tempfile
from pathlib import Path

ADDON_DIRS = [
    "Spoken",
    "Spoken_Bosses",
    "Spoken_Places",
    "Spoken_Quests",
    "Spoken_Readables",
    "SpokenContributions",
    "SpokenPlacesAudio_esMX",
    "SpokenQuestsAudio_esES",
    "SpokenReadablesAudio_esMX",
]

FORBIDDEN_PATTERNS = [
    "tools",
    ".gemini",
    "PLAN_DE_ACCION_TUWOW.md",
    "README_PRODUCCION.md",
]


def run_cmd(cmd, cwd=None, check=True):
    print(f">> Running: {' '.join(cmd) if isinstance(cmd, list) else cmd}")
    res = subprocess.run(
        cmd,
        cwd=cwd,
        shell=isinstance(cmd, str),
        capture_output=True,
        text=True,
        encoding="utf-8",
        errors="replace"
    )
    if check and res.returncode != 0:
        print(f"ERROR: Command failed with code {res.returncode}")
        print("STDOUT:", res.stdout)
        print("STDERR:", res.stderr)
        sys.exit(res.returncode)
    return res


def main():
    repo_root = Path(__file__).resolve().parent.parent
    os.chdir(repo_root)

    print("=== Sincronizando rama 'produccion' para TuWoW ===")
    print(f"Directorio raíz: {repo_root}")

    # Verificar si git está inicializado
    if not (repo_root / ".git").exists():
        print("Inicializando repositorio Git...")
        run_cmd(["git", "init", "-b", "main"], cwd=repo_root)

    temp_dir = tempfile.mkdtemp(prefix="spoken_prod_worktree_")
    print(f"Creando worktree temporal en: {temp_dir}")

    try:
        # 1. Crear o reiniciar la rama 'produccion'
        run_cmd(["git", "worktree", "add", "-B", "produccion", temp_dir], cwd=repo_root)

        # 2. Limpiar el contenido del worktree
        print("Limpiando directorio temporal de produccion...")
        for item in os.listdir(temp_dir):
            if item == ".git":
                continue
            item_path = os.path.join(temp_dir, item)
            if os.path.isdir(item_path):
                shutil.rmtree(item_path)
            else:
                os.remove(item_path)

        # 3. Copiar módulos autorizados
        print("Copiando módulos funcionales del addon...")
        for d in ADDON_DIRS:
            src = repo_root / d
            dst = Path(temp_dir) / d
            if src.exists():
                shutil.copytree(src, dst)
                print(f"  + Carpeta: {d}/")
            else:
                print(f"  ! AVISO: Carpeta {d} no encontrada en raíz.")

        # 4. Copiar README para usuarios y LEEME.txt
        src_readme = repo_root / "README_PRODUCCION.md"
        dst_readme = Path(temp_dir) / "README.md"
        if src_readme.exists():
            shutil.copy2(src_readme, dst_readme)
            print("  + Archivo: README.md (guía de usuario)")

        src_leeme = repo_root / "LEEME.txt"
        dst_leeme = Path(temp_dir) / "LEEME.txt"
        if src_leeme.exists():
            shutil.copy2(src_leeme, dst_leeme)
            print("  + Archivo: LEEME.txt")

        src_gitignore = repo_root / ".gitignore"
        dst_gitignore = Path(temp_dir) / ".gitignore"
        if src_gitignore.exists():
            shutil.copy2(src_gitignore, dst_gitignore)
            print("  + Archivo: .gitignore")

        # 5. Verificación estricta de exclusiones
        print("Verificando que no existan archivos prohibidos en 'produccion'...")
        for bad in FORBIDDEN_PATTERNS:
            bad_path = Path(temp_dir) / bad
            if bad_path.exists():
                raise RuntimeError(f"SEGURIDAD: Archivo prohibido detectado en produccion: {bad}")

        # 6. Verificación de TOC principal
        toc_path = Path(temp_dir) / "Spoken" / "Spoken.toc"
        if not toc_path.exists():
            raise RuntimeError("ERROR: No se encontró Spoken/Spoken.toc en produccion")

        # 7. Commit en produccion
        print("Generando commit en rama 'produccion'...")
        run_cmd(["git", "add", "-A"], cwd=temp_dir)

        diff = run_cmd(["git", "diff", "--cached", "--name-only"], cwd=temp_dir)
        if not diff.stdout.strip():
            print("No hay cambios que commitear en 'produccion'.")
        else:
            run_cmd([
                "git", "commit", "-m",
                "release(produccion): sync clean functional Spoken suite for TuWoW"
            ], cwd=temp_dir)

        # 8. Empujar a origin si existe remote
        remotes = run_cmd(["git", "remote"], cwd=repo_root, check=False)
        if "origin" in remotes.stdout:
            print("Empujando rama 'produccion' a origin...")
            run_cmd(["git", "push", "-u", "origin", "produccion", "--force"], cwd=temp_dir, check=False)
            print(">>> Rama 'produccion' empujada a origin <<<")
        else:
            print("Aviso: 'origin' no configurado aún. Para empujar ejecuta: git push -u origin produccion")

    finally:
        print("Limpiando worktree temporal...")
        run_cmd(["git", "worktree", "remove", temp_dir, "--force"], cwd=repo_root, check=False)
        run_cmd(["git", "worktree", "prune"], cwd=repo_root, check=False)
        shutil.rmtree(temp_dir, ignore_errors=True)

    print("Proceso completado exitosamente.")


if __name__ == "__main__":
    main()

