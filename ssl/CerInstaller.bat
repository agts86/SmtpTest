@echo off

set "FilePath=%~dp0selfsigned-certificate.cer"
echo %FilePath%
certutil -user -addstore "Root" "%FilePath%"
pause