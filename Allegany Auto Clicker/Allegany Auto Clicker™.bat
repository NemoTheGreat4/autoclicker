@echo off
setlocal
chcp 65001 >nul
title allegany auto clicker™ // made by owen
:menu
cls
echo.
echo [38;2;34;85;34m    █████╗ ██╗     ██╗     ███████╗ ██████╗  █████╗ ███╗   ██╗██╗   ██╗ 
ping localhost -n 1 >nul
echo [38;2;60;120;40m   ██╔══██╗██║     ██║     ██╔════╝██╔════╝ ██╔══██╗████╗  ██║╚██╗ ██╔╝   
ping localhost -n 1 >nul
echo [38;2;85;160;60m   ███████║██║     ██║     █████╗  ██║  ███╗███████║██╔██╗ ██║ ╚████╔╝    
ping localhost -n 1 >nul
echo [38;2;130;180;75m   ██╔══██║██║     ██║     ██╔══╝  ██║   ██║██╔══██║██║╚██╗██║  ╚██╔╝    
ping localhost -n 1 >nul
echo [38;2;180;220;100m   ██║  ██║███████╗███████╗███████╗╚██████╔╝██║  ██║██║ ╚████║   ██║     
echo [38;2;200;240;150m   ╚═╝  ╚═╝╚══════╝╚══════╝╚══════╝ ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═══╝   ╚═╝ 
echo.
ping localhost -n 1 >nul
echo [38;2;34;85;34m    █████╗ ██╗   ██╗████████╗ ██████╗ 
ping localhost -n 1 >nul
echo [38;2;60;120;40m   ██╔══██╗██║   ██║╚══██╔══╝██╔═══██╗
ping localhost -n 1 >nul
echo [38;2;85;160;60m   ███████║██║   ██║   ██║   ██║   ██║
echo [38;2;130;180;75m   ██╔══██║██║   ██║   ██║   ██║   ██║
ping localhost -n 1 >nul
echo [38;2;180;220;100m   ██║  ██║╚██████╔╝   ██║   ╚██████╔╝
echo [38;2;200;240;150m   ╚═╝  ╚═╝ ╚═════╝    ╚═╝    ╚═════╝ 
echo.
ping localhost -n 1 >nul
echo [38;2;34;85;34m    ██████╗██╗     ██╗ ██████╗██╗  ██╗███████╗██████╗ 
ping localhost -n 1 >nul
echo [38;2;60;120;40m   ██╔════╝██║     ██║██╔════╝██║ ██╔╝██╔════╝██╔══██╗
ping localhost -n 1 >nul
echo [38;2;85;160;60m   ██║     ██║     ██║██║     █████╔╝ █████╗  ██████╔╝
ping localhost -n 1 >nul
echo [38;2;130;180;75m   ██║     ██║     ██║██║     ██╔═██╗ ██╔══╝  ██╔══██╗
echo [38;2;180;220;100m   ╚██████╗███████╗██║╚██████╗██║  ██╗███████╗██║  ██║
echo [38;2;200;240;150m    ╚═════╝╚══════╝╚═╝ ╚═════╝╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝TM
echo.
echo    Type number choice and hit enter
echo.
ping localhost -n 1 >nul
echo   [38;2;60;120;40m  ║ [38;2;200;240;150m» [38;2;60;120;40m([0m1[38;2;60;120;40m)[38;2;200;240;150m Start
ping localhost -n 1 >nul
echo    [38;2;60;120;40m ║ [38;2;200;240;150m» [38;2;60;120;40m([0m2[38;2;60;120;40m)[38;2;200;240;150m Exit
ping localhost -n 1 >nul
echo     [38;2;60;120;40m╚══╦
set /p input=".       ╚══[38;2;200;240;150m»[0m "
if /I %input% EQU 1 goto wait
if /I %input% EQU 2 goto exit
cls
goto menu

:wait
start "" "https://newyorkstateparks.reserveamerica.com/camping/allegany-state-park/r/campgroundDetails.do?contractCode=NY&parkId=31#sr_a"
echo Waiting...
goto start

:start
:: TARGET TIME HERE in military time
set "target_time=09:00:00"

:wait_loop

for /f "tokens=1 delims=." %%a in ("%time%") do set "now=%%a"

if "%now%"=="%target_time%" goto click

goto wait_loop

:click
echo Clicking at %target_time%...
nircmd.exe sendmouse left click
goto finished

:finished
echo.
echo Succesfully Clicked!
pause
goto exit
