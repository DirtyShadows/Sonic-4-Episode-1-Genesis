;===============================================================================
; Object 0x93 - Spiker Spike when fired - Hill Top 
; [ Begin ]
;===============================================================================	
loc_331D0:	
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_331DE(pc,d0),d1
		jmp	loc_331DE(pc,d1)
loc_331DE:
		dc.w	loc_331E2-loc_331DE
		dc.w	loc_33212-loc_331DE
loc_331E2:
		bsr	EnemySettings	
		or.b	#$80,1(a0)
		or.b	#$80,$20(a0)
		move.w	$2C(a0),a1
		move.b	1(a1),d0
		and.b	#3,d0
		or.b	d0,1(a0)
		moveq	#2,d1
		btst	#1,d0
		bne.s	loc_3320C
		neg.w	d1
loc_3320C:
		move.b	d1,$12(a0)
		rts
loc_33212:
		tst.b	1(a0)
		bpl	loc_3A898
		bchg	#0,1(a0)
		bsr	loc_3A904
		bra	loc_3A8A4
;-------------------------------------------------------------------------------	
loc_33228:
		tst.b	$2B(a0)
		bne.s	loc_3324C
		tst.b	1(a0)
		bpl.s	loc_3324C
		bsr	loc_32866
		add.w	#$20,d2
		cmp.w	#$40,d2
		bcc.s	loc_3324C
		add.w	#$80,d3
		cmp.w	#$100,d3
		bcs.s	loc_33250
loc_3324C:
		moveq	#0,d0
		rts
loc_33250:
		move.b	$24(a0),$2F(a0)
		move.b	#6,$24(a0)
		move.b	#$10,$2E(a0)
		moveq	#1,d0
		rts	

;-------------------------------------------------------------------------------
Obj_0x92_Ptr: 
		dc.l	Spiker_Mappings	
		dc.w	$0
		dc.b	4,4,$10,$12 
;-------------------------------------------------------------------------------	
Spiker_Animate_Data: 
		dc.w	loc_33274-Spiker_Animate_Data
		dc.w	loc_33278-Spiker_Animate_Data
loc_33274:
		dc.b	9,0,1,$FF
loc_33278:
		dc.b	9,2,3,$FF	
;-------------------------------------------------------------------------------
Spiker_Mappings: 
		dc.w	loc_33286-Spiker_Mappings
		dc.w	loc_332A0-Spiker_Mappings
		dc.w	loc_332BA-Spiker_Mappings
		dc.w	loc_332CC-Spiker_Mappings
		dc.w	loc_332DE-Spiker_Mappings
loc_33286:
		dc.w	$3
		dc.l	$8090520,$290FFF4,$E807252C,$2296FFF8
		dc.l	$503DE,$1EFFFF8
loc_332A0:
		dc.w	$3
		dc.l	$8090526,$293FFF4,$E807252C,$2296FFF8
		dc.l	$503DE,$1EFFFF8
loc_332BA:
		dc.w	$2
		dc.l	$8090520,$290FFF4,$503DE,$1EFFFF8
loc_332CC:
		dc.w	$2
		dc.l	$8090526,$293FFF4,$503DE,$1EFFFF8
loc_332DE:
		dc.w	$1
		dc.l	$EC07252C,$2296FFF8	
;===============================================================================
; Object 0x93 - Spiker Spike when fired - Hill Top 
; [ End ]
;===============================================================================