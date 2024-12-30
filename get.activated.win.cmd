REM curl https://raw.githubusercontent.com/MrTakashi/win10scripts/main/get.activated.win.cmd | %SystemRoot%\System32\cmd.exe

@echo off
REM Inform the user that the script is starting the download
echo Downloading the PowerShell script from the URL...
powershell -Command "Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/MrTakashi/win10scripts/main/get.activated.win.cmd' -OutFile '%TEMP%\get.activated.win.cmd'"
echo Download completed. The script has been saved to: %TEMP%\get.activated.win.cmd

REM Inform the user that the script is about to run
echo Running the downloaded script...
powershell -Command "Start-Process -FilePath '%TEMP%\get.activated.win.cmd' -Wait"
echo Script execution completed.

REM Inform the user that the script file will be removed
echo Cleaning up by removing the downloaded script...
powershell -Command "Remove-Item -Path '%TEMP%\get.activated.win.cmd' -Force"
echo Script file has been removed from the system.

REM Please press any key...
pause
