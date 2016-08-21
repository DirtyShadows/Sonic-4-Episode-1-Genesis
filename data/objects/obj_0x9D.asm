;===============================================================================
; Object 0x9D - Coconuts (Green Hill) 
; [ Begin ]
;===============================================================================	
loc_33DE4:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_33DF2(pc,d0),d1
		jmp	loc_33DF2(pc,d1)
loc_33DF2:
		dc.w	loc_33DFA-loc_33DF2
		dc.w	loc_33E06-loc_33DF2
		dc.w	loc_33E98-loc_33DF2
		dc.w	loc_33EBE-loc_33DF2
loc_33DFA:
		bsr	EnemySettings	
		move.b	#$10,$2A(a0)
		rts
loc_33E06:
		bsr	loc_32866
		bclr	#0,1(a0)
		bclr	#0,$22(a0)
		tst.w	d0
		beq.s	loc_33E26
		bset	#0,1(a0)
		bset	#0,$22(a0)
loc_33E26:
		add.w	#$60,d2
		cmp.w	#$C0,d2
		bcc.s	loc_33E3A
		tst.b	$2E(a0)
		beq.s	loc_33E50
		subq.b	#1,$2E(a0)
loc_33E3A:
		subq.b	#1,$2A(a0)
		bmi.s	loc_33E44
		bra	J_MarkObjGone_1	
loc_33E44:
		addq.b	#2,$24(a0)
		bsr	loc_33E6C
		bra	J_MarkObjGone_1	
loc_33E50:
		move.b	#6,$24(a0)
		move.b	#1,$1A(a0)
		move.b	#8,$2A(a0)
		move.b	#$20,$2E(a0)
		bra	J_MarkObjGone_1	
loc_33E6C:
		move.w	$2C(a0),d0
		cmp.w	#$C,d0
		bcs.s	loc_33E78
		moveq	#0,d0
loc_33E78:
		lea	loc_33E8C(pc,d0),a1
		addq.w	#2,d0
		move.w	d0,$2C(a0)
		move.b	(a1)+,$12(a0)
		move.b	(a1)+,$2A(a0)
		rts
loc_33E8C:	
		dc.b	$FF,$20,1,$18,$FF,$10,1,$28,$FF,$20,1,$10
loc_33E98:
		subq.b	#1,$2A(a0)	
		beq.s	loc_33EB0
		bsr	J_SpeedToPos	
		lea	(Coconuts_AnimateData),a1 
		bsr	loc_3A8BC
		bra	J_MarkObjGone_1	
loc_33EB0:
		subq.b	#2,$24(a0)
		move.b	#$10,$2A(a0)
		bra	J_MarkObjGone_1	
loc_33EBE:
		moveq	#0,d0
		move.b	$25(a0),d0
		move.w	loc_33ED0(pc,d0),d1
		jsr	loc_33ED0(pc,d1)
		bra	J_MarkObjGone_1	
loc_33ED0:
		dc.w	loc_33ED4-loc_33ED0
		dc.w	loc_33EF0-loc_33ED0
loc_33ED4:
		subq.b	#1,$2A(a0)
		bmi.s	loc_33EDC
		rts
loc_33EDC:
		addq.b	#2,$25(a0)
		move.b	#8,$2A(a0)
		move.b	#2,$1A(a0)
		bra	loc_33F0C
loc_33EF0:
		subq.b	#1,$2A(a0)
		bmi.s	loc_33EF8
		rts
loc_33EF8:
		clr.b	$25(a0)
		move.b	#4,$24(a0)
		move.b	#8,$2A(a0)
		bra	loc_33E6C
loc_33F0C:
		bsr	J_SingleObjectLoad_1	
		bne.s	loc_33F5E
		move.b	#$98,0(a1)
		move.b	#3,$1A(a1)
		move.b	#$20,$28(a1)
		move.w	8(a0),8(a1)
		move.w	$C(a0),$C(a1)
		add.w	#$FFF3,$C(a1)
		moveq	#0,d0
		btst	#0,1(a0)
		bne.s	loc_33F42
		moveq	#4,d0
loc_33F42:
		lea	loc_33F60(pc,d0),a2
		move.w	(a2)+,d0
		add.w	d0,8(a1)
		move.w	(a2)+,$10(a1)
		move.w	#$FF00,$12(a1)
		lea	loc_33912(pc),a2
		move.l	a2,$2A(a1)
loc_33F5E:
		rts	
loc_33F60:
		dc.w	$FFF5,$100,$B,$FF00
Obj_0x9D_Ptr: 
		dc.l	Coconuts_Mappings 
		dc.w	$3EE
		dc.b	4,5,$C,$9	
Coconuts_AnimateData: 
		dc.w	loc_33F76-Coconuts_AnimateData
		dc.w	loc_33F7A-Coconuts_AnimateData
loc_33F76:
		dc.b	5,0,1,$FF
loc_33F7A:
		dc.b	9,1,2,1,$FF,$0	
Coconuts_Mappings: 
		dc.w	loc_33F88-Coconuts_Mappings
		dc.w	loc_33FAA-Coconuts_Mappings
		dc.w	loc_33FCC-Coconuts_Mappings
		dc.w	loc_33FEE-Coconuts_Mappings
loc_33F88:
		dc.w	$4
		dc.l	$5001A,$DFFFE,$F0090000,$FFFC
		dc.l	$D0006,$3FFF4,$1001000E,$7000C
loc_33FAA:
		dc.w	$4
		dc.l	$5001E,$FFFFE,$F0090000,$FFFC
		dc.l	$D0010,$8FFF4,$10010018,$C000C
loc_33FCC:
		dc.w	$4
		dc.l	$F8010022,$110007,$F0090000,$FFFC
		dc.l	$D0010,$8FFF4,$10010018,$C000C
loc_33FEE:
		dc.w	$2
		dc.l	$F8014024,$4012FFF8,$F8014824,$48120000	
;===============================================================================
; Object 0x9D - Coconuts (Green Hill) 
; [ End ]
;===============================================================================