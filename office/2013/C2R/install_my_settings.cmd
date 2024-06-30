REM curl https://raw.githubusercontent.com/MrTakashi/win10scripts/main/office/C2R/install_my_settings.cmd | %SystemRoot%\System32\cmd.exe

reg add "HKCU\Software\Microsoft\Office\15.0\Common\General" /v "DisableBootToOfficeStart" /t REG_DWORD /d 1 /f
REM [HKEY_CURRENT_USER\SOFTWARE\Microsoft\Office\15.0\Common\General]
REM "DisableBootToOfficeStart"=dword:00000001

reg add "HKCU\Software\Microsoft\Office\15.0\Common\SignIn" /v "SignInOptions" /t REG_DWORD /d 3 /f
REM [HKEY_CURRENT_USER\Software\Microsoft\Office\15.0\Common\SignIn]
REM "SignInOptions"=dword:00000003
