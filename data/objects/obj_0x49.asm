;=============================================================================== 
; Object 0x49 - Green Hill - Waterfalls 
; [ Begin ]	
;===============================================================================	
loc_1C9DA:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_1C9E8(pc,d0),d1
		jmp	loc_1C9E8(pc,d1)
loc_1C9E8:
		dc.w	loc_1C9EC-loc_1C9E8
		dc.w	loc_1CA26-loc_1C9E8
loc_1C9EC:
		addq.b	#2,$24(a0)
		move.l	#Waterfall_Mappings,4(a0) 
		move.w	#$239E,2(a0)
		bsr	loc_1D302
		move.b	#4,1(a0)
		move.b	#$20,$19(a0)
		move.w	8(a0),$30(a0)
		move.b	#0,$18(a0)
		move.b	#$80,$16(a0)
		bset	#4,1(a0)
loc_1CA26:
		tst.w	($FFFFFFD8).w
		bne.s	loc_1CA40
		move.w	8(a0),d0
		and.w	#$FF80,d0
		sub.w	($FFFFF7DA).w,d0
		cmp.w	#$280,d0
		bhi	loc_1D2F6
loc_1CA40:
		move.w	8(a0),d1
		move.w	d1,d2
		sub.w	#$40,d1
		add.w	#$40,d2
		move.b	$28(a0),d3
		move.b	#0,$1A(a0)
		move.w	($FFFFB008).w,d0
		cmp.w	d1,d0
		bcs.s	loc_1CA72
		cmp.w	d2,d0
		bcc.s	loc_1CA72
		move.b	#1,$1A(a0)
		add.b	d3,$1A(a0)
		bra	loc_1D2F0
loc_1CA72:
		move.w	($FFFFB048).w,d0
		cmp.w	d1,d0
		bcs.s	loc_1CA84
		cmp.w	d2,d0
		bcc.s	loc_1CA84
		move.b	#1,$1A(a0)
loc_1CA84:
		add.b	d3,$1A(a0)
		bra	loc_1D2F0
;-------------------------------------------------------------------------------
Waterfall_Mappings: 
		dc.w	loc_1CA9C-Waterfall_Mappings
		dc.w	loc_1CAAE-Waterfall_Mappings
		dc.w	loc_1CB40-Waterfall_Mappings
		dc.w	loc_1CB42-Waterfall_Mappings
		dc.w	loc_1CB40-Waterfall_Mappings
		dc.w	loc_1CB64-Waterfall_Mappings
		dc.w	loc_1CA9C-Waterfall_Mappings
		dc.w	loc_1CBB6-Waterfall_Mappings
loc_1CA9C:
		dc.w	$2
		dc.l	$800D0000,$FFE0,$800D0000,$0
loc_1CAAE:
		dc.w	$12
		dc.l	$800D0000,$FFE0,$800D0000,$0
		dc.l	$800F0008,$4FFE0,$800F0008,$40000
		dc.l	$A00F0008,$4FFE0,$A00F0008,$40000
		dc.l	$C00F0008,$4FFE0,$C00F0008,$40000
		dc.l	$E00F0008,$4FFE0,$E00F0008,$40000
		dc.l	$F0008,$4FFE0,$F0008,$40000
		dc.l	$200F0008,$4FFE0,$200F0008,$40000
		dc.l	$400F0008,$4FFE0,$400F0008,$40000
		dc.l	$600F0008,$4FFE0,$600F0008,$40000
loc_1CB40:
		dc.w	$0
loc_1CB42:
		dc.w	$4
		dc.l	$E00F0008,$4FFE0,$E00F0008,$40000
		dc.l	$F0008,$4FFE0,$F0008,$40000
loc_1CB64:
		dc.w	$A
		dc.l	$C00F0008,$4FFE0,$C00F0008,$40000
		dc.l	$E00F0008,$4FFE0,$E00F0008,$40000
		dc.l	$F0008,$4FFE0,$F0008,$40000
		dc.l	$200F0008,$4FFE0,$200F0008,$40000
		dc.l	$400F0008,$4FFE0,$400F0008,$40000
loc_1CBB6:
		dc.w	$E
		dc.l	$800D0000,$FFE0,$800D0000,$0
		dc.l	$800F0008,$4FFE0,$800F0008,$40000
		dc.l	$A00F0008,$4FFE0,$A00F0008,$40000
		dc.l	$C00F0008,$4FFE0,$C00F0008,$40000
		dc.l	$E00F0008,$4FFE0,$E00F0008,$40000
		dc.l	$F0008,$4FFE0,$F0008,$40000
		dc.l	$200F0008,$4FFE0,$200F0008,$40000
;=============================================================================== 
; Object 0x49 - Green Hill - Waterfalls 
; [ End ]	
;===============================================================================	