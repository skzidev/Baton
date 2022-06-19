@echo off
set func=%1
set val=%2
goto %func%

:print
echo %val%

:input
set /p input=%val%

:exec
%val%