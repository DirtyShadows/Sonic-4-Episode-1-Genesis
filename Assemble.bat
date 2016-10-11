@Echo off
exe\ASMSH.exe /o #+ /q /o psh2 /o w- /p SH2\SH2_Master.asm, SH2_Master.bin
exe\OBJGEN.exe SH2_Master.bin SH2\OBJ_Slave.inc
exe\ASMSH.exe /o #+ /q /o psh2 /o w- /p SH2\SH2_Slave.asm, SH2_Slave.bin
exe\ASM68K.exe /q /o op+ /o os+ /o ow+ /o oz+ /o oaq+ /o osq+ /o omq+ /p /o ae- Sonic32.asm, Sonic32.32x
Pause