@echo off
start forge_1.12.2.jar
color a
goto :comp


:comp
cls

copy data\LauncherFenix.jar "%APPDATA%\.minecraft" /y 
copy data\launcher_profiles.json "%APPDATA%\.minecraft" /y 
copy data\servers.dat "%APPDATA%\.minecraft" /y
xcopy data\ambience_music "%APPDATA%\.minecraft\ambience_music\" /y /E /I 
rmdir "%APPDATA%\.minecraft\mods\" /Q /S
xcopy data\mods "%APPDATA%\.minecraft\mods\" /y /E /I 
xcopy data\config "%APPDATA%\.minecraft\config\" /y /E /I 
xcopy data\resources "%APPDATA%\.minecraft\resources\" /y /E /I 
xcopy data\resourcepacks "%APPDATA%\.minecraft\resourcepacks\" /y /E /I
copy data\options.txt "%APPDATA%\.minecraft\" /y 
copy data\city-sober-pack-v1-2.rar "%APPDATA%\.minecraft\" /y 
goto final

:final
cls
color a
echo ---------------------------------------------------------------------------
echo .                                                                         .
echo .            Cliente Instalado, En unos instantes se abrira               .
echo .                                                                         .
echo ---------------------------------------------------------------------------
ping 127.0.0.1 -n 6 > nul
start %APPDATA%\.minecraft\LauncherFenix.jar
exit
