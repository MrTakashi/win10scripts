REM curl https://raw.githubusercontent.com/MrTakashi/win10scripts/main/office2024/41.office.license.status | %SystemRoot%\System32\cmd.exe

cd "C:\Program Files\Microsoft Office\Office16"

cscript ospp.vbs /dstatus
