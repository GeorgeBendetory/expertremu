@echo off
set "COB_CONFIG_DIR=C:\msys64\mingw64\share\gnucobol\config"
set "COB_COPY_DIR=C:\msys64\mingw64\share\gnucobol\copy"
set "COB_LIBRARY_PATH=C:\msys64\mingw64\lib"

echo --- Compilation de victoire.cbl ---
cobc -x -free victoire.cbl

if %errorlevel% equ 0 (
  echo --- Execution de victoire.exe ---
  victoire.exe
) else (
  echo --- Erreur de compilation ---
)
