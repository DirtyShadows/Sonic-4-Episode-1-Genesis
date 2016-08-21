;===============================================================================
; Object 0x58 - Boss Explosions
; [ Begin ]
;===============================================================================	

	
loc_29A34:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_29A42(pc,d0),d1
		jmp	loc_29A42(pc,d1)
loc_29A42:
		dc.w	loc_29A46-loc_29A42
		dc.w	loc_29A8C-loc_29A42
loc_29A46:
		addq.b	#2,$24(a0)
		move.l	#Boss_Explosions_Mappings,4(a0) 
		move.w	#$8580,2(a0)
		bsr	loc_29CCC
		move.b	#4,1(a0)
		move.b	#0,$18(a0)
		move.b	#0,$20(a0)
		move.b	#$C,$19(a0)
		move.b	#7,$1E(a0)
		move.b	#0,$1A(a0)
		move.w	#$C4,d0
		jmp	Play_Sfx	
		rts
loc_29A8C:
		subq.b	#1,$1E(a0)
		bpl.s	loc_29AA6
		move.b	#7,$1E(a0)
		addq.b	#1,$1A(a0)
		cmp.b	#7,$1A(a0)
		beq	loc_29CBA
loc_29AA6:
		bra	loc_29CB4
Boss_Explosions_Mappings: 
		dc.w	loc_29AB8-Boss_Explosions_Mappings
		dc.w	loc_29AC2-Boss_Explosions_Mappings
		dc.w	loc_29ACC-Boss_Explosions_Mappings
		dc.w	loc_29AD6-Boss_Explosions_Mappings
		dc.w	loc_29AE0-Boss_Explosions_Mappings
		dc.w	loc_29AEA-Boss_Explosions_Mappings
		dc.w	loc_29AF4-Boss_Explosions_Mappings
loc_29AB8:
		dc.w	$1
		dc.l	$F8050000,$FFF8
loc_29AC2:
		dc.w	$1
		dc.l	$F00F0004,$2FFF0
loc_29ACC:
		dc.w	$1
		dc.l	$F00F0014,$AFFF0
loc_29AD6:
		dc.w	$1
		dc.l	$F00F0024,$12FFF0
loc_29AE0:
		dc.w	$1
		dc.l	$F00F0034,$1AFFF0
loc_29AEA:
		dc.w	$1
		dc.l	$F00F0044,$22FFF0
loc_29AF4:
		dc.w	$1
		dc.l	$F00F0054,$2AFFF0	
;===============================================================================
; Object 0x58 - Boss Explosions
; [ End ]
;===============================================================================