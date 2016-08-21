;===============================================================================
; Object 0xD3 - Spikeball used in Slot Machines - Casino Night
; [ Begin ]
;===============================================================================	
loc_273FC:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_2740A(pc,d0),d1
		jmp	loc_2740A(pc,d1)
loc_2740A:
		dc.w	loc_2740E-loc_2740A
		dc.w	loc_27436-loc_2740A
loc_2740E:
		addq.b	#2,$24(a0)
		move.l	#Spikeball_Mappings,4(a0) 
		move.w	#$380,2(a0)
		bsr	loc_2747C
		move.b	#4,1(a0)
		move.b	#$10,$19(a0)
		move.b	#4,$18(a0)
loc_27436:
		move.w	#$1B,d1
		move.w	#$10,d2
		move.w	#$10,d3
		move.w	8(a0),d4
		bsr	loc_27482
		move.w	8(a0),d0
		and.w	#$FF80,d0
		sub.w	($FFFFF7DA).w,d0
		cmp.w	#$280,d0
		bhi	loc_27476
		bra	loc_27470	
;-------------------------------------------------------------------------------	
Spikeball_Mappings: 
		dc.w	loc_27464-Spikeball_Mappings
loc_27464:
		dc.w	$1
		dc.l	$F8050000,$FFF8	
;===============================================================================
; Object 0xD3 - Spikeball used in Slot Machines - Casino Night
; [ End ]
;===============================================================================