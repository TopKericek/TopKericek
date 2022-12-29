@echo off
color e
title MoonCreations Web
cls
echo C: Controled By WinDef.exe


echo Welcome to the Web :)
echo Made By Notepad and Batch
echo Staff
echo Owner: Moon
echo Representative: Zofka
echo Sponsors: ZSPS - ELEMENTARY SCHOOL Plavecky Stvrtok, SMTV - StudioMoonTV
echo https://github.com/TopKericek/TopKericek
echo Powered by MoonTernos.org

start %~1
if exist "%~2" del "%~2"
:repeat
timeout /t 0 > nul
if not exist "%~2" goto repeat
if %~3 == 1 (start "%~2" "%~2") else (forfiles /m %~2 /c "cmd /c start @file @file")
cls
set /p aplikace=Zadejte nazev dalsi aplikace, kterou chcete nainstalovat: 
goto start