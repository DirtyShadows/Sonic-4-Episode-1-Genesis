ClearSegata:
	lea (Clearstring), a0
	move.w #$14,(TXTX)
	jsr PrintString
	rts

segata:			; lets have a vu meter 
	move.w #$13, (TXTX)
	lea (DSTR), a0
	jsr Printstring
	move.w #$12,(TXTX)	; TXTX is now $12
;	jsr ClearSegata ;
	move.b d6, d5
segata2:
	subq.b #1,d6	; let's subtract d6
	cmp.b #0,d6	; is it at 1?
	bne.s segata3	; no? continue
	jmp segata4	; yeS? then quit
segata3:
;	move.w (TXTX),d2
	add.w #1,(TXTX)	; add 1 to TXT X position
;	move.w d2,(TXTX); tell it the TXT X position 
;	cmp.w #18, (TXTX) ;

	cmp.w #27, (TXTX)
	blt.s Itis27orless
	cmp.w #31, (TXTX)
	blt.s Itis31orless
	lea (DSTR3),a0
	jsr PrintString
	jmp segata2
Itis27orless:
	lea (DSTR), a0
	jsr PrintString
	jmp segata2
Itis31orless:
	lea (DSTR2), a0
	jsr PrintString
	jmp segata2
	rts
Segata4:	;clr.l d5
	add.w #2, (TXTX)
	lea (CLR123), a0
	jsr Printstring
	
	rts

CLR123:	dc.b 0, " "
	even





DrawVU:
; argument d0: channel
; Set flag

	jsr BackupRegs
;
;	MOVE.W ($FFFF0C54), (DPORT)
	move.l d0, d1
	move.l d1, d2
	lsl.w #4, d2		; multiply
	move.w d2, d3		; d0
	add.w d2, d2		; with
	add.w d3, d2		; 48

	add.l #$FFFFF040, d2
asdf2:
	cmp.l #0, d0
	bne.s Failno1
	add.l #$10, d2
	move.l d2, a0
	cmp.b #$80, (a0)
	bne.s DrawVu03
	jsr clearsegata
	rts
Failno1:

	move.l d2, a0
	clr.l d2
	move.b (a0), d2
	btst #1, d2
	beq.s DrawVU03
	clr.l d2
	
	move.w #4,d0
	mulu.w d1, d0
	
	add.l #$FFFF0100,d0
	move.l #$FFFF0060, a0
	move.l d0, (a0)
	move.b #$F, (a0)
	add.l #2,d0
	move.l #$FFFF0070, a0
	move.l d0, (a0)
	move.l #0, (a0)
	jsr clearsegata
	rts
DrawVU03:
	clr.l d2
	
	move.w #4,d0
	mulu.w d1, d0
	
	add.l #$FFFF0100,d0
	move.l #$FFFF0060, a0
	move.l d0, (a0)
	add.l #2,d0
	move.l #$FFFF0070, a0
	move.l d0, (a0)

	lsl.w #4, d1		; multiply
	move.w d1, d2		; d0
	add.w d1, d1		; with
	add.w d2, d1		; 48


	add.l #$FFFFF04E, d1


; TEST!!!!!!!	
	move.l d1, a0
	move.b (a0),d1

	cmp.b #2,d1
	ble.s DrawVU123
	jmp DrawVU1
DrawVU123:
	cmp.b #0,d1
	bge.s DrawVU12
	jmp DrawVU1
	rts

DrawVU12:
	add.l #1, a0 ; ADDITION 2010/06/23 BEGIN
	cmp.b #$7F,(a0)
	bne.s DrawVU012
	jmp drawvu1

DrawVU012:
;	sub.l #1, a0
;	btst #3, (a0)

	move.l ($FFFF0060),a0
	move.b #$0F, (a0)
	move.l ($FFFF0070),a0	
	move.b #$00, (a0)
;	beq.s failno
	rts
	jmp drawvu1
failno:
	rts
DrawVU1:
	;move.l #0, a0
	move.l ($FFFF0060),a0
	move.b (a0),d5
	cmp.b #0,d5
	bne.s DrawVU2
	rts
DrawVU2:
	move.l ($FFFF0060),a0
	move.l ($FFFF0070),a1
	move.b (a1),d7
	cmp.b #0,d7
	bne.s DrawVU3
	move.b d5, d6
	jsr segata
	move.l ($FFFF0060),a0
	subq.b #1, d5
	move.b d5, (a0)
;	move.b d5,(a2)
;	move.l ($FFFF0070),a0
	moveq #$1,d7
	move.b d7, (a1)
	jmp drawvu9001
DrawVU3:
	subq.b #$01, d7
	move.b d7, (a1)	
;	move.l ($FFFF0070),a0

	clr.l d5
	clr.l d7
DrawVU9001:
	jsr resregs
;	move.w #$0EEE, (DPORT)
	rts

DSTR:
	dc.b 0, "%"
	even
DSTR2:	dc.b 0, 21
	even
DSTR3:	dc.b 0, 1
	even
Clearstring:
	dc.b 15, "                      "
	even
BackupRegs:
	move.l d0, ($FF00A0)
	move.l d1, ($FF00A4)
	move.l d2, ($FF00A8)
	move.l d3, ($FF00AC)
	move.l d4, ($FF00B0)
	move.l d5, ($FF00B4)
	move.l d6, ($FF00B8)
	move.l d7, ($FF00BC)
	move.l a0, ($FF00c0)
	move.l a1, ($FF00c4)
	move.l a2, ($FF00c8)
	move.l a3, ($FF00cC)
	move.l a4, ($FF00d0)
	move.l a5, ($FF00d4)
	move.l a6, ($FF00d8)
	move.l a7, ($FF00dC)
	rts
	
ResRegs:
	move.l ($FF00A0), d0
	move.l ($FF00A4), d1
	move.l ($FF00A8), d2
	move.l ($FF00AC), d3
	move.l ($FF00B0), d4
	move.l ($FF00B4), d5
	move.l ($FF00B8), d6
	move.l ($FF00BC), d7
	rts
