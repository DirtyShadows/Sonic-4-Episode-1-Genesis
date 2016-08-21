;===============================================================================
; Object 0x8C -> Whisp badnick - Neo Green Hill 
; [ Begin ]
;===============================================================================
loc_32B26:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_32B34(pc,d0),d1
		jmp	loc_32B34(pc,d1)
loc_32B34:
		dc.w	loc_32B3E-loc_32B34
		dc.w	loc_32B50-loc_32B34
		dc.w	loc_32BA6-loc_32B34
		dc.w	loc_32B5A-loc_32B34
		dc.w	loc_32C1A-loc_32B34
loc_32B3E:
		bsr	EnemySettings	
		move.b	#$10,$2A(a0)
		move.b	#4,$2B(a0)
		rts
loc_32B50:
		tst.b	1(a0)
		bmi.s	loc_32B6E
		bra	loc_32B60
loc_32B5A:
		subq.b	#1,$2A(a0)
		bmi.s	loc_32B6E
loc_32B60:
		lea	(Whisp_Animate_Data),a1 
		bsr	loc_3A8BC
		bra	loc_3A8A4
loc_32B6E:
		subq.b	#1,$2B(a0)
		bpl.s	loc_32B94
		move.b	#8,$24(a0)
		bclr	#0,$22(a0)
		clr.w	$12(a0)
		move.w	#$FE00,$10(a0)
		move.w	#$FE00,$12(a0)
		bra	loc_32C1A
loc_32B94:
		move.b	#4,$24(a0)
		move.w	#$FF00,$12(a0)
		move.b	#$60,$2A(a0)
loc_32BA6:
		subq.b	#1,$2A(a0)
		bmi.s	loc_32BF0
		bsr	loc_32866
		bclr	#0,$22(a0)
		tst.w	d0
		beq.s	loc_32BC0
		bset	#0,$22(a0)
loc_32BC0:
		move.w	loc_32BEC(pc,d0),d2
		add.w	d2,$10(a0)
		move.w	loc_32BEC(pc,d1),d2
		add.w	d2,$12(a0)
		move.w	#$200,d0
		move.w	d0,d1
		bsr	loc_3292A
		bsr	loc_3A904
		lea	(Whisp_Animate_Data),a1 
		bsr	loc_3A8BC
		bra	loc_3A8A4
loc_32BEC:
		dc.w	$FFF0,$10
loc_32BF0:
		move.b	#6,$24(a0)
		jsr	PseudoRandomNumber	
		move.l	($FFFFF636).w,d0
		and.b	#$1F,d0
		move.b	d0,$2A(a0)
		bsr	loc_32964
		lea	(Whisp_Animate_Data),a1 
		bsr	loc_3A8BC
		bra	loc_3A8A4
loc_32C1A:
		bsr	loc_3A904
		lea	(Whisp_Animate_Data),a1 
		bsr	loc_3A8BC
		bra	loc_3A8A4
;-------------------------------------------------------------------------------	
Obj_0x8C_Ptr: 
		dc.l	Whisp_Mappings	
		dc.w	$A500
		dc.b	4,4,$C,$B
;-------------------------------------------------------------------------------
Whisp_Animate_Data: 
		dc.w	loc_32C38-Whisp_Animate_Data
loc_32C38:
		dc.b	1,0,1,$FF	
;-------------------------------------------------------------------------------
Whisp_Mappings: 
		dc.w	loc_32C40-Whisp_Mappings
		dc.w	loc_32C52-Whisp_Mappings
loc_32C40:
		dc.w	$2
		dc.l	$F8080000,$FFF4,$80003,$1FFF4
loc_32C52:
		dc.w	$2
		dc.l	$F8080006,$3FFF4,$80003,$1FFF4	
;===============================================================================
; Object 0x8C -> Whisp badnick - Neo Green Hill 
; [ End ]
;===============================================================================
