@echo ------------------------------------------------------------------------------
@echo Sonic The Hedgehog 4 (W)(Genesis)			   
@echo ------------------------------------------------------------------------------
@echo Ported By: TheRetroGuy
@echo Special Thanks:
@echo Redhotsonic, Flamewing, MarkeyJester, Selbi, Puto (XM4SMPS)
@echo Oregg86, Trox, OuricoDoido, RavenFreak, Xenowhirl (SonMapEd)
@echo and anyone else who I've forgotten. Thanks for your tools and help
@echo as I would not have been able to complete this project without your
@echo support.
@echo ------------------------------------------------------------------------------
@echo ------------------------------------------------------------------------------
set __COMPAT_LAYER=

@ECHO OFF
set USEANSI=n
md output
md output\uncompressed
md output\compressed
as\asl -gnuerrors -c -A -xx smps.asm
as\p2bin smps.p output\uncompressed\smpsbuilt.bin -r 0x-0x
derecmp kc output\uncompressed output\compressed
copy output\compressed\smpsbuilt.bin smpsbuilt_compressed.bin
copy output\uncompressed\smpsbuilt.bin smpsbuilt_uncompressed.bin
copy smpsbuilt_compressed.bin sound\z80.bin
del smps.p
del smps.h
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
asm68k /o op+ /o os+ /o ow+ /o oz+ /o oaq+ /o osq+ /o omq+ /p /o ae- sonic1.asm, s1built.bin, , s1built.lst
rompad.exe s1built.bin 255 0
fixheadr.exe s1built.bin
pause