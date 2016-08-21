;=============================================================================== 
; Object 0x27 - Object Hit - Enemies / Monitors 
; [ Begin ]
;===============================================================================	
loc_1CED6:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_1CEE4(pc,d0),d1
		jmp	loc_1CEE4(pc,d1)
loc_1CEE4:
		dc.w	loc_1CEEA-loc_1CEE4
		dc.w	loc_1CF0C-loc_1CEE4
		dc.w	loc_1CF50-loc_1CEE4
loc_1CEEA:
		addq.b	#2,$24(a0)
		bsr	loc_1D2FC
		bne.s	loc_1CF0C
		move.b	#$28,0(a1)	; Call Flickies Object
		move.w	8(a0),8(a1)
		move.w	$C(a0),$C(a1)
		move.w	$3E(a0),$3E(a1)
loc_1CF0C:
		addq.b	#2,$24(a0)
		move.l	#Object_Hit_Mappings,4(a0) 
		move.w	#$5A4,2(a0)
		bsr	loc_1D302
		move.b	#4,1(a0)
		move.b	#1,$18(a0)
		move.b	#0,$20(a0)
		move.b	#$C,$19(a0)
		move.b	#3,$1E(a0)
		move.b	#0,$1A(a0)
		move.w	#$C1,d0
		jsr	Play_Sfx	
loc_1CF50:
		subq.b	#1,$1E(a0)
		bpl.s	loc_1CF6A
		move.b	#7,$1E(a0)
		addq.b	#1,$1A(a0)
		cmp.b	#5,$1A(a0)
		beq	loc_1D2F6
loc_1CF6A:
		bra	loc_1D2F0
Object_Hit_Mappings: 
		dc.w	loc_1CF78-Object_Hit_Mappings
		dc.w	loc_1CF82-Object_Hit_Mappings
		dc.w	loc_1CF8C-Object_Hit_Mappings
		dc.w	loc_1CF96-Object_Hit_Mappings
		dc.w	loc_1CFA0-Object_Hit_Mappings
loc_1CF78:
		dc.w	$1
		dc.l	$F8050000,$FFF8
loc_1CF82:
		dc.w	$1
		dc.l	$F00F2004,$2002FFF0
loc_1CF8C:
		dc.w	$1
		dc.l	$F00F2014,$200AFFF0
loc_1CF96:
		dc.w	$1
		dc.l	$F00F2024,$2012FFF0
loc_1CFA0:
		dc.w	$1
		dc.l	$F00F2034,$201AFFF0	
;=============================================================================== 
; Object 0x27 - Object Hit - Enemies / Monitors 
; [ End ]
;===============================================================================	