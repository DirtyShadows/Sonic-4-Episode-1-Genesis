
	include "ASM\SEGA.I"		
	include "ASM\Other.mac"		
	include "ASM\Header.asm" 
		even
	include "./ASM/Equates.asm" 
	include "./ASM/Includes.asm"


START:
	jsr	LoadZ80drv
	jsr	Z80Process
	InterruptsOn
	jsr Initial_VDP_setup
	jsr	PlaySound
LoadTitle:		
	moveq #0, d0
	lea     toppal, a0
	jsr loadpalette
	moveq #0, d7
	moveq #37,d7
	lea     toppal, a0
	move.l #$FFFF0C50, a1
ASDLOOP:
	move.b (a0)+, (a1)+
	sub.b #1, d7
	cmp.b #0, d7
	beq ASDONE
	jmp asdloop
ASDONE:	
	move.l #$C000, (GFXATTR)
	moveq #0,d0

	lea Topbin,a0
	move.w #200,d0
	move.w #160,d3
	jsr loadtiles
	move.l #$0,d0
	move.l #$0,d1
	move.l #200,d3
	move.l #$27,d4
	move.l #$1C,d5
	jsr PutTiles


PrepareText:					
	move.l #$E000, (GFXATTR)
	clr.l d0
	;jsr LoadPalette
	lea ASCIITiles,a0			
	move.w #0,d0
	move.w #128,d3
	jsr loadtiles
	move.w #$00,d0
								
	MOVE.L #$C01E0000, (CPORT)
;	MOVE.W #$0EEE, (DPORT)
	MOVE.W #5, (TXTY)
	MOVE.W #0, (TXTX)


	LEA    Top, A0
	JSR    PrintString
	MOVE.W #7, (TXTY)
	MOVE.W #4, (TXTX)
	LEA    Minus, A0
	JSR    PrintString
	MOVE.W #8, (TXTY)
	MOVE.W #4, (TXTX)
	LEA    Minus, A0
	JSR    PrintString
	move.w #1, (txty)
	move.w #18, (txtx)
	lea	textheader, a0
	jsr printstring
	move.w #2, (txty)
	move.w #18, (txtx)
	lea	text2header, a0
	jsr printstring

	

	move.w #$E, (txtx)
	move.w #7, (txty)
	lea fma, a0
	jsr printstring
	add.w #1, (txty)
	lea fmb, a0
	jsr printstring
	add.w #1, (txty)
	lea fmc, a0
	jsr printstring
	add.w #1, (txty)
	lea fmd, a0
	jsr printstring
	add.w #1, (txty)
	lea fme, a0
	jsr printstring
	add.w #1, (txty)
	lea fmf, a0
	jsr printstring
	add.w #1, (txty)
	lea psga, a0
	jsr printstring
	add.w #1, (txty)
	lea psgb, a0
	jsr printstring
	add.w #1, (txty)
	lea psgc, a0
	jsr printstring
	add.w #1, (txty)
	move.l #0, a0
	clr.l d0
rotfellll:
	;jmp rotfellll
	move.b	#$81, d0 
	;         ^^ <-- THIS IS THE FIRST SONG THAT WILL BE PLAYED!
	jsr playsound
	jsr GetBase
	clr.l d0
	jsr InitControls
	MOVE.W #2, (TXTX)
	lea (BOTTOM), a0
	move.w #22, (TXTY)
	jsr PrintString
	lea (CTRL), a0
	move.w #25, (TXTY)
	jsr Printstring
	MOVE.W #4, (TXTX)
SCREEN0_DISPLAY:	
	clr.l d0
	clr.l d5
	move.w (P1CTRL), d5
	jsr ReadControl1
	cmp.b d5, d0
	beq.s asdfg
	jmp rotfel
	btst #6, d0 ; A
	bne startsong
	jsr ReadControl1
	btst #4, d0 ; B
	
	beq stopsong
