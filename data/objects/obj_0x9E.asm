;===============================================================================
; Object 0x9E - Crawlton - Dust Hill
; [ Begin ]
;===============================================================================	
loc_34000:
		moveq	#0,d0
		move.b	$3B(a0),d0
		move.w	loc_3400E(pc,d0),d1
		jmp	loc_3400E(pc,d1)
loc_3400E:
		dc.w	loc_3401A-loc_3400E
		dc.w	loc_34026-loc_3400E
		dc.w	loc_3406A-loc_3400E
		dc.w	loc_34088-loc_3400E
		dc.w	loc_340A6-loc_3400E
		dc.w	loc_340CE-loc_3400E
loc_3401A:
		bsr	EnemySettings	
		addq.b	#2,$3B(a0)
		bra	loc_3412C
loc_34026:
		move.w	#$80,d4
		bsr	loc_328AA
		bne.s	loc_34034
		bra	loc_3A8A4
loc_34034:
		addq.b	#2,$3B(a0)
		move.b	#$10,$3A(a0)
		bclr	#0,1(a0)
		tst.w	d0
		beq.s	loc_3404E
		bset	#0,1(a0)
loc_3404E:
		neg.w	d2
		lsl.w	#3,d2
		and.w	#$FF00,d2
		move.w	d2,$10(a0)
		neg.w	d3
		lsl.w	#3,d3
		and.w	#$FF00,d3
		move.w	d3,$12(a0)
		bra	loc_3A8A4
loc_3406A:
		subq.b	#1,$3A(a0)
		bmi.s	loc_34074
		bra	loc_3A8A4
loc_34074:
		addq.b	#2,$3B(a0)
		move.b	#8,$39(a0)
		move.b	#$1C,$3A(a0)
		bra	loc_3A8A4
loc_34088:
		subq.b	#1,$3A(a0)
		beq.s	loc_34096
		bsr	loc_3A904
		bra	loc_3A8A4
loc_34096:
		move.b	$39(a0),$3B(a0)
		move.b	#$20,$3A(a0)
		bra	loc_3A8A4
loc_340A6:
		subq.b	#1,$3A(a0)
		beq.s	loc_340B0
		bra	loc_3A8A4
loc_340B0:
		move.b	#6,$3B(a0)
		move.b	#2,$39(a0)
		move.b	#$1C,$3A(a0)
		neg.w	$10(a0)
		neg.w	$12(a0)
		bra	loc_3A8A4
loc_340CE:
		move.w	$3E(a0),a1
		cmp.b	#$9E,(a1)
		bne	loc_3A898
		move.w	8(a1),8(a0)
		move.w	$C(a1),$C(a0)
		cmp.b	#6,$3B(a1)
		bne.s	loc_34124
		move.w	$10(a1),d2
		asr.w	#8,d2
		move.w	$12(a1),d3
		asr.w	#8,d3
		lea	$10(a0),a2
		move.b	$3A(a1),d0
		moveq	#$18,d1
		moveq	#6,d6
loc_34106:	
		move.w	(a2),d4
		move.w	2(a2),d5
		cmp.b	d1,d0
		bcc.s	loc_34114
		add.w	d2,d4
		add.w	d3,d5
loc_34114:
		move.w	d4,(a2)+
		move.w	d5,(a2)+
		sub.b	#4,d1
		bcs.s	loc_34124
		addq.w	#2,a2
		dbra	d6,loc_34106
loc_34124:
		move.w	#$280,d0
		bra	loc_3A88C
loc_3412C:
		bsr	loc_3A89E
		bne.s	loc_3419E
		move.b	#$9E,0(a1)
		move.b	1(a0),1(a1)
		bset	#6,1(a1)
		move.l	4(a0),4(a1)
		move.w	2(a0),2(a1)
		move.b	#$A,$3B(a1)
		move.b	#0,$B(a1)
		move.b	#$80,$E(a1)
		move.b	#7,$F(a1)
		move.w	a0,$3E(a1)
		move.w	8(a0),d2
		move.w	d2,8(a1)
		move.w	$C(a0),d3
		move.w	d3,$C(a1)
		move.b	#$80,$14(a1)
		bset	#4,1(a1)
		lea	$10(a1),a2
		moveq	#6,d6
loc_3418E:	
		move.w	d2,(a2)+
		move.w	d3,(a2)+
		move.w	#2,(a2)+
		add.w	#$10,d1
		dbra	d6,loc_3418E
loc_3419E:
		rts	
;-------------------------------------------------------------------------------
Obj_0x9E_Ptr: 
		dc.l	Crawlton_Mappings	
		dc.w	$23C0,$404,$800B	
;-------------------------------------------------------------------------------	
Crawlton_Mappings: ;loc_341AA: 
		dc.w	loc_341B0-Crawlton_Mappings
		dc.w	loc_341B0-Crawlton_Mappings
		dc.w	loc_341BA-Crawlton_Mappings
loc_341B0:
		dc.w	$1
		dc.l	$F8090000,$FFF0
loc_341BA:
		dc.w	$1
		dc.l	$F8050006,$3FFF8	
;===============================================================================
; Object 0x9E - Crawlton - Dust Hill
; [ End ]
;===============================================================================