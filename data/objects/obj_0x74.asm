;=============================================================================== 
; Object 0x74 - Hill Top / Metropolis / Dust Hill... - Invisible Block 
; [ Begin ]	
;===============================================================================	
loc_1CD1C:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_1CD2A(pc,d0),d1
		jmp	loc_1CD2A(pc,d1)
loc_1CD2A:
		dc.w	loc_1CD2E-loc_1CD2A
		dc.w	loc_1CD6A-loc_1CD2A
loc_1CD2E:
		addq.b	#2,$24(a0)
		move.l	#Invisible_Block_Mappings,4(a0) 
		move.w	#$8680,2(a0)
		bsr	loc_1D302
		or.b	#4,1(a0)
		move.b	$28(a0),d0
		move.b	d0,d1
		and.w	#$F0,d0
		add.w	#$10,d0
		lsr.w	#1,d0
		move.b	d0,$19(a0)
		and.w	#$F,d1
		addq.w	#1,d1
		lsl.w	#3,d1
		move.b	d1,$16(a0)
loc_1CD6A:
		bsr	loc_1D308
		bne.s	loc_1CD8C
		moveq	#0,d1
		move.b	$19(a0),d1
		add.w	#$B,d1
		moveq	#0,d2
		move.b	$16(a0),d2
		move.w	d2,d3
		addq.w	#1,d3
		move.w	8(a0),d4
		bsr	loc_157BC
loc_1CD8C:
		tst.w	($FFFFFFD8).w
		bne.s	loc_1CDA6
		move.w	8(a0),d0
		and.w	#$FF80,d0
		sub.w	($FFFFF7DA).w,d0
		cmp.w	#$280,d0
		bhi	loc_1D2F6
loc_1CDA6:
		tst.w	($FFFFFE08).w
		beq.s	loc_1CDB2
		jmp	displaySprite	
loc_1CDB2:
		rts 
;-------------------------------------------------------------------------------	
Invisible_Block_Mappings: 
		dc.w	loc_1CDBA-Invisible_Block_Mappings
		dc.w	loc_1CDDC-Invisible_Block_Mappings
		dc.w	loc_1CDFE-Invisible_Block_Mappings
loc_1CDBA:
		dc.w	$4
		dc.l	$F005001C,$EFFF0,$F005001C,$E0000
		dc.l	$5001C,$EFFF0,$5001C,$E0000
loc_1CDDC:
		dc.w	$4
		dc.l	$E005001C,$EFFC0,$E005001C,$E0030
		dc.l	$1005001C,$EFFC0,$1005001C,$E0030
loc_1CDFE:
		dc.w	$4
		dc.l	$E005001C,$EFF80,$E005001C,$E0070
		dc.l	$1005001C,$EFF80,$1005001C,$E0070	
;=============================================================================== 
; Object 0x74 - Hill Top / Metropolis / Dust Hill... - Invisible Block 
; [ End ]	
;===============================================================================	