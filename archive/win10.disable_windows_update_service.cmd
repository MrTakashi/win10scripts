REM Stop and disable wuauserv service "Windows Update"
sc stop wuauserv
sc config wuauserv start= disabled
sc query "wuauserv"

echo "Press any key to continue..."
pause
