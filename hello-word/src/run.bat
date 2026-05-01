@echo off
title Vue.js - hello-word
echo =======================================
echo   Iniciando projeto Vue.js hello-word
echo =======================================
echo.
 
cd /d "%~dp0"
 
echo Diretorio: %CD%
echo Executando yarn serve...
echo.
 
yarn serve
 
pause
