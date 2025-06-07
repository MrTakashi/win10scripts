REM curl https://raw.githubusercontent.com/MrTakashi/win10scripts/main/office2024/40.office.kms.pru.cmd | %SystemRoot%\System32\cmd.exe

cd "C:\Program Files\Microsoft Office\Office16"

cscript ospp.vbs /sethst:10.10.20.121
cscript ospp.vbs /act
REM cscript ospp.vbs /dstatus
