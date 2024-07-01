REM curl https://raw.githubusercontent.com/MrTakashi/win10scripts/main/office/2024/ODT/40.%20install_my_settings_16.cmd | %SystemRoot%\System32\cmd.exe

reg add "HKCU\Software\Microsoft\Office\16.0\Common\General" /v "DisableBootToOfficeStart" /t REG_DWORD /d 1 /f

reg add "HKCU\Software\Microsoft\Office\16.0\Common\SignIn" /v "SignInOptions" /t REG_DWORD /d 3 /f
