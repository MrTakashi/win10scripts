REM curl https://raw.githubusercontent.com/MrTakashi/win10scripts/main/win10/31.win10.disable.windows.update.undo.cmd | %SystemRoot%\System32\cmd.exe
REM

@echo off
REM Undo Windows Update restrictions - restore default access
REM Run as Administrator!

REM 1. Remove "DoNotConnectToWindowsUpdateInternetLocations"
reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "DoNotConnectToWindowsUpdateInternetLocations" /f

REM 2. Remove "SetDisableUXWUAccess" (machine-wide)
reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "SetDisableUXWUAccess" /f

REM 3. Remove WSUS redirection values
reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "WUServer" /f
reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "WUStatusServer" /f
reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "UpdateServiceUrlAlternate" /f

REM 4. Remove user-specific restrictions (optional)
reg delete "HKCU\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "DisableWindowsUpdateAccess" /f
reg delete "HKCU\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "SetDisableUXWUAccess" /f

echo Windows Update restrictions have been removed from the registry.
pause
