;===============================================================================
; Object 0x8E -> Grounder Neo Greo Green Hill
; [ Begin ]
;===============================================================================
loc_32C64:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_32C72(pc,d0),d1
		jmp	loc_32C72(pc,d1)
loc_32C72:
		dc.w	loc_32C7E-loc_32C72
		dc.w	loc_32CCA-loc_32C72
		dc.w	loc_32CEE-loc_32C72
		dc.w	loc_32CFC-loc_32C72
		dc.w	loc_32D22-loc_32C72
		dc.w	loc_32D58-loc_32C72
loc_32C7E:
		bsr	EnemySettings	
		bclr	#1,1(a0)
		beq.s	loc_32C96
		bclr	#1,$22(a0)
		and.w	#$7FFF,2(a0)
loc_32C96:
		move.b	#$14,$16(a0)
		move.b	#$10,$17(a0)
		jsr	ObjHitFloor	
		tst.w	d1
		bpl.s	loc_32CB6
		add.w	d1,$C(a0)
		move.w	#0,$12(a0)
loc_32CB6:
		move.b	0(a0),d0
		sub.b	#$8D,d0
		beq	loc_32E52
		move.b	#6,$24(a0)
		rts
loc_32CCA:
		bsr	loc_32866
		tst.w	d2
		bpl.s	loc_32CD4
		neg.w	d2
loc_32CD4:
		cmp.w	#$60,d2
		bls.s	loc_32CDE
		bra	loc_3A8A4
loc_32CDE:
		addq.b	#2,$24(a0)
		st	$2B(a0)
		bsr	loc_32E1A
		bra	loc_3A8A4
loc_32CEE:
		lea	(loc_32ED8),a1
		bsr	loc_3A8BC
		bra	loc_3A8A4
loc_32CFC:
		addq.b	#2,$24(a0)
		bsr	loc_32866
		move.w	loc_32D1E(pc,d0),$10(a0)
		bclr	#0,$22(a0)
		tst.w	d0
		beq.s	loc_32D1A
		bset	#0,$22(a0)
loc_32D1A:
		bra	loc_3A8A4
loc_32D1E:
		dc.w	$FF00,$100
loc_32D22:
		bsr	loc_3A904
		jsr	ObjHitFloor	
		cmp.w	#$FFFF,d1
		blt.s	loc_32D4A
		cmp.w	#$C,d1
		bge.s	loc_32D4A
		add.w	d1,$C(a0)
		lea	(loc_32ED0),a1
		bsr	loc_3A8BC
		bra	loc_3A8A4
loc_32D4A:
		addq.b	#2,$24(a0)
		move.b	#$3B,$2A(a0)
		bra	loc_3A8A4
loc_32D58:
		subq.b	#1,$2A(a0)
		bmi.s	loc_32D62
		bra	loc_3A8A4
loc_32D62:
		move.b	#8,$24(a0)
		neg.w	$10(a0)
		bchg	#0,$22(a0)
		bra	loc_3A8A4	
;===============================================================================
; Object 0x8E -> Grounder Neo Greo Green Hill
; [ End ]
;===============================================================================