@echo off
setlocal
powershell -NoProfile -ExecutionPolicy Bypass -File "%~dp0bootstrap-codex-skill.ps1" %*
exit /b %ERRORLEVEL%
