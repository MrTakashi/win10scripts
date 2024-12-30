REM curl https://raw.githubusercontent.com/MrTakashi/win10scripts/main/office/2024_install_my_settings.cmd | %SystemRoot%\System32\cmd.exe

REM Disable the Office Start screen for all Office applications
reg add "HKCU\Software\Microsoft\Office\16.0\Common\General" /v "DisableBootToOfficeStart" /t REG_DWORD /d 1 /f

REM Disable Sing In option
reg add "HKCU\Software\Microsoft\Office\16.0\Common\SignIn" /v "SignInOptions" /t REG_DWORD /d 3 /f

echo "Press any key to continue..."
pause