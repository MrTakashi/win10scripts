REM curl https://raw.githubusercontent.com/MrTakashi/win10scripts/main/win10/30.win10.disable.win.update | %SystemRoot%\System32\cmd.exe
REM

REM Stop and disable "Windows Update Service"
sc start wuauserv
sc config wuauserv start= disabled
sc query wuauserv

REM Stop and disable "Orchestrator Service"
sc stop UsoSvc
sc config UsoSvc start= disabled
sc query UsoSvc

REM Stop and disable "Windows Update Medic Service"
sc stop WaaSMedicSvc
sc config WaaSMedicSvc start= disabled
sc query WaaSMedicSvc
