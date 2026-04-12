@echo off
set "COB_CONFIG_DIR=C:\gnucobol\config"
set "COB_COPY_DIR=C:\gnucobol\copy"
set "COB_LIBRARY_PATH=C:\gnucobol\lib"
set "PATH=C:\gnucobol\bin;%PATH%"

echo --- Compilation FORCEE de victoire.cbl ---
cobc -x -free -conf="C:\gnucobol\config\default.conf" victoire.cbl

if %errorlevel% equ 0 (
  echo --- Execution de victoire.exe ---
  .\victoire.exe
) else (
  echo --- Erreur : Le fichier default.conf est introuvable ---
)
