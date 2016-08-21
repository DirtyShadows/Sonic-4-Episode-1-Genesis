=============================================
SMPS PLAYER TOOLKIT                      V2.5
=============================================
SMPS Player Toolkit contains several useful
utilities you use to create and enhance your 
own SMPS player ROM!

Before you start, here's a list of the
programs you can use, if you don't want to
edit the ASM files directly:

    1) addmus.exe
    2) addpcm.exe


* 1) * ADDMUS.EXE

ADDMUS.EXE allows you to add a song to the
ROM. Usage:

ADDMUS.EXE (no parameters accepted)

Due to technical limitations, all the needed
info will be asked upon runtime.

Example:

C:\SMPSPLAY\TOOLKIT>addmus

Filename?C:\Documents and Settings\xm3smps\out\italo.asm
Type 1 (ASM) or 2 (BIN)?1
!!! PLEASE MAKE SURE YOU INCLUDED CORRECT DEFINITIONS !!!
Song name (max. 32 characters)?Oerg866 - Test Song

* 2) * ADDPCM.EXE

ADDPCM.EXE allows you to add a PCM sample to 
the ROM. Usage:

ADDPCM.EXE <filename> <pitch>

<filename> = path+filename of the sample (8-bit unsigned mono)

<pitch> = playback rate of the sample in decimal

Pitch works kinda odd. The lower the value, the higher
the sample rate will be.
	