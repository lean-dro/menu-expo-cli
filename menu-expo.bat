@echo off
title Menu Expo

:menu
echo.
echo ================================
echo * 1 - Instalar o expo          *
echo * 2 - Criar um novo projeto    *
echo * 3 - Sair                     *
echo ================================
echo.

choice /c 123 /m "O que deseja fazer"

IF errorlevel==3 goto sair
IF errorlevel==2 goto newprojct
IF errorlevel==1 goto install

:install
cls
echo.
npm install -g expo-cli & cls & menu-expo.bat

:newprojct
echo.
echo ================================
set /p nomeProjct=Digite o nome do projeto: 
echo.
expo init %nomeProjct% & cd %nomeProjct% & code . & expo start

:sair
exit