rotfel:
	jsr ReadControl1
	btst #2, d0
	bne left
	jsr ReadControl1
	btst #3, d0
	bne right
	jmp cont2
stopsong:
	clr.l d0
	move.b #$E4, d0
	move.b  d0,($FFFFF00A).w

	jmp screen0_DISPLAY
startsong:
	move.b ($FFFF004F), d0	
	jsr PlaySound
	jmp cont2

	


asdfg:	
	jmp CONT2
Left:
	move.b ($FFFF004F), d0
	sub.b #1, d0
	cmp.b #$80, d0
	bne.s Left2

	move.b #MusicAmount,d0
Left2:
	jsr Getbase
	jsr PlaySound
	jmp CONT2
Right:
	move.b ($FFFF004F), d0
	add.b #1, d0
	cmp.b #MusicAmount+1,d0
	bne.s Right2
	move.b #$81, d0
Right2:
	jsr Getbase
	jsr PlaySound
	move.l #$FFFFFFFF, ($FFFFF0100)
	move.l #$FFFFFFFF, ($FFFFF0104)
	move.l #$FFFFFFFF, ($FFFFF0108)
	move.l #$FFFFFFFF, ($FFFFF010c)
	move.l #$FFFFFFFF, ($FFFFF0110)
	move.l #$FFFFFFFF, ($FFFFF0114)
CONT2:

	; check if stop or start
	



	MOVE.W #7, (TXTY)
	MOVE.W #4, (TXTX)
	move.w ($FFF080),d2
	jsr    PrintHEX3

	move.l #$01, d0
	jsr DrawVU
	MOVE.W #8, (TXTY)
	MOVE.W #4, (TXTX)
	move.w ($FFFFF0B0),d2
	jsr    PrintHEX3
	
	move.l #$02, d0
	jsr DrawVU
	

	MOVE.W #9, (TXTY)
	MOVE.W #4, (TXTX)
	move.w ($FFFFF0E0),d2
	jsr    PrintHEX3
	move.l #$03, d0
	jsr DrawVU

	MOVE.W #10, (TXTY)
	MOVE.W #4, (TXTX)
	move.w ($FFFFF110),d2
	jsr    PrintHEX3
	move.l #$04, d0
	jsr DrawVU

	MOVE.W #11, (TXTY)
	MOVE.W #4, (TXTX)
	move.w ($FFFFF140),d2
	jsr    PrintHEX3
	move.l #$05, d0
	jsr DrawVU

	MOVE.W #13, (TXTY)
	MOVE.W #4, (TXTX)
	move.w ($FFFFF1A0),d2
	jsr    PrintHEX3

	move.l #$07, d0
	jsr DrawVU

	MOVE.W #14, (TXTY)
	MOVE.W #4, (TXTX)
	move.w ($FFFFF1D0),d2
	jsr    PrintHEX3

	move.l #$08, d0
	jsr DrawVU

	MOVE.W #$7, (TXTY)
	MOVE.W #$A, (TXTX)
	move.b ($FFF07B),d2
	jsr    PrintHEX2

	MOVE.W #8, (TXTY)
	MOVE.W #$A, (TXTX)
	move.b ($FFF0AB),d2
	jsr    PrintHEX2

	MOVE.W #9, (TXTY)
	MOVE.W #$A, (TXTX)
	move.b ($FFF0DB),d2
	jsr    PrintHEX2

	MOVE.W #10, (TXTY)
	MOVE.W #$A, (TXTX)
	move.b ($FFF10B),d2
	jsr    PrintHEX2

	MOVE.W #11, (TXTY)
	MOVE.W #$A, (TXTX)
	move.b ($FFF13B),d2
	jsr    PrintHEX2

	MOVE.W #13, (TXTY)
	MOVE.W #$A, (TXTX)
	move.b ($FFF19B),d2
	jsr    PrintHEX2

	MOVE.W #14, (TXTY)
	MOVE.W #$A, (TXTX)
	move.b ($FFF1CB),d2
	jsr    PrintHEX2

