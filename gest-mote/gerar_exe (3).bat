@echo off
title Painel Shutter Spa
chcp 65001 >nul
echo ==========================================
echo     SHUTTER SPA - RECOLHA DE SISTEMA      
echo ==========================================
set "html=index.html"

echo A gerar relatorio HTML...
echo ^<!DOCTYPE html^> > %html%
echo ^<html lang="pt"^> >> %html%
echo ^<head^> >> %html%
echo     ^<meta charset="UTF-8"^> >> %html%
echo     ^<title^>Status do Dispositivo^</title^> >> %html%
echo     ^<style^>body{font-family:sans-serif;background:#f0f4f8;padding:40px;text-align:center;} .box{background:white;padding:25px;border-radius:8px;box-shadow:0 4px 10px rgba(0,0,0,0.05);display:inline-block;text-align:left;}^</style^> >> %html%
echo ^</head^> >> %html%
echo ^<body^> >> %html%
echo     ^<div class="box"^> >> %html%
echo         ^<h2^>Dispositivo Monitorizado^</h2^> >> %html%
echo         ^<p^>^<strong^>Nome:^</strong^> %COMPUTERNAME%^</p^> >> %html%
echo         ^<p^>^<strong^>Utilizador:^</strong^> %USERNAME%^</p^> >> %html%
echo     ^</div>^> >> %html%
echo ^</body^> >> %html%
echo ^</html^> >> %html%

echo Concluido! A abrir ficheiro...
start %html%
pause
