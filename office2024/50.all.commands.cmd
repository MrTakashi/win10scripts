REM Setup country code
reg add "HKCU\Software\Microsoft\Office\16.0\Common\ExperimentConfigs\Ecs" /v "CountryCode" /t REG_SZ /d "std::wstring|US" /f

REM Download and configure
setup.exe /download configuration.xml
setup.exe /configure configuration.xml

REM Activate
cscript "%ProgramFiles%\Microsoft Office\Office16\ospp.vbs" /sethst:10.10.20.121
cscript "%ProgramFiles%\Microsoft Office\Office16\ospp.vbs" /act

REM Check status
cscript "%ProgramFiles%\Microsoft Office\Office16\ospp.vbs" /dstatus
