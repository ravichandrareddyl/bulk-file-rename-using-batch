@echo off
set idx=0
for /F "tokens=1,2" %%A in (keyvalue.txt) do call :PROCESS "%%A"  "%%B"
GOTO :END

:PROCESS
set var1=%~1
set var2=%~2
echo %var1% goes to %var2%
move %var1% %var2%
GOTO :EOF

:END
::pause