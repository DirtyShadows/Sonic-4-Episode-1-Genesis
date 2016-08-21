@echo off

set USEANSI=n
as\asl -c -t 3 -L -A -xx MegaPCMZ80.asm
as\p2bin MegaPCM.p MegaPCM.z80 MegaPCM.h -r 0x-0x
pause