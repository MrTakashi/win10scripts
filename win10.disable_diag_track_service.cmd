REM curl https://raw.githubusercontent.com/MrTakashi/win10scripts/main/win10.disable_diag_track_service.cmd | %SystemRoot%\System32\cmd.exe
REM

REM [Disable Windows data collection]
reg add "HKLM\Software\Policies\Microsoft\Windows\DataCollection" /t REG_DWORD /v AllowTelemetry /d 0 /f

REM [Disable DiagTrack service]

REM Stop and disable diagnostic tracking service "Connected User Experiences and Telemetry"
sc stop DiagTrack
sc config DiagTrack start= disabled
sc query "DiagTrack"

echo "Press any key to continue..."
pause

REM Based on: https://www.pdq.com/blog/remotely-disable-windows-data-collection/
