@echo off

if exist logs goto msbuild
mkdir logs

:msbuild
"C:\Windows\Microsoft.NET\Framework\v4.0.30319\MSBUILD.exe" HostsFileEditor.proj /t:Build /p:Configuration=Release /p:StrongName=true /l:FileLogger,Microsoft.Build.Engine;logfile=logs\build-release.log
goto end

:end