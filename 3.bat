@echo off
cd %1
dir /a:-d /s /b | find /c ":" > C:\Users\waste\OneDrive\Desktop\lab\%DATE%.txt
for /F "delims=" %%i in (C:\Users\waste\OneDrive\Desktop\lab\%DATE%.txt) do set VAR1=%%i
cd "C:\Users\waste\OneDrive\Desktop\lab"
tasklist > C:\Users\waste\OneDrive\Desktop\lab\log.txt
for %%i in (log.txt) do @set count=%%~zi
set /a umn=VAR1*count
echo %VAR1%
echo %count%
echo %umn% > C:\Users\waste\OneDrive\Desktop\lab\%DATE%.txt
pause
exit
