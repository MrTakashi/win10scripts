REM [Disable Windows data collection]
REM Disable AllowTelemetry
reg add "HKLM\Software\Policies\Microsoft\Windows\DataCollection" /t REG_DWORD /v AllowTelemetry /d 0 /f

REM [Disable several services]

REM Stop and disable diagnostic tracking service "Connected User Experiences and Telemetry"
sc stop DiagTrack
sc config DiagTrack start= disabled
sc query "DiagTrack"
