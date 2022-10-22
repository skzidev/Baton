@echo off
rem Get the date and current directory.
for /F "delims=" %%a in ('date /t') do set date=%%a
for /F "delims=" %%b in ('cd') do set dir=%%b
echo Baton 1.2 [%date:~0,-1%]
echo Type "help" for help.
rem This is how to write an infinite for loop in batch. (Using GOTO or CALL never works for some reason).
for /L %%n IN () do (
	rem Get the command, cd to a directory, run the code, cd back, and turn echo off (it was being turned back on).
	set /p comand=">>> "
	cd %~dp0
	parse %comand%
	@echo off
)
cd %dir%
