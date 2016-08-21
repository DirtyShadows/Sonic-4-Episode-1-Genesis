@echo ------------------------------------------------------------------------------
@echo Sonic The Hedgehog 4 (W)(Genesis)			   
@echo ------------------------------------------------------------------------------
@echo Ported By: TheRetroGuy
@echo Special Thanks:
@echo Redhotsonic, Flamewing, MarkeyJester, Selbi, Puto (XM4SMPS)
@echo Oregg86, Trox, OuricoDoido, RavenFreak, Xenowhirl (SonMapEd)
@echo and anyone else who I've forgotten. Thanks for your tools and help
@echo as I would not have been able to complete this project without your
@echo support. Any errors when building will appear in "errors.txt"
@echo ------------------------------------------------------------------------------
@echo ------------------------------------------------------------------------------
@echo off

derecmp.exe kd map256 map256_u

rem include.exe sonic1.asm s1comb.asm

REM ::: automatic recompression of data - disabled by default because it's slow
REM ::: remove "REM" from the lines below to re-enable it
REM derecmp.exe nc artnem_u artnem
REM derecmp.exe kc artkos_u artkos
REM derecmp.exe ec mapeni_u mapeni
REM derecmp.exe ec map16_u map16
REM derecmp.exe kc map256_u map256
REM derecmp.exe ec sslay_u sslayout

rem asm68k /o op+ /o os+ /o ow+ /o oz+ /o oaq+ /o osq+ /o omq+ /p /o ae- sonic1.asm, s1built.bin
asm68k /o op+ /o os+ /o ow+ /o oz+ /o oaq+ /o osq+ /o omq+ /k /p /o ae- sonic1.asm, s1built.bin >errors.txt, , sonic.lst
IF NOT EXIST s1built.bin goto LABLERR
rompad.exe "s1built.bin" 255 0
fixheadr.exe s1built.bin

echo Build succeeded

goto LABLDONE

:LABLERROR1
echo Failed to build because write access to s2.h was denied.
pause


exit /b

:LABLERROR2
echo Failed to build because write access to s2.p was denied.
pause


exit /b

:LABLERROR3
echo Failed to build because write access to s2built.bin was denied.
pause

:LABLERR
REM // display a noticeable message
echo.
echo **********************************************************************
echo *                                                                    *
echo * There were build errors/warnings. See error.txt for more details.  *
echo *                                                                    *
echo **********************************************************************
echo.
pause
:LABLDONE
pause

:LABLERROR4
