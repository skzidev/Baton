@echo off
rem URL Format: https://www.api.github.com/repos/{owner}/{repo}/contents/{path}
set basePath=%cd%
set baseUrl="https://api.github.com/repos/AnimaTed6422/Baton/contents"
mkdir Baton
cd Baton
mkdir Handle
cd %basePath%
for /F "tokens=*" %%a in (files.txt) do (
cd %basePath%
set endpoint=%baseUrl% and %%a
for /F "delims=" %%i in ('call winhttpjs.bat %endpoint%  -method GET -saveTo CON') do set today=%i
base64 -decode %out%
cd Baton
type %bdecode% > %%a
)
cd basePath