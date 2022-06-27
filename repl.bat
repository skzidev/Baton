@echo off
for /F "delims=" %%a in ('date /t') do set date=%%a
echo Baton 1.2 [%date:~0,-1%]
echo Type "help" for help.
:while
(
   set /p comand=">>> "
	cd %~dp0
	parse.bat %comand%
   call :while
)
