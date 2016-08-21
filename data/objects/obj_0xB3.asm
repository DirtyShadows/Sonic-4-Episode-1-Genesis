;===============================================================================
; Object 0xB3 - Clouds - Sky Chase
; [ Begin ]
;===============================================================================	
loc_371F2:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_37200(pc,d0),d1
		jmp	loc_37200(pc,d1)
loc_37200:
		dc.w	loc_37204-loc_37200
		dc.w	loc_37226-loc_37200
loc_37204:
		bsr	EnemySettings	
		moveq	#0,d0
		move.b	$28(a0),d0
		sub.b	#$5E,d0
		move.w	loc_37220(pc,d0),$10(a0)
		lsr.w	#1,d0
		move.b	d0,$1A(a0)
		rts
loc_37220:
		dc.w	$FF80,$FFC0,$FFE0
loc_37226:
		bsr	loc_3A904
		move.w	($FFFFF736).w,d0
		add.w	d0,8(a0)
		bra	loc_329BE
;-------------------------------------------------------------------------------
Obj_0xB3_Ptr: 
		dc.l	Clouds_Mappings	
		dc.w	$454F
		dc.b	4,6,$30,$0
;-------------------------------------------------------------------------------	
Clouds_Mappings: 
		dc.w	loc_37248-Clouds_Mappings
		dc.w	loc_37262-Clouds_Mappings
		dc.w	loc_37274-Clouds_Mappings
		dc.w	loc_37248-Clouds_Mappings
loc_37248:
		dc.w	$3
		dc.l	$FC0C0000,$FFD8,$FC0C0004,$2FFF8
		dc.l	$FC040008,$40018
loc_37262:
		dc.w	$2
		dc.l	$FC0C000A,$5FFE8,$FC04000E,$70008
loc_37274:
		dc.w	$1
		dc.l	$FC040010,$8FFF8	
;===============================================================================
; Object 0xB3 - Clouds - Sky Chase
; [ End ]
;===============================================================================