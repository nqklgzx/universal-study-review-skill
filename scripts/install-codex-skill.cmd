@echo off
setlocal
powershell -NoProfile -ExecutionPolicy Bypass -File "%~dp0install-codex-skill.ps1" %*
exit /b %ERRORLEVEL%
