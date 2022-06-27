@echo off

set command=%1
set args=%2

echo %command%>nul
call :case_%command% 2>nul || (
    call :default_case
 )

:case_print
  echo %args%
  GOTO END_case
:case_input
  set /p input="%args%"
  GOTO END_case
:case_system
  call %args%
  GOTO END_case
:default_case
  ECHO Unknown Command: "%command%"
  GOTO END_case
:END_case
  VER > NUL # reset ERRORLEVEL
  GOTO :EOF # return from CALL
