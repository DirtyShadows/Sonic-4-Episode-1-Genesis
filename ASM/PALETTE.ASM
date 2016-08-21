
LoadPalette:            ; Setup 1 palette  D0=Pal index, A0=Source address
 LSL    #5, D0
 SWAP   D0
 OR.L   #$C0000000, D0
 MOVE.L D0, (CPORT)
 MOVEQ  #7, D0
NextPal:
 MOVE.L (A0)+, (DPORT)
 DBRA   D0, NextPal
 RTS
