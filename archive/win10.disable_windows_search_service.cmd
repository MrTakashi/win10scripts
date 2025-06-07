REM Stop and disable WSearch service "Windows Search"
sc stop WSearch
sc config WSearch start= disabled
sc query "WSearch"

echo "Press any key to continue..."
pause
