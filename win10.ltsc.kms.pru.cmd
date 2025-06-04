REM curl https://raw.githubusercontent.com/MrTakashi/win10scripts/main/win10.ltsc.kms.pru.cmd | %SystemRoot%\System32\cmd.exe
REM

REM Setup KMS key and activate

slmgr -ipk 92NFX-8DJQP-P6BBQ-THF9C-7CG2H
slmgr -skms 10.10.20.121
slmgr -ato
