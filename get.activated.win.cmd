REM curl https://raw.githubusercontent.com/MrTakashi/win10scripts/main/get.activated.win.cmd | %SystemRoot%\System32\cmd.exe

REM Download command
curl https://raw.githubusercontent.com/MrTakashi/win10scripts/main/get.activated.win.cmd -OutFile "$env:TEMP\get.activated.win.ps1"

REM Execute script with Power Shell
Start-Process -FilePath "$env:TEMP\get.activated.win.ps1" -Verb RunAs -Wait

REM Remove temporary file
Remove-Item "$env:TEMP\get.activated.win.ps1" -Force
