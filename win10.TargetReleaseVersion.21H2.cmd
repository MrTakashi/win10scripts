REM curl https://raw.githubusercontent.com/MrTakashi/win10scripts/main/win10.user.settings.cmd | %SystemRoot%\System32\cmd.exe
REM

REM TargetReleaseVersion to Windows 10 (21H2)

reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v TargetReleaseVersion /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v ProductVersion /t REG_SZ /d "Windows 10" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v TargetReleaseVersionInfo /t REG_SZ /d "21H2" /f
