@echo off
rem Check if Arugments have been provided, If not, redirect the program to the REPL.
if "%~1"=="" (
repl
)
rem (The process will be terminated there so this code never runs and causes problems.)
set fname=%1
rem Get Filename and loop through each line in the file (this is an interpreter, after all).
for /f "tokens=*" %%a in (%fname%) do (
  for /f "tokens=2 delims=_(" %%b in ("%%a") do (
    set arg=%%b
    rem Get the arguments provided
  )
  rem Parse the command by passing it in as well as the parameters.
  parse %%a %arg:~0,-1%
  rem Echo was being turned on again, I have no idea why, but we have to turn echo off again.
  @echo off
)
