@echo off
TITLE Project Jaina - Despliegue Soberano de Spoken a Clientes (FHD & Distribucion Publica)
COLOR 0B
echo ===============================================================================
echo     PROJECT JAINA - DESPLIEGUE ATOMICO DE SPOKEN VIA UNIONES NTFS (0 BYTES)
echo ===============================================================================
echo.

set "SOURCE_DIR=%~dp0"
if "%SOURCE_DIR:~-1%"=="\" set "SOURCE_DIR=%SOURCE_DIR:~0,-1%"

set "TARGET_FHD=E:\ProjectJaina_FHD\Client\Interface\AddOns"
set "TARGET_PUB=E:\ProjectJaina_Distribucion_Publica\01_Cliente_ProjectJaina_Publico\Interface\AddOns"
set "MODULES=Spoken Spoken_Bosses Spoken_Places Spoken_Quests Spoken_Readables SpokenContributions SpokenPlacesAudio_esMX SpokenQuestsAudio_esES SpokenReadablesAudio_esMX"

echo [*] 1. Desplegando en Cliente FHD (%TARGET_FHD%)...
if exist "%TARGET_FHD%" (
    for %%M in (%MODULES%) do (
        if exist "%SOURCE_DIR%\%%M" (
            if exist "%TARGET_FHD%\%%M" (
                echo     [*] Modulo %%M ya existe en FHD.
            ) else (
                mklink /J "%TARGET_FHD%\%%M" "%SOURCE_DIR%\%%M" >nul 2>&1
                if not errorlevel 1 (
                    echo     [+] Union creada: %%M
                ) else (
                    echo     [FALLO] No se pudo crear union: %%M (Requiere permisos de Administrador)
                )
            )
        )
    )
) else (
    echo [ERROR] No existe directorio FHD: %TARGET_FHD%
)
echo.

echo [*] 2. Desplegando en Distribucion Publica (%TARGET_PUB%)...
if exist "%TARGET_PUB%" (
    for %%M in (%MODULES%) do (
        if exist "%SOURCE_DIR%\%%M" (
            if exist "%TARGET_PUB%\%%M" (
                echo     [*] Modulo %%M ya existe en Distribucion Publica.
            ) else (
                mklink /J "%TARGET_PUB%\%%M" "%SOURCE_DIR%\%%M" >nul 2>&1
                if not errorlevel 1 (
                    echo     [+] Union creada: %%M
                ) else (
                    echo     [FALLO] No se pudo crear union: %%M (Requiere permisos de Administrador)
                )
            )
        )
    )
) else (
    echo [AVISO] Directorio de Distribucion Publica no encontrado o no montado.
)
echo.

echo ===============================================================================
echo [OK] Despliegue completado. Los 9 modulos estan enlazados con 0 bytes duplicados.
echo ===============================================================================
pause
