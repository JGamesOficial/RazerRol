@echo off
color a
goto :comp


:comp
cls
copy data\servers.dat "%APPDATA%\.minecraft" /y
xcopy data\ambience_music "%APPDATA%\.minecraft\ambience_music\" /y /E /I 
rmdir "%APPDATA%\.minecraft\mods\" /Q /S
xcopy data\mods "%APPDATA%\.minecraft\mods\" /y /E /I 
xcopy data\config "%APPDATA%\.minecraft\config\" /y /E /I 
xcopy data\resources "%APPDATA%\.minecraft\resources\" /y /E /I 
xcopy data\resourcepacks "%APPDATA%\.minecraft\resourcepacks\" /y /E /I
xcopy data\server-resource-packs "%APPDATA%\.minecraft\server-resource-packs\"
start forge_1.12.2.exe
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
