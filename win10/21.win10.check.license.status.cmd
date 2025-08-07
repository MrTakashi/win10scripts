REM curl https://raw.githubusercontent.com/MrTakashi/win10scripts/main/win10/21.win10.check.license.status.cmd | %SystemRoot%\System32\cmd.exe
cscript %windir%\system32\slmgr.vbs /dli
