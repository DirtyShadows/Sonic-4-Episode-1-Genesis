@echo off
set AS_MSGPATH=win32/msg
set USEANSI=n
as\asl -c -t 3 -L -A -xx MegaPCMZ80.asm
as\p2bin MegaPCM.p MegaPCM.z80 -r 0x-0x

pause