REM curl https://raw.githubusercontent.com/MrTakashi/win10scripts/main/office2024/40.office.kms.pru.cmd | %SystemRoot%\System32\cmd.exe

cscript "%ProgramFiles%\Microsoft Office\Office16\ospp.vbs" /sethst:10.10.20.121
cscript "%ProgramFiles%\Microsoft Office\Office16\ospp.vbs" /act
