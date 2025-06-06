REM curl https://raw.githubusercontent.com/MrTakashi/win10scripts/main/win10.powercfg.hibernate.off.cmd | %SystemRoot%\System32\cmd.exe

REM sysprep.exe /oobe /generalize /mode:vm /shutdown /unattend:C:\0000\scripts\notautounattend.xml
%windir%\system32\sysprep\sysprep.exe /oobe /generalize /mode:vm /shutdown /unattend:C:\0000\scripts\notautounattend.xml
