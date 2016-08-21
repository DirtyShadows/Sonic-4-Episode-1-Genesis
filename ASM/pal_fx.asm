SHIFTPAL:
;	PALLETTE SHIFTING EFFECT
;	ADDED 2010/06/12
	jsr backupregs
	cmp.b #0, ($FFFF0C80)
	beq.s DoScroll
	sub.b #1, ($FFFF0C80)
	jmp DontScrollYet
DoScroll:
	move.b #2, ($FFFF0C80)
	move.l #$FFFF0C60, a0
	move.l #$FFFF0C62, a1
	move.w (a1), ($FFFF0C70)
	clr.l d5
	move.b #7, d5
CopyLoop:
	move.w (a0), (a1)
	sub.l #2, a0
	sub.l #2, a1
	sub.b #1, d5
	cmp.b #0, d5
	bne.s CopyLoop
	move.w ($FFFF0C70),($FFFF0C54)
	move.l #$FFFF0C50, a0 
	clr.l d0
	jsr loadpalette
	MOVE.L #$C01E0000, (CPORT)
DontScrollYet:
	jsr resregs
	rts
