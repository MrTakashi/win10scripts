REM curl https://raw.githubusercontent.com/MrTakashi/win10scripts/main/get.activated.win.cmd | %SystemRoot%\System32\cmd.exe

@echo off
powershell -Command "irm https://get.activated.win | iex"
