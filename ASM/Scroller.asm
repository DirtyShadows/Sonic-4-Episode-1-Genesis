SCROLLER:
SCROLLER1:
 jsr backupregs
 clr.l d0
 clr.l d1
 clr.l d2
 clr.l d6
 clr.l d7
 clr.l d3
 move.w #27, (TXTY)
 move.w #0, (TXTX)
 TST.W  (XSCROLL)       
 BNE    DontDoText
 LEA    SCROLLTEXT, A0
 ADD.W  (TEXTPTR), A0
 JSR    PrintString2
 ADDQ.W #1, (TEXTPTR)
 MOVE.W #129, D0
 CMP.W  (TEXTPTR), D0
 BNE DONTDOTEXT
 move.w #0, (TEXTPTR)
DontDoText:
 SUBQ.W #1, (XSCROLL)
 AND.W  #7, (XSCROLL)
 MOVE.W (XSCROLL), D0
 SUBQ.W #8, D0
 MOVE.L #$C01E0000, (CPORT)
 MOVE.W #$0EEE, (DPORT)
 MOVE.W D0, (DPORT)
 MOVE.W D0, (DPORT)
IL:
 jsr resregs
 rts