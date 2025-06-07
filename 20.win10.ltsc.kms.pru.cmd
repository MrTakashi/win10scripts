REM curl https://raw.githubusercontent.com/MrTakashi/win10scripts/main/20.win10.ltsc.kms.pru.cmd | %SystemRoot%\System32\cmd.exe
REM

REM Setup KMS key and activate

REM GVLK for Windows Enterprise LTSC 2019, 2021, 2024
slmgr -ipk M7XTQ-FN8P6-TTKYV-9D4CC-J462D
slmgr -skms 10.10.20.121
slmgr -ato


REM GVLK for Windows Enterprise LTSC 2019, 2021, 2024 (N)
REM 92NFX-8DJQP-P6BBQ-THF9C-7CG2H