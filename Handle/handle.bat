@echo off
set pname=%1
rem set json="origin"
rem set verEnpoint="https://pypi.org/pypi/%pname%/json"
rem call winhttpjs.bat %verEndpoint% -method GET -saveTo CON | (set /p json= & set json)
rem set version="origin"
rem json %json% | (set /p version= & set version)
rem Endpoint Format: https://pypi.io/packages/source/{ package_name_first_letter }/{ package_name }/{ package_name }-{ package_version }.tar.gz
set endpoint="https://pypi.io/packages/source/r/requests/requests-2.28.0.tar.gz"
rem set endpoint="https://pypi.io/packages/source/%pname:~0,1%/%pname%/%pname%-%version%.tar.gz"
echo Handlebar Version 1.2
echo.
echo Downloading %pname% from PyPI API...
call winhttpjs.bat %endpoint% -method GET -saveTo response.tar.gz
echo Download Finished: Starting Decompression...
tar xzvf response.tar.gz -C ..\Installed
echo Decompression Completed: Package Downloaded Successfully
del response.tar.gz
echo.
echo [32mSuccessfully Installed %pname%[0m
