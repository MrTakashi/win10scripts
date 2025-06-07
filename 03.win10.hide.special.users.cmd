REM curl https://raw.githubusercontent.com/MrTakashi/win10scripts/main/03.win10.hide.special.users.cmd | %SystemRoot%\System32\cmd.exe
REM

REM Hide special users 'parent', 'adm'
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon\SpecialAccounts\UserList" /t REG_DWORD /v parent /d 0 /f
REM reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon\SpecialAccounts\UserList" /t REG_DWORD /v adm /d 0 /f
