REM Hide Search toolbar
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" /t REG_DWORD /v SearchboxTaskbarMode /d 0 /f

REM Hide Cortana button
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /t REG_DWORD /v ShowCortanaButton /d 0 /f

REM Hide Task View Button
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /t REG_DWORD /v ShowTaskViewButton /d 0 /f

REM Never combine Taskbar icons
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /t REG_DWORD /v TaskbarGlomLevel /d 2 /f

REM Don't Hide file extensions
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /t REG_DWORD /v HideFileExt /d 0 /f

REM Make File Explorer open "This PC" by default
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /t REG_DWORD /v LaunchTo /d 1 /f

REM Show all icons in tray
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\Explorer" /t REG_DWORD /v EnableAutoTray /d 0 /f

REM Disable Quick Access
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\Explorer" /t REG_DWORD /v HubMode /d 1 /f

REM Disable 3D Objects
reg delete "HKLM\Software\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{0DB7E03F-FC29-4DC6-9020-FF41B59E513A}" /f
reg delete "HKLM\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{0DB7E03F-FC29-4DC6-9020-FF41B59E513A}" /f

REM Hide Recycle bin from desktop
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel" /t REG_DWORD /v "{645FF040-5081-101B-9F08-00AA002F954E}" /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\ClassicStartMenu" /t REG_DWORD /v "{645FF040-5081-101B-9F08-00AA002F954E}" /d 1 /f

REM Add "This PC" icon on desktop
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel" /t REG_DWORD /v "{20D04FE0-3AEA-1069-A2D8-08002B30309D}" /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\ClassicStartMenu" /t REG_DWORD /v "{20D04FE0-3AEA-1069-A2D8-08002B30309D}" /d 0 /f

REM Delete Microsoft Edge shortcut from desktop
del /f /q "C:\Users\Public\Desktop\Microsoft Edge.lnk"

pause

%SystemRoot%\System32\logoff.exe
