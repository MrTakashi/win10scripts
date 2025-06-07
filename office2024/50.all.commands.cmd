REM Setup country code
reg add "HKCU\Software\Microsoft\Office\16.0\Common\ExperimentConfigs\Ecs" /v "CountryCode" /t REG_SZ /d "std::wstring|US" /f

REM Download and configure
setup.exe /download configuration.xml
setup.exe /configure configuration.xml

REM Activate
cd "C:\Program Files\Microsoft Office\Office16"
cscript ospp.vbs /sethst:10.10.20.121
cscript ospp.vbs /act