; SPECIAL CASES FOR THEM PSG AND PCM
CheckPCM:
	clr.l d0
	move.b ($FFFFF040), d0
	btst #7, d0
	beq.s FM6
PCM6:
	MOVE.W #12, (TXTY)
	MOVE.W #$A, (TXTX)
	move.b ($FFF050),d2
	JSR    PrintHEX2
	clr.l d2
	lea minus, a0
		MOVE.W #$4, (TXTX)
	jsr printstring
	move.w #$E, (TXTX)
	lea PCMA, a0
	jsr printstring
	move.l #$00, d0
	jsr DrawVU
	
	jmp NASDF
FM6:
	MOVE.W #12, (TXTY)
	MOVE.W #$A, (TXTX)
	move.b ($FFF16B),d2
	JSR    PrintHEX2
	clr.l d2
	move.w ($FFF170),d2
	MOVE.W #$4, (TXTX)
	jsr printhex3
		move.w #$E, (TXTX)
	lea FMF, a0
	jsr printstring
	move.l #$06, d0
	jsr DrawVU	
NASDF:
CheckPSG:
	clr.l d0
	move.b ($FFFFF1F1),d0
    cmp.b #$E0, d0
	bne.s Itispsg
ItisNoise:
	MOVE.W #15, (TXTY)
	MOVE.W #$E, (TXTX)
	lea hats, a0
	jsr printstring
	move.b ($FFF1FB),d2
	cmp.b #1, d2
	beq.s OpenHH
CloseHH:
	move.w #$4, (txtx)
    lea CLOSEHAT,a0

    jmp hhdone
OpenHH:
	move.w #$4, (txtx)
	lea OPENHAT,a0
HHdone:

	jsr printstring

	jmp psgdone
ItIsPsg:
	MOVE.W #15, (TXTY)
	MOVE.W #$E, (TXTX)
	lea psgc, a0
	jsr printstring
	MOVE.W #$8, (TXTX)
	lea spacer, a0
	jsr printstring
	MOVE.W #15, (TXTY)
	MOVE.W #$A, (TXTX)
	move.b ($FFF1FB),d2
	JSR    PrintHEX2
	MOVE.W #15, (TXTY)
	MOVE.W #4, (TXTX)
		clr.l d2
	move.w ($FFFFF200),d2
	jsr printhex3


psgdone:
	move.l #$09, d0
	jsr DrawVU

	jsr SCROLLER
	jsr SHIFTPAL

	jmp	SCREEN0_DISPLAY

ErrorPtr:
	dc.l BusTXT, AddTXT, IllegTXT, Div0TXT, CHKTXT, TRAPTXT,PRIVTXT, TRACTXT, l1010TXT, l1111TXT
	even

Text1:	dc.b 39, "  ERROR === ERROR ==== ERROR === ERROR  "
	even
;                  1234567890123456789012345678901234567890
Text2:  dc.b 36, "Execution aborted due to a CPU error"
	even

BusTXT: dc.b 08, "Bus Error"
	even
ADDTXT: dc.b 12, "Address Error"
	even
IllegTXT:
	dc.b 18, "Illegal Instruction"
	even
Div0TXT: dc.b 15,"Division by zero"
	even
CHKTXT: dc.b 12, "CHK Exception"
	even
TRAPTXT: dc.b 14,"TRAPV Exception"
	even
PRIVTXT: dc.b 18,"Privilege Violation"
	even
TRACTXT: dc.b 14,"TRACE Exception"
	even
l1010TXT: dc.b 17,"LINE 1010 EMULATOR"
	even
l1111TXT: dc.b 17,"LINE 1111 EMULATOR"
	even
