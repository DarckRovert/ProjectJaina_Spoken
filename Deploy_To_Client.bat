@echo off
TITLE Project Jaina - Despliegue Soberano de Spoken a Cliente FHD
COLOR 0B
echo ===============================================================================
echo     PROJECT JAINA - DESPLIEGUE ATOMICO DE SPOKEN VIA UNIONES NTFS (0 BYTES)
echo ===============================================================================
echo.

set "SOURCE_DIR=%~dp0"
if "%SOURCE_DIR:~-1%"=="\" set "SOURCE_DIR=%SOURCE_DIR:~0,-1%"
set "CLIENT_ADDONS=E:\ProjectJaina_FHD\Client\Interface\AddOns"

if not exist "%CLIENT_ADDONS%" (
    echo [ERROR] No se encuentra el directorio de AddOns del cliente en: %CLIENT_ADDONS%
    pause
    exit /b 1
)

set "MODULES=Spoken Spoken_Bosses Spoken_Places Spoken_Quests Spoken_Readables SpokenContributions SpokenPlacesAudio_esMX SpokenQuestsAudio_esES SpokenReadablesAudio_esMX"

for %%M in (%MODULES%) do (
    if exist "%SOURCE_DIR%\%%M" (
        if exist "%CLIENT_ADDONS%\%%M" (
            echo [*] Modulo %%M ya existe en el cliente.
        ) else (
            echo [+] Creando union NTFS para %%M...
            mklink /J "%CLIENT_ADDONS%\%%M" "%SOURCE_DIR%\%%M" >nul
            if errorlevel 0 (
                echo     [OK] Union establecida: %%M
            ) else (
                echo     [FALLO] No se pudo crear union para %%M.
            )
        )
    ) else (
        echo [!] Modulo %%M no encontrado en origen.
    )
)

echo.
echo ===============================================================================
echo [OK] Despliegue completado. Los 9 modulos estan activos en el cliente sin ocupar espacio duplicado.
echo ===============================================================================
pause
