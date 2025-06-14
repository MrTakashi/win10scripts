REM curl https://raw.githubusercontent.com/MrTakashi/win10scripts/main/win10/30.win10.disable.windows.update | %SystemRoot%\System32\cmd.exe
REM

REM
REM 1. Do not connect to any Windows Update Internet locations
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "DoNotConnectToWindowsUpdateInternetLocations" /t REG_DWORD /d 1 /f

REM 2. Remove access to use all Windows Update features
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "SetDisableUXWUAccess" /t REG_DWORD /d 1 /f

REM 3. Specify intranet Microsoft update service location (WSUS redirection to empty)
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "WUServer" /t REG_SZ /d " " /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "WUStatusServer" /t REG_SZ /d " " /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "UpdateServiceUrlAlternate" /t REG_SZ /d " " /f

REM 4. Disable access for the current user (optional, if needed)
reg add "HKCU\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "DisableWindowsUpdateAccess" /t REG_DWORD /d 1 /f
reg add "HKCU\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "SetDisableUXWUAccess" /t REG_DWORD /d 1 /f

echo Windows Update access has been blocked via registry.

REM Based on
REM https://t.me/c/1460208055/39382
REM https://learn.microsoft.com/en-us/windows/privacy/manage-connections-from-windows-operating-system-components-to-microsoft-services#29-windows-update
