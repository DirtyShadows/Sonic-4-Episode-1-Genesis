;===============================================================================
; Object 0xC8 - Crawl badnick - Casino Night
; [ Begin ]
;===============================================================================	
loc_39122:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_39130(pc,d0),d1
		jmp	loc_39130(pc,d1)
loc_39130:
		dc.w	loc_39138-loc_39130
		dc.w	loc_39160-loc_39130
		dc.w	loc_391A0-loc_39130
		dc.w	loc_391CE-loc_39130
loc_39138:
		bsr	EnemySettings	
		move.w	#$200,$2A(a0)
		moveq	#$20,d0
		btst	#0,1(a0)
		bne.s	loc_3914E
		neg.w	d0
loc_3914E:
		move.w	d0,$10(a0)
		move.b	#$F,$16(a0)
		move.b	#$10,$17(a0)
		rts
loc_39160:
		bsr	loc_39300
		subq.w	#1,$2A(a0)
		beq.s	loc_39192
		bsr	loc_3A904
		jsr	ObjHitFloor	
		cmp.w	#$FFFF,d1
		blt.s	loc_39192
		cmp.w	#$C,d1
		bge.s	loc_39192
		add.w	d1,$C(a0)
		lea	(Crawl_Animate_Data),a1 
		bsr	loc_3A8BC
		bra	loc_3A8A4
loc_39192:
		addq.b	#2,$24(a0)
		move.w	#$3B,$2A(a0)
		bra	loc_3A8A4
loc_391A0:
		bsr	loc_39300
		subq.w	#1,$2A(a0)
		bmi.s	loc_391AE
		bra	loc_3A8A4
loc_391AE:
		move.b	#2,$24(a0)
		move.w	#$200,$2A(a0)
		neg.w	$10(a0)
		bchg	#0,1(a0)
		bchg	#0,$22(a0)
		bra	loc_3A8A4
loc_391CE:
		move.b	#$D7,$20(a0)
		bsr	loc_32866
		move.w	d2,d4
		add.w	#$40,d2
		cmp.w	#$80,d2
		bcc	loc_39284
		add.w	#$40,d3
		cmp.w	#$80,d3
		bcc	loc_39284
		bclr	#3,$22(a0)
		bne.s	loc_39270
		move.b	$21(a0),d0
		beq.s	loc_39260
		bclr	#0,$21(a0)
		beq.s	loc_3922C
		cmp.b	#2,$1C(a1)
		bne.s	loc_39264
		btst	#1,$22(a1)
		bne.s	loc_3922A
		bsr	loc_32866
		btst	#0,1(a0)
		beq.s	loc_39226
		subq.w	#2,d0
loc_39226:
		tst.w	d0
		bne.s	loc_3927A
loc_3922A:
		bsr.s	loc_3928E
loc_3922C:
		lea	($FFFFB040).w,a1
		bclr	#1,$21(a0)
		beq.s	loc_3925C
		cmp.b	#2,$1C(a1)
		bne.s	loc_39264
		btst	#1,$22(a1)
		bne.s	loc_3925A
		bsr	loc_32866
		btst	#0,1(a0)
		beq.s	loc_39256
		subq.w	#2,d0
loc_39256:
		tst.w	d0
		bne.s	loc_3927A
loc_3925A:
		bsr.s	loc_3928E
loc_3925C:
		clr.b	$21(a0)
loc_39260:
		bra	loc_3A8A4
loc_39264:
		move.b	#$97,$20(a0)
		bset	#3,$22(a0)
loc_39270:
		move.b	#1,$1A(a0)
		bra	loc_3A8A4
loc_3927A:
		move.b	#$17,$20(a0)
		bra	loc_3A8A4
loc_39284:
		move.b	$2C(a0),$24(a0)
		bra	loc_3A8A4
loc_3928E:
		move.b	#2,$1A(a0)
		btst	#1,$22(a1)
		beq.s	loc_392A2
		move.b	#3,$1A(a0)
loc_392A2:
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
		move.w	#$B4,d0
		jsr	Play_Sfx	
		rts
		rts
loc_39300:
		bsr	loc_32866
		add.w	#$40,d2
		cmp.w	#$80,d2
		bcc.s	loc_39328
		add.w	#$40,d3
		cmp.w	#$80,d3
		bcc.s	loc_39328
		move.b	$24(a0),$2C(a0)
		move.b	#6,$24(a0)
		clr.b	$1A(a0)
loc_39328:
		rts	
;-------------------------------------------------------------------------------
Obj_0xC8_Ptr: 
		dc.l	Crawl_Mappings	
		dc.w	$8340
		dc.b	4,3,$10,$D7	
;-------------------------------------------------------------------------------	
Crawl_Animate_Data: 
		dc.w	loc_39336-Crawl_Animate_Data
loc_39336:
		dc.b	$13,0,1,$FF	
;-------------------------------------------------------------------------------
Crawl_Mappings: 
		dc.w	loc_39342-Crawl_Mappings
		dc.w	loc_3935C-Crawl_Mappings
		dc.w	loc_39376-Crawl_Mappings
		dc.w	loc_39390-Crawl_Mappings
loc_39342:
		dc.w	$3
		dc.l	$F00B2010,$20080000,$F00F2000,$2000FFF0
		dc.l	$92024,$2012FFE8
loc_3935C:
		dc.w	$3
		dc.l	$F00B2010,$20080004,$F00F2000,$2000FFF0
		dc.l	$92024,$2012FFE0
loc_39376:
		dc.w	$3
		dc.l	$F00B2010,$2008FFE8,$92024,$2012FFF0
		dc.l	$F00F2000,$2000FFF0
loc_39390:
		dc.w	$4
		dc.l	$F00D201C,$200EFFF0,$92024,$2012FFF8
		dc.l	$92824,$2812FFE0,$F00F2000,$2000FFF0	
;===============================================================================
; Object 0xC8 - Crawl badnick - Casino Night
; [ End ]
;===============================================================================