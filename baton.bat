@echo off
if "%~1"=="" (
repl
)
set fname=%1
for /f "tokens=*" %%a in (%fname%) do (
  for /f "tokens=2 delims=_(" %%b in ("%%a") do (
    set arg=%%b
  )
  ::set arg=%arg:"=%
  parse %%a %arg:~0,-1%
  @echo off
)