spt:	dc.b 02, "SP:"
d0t:    dc.b 02, "D0:"
d1t:	dc.b 02, "D1:"
d2t:	dc.b 02, "D2:"
d3t:	dc.b 02, "D3:"
d4t:	dc.b 02, "D4:"
d5t:	dc.b 02, "D5:"
d6t:	dc.b 02, "D6:"
d7t:	dc.b 02, "D7:"
a0t:    dc.b 02, "A0:"
a1t:    dc.b 02, "A1:"
a2t:    dc.b 02, "A2:"
a3t:    dc.b 02, "A3:"
a4t:    dc.b 02, "A4:"
a5t:    dc.b 02, "A5:"
a6t:    dc.b 02, "A6:"
a7t:    dc.b 02, "A7:"
PCT:    dc.b 02, "PC:"
SRT:    dc.b 02, "SR:"
	
BusErr:
	jsr BackupRegs	
	lea (BusTXT), a0
	jsr ClearScreenAndPrintCrashInfo
addErr:
	jsr BackupRegs	
	lea (AddTXT), a0
	jsr ClearScreenAndPrintCrashInfo
illErr:
	jsr BackupRegs	
	lea (IllegTXT),a0
	jsr ClearScreenAndPrintCrashInfo
divErr:
	jsr BackupRegs	
	lea (Div0TXT), a0
	jsr ClearScreenAndPrintCrashInfo
chkErr:
	jsr BackupRegs	
	lea (ChkTXT), a0
	jsr ClearScreenAndPrintCrashInfo
trpErr:
	jsr BackupRegs	
	lea (TrapTXT),a0
	jsr ClearScreenAndPrintCrashInfo
prvErr:
	jsr BackupRegs	
	lea (PRIVTXT),a0
	jsr ClearScreenAndPrintCrashInfo
trcErr:
	jsr BackupRegs	
	lea (TRAPTXT), a0
	jsr ClearScreenAndPrintCrashInfo
l10Err:
	jsr BackupRegs	
	lea (l1010txt), a0
	jsr ClearScreenAndPrintCrashInfo
l11Err:
	jsr BackupRegs	
	lea (l1111txt), a0
	jsr ClearScreenAndPrintCrashInfo

	nop
	
ClearScreenAndPrintCrashInfo:
	move.l a0, a5
	jsr clearscreen
	move.l a5, a0
	;move.l (a0), a0
	move.w #5, (txty)
	move.w #2, (txtx)
	jsr printstring

	move.w #1, (TXTY)
	move.w #0, (TXTX)
	lea Text1, a0
	jsr PRintString

	move.w #2, (TXTX)
	move.w #3, (TXTY)
	lea Text2, a0
	jsr printstring
;	move.w #5, (TXTY)
;	move.l a4, a0
;	jsr printstring
	; print stack pointer
	move.w #8, (TXTY)
	move.w #2, (TXTX)
	lea (spt), a0
	jsr PrintString
	move.w #6, (TXTX)
	move.l sp, d2
	jsr PrintHex4
	move.w #20, (TXTX)
; printing pc
	lea (srt), a0
	jsr printstring
	move.w #24, (TXTX)
	clr.l d2
	move.w sr, d2
	jsr printhex4
	add.w #2, (TXTY)
