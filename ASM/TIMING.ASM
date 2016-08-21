; Here's some QB pseudo code as comments. "&" means long integer
WaitHBlanks:            ; TIMEOUT& = D0
 MOVE.L (HTIMER), D1    ; OLDTIME& = D1
Hloop:
 MOVE.L (HTIMER), D2    ; NEWTIME& = D2
 SUB.L  D1, D2          ; TESTTIME& = NEWTIME& - OLDTIME&
 CMP.L  D0, D2           
 BCS.s  Hloop          ; IF TESTTIME& < TIMEOUT& THEN GOTO Hloop
 RTS


 
 
WaitVBlanks:            ; TIMEOUT& = D0
 MOVE.L (VTIMER), D1    ; OLDTIME& = D1
Vloop:
 MOVE.L (VTIMER), D2    ; NEWTIME& = D2
 SUB.L  D1, D2          ; TESTTIME& = NEWTIME& - OLDTIME&
 CMP.L  D0, D2           
 BCS.s  Vloop           ; IF TESTTIME& < TIMEOUT& THEN GOTO Vloop
 RTS

WaitOneFrame:
 MOVE.W (CPORT), D0
 BTST   #3, D0
 BNE    WaitOneFrame
WaitOneFrame1:
 MOVE.W (CPORT), D0
 BTST   #3, D0
 BEQ    WaitOneFrame1
 RTS
VBlankInt:              ; If VBLANK occurs ...
 ADDQ.L #1, (VTIMER)
 RTE

HBlankInt:              ; If HBLANK occurs ...
 ADDQ.L #1, (HTIMER)
 RTE
