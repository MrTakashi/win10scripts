REM add new users
net user Irina 1982 /add
REM net user Darya vifa81Gol /add

net user books booksaxa83Fig /add
net user kids  kidsaxa83Fig  /add
net user music musicaxa83Fig /add
net user printer axa83Fig /add

REM hide user names from log in screen
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon\SpecialAccounts\UserList" /t REG_DWORD /f /d 0 /v books
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon\SpecialAccounts\UserList" /t REG_DWORD /f /d 0 /v kids
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon\SpecialAccounts\UserList" /t REG_DWORD /f /d 0 /v music
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon\SpecialAccounts\UserList" /t REG_DWORD /f /d 0 /v printer
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon\SpecialAccounts\UserList" /t REG_DWORD /f /d 0 /v parent


REM PasswordExpires=False
wmic UserAccount where Name='MK' set PasswordExpires=False
wmic UserAccount where Name='Irina' set PasswordExpires=False
wmic UserAccount where Name='books' set PasswordExpires=False
wmic UserAccount where Name='kids'  set PasswordExpires=False
wmic UserAccount where Name='music' set PasswordExpires=False
REM wmic UserAccount where Name='Darya' set PasswordExpires=False
wmic UserAccount where Name='printer' set PasswordExpires=False
wmic UserAccount where Name='parent' set PasswordExpires=False

pause