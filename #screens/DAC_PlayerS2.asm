DAC_Player:
	moveq	#$FFFFFFE4,d0
	jsr	PlaySound_Special

	jsr	ClearPLC
	jsr	Pal_FadeFrom
	lea	($C00004).l,a6

	; store VDP registers
	move.w	#$8004,(a6)	; $00
	move.w	#$8230,(a6)	; $02, set Plane A nametable offset in VRAM
	move.w	#$8407,(a6)	; $04, set Plane B nametable offset in VRAM
	move.w	#$8700,(a6)     ; $07, set Blackdrop Color
	move.w	#$8B00,(a6)	; $0B, set Scrolling Mode

	clr.b	($FFFFF64E).w	; clear water palette state
	move	#$2700,sr	; disable interrupts
	move.w	#$8134,($C00004).l
	jsr	ClearScreen

	lea	($C00000).l,a6
	locVRAM	$20
	lea	(Art_Text).l,a0
	moveq	#$16,d1
-	move.l	(a0)+,(a6)
	move.l	(a0)+,(a6)
	move.l	(a0)+,(a6)
	move.l	(a0)+,(a6)
	move.l	(a0)+,(a6)
	move.l	(a0)+,(a6)
	move.l	(a0)+,(a6)
	move.l	(a0)+,(a6)
        dbf	d1,-

	moveq	#3,d0		; load Sonic's pallet
	jsr	PalLoad1
	jsr	Pal_FadeTo

	move.w	#$8174,($C00004).l
	moveq	#$FFFFFF80,d6	; start sample
	move.l	d6,d7
	moveq	#0,d3
	moveq	#0,d5
	pea	Player_MainProcess

; ==========================================================

Player_Redraw:

	; Draw Cursor
	moveq	#1,d0		; cursor pattern
	tst.w	d5
	beq.s	-
	swap	d0
-	locVRAM	$C21C
	move.w	d0,(a6)
	swap	d0
	locVRAM	$C31C
	move.w	d0,(a6)

	; Draw Sample numbers
	locVRAM	$C220
	move.w	d6,d0		; load PCM A Number
	bsr.s	$Draw
	move.w	d7,d0		; load PCM B Number
	locVRAM	$C320
	bsr.s	$Draw
	
	; Debug draw
	locVRAM	$C420
	move.w	d4,d0

$Draw:
	move.w	d0,d1
	lsr.b	#4,d1
	andi.w	#$F,d1
	cmpi.w	#$A,d1
	bcs.s	-
	addq.w	#4,d1
-	addq.w	#1,d1
	move.w	d1,(a6)

	move.w	d0,d1
	andi.w	#$F,d1
	cmpi.w	#$A,d1
	bcs.s	-
	addq.w	#4,d1
-	addq.w	#1,d1
	move.w	d1,(a6)
	rts

; ==========================================================

Player_MainProcess:
	move.b	#2,($FFFFF62A).w
	jsr	DelayProgram
	bsr	DebugShit
	move.b	(Ctrl_1_Press).w,d1
	beq.s	Player_MainProcess
	bpl.s	$ControlPlayer
	rts

$ControlPlayer:     
	pea	Player_MainProcess
	moveq	#-1,d2
	btst	#button_left,d1
	bne.s	$ChangeNumber
	btst	#button_Right,d1
	beq.s	$ChangeCursor
	moveq	#1,d2

$ChangeNumber:  
	tst.w	d5
	beq.s	-
	add.w	d2,d7		; PCM B
	bra	Player_Redraw
-	add.w	d2,d6		; PCM A
	bra	Player_Redraw

$ChangeCursor:
	move.b	d1,d2
	andi.b	#button_up_mask|button_Down_mask,d2
	beq.s	$ChangeMode
	not.w	d5
	bra	Player_Redraw

$ChangeMode:
	btst	#button_A,d1
	beq.s	$PlaySample
	not.w	d3
	move.w	d3,d0
	jmp	Set_MegaPCM_Mode

$PlaySample:
	tst.w	d5
	beq.s	-
	move.w	d7,d0
	jmp	PlaySample_2
-	move.w	d6,d0
	jmp	PlaySample

; ==========================================================
DebugShit:
	move.w	#$100,($A11100).l	; stop the Z80
-	btst	#0,($A11100).l
	bne.s	-
	move.b	$A01ff2,d4
	move.w	#0,($A11100).l
	bra	Player_Redraw