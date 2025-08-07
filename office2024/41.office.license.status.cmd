REM curl https://raw.githubusercontent.com/MrTakashi/win10scripts/main/office2024/41.office.license.status | %SystemRoot%\System32\cmd.exe

cscript "%ProgramFiles%\Microsoft Office\Office16\ospp.vbs" /dstatus
