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

REM ::: automatic recompression of data - disabled by default because it's slow
REM ::: remove "REM" from the lines below to re-enable it
REM derecmp.exe nc artnem_u artnem
REM derecmp.exe kc artkos_u artkos
REM derecmp.exe ec mapeni_u mapeni
REM derecmp.exe ec map16_u map16
REM derecmp.exe kc map256_u map256
REM derecmp.exe ec sslay_u sslayout

rem snasm68k.exe -emax 0 -p -o ae- s1comb.asm, s1built.bin
asm68k /o op+ /o os+ /o ow+ /o oz+ /o oaq+ /o osq+ /o omq+ /p /o ae- /e DemoRecord=0 sonic1.asm, _Roms\Sonic_Alphaomega_v1.0(beta_version).bin, , s1built.lst
rompad.exe _Roms\Sonic_Alphaomega_v1.0(beta_version).bin 255 0
fixheadr.exe _Roms\Sonic_Alphaomega_v1.0(beta_version).bin
pause