ROMSIZE  EQU $0001A4    ; ROM size
SRAMA    EQU $200000    ; Sprite table address
FMPORT1  EQU $A04000    ; YM2612 Data port, set 1
FMPORT2  EQU $A04001    ; YM2612 Index port, set 1
FMPORT3  EQU $A04002    ; YM2612 Data port, set 2
FMPORT4  EQU $A04003    ; YM2612 Index port, set 2
SRAMEN   EQU $A130F1    ; SRAM control port (for emu compatibility)
DPORT    EQU $C00000    ; VDP Data port
CPORT    EQU $C00004    ; VDP Command port
P1CTRL   EQU $FF0000    ; P1 controller status address
P2CTRL   EQU $FF0001    ; P2 controller status address
HTIMER   EQU $FF0002    ; HBlank based timer
VTIMER   EQU $FF0006    ; VBlank based timer
PTADDR   EQU $FF000A    ; Pattern table address
TXTATTR  EQU $FF000C    ; Text attributes
TXTCHAR  EQU $FF000E    ; PrintChar character
GFXATTR  EQU $FF0010    ; Graphics attributes
TXTX     EQU $FF0012    ; Text X position
TXTY     EQU $FF0014    ; Text Y position
GFXX     EQU $FF0012    ; Text X position
GFXY     EQU $FF0014    ; Text Y position
GARBAGE  EQU $FF0016    ; GiveGarbage random number/seed
FADESPD  EQU $FF0018    ; Palette fading speed
TXTSPD   EQU $FF001A    ; Text speed (for some routines)
BMPX     EQU $FF001E    ; Bitmap file X info for BMP loader routine
BMPY     EQU $FF0020    ; Bitmap file Y info for BMP loader routine
NUMBUF   EQU $FF0024    ; Decimal number buffer
FIFOPAL  EQU $FF002C    ; Fade in/out palette (192 bytes) address
ADDR	 EQU $FF0C50
XSCROLL	 EQU $FF0C00
TEXTPTR  EQU $FF0D00