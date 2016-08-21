@echo off
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
asm68k /p /o ae- /e DemoRecord=1 sonic1.asm, _roms\SAM_record_demos.bin
fixheadr.exe _roms\SAM_record_demos.bin
pause