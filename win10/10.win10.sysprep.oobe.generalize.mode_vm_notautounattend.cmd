REM curl https://raw.githubusercontent.com/MrTakashi/win10scripts/main/win10/10.win10.powercfg.hibernate.off.cmd | %SystemRoot%\System32\cmd.exe

%windir%\system32\sysprep\sysprep.exe /oobe /generalize /mode:vm /shutdown /unattend:c:\0000\scripts\notautounattend.xml
