@echo off
set "COB_CONFIG_DIR=C:\gnucobol\config"
set "COB_COPY_DIR=C:\gnucobol\copy"
set "COB_LIBRARY_PATH=C:\gnucobol\lib"
set "PATH=C:\gnucobol\bin;%PATH%"

echo --- Compilation FORCEE de RESISTANCE-CALCULATOR.cbl ---
cobc -x -free -conf="C:\gnucobol\config\default.conf" RESISTANCE-CALCULATOR.cbl

if %errorlevel% equ 0 (
  echo --- Execution de RESISTANCE-CALCULATOR.exe ---
  .\RESISTANCE-CALCULATOR.exe
) else (
  echo --- Erreur : Le fichier default.conf est introuvable ---
)
