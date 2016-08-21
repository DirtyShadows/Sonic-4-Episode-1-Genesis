;=============================================================================== 
; Object 0x31 - Hill Top / Metropolis - Lava Attributes 
; [ Begin ]	
;===============================================================================
loc_1CC28:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_1CC36(pc,d0),d1
		jmp	loc_1CC36(pc,d1)
loc_1CC36:
		dc.w	loc_1CC3E-loc_1CC36
		dc.w	loc_1CC82-loc_1CC36
loc_1CC3A:
		dc.b	$96,$94,$95,$0
loc_1CC3E:
		addq.b	#2,$24(a0)
		moveq	#0,d0
		move.b	$28(a0),d0
		move.b	loc_1CC3A(pc,d0),$20(a0)
		move.l	#Lava_Attributes_Mappings_No_Display,4(a0) 
		tst.w	($FFFFFE08).w
		beq.s	loc_1CC64
		move.l	#Lava_Attributes_Mappings,4(a0) 
loc_1CC64:
		move.w	#$8680,2(a0)
		move.b	#$84,1(a0)
		move.b	#$80,$19(a0)
		move.b	#4,$18(a0)
		move.b	$28(a0),$1A(a0)
loc_1CC82:
		tst.w	($FFFFFFD8).w
		bne.s	loc_1CC9C
		move.w	8(a0),d0
		and.w	#$FF80,d0
		sub.w	($FFFFF7DA).w,d0
		cmp.w	#$280,d0
		bhi	loc_1D2F6
loc_1CC9C:
		tst.w	($FFFFFE08).w
		beq.s	loc_1CCA6
		bsr	loc_1D2F0
loc_1CCA6:
		rts
;-------------------------------------------------------------------------------
Lava_Attributes_Mappings_No_Display: 
		dc.w	loc_1CCAE-Lava_Attributes_Mappings_No_Display
		dc.w	loc_1CCAE-Lava_Attributes_Mappings_No_Display
		dc.w	loc_1CCAE-Lava_Attributes_Mappings_No_Display
loc_1CCAE:
		dc.w	$0	
;-------------------------------------------------------------------------------	
Lava_Attributes_Mappings: ;	loc_1CCB0
		dc.w	loc_1CCB6-Lava_Attributes_Mappings
		dc.w	loc_1CCD8-Lava_Attributes_Mappings
		dc.w	loc_1CCFA-Lava_Attributes_Mappings
loc_1CCB6:
		dc.w	$4
		dc.l	$E0050034,$1AFFE0,$E0050034,$1A0010
		dc.l	$10050034,$1AFFE0,$10050034,$1A0010
loc_1CCD8:
		dc.w	$4
		dc.l	$E0050034,$1AFFC0,$E0050034,$1A0030
		dc.l	$10050034,$1AFFC0,$10050034,$1A0030
loc_1CCFA:
		dc.w	$4
		dc.l	$E0050034,$1AFF80,$E0050034,$1A0070
		dc.l	$10050034,$1AFF80,$10050034,$1A0070	
;=============================================================================== 
; Object 0x31 - Hill Top / Metropolis - Lava Attributes 
; [ End ]	
;===============================================================================