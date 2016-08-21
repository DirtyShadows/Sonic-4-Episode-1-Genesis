;=============================================================================== 
; Object 0x2A - Dust Hill - Up and Down Pillar
; [ Begin ]
;===============================================================================	
loc_F2E0:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_F2EE(pc,d0),d1
		jmp	loc_F2EE(pc,d1)
loc_F2EE:
		dc.w	loc_F2F2-loc_F2EE
		dc.w	loc_F32C-loc_F2EE
loc_F2F2:
		addq.b	#2,$24(a0)
		move.l	#Up_Down_Pillar_Mappings,4(a0) 
		move.w	#$4000,2(a0)
		bsr	ModifySpriteAttr_2P	
		or.b	#4,1(a0)
		move.b	#$10,$19(a0)
		move.b	#4,$18(a0)
		move.w	$C(a0),$32(a0)
		move.b	#$50,$16(a0)
		bset	#4,1(a0)
loc_F32C:
		tst.b	$25(a0)
		bne.s	loc_F346
		addq.w	#1,$30(a0)
		cmp.w	#$60,$30(a0)
		bne.s	loc_F358
		move.b	#2,$25(a0)
		bra.s	loc_F358
loc_F346:
		subq.w	#8,$30(a0)
		bhi.s	loc_F358
		move.w	#0,$30(a0)
		move.b	#0,$25(a0)
loc_F358:
		move.w	$32(a0),d0
		sub.w	$30(a0),d0
		move.w	d0,$C(a0)
		moveq	#0,d1
		move.b	$19(a0),d1
		add.w	#$B,d1
		move.w	#$40,d2
		move.w	d2,d3
		addq.w	#1,d3
		move.w	8(a0),d4
		bsr	SolidObject	
		bra	MarkObjGone	
;-------------------------------------------------------------------------------
Up_Down_Pillar_Mappings: 
		dc.w	loc_F384-Up_Down_Pillar_Mappings
loc_F384:
		dc.w	$6
		dc.l	$B009001A,$DFFF0,$C00F0020,$10FFF0
		dc.l	$E00F0030,$18FFF0,$F1030,$1018FFF0
		dc.l	$200F1020,$1010FFF0,$4009101A,$100DFFF0	
;=============================================================================== 
; Object 0x2A - Dust Hill - Up and Down Pillar
; [ End ]
;===============================================================================	