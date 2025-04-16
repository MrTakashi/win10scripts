REM curl https://raw.githubusercontent.com/MrTakashi/win10scripts/main/win10.user.settings.cmd | %SystemRoot%\System32\cmd.exe
REM

REM Hide Search toolbar
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" /t REG_DWORD /v SearchboxTaskbarMode /d 0 /f

REM Hide Task View Button
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /t REG_DWORD /v ShowTaskViewButton /d 0 /f

REM Never combine Taskbar icons
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /t REG_DWORD /v TaskbarGlomLevel /d 2 /f

REM Show all icons in tray
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer" /t REG_DWORD /v EnableAutoTray /d 0 /f

REM Add "This PC" icon on desktop
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel" /t REG_DWORD /v "{20D04FE0-3AEA-1069-A2D8-08002B30309D}" /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\ClassicStartMenu" /t REG_DWORD /v "{20D04FE0-3AEA-1069-A2D8-08002B30309D}" /d 0 /f

REM Make File Explorer open "This PC" by default
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /t REG_DWORD /v LaunchTo /d 1 /f

REM Don't Hide file extensions
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /t REG_DWORD /v HideFileExt /d 0 /f

REM Hide Recycle bin from desktop
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel" /t REG_DWORD /v "{645FF040-5081-101B-9F08-00AA002F954E}" /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\ClassicStartMenu" /t REG_DWORD /v "{645FF040-5081-101B-9F08-00AA002F954E}" /d 1 /f

REM Disable App Notifications (System \ Notifications & actions \ Get notifications from apps and other senders)
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\PushNotifications" /t REG_DWORD /v ToastEnabled /d 0 /f


REM Set solid color background: Black
reg add "HKCU\Control Panel\Colors" /v Background /t REG_SZ /d "0 0 0" /f
reg add "HKCU\Control Panel\Desktop" /v Wallpaper /t REG_SZ /d "" /f
reg add "HKCU\Control Panel\Desktop" /v WallpaperStyle /t REG_SZ /d "0" /f
reg add "HKCU\Control Panel\Desktop" /v TileWallpaper /t REG_SZ /d "0" /f

REM Apply background change
powershell -command "RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters"


REM Set desktop wallpaper to D:\0000\wp.jpg
REM reg add "HKCU\Control Panel\Desktop" /v Wallpaper /t REG_SZ /d "D:\0000\wp.jpg" /f

REM Apply wallpaper change
REM powershell -command "Set-ItemProperty -Path 'HKCU:\Control Panel\Desktop\' -Name Wallpaper -Value 'D:\0000\wp.jpg'; RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters"


REM Set sound scheme to 'No Sounds'
reg add "HKCU\AppEvents\Schemes" /ve /t REG_SZ /d ".None" /f
reg add "HKCU\AppEvents\Schemes\Apps\.Default\.Current" /ve /t REG_SZ /d ".None" /f

REM Apply the sound scheme change
powershell -command "Start-Process 'control.exe' -ArgumentList 'mmsys.cpl,,2' -WindowStyle Hidden"


REM Restart Explorer to Apply Changes
timeout /t 2 >nul
taskkill /f /im explorer.exe
start explorer.exe

echo All changes applied.
