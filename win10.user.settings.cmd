REM curl https://raw.githubusercontent.com/MrTakashi/win10scripts/main/win10.user.settings.cmd | %SystemRoot%\System32\cmd.exe
REM

REM [Customise user settings]

REM Hide Search toolbar
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" /t REG_DWORD /v SearchboxTaskbarMode /d 0 /f

REM Hide Task View Button
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /t REG_DWORD /v ShowTaskViewButton /d 0 /f

REM Never combine Taskbar icons
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /t REG_DWORD /v TaskbarGlomLevel /d 2 /f

REM Show all icons in tray
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\Explorer" /t REG_DWORD /v EnableAutoTray /d 0 /f

REM Add "This PC" icon on desktop
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel" /t REG_DWORD /v "{20D04FE0-3AEA-1069-A2D8-08002B30309D}" /d 0 /f
REM reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\ClassicStartMenu" /t REG_DWORD /v "{20D04FE0-3AEA-1069-A2D8-08002B30309D}" /d 0 /f

REM Make File Explorer open "This PC" by default
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /t REG_DWORD /v LaunchTo /d 1 /f

REM Don't Hide file extensions
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /t REG_DWORD /v HideFileExt /d 0 /f

REM Hide Recycle bin from desktop
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel" /t REG_DWORD /v "{645FF040-5081-101B-9F08-00AA002F954E}" /d 1 /f
REM reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\ClassicStartMenu" /t REG_DWORD /v "{645FF040-5081-101B-9F08-00AA002F954E}" /d 1 /f

REM Disable App Notifications (System \ Notifications & actions \ Get notifications from apps and other senders)
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\PushNotifications" /t REG_DWORD /v ToastEnabled /d 0 /f

REM Hide user 'parent'
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon\SpecialAccounts\UserList" /t REG_DWORD /f /d 0 /v parent

echo "Press Enter to logoff..."

pause

logoff
