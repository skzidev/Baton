@echo off
for /F "delims=" %%a in ('date /t') do set date=%%a
for /F "delims=" %%b in ('cd') do set dir=%%b
echo Baton 1.2 [%date:~0,-1%]
echo Type "help" for help.
for /L %%n IN () do (
	set /p comand=">>> "
	cd %~dp0
	parse %comand%
	@echo off
)
cd %dir%
