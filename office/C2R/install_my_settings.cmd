;

echo [HKEY_CURRENT_USER\SOFTWARE\Microsoft\Office\15.0\Common\General]
echo "DisableBootToOfficeStart"=dword:00000001
reg add "HKCU\Software\Microsoft\Office\15.0\Common\General" /v "DisableBootToOfficeStart" /t REG_DWORD /d 1 /f

echo [HKEY_CURRENT_USER\Software\Microsoft\Office\15.0\Common\SignIn]
echo "SignInOptions"=dword:00000003
reg add "HKCU\Software\Microsoft\Office\15.0\Common\General" /v "SignInOptions" /t REG_DWORD /d 3 /f
