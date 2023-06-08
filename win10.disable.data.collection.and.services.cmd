REM [Disable Windows data collection]
REM Disable AllowTelemetry
reg add "HKLM\Software\Policies\Microsoft\Windows\DataCollection" /t REG_DWORD /v AllowTelemetry /d 0 /f

REM [Disable several services]

REM Stop and disable diagnostic tracking service "Connected User Experiences and Telemetry"
sc stop DiagTrack
sc config DiagTrack start= disabled
sc query "DiagTrack"

REM Stop and disable WSearch service "Windows Search"
sc stop WSearch
sc config WSearch start= disabled
sc query "WSearch"

REM Stop and disable wuauserv service "Windows Update"
sc stop wuauserv
sc config wuauserv start= disabled
sc query "wuauserv"

echo "Press Enter to reboot the system..."

pause

shutdown /r

REM Based on: https://www.pdq.com/blog/remotely-disable-windows-data-collection/