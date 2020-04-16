@echo off
color a
goto :sel
:::i
::cls
::set /P c=Instalar Java [si/no]?
::if /I "%c%" EQU "si" goto :java  
::if /I "%c%" EQU "no" goto :sel 


:sel
cls
set /P c=Que vercion quiere instalar? completa(para 8gb de ram o mas) O reducida(para pcs mas antiguas)[completa/reducida]?
if /I "%c%" EQU "Completa" goto :comp
if /I "%c%" EQU "Reducida" goto :red

:comp
cls
copy data\servers.dat %APPDATA%\.minecraft /y
xcopy data\ambience_music %APPDATA%\.minecraft\ambience_music\ /y /E /I 
rmdir %APPDATA%\.minecraft\mods\ /Q /S
xcopy data\mods\c %APPDATA%\.minecraft\mods\ /y /E /I 
xcopy data\mods\r %APPDATA%\.minecraft\mods\ /y /E /I 
xcopy data\config %APPDATA%\.minecraft\config\ /y /E /I 
xcopy data\resources %APPDATA%\.minecraft\resources\ /y /E /I 
xcopy data\resourcepacks %APPDATA%\.minecraft\resourcepacks\ /y /E /I
goto :b

:red
cls
rmdir %APPDATA%\.minecraft\mods\ /Q /S
xcopy data\mods\r %APPDATA%\.minecraft\mods\ /y /E /I 
xcopy data\resourcepacks %APPDATA%\.minecraft\resourcepacks\ /y /E /I
copy data\servers.dat %APPDATA%\.minecraft /y
goto :b

:java
cls
start data\javainst.exe
gotov :sel

:b
cls
set /P c=Instalar  Forge (vercion 100% 1.12.2)[si/no]?
if /I "%c%" EQU "si" goto :fg
if /I "%c%" EQU "no" goto :final

:fg
cls
start data\fginstaller.exe
goto final

:final
cls
color a
echo ---------------------------------------------------------------------------
echo .                                                                         .
echo .               Cliente Instalado, Reinicie su laucher                    .
echo .                                                                         .
echo ---------------------------------------------------------------------------
ping 127.0.0.1 -n 6 > nul
exit
del /f %APPDATA%\.minecraft\mods\ /y /E /I 