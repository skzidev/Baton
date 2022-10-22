@echo off

rem Make sure arguments were passed in.

if "%~1"=="" (
  echo No Command Was Passed in to Parse
  goto END_case
)

rem Get arguments and Command.

set command=%1
set args=%2

rem This is supposed to be a switch statement. It just runs through them in order, I have no idea why but call org goto never work

call :case_%command% 2>nul || (
    call :default_case
 )

:case_print
  if "%~1"=="" (
    echo No Parameters Passed to Print.
    goto END_case
  ) else (
    echo %args%
  )
  GOTO END_case
:case_input
  set /p input="%args%"
  GOTO END_case
:case_system
  call %args%
  GOTO END_case
:case_quit
  exit
:default_case
  ECHO Unknown Command: "%command%"
  GOTO END_case
:END_case
  VER > NUL # reset ERRORLEVEL
  GOTO :EOF # return from CALL
