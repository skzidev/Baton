@echo off
set pname=%1
rem Endpoint Format: https://pypi.io/packages/source/{ package_name_first_letter }/{ package_name }/{ package_name }-{ package_version }.tar.gz
rem set endpoint="https://pypi.io/packages/source/%pname:~0,1%/%pname%/%pname%-%%.tar.gz"
rem set endpoint="https://pypi.io/packages/source/p/ppci/ppci-0.5.4.tar.gz"
set endpoint="https://pypi.io/packages/source/r/requests/requests-2.28.0.tar.gz"
echo Handle Version 1.2
echo.
echo Downloading %pname% from PyPI API...
call winhttpjs.bat %endpoint%  -method GET -saveTo response.tar.gz
echo Download Finished: Starting Decompression...
tar xzvf response.tar.gz -C ..\Installed
echo Decompression Completed: Package Downloaded Successfully
del response.tar.gz
echo.
echo [32mSuccessfully Installed %pname%[0m
