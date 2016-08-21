;===============================================================================
; Object 0x44 -> Red Ball Bumper With Star
; [ Begin ]
;===============================================================================
loc_1B5AC:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_1B5BA(pc,d0),d1
		jmp	loc_1B5BA(pc,d1)
loc_1B5BA:
		dc.w	loc_1B5BE-loc_1B5BA
		dc.w	loc_1B5EC-loc_1B5BA
loc_1B5BE:
		addq.b	#2,$24(a0)
		move.l	#Red_Ball_Bumper_Mappings,4(a0) 
		move.w	#$439A,2(a0)
		bsr	ModifySpriteAttr_2P	
		move.b	#4,1(a0)
		move.b	#$10,$19(a0)
		move.b	#1,$18(a0)
		move.b	#$D7,$20(a0)
loc_1B5EC:
		move.b	$21(a0),d0
		beq	loc_1B6BA
		lea	($FFFFB000).w,a1
		bclr	#0,$21(a0)
		beq.s	loc_1B602
		bsr.s	loc_1B618
loc_1B602:
		lea	($FFFFB040).w,a1
		bclr	#1,$21(a0)
		beq.s	loc_1B610
		bsr.s	loc_1B618
loc_1B610:
		clr.b	$21(a0)
		bra	loc_1B6BA
loc_1B618:
		move.w	8(a0),d1
		move.w	$C(a0),d2
		sub.w	8(a1),d1
		sub.w	$C(a1),d2
		jsr	CalcAngle	
		move.b	($FFFFFE04).w,d1
		and.w	#3,d1
		add.w	d1,d0
		jsr	CalcSine	
		muls.w	#$F900,d1
		asr.l	#8,d1
		move.w	d1,$10(a1)
		muls.w	#$F900,d0
		asr.l	#8,d0
		move.w	d0,$12(a1)
		bset	#1,$22(a1)
		bclr	#4,$22(a1)
		bclr	#5,$22(a1)
		clr.b	$3C(a1)
		move.b	#1,$1C(a0)
		move.w	#$B4,d0
		jsr	Play_Sfx	
		lea	($FFFFFC00).w,a2
		moveq	#0,d0
		move.b	$23(a0),d0
		beq.s	loc_1B690
		cmp.b	#$8A,2(a2,d0)
		bcc.s	loc_1B6B8
		addq.b	#1,2(a2,d0)
loc_1B690:
		moveq	#1,d0
		move.w	a1,a3
		jsr	addPoints_1	
		bsr	SingleObjectLoad	
		bne.s	loc_1B6B8
		move.b	#$29,0(a1)
		move.w	8(a0),8(a1)
		move.w	$C(a0),$C(a1)
		move.b	#4,$1A(a1)
loc_1B6B8:
		rts
loc_1B6BA:
		lea	(Red_Ball_Bumper_Animate_Data),a1 
		bsr	loc_1B716
		bra	loc_1B710
;-------------------------------------------------------------------------------
Red_Ball_Bumper_Animate_Data: 
		dc.w	loc_1B6CC-Red_Ball_Bumper_Animate_Data
		dc.w	loc_1B6CF-Red_Ball_Bumper_Animate_Data
loc_1B6CC:
		dc.b	$F,0,$FF
loc_1B6CF:
		dc.b	3,1,0,1,$FD,0,$0
;-------------------------------------------------------------------------------
Red_Ball_Bumper_Mappings: 
		dc.w	loc_1B6DA-Red_Ball_Bumper_Mappings
		dc.w	loc_1B6EC-Red_Ball_Bumper_Mappings
loc_1B6DA:
		dc.w	$2
		dc.l	$F0070000,$FFF0,$F0070800,$8000000
loc_1B6EC:
		dc.w	$4
		dc.l	$EC0B0008,$4FFE8,$EC0B0808,$8040000
		dc.l	$C050014,$AFFF0,$C050814,$80A0000
;===============================================================================
; Object 0x44 -> Red Ball Bumper With Star
; [ End ]
;===============================================================================