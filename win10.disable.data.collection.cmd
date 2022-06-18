REM [Disable Windows data collection]
REM Step 1. Disable AllowTelemetry
reg add "HKLM\Software\Policies\Microsoft\Windows\DataCollection" /t REG_DWORD /v AllowTelemetry /d 0 /f

REM Step 2. Stop and disable diagnostic tracking service
sc stop DiagTrack
sc config DiagTrack start= disabled

REM Step 3. Stop and disable dmwappushservice
sc stop dmwappushservice
sc config dmwappushservice start= disabled

shutdown /r

REM Based on: https://www.pdq.com/blog/remotely-disable-windows-data-collection/