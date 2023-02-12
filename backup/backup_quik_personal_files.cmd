@echo off 

REM *** Connect network folder *** 
NET USE \\10.10.20.150\backup\tr_bcs_mk *password* /u:mk_backup

REM *** Prepare vars ***
set "backup_from=C:\BCS_Work\QUIK_BCS\"
set "backup_to=\\10.10.20.150\backup\tr_bcs_mk"
set "backup_mask=*.wnd"

REM *** Backuping ***
robocopy %backup_from% %backup_to% %backup_mask% /R:3 /W:3

REM robocopy %backup_from% %backup_to% %backup_mask% /R:3 /W:3 /LOG+:%appdata%\robocopy.log



REM TEST COMMAND   robocopy C:\BCS_Work\QUIK_BCS\ \\10.10.20.150\backup\tr_bcs_mk *.wnd /R:3 /W:3 /LOG+:%appdata%\robocopy.log /TEE