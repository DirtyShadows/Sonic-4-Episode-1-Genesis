GetBase:
	; Get the music base
	; d0 = Music Number
	; No regs trashed
	even
	jsr BackupRegs
;asd:jmp asd
	move.l d0, d1
	sub.l #$81, d1
	mulu.w #$4,d1
	add.l #musictext, d1 ; 
	move.l d1,a0		
	lea (a0), a0
	move.l (a0), d1
	move.l d1, a0
	move.w #2, (TXTX)
	move.w #23, (TXTY)
	jsr PrintString
	jsr ResRegs
	rts
	
MoveLeft:
	sub.b #$1,d0
	cmp.b #$80,d0
	bne.s MoveLeft2
	move.b #MusicAmount,d0
MoveLeft2:
	jsr GetBase	
	jsr PlaySound
	rts
	
MoveRight:
	add.b #$1,d0
	cmp.b #MusicAmount,d0
	bne.s MoveRight2
	move.b #$81,d0
MoveRight2:
	jsr GetBase	
	jsr PlaySound
	rts