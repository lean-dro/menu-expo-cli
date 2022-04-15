@echo off
title Expo-GUI

:menu
echo ================================
echo 1 - Instalar o expo
echo 2 - Criar um novo projeto
echo 3 - Sair
echo ================================

choice /c 123 /m "O que deseja fazer"

IF errorlevel==3 goto sair
IF errorlevel==2 goto newprojct
IF errorlevel==1 goto install

:install
npm install -g expo-cli & cls & expo-gui.bat

:newprojct
echo ================================
echo.
set /p nomeProjct=Digite o nome do projeto:
echo.
expo init %nomeProjct% & cd %nomeProjct% & code .

:sair
exit