; print d0 and a0
	lea (d0t), a0
	move.w #2, (TXTx)
	jsr printstring
	add.w #4, (TXTX)
	move.l ($FFFF00A0), d2
	jsr PrintHEX4
	add.w #14, (TXTX)
	lea (a0t), a0
	jsr printstring
	add.w #4, (TXTX)
	move.l ($FFFF00C0), d2
	jsr PrintHex4

	add.w #1, (TXty)
	lea (d1t), a0
	move.w #2, (TXTX)
	jsr printstring
	add.w #4, (TXTX)
	move.l ($FFFF00A4), d2
	jsr PrintHEX4
	add.w #14, (TXTX)
	lea (a1t), a0
	jsr printstring
	add.w #4, (TXTX)
	move.l ($FFFF00C4), d2
	jsr PrintHex4

	add.w #1, (TXTy)
	lea (d2t), a0
	move.w #2, (TXTX)
	jsr printstring
	add.w #4, (TXTX)
	move.l ($FFFF00A8), d2
	jsr PrintHEX4
	add.w #14, (TXTX)
	lea (a2t), a0
	jsr printstring
	add.w #4, (TXTX)
	move.l ($FFFF00C8), d2
	jsr PrintHex4

	add.w #1, (TXTy)
	lea (d3t), a0
	move.w #2, (TXTX)
	jsr printstring
	add.w #4, (TXTX)
	move.l ($FFFF00Ac), d2
	jsr PrintHEX4
	add.w #14, (TXTX)
	lea (a3t), a0
	jsr printstring
	add.w #4, (TXTX)
	move.l ($FFFF00Cc), d2
	jsr PrintHex4

	add.w #1, (TXTX)
	lea (d4t), a0
	move.w #2, (TXTX)
	jsr printstring
	add.w #4, (TXTX)
	move.l ($FFFF00B0), d2
	jsr PrintHEX4
	add.w #14, (TXTX)
	lea (a4t), a0
	jsr printstring
	add.w #4, (TXTX)
	move.l ($FFFF00D0), d2
	jsr PrintHex4

	add.w #1, (TXTy)
	lea (d5t), a0
	move.w #2, (TXTX)
	jsr printstring
	add.w #4, (TXTX)
	move.l ($FFFF00B4), d2
	jsr PrintHEX4
	add.w #14, (TXTX)
	lea (a5t), a0
	jsr printstring
	add.w #4, (TXTX)
	move.l ($FFFF00D4), d2
	jsr PrintHex4

	add.w #1, (TXTy)
	lea (d6t), a0
	move.w #2, (TXTX)
	jsr printstring
	add.w #4, (TXTX)
	move.l ($FFFF00B8), d2
	jsr PrintHEX4
	add.w #14, (TXTX)
	lea (a6t), a0
	jsr printstring
	add.w #4, (TXTX)
	move.l ($FFFF00D8), d2
	jsr PrintHex4

	add.w #1, (TXTy)
	lea (d7t), a0
	move.w #2, (TXTX)
	jsr printstring
	add.w #4, (TXTX)
	move.l ($FFFF00BC), d2
	jsr PrintHEX4
	add.w #14, (TXTX)
	lea (a7t), a0
	jsr printstring
	add.w #4, (TXTX)
	move.l ($FFFF00DC), d2
	jsr PrintHex4
	add.w #1, (TXTy)
	jmp themidles
	lea (srt), a0
	move.w #2, (TXTx)
	jsr printstring
	add.w #4, (TXTx)
	clr.l d2
	move.w sr, d2
	jsr PrintHex4

	add.w #1, (TXTy)
;	jsr printhex4	
THEMIDLES:
	jmp THEMIDLES
	
ClearStr1:
	dc.b 39, "                                             "
	even
ClearScreen:
	move.b #35, d7
	move.w #0, (TXTX)
	move.w #0, (TXTY)
Clearloop:
	lea clearstr1, a0
 	jsr printstring
	cmp.b #0, d7
	beq ClearLoop_End
	;add.w #1, (TXTX)
	add.w #1, (TXTY)
	subq.b #1, d7

	jmp clearloop
Clearloop_end:
	rts
PrintHEX4:              ; Print HEX number (LONG)
 MOVE.W (TXTX), D1      ; D2 = Number
 MOVE.W (TXTY), D0
 JSR    CalcOffset
 ROR.L  #8, D2
 ROR.L  #8, D2
 ROR.L  #8, D2
 ROR.L  #4, D2
 MOVE.L D2, D3
 MOVE.L #7, D4
HEXloop3:
 AND.W  #$F, D3
 CMP.B  #$A, D3
 BCS    LessThanA4
 ADDQ.W #7, D3
LessThanA4:
 ADD.W  #48, D3
 OR.W   (TXTATTR), D3
 MOVE.W D3, (DPORT)
 ROL.L  #4, D2
 MOVE.L D2, D3
 DBRA   D4, HEXloop3
 RTS
