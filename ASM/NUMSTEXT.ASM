
PrintHEX2:              ; Print HEX number (BYTE)
 MOVE.W (TXTX), D1      ; D2 = Number
 MOVE.W (TXTY), D0
 JSR    CalcOffset
 ROR.B  #4, D2
 MOVE.B D2, D3
 MOVE.W #1, D4
HEXloop:
 AND.W  #$F, D3
 CMP.B  #$A, D3
 BCS    LessThanA2
 ADDQ.W #7, D3
LessThanA2:
 ADD.W  #48, D3
 OR.W   (TXTATTR), D3
 MOVE.W D3, (DPORT)
 ROL.B  #4, D2
 MOVE.B D2, D3
 DBRA   D4, HEXloop
 RTS

PrintHEX3:              ; Print HEX number (WORD)
 MOVE.W (TXTX), D1      ; D2 = Number
 MOVE.W (TXTY), D0
 JSR    CalcOffset
 ROR.W  #8, D2
 ROR.W  #4, D2
 MOVE.W D2, D3
 MOVE.W #3, D4
HEXloop2:
 AND.W  #$F, D3
 CMP.B  #$A, D3
 BCS    LessThanA3
 ADDQ.W #7, D3
LessThanA3:
 ADD.W  #48, D3
 OR.W   (TXTATTR), D3
 MOVE.W D3, (DPORT)
 ROL.W  #4, D2
 MOVE.W D2, D3
 DBRA   D4, HEXloop2
 RTS



PrintStringSlow:        ; Prints a string on the screen, slowly
 MOVE.W (TXTX), D1      ; Speed can be controlled with control pad
 MOVE.W (TXTY), D0
 JSR CalcOffset
 CLR.W  D3
 MOVE.B (A0)+, D3
NextCharacterSlow:
 MOVE.B (A0)+, D1
 AND.W  #$7F, D1
 OR.W   (TXTATTR), D1
 MOVE.W D1, (DPORT)
 ;JSR    ReadControl1
 BTST   #7, (P1CTRL)
 BNE    SkipAlotFaster
 BTST   #4, (P1CTRL)
 BEQ    NoSpeedAdjust
 MOVEQ  #1, D0
 JSR    WaitVBlanks
 DBRA   D3, NextCharacterSlow
 RTS
SkipAlotFaster:
 DBRA   D3, NextCharacterSlow
 RTS
NoSpeedAdjust:
 MOVE.W (TXTSPD), D0
 JSR    WaitVBlanks
 DBRA   D3, NextCharacterSlow
 RTS

PrintString2:            ; Prints a string on the screen
 MOVE.W (TXTY), D0
 MOVE.W (TXTX), D1
 JSR CalcOffset
 CLR.L  D0
 MOVE.B (A0)+, D0
	clr.l d0
	move.b #40, d0
NextCharacter44:
 MOVE.B (A0)+, D1
 AND.W  #$7F, D1
 OR.W   (TXTATTR), D1
 MOVE.W D1, (DPORT)
 DBRA   D0, NextCharacter44
 RTS

PrintString:            ; Prints a string on the screen
 MOVE.W (TXTY), D0
 MOVE.W (TXTX), D1
 JSR CalcOffset
 CLR.L  D0
 MOVE.B (A0)+, D0
NextCharacter:
 MOVE.B (A0)+, D1
 AND.W  #$7F, D1
 OR.W   (TXTATTR), D1
 MOVE.W D1, (DPORT)
 DBRA   D0, NextCharacter
 RTS

PrintSRAMstring:        ; Prints a string from SRAM on the screen
 MOVE.W (TXTX), D1
 MOVE.W (TXTY), D0
 JSR CalcOffset
 CLR.L  D0
 MOVE.B (A0), D0
 ADDQ.L #2, A0
NextCharacter2:
 MOVE.B (A0), D1
 AND.W  #$7F, D1
 OR.W   (TXTATTR), D1
 MOVE.W D1, (DPORT)
 ADDQ.L #2, A0
 DBRA   D0, NextCharacter2
 RTS

PrintChar:              ; Prints a single character on the screen
 MOVE.W (TXTX), D1
 MOVE.W (TXTY), D0
 JSR CalcOffset         ; D3 = ASCII code of that character
 AND.W  #$7F, D3
 OR.W   (TXTATTR), D3   ; Add attributes (see below)
 MOVE.W D3, (DPORT)
 RTS
