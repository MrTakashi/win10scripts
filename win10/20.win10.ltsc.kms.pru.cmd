REM curl https://raw.githubusercontent.com/MrTakashi/win10scripts/main/win10/20.win10.ltsc.kms.pru.cmd | %SystemRoot%\System32\cmd.exe
REM

REM Setup KMS key and activate

REM GVLK for Windows Enterprise LTSC 2019, 2021, 2024
REM slmgr -ipk M7XTQ-FN8P6-TTKYV-9D4CC-J462D
REM slmgr -skms 10.10.20.121
REM slmgr -ato


REM To avoid dialog boxes and run the commands silently
cscript //B %windir%\system32\slmgr.vbs /ipk M7XTQ-FN8P6-TTKYV-9D4CC-J462D
cscript //B %windir%\system32\slmgr.vbs /skms 10.10.20.121
cscript //B %windir%\system32\slmgr.vbs /ato


REM GVLK for Windows Enterprise LTSC 2019, 2021, 2024 (N)
REM 92NFX-8DJQP-P6BBQ-THF9C-7CG2H