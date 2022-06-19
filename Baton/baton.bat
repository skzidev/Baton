@echo off
set fname=%1
for /f "tokens=*" %%a in (%fname%) do (
  parse %%a
)