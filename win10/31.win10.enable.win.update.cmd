REM curl https://raw.githubusercontent.com/MrTakashi/win10scripts/main/win10/30.win10.enable.win.update | %SystemRoot%\System32\cmd.exe
REM

REM Enable and start "Windows Update Service"
sc config wuauserv start= auto
sc start wuauserv
sc query wuauserv

REM Enable and start "Orchestrator Service"
sc config UsoSvc start= auto
sc start UsoSvc
sc query UsoSvc

REM Enable and start "Windows Update Medic Service"
sc config WaaSMedicSvc start= auto
sc start WaaSMedicSvc
sc query WaaSMedicSvc
