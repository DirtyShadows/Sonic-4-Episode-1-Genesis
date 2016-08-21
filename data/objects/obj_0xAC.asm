;===============================================================================
; Object 0xAC - Balkiry - Sky Chase
; [ Begin ]
;===============================================================================	
loc_354EC:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_354FA(pc,d0),d1
		jmp	loc_354FA(pc,d1)
loc_354FA:
		dc.w	loc_354FE-loc_354FA
		dc.w	loc_35528-loc_354FA
loc_354FE:
		bsr	EnemySettings	
		move.b	#1,$1A(a0)
		move.w	#$FD00,$10(a0)
		bclr	#1,1(a0)
		beq.s	loc_3551C
		move.w	#$FB00,$10(a0)
loc_3551C:
		lea	Balkiry_Animate_Data(pc),a1 
		move.l	a1,$2E(a0)
		bra	loc_33CA8
loc_35528:
		bsr	loc_3A904
		bsr	loc_329AC
		bra	loc_329BE 
;-------------------------------------------------------------------------------
Obj_0xAC_Ptr: 
		dc.l	Balkiry_Mappings	
		dc.w	$565
		dc.b	4,4,$20,$8
;-------------------------------------------------------------------------------	
Balkiry_Mappings: 
		dc.w	loc_35542-Balkiry_Mappings
		dc.w	loc_35564-Balkiry_Mappings
loc_35542:
		dc.w	$4
		dc.l	$F40D0000,$FFDC,$EC040008,$4000C
		dc.l	$F40D000A,$5FFFC,$4080012,$9FFFC
loc_35564:
		dc.w	$5
		dc.l	$F40D0000,$FFDC,$EC040008,$4000C
		dc.l	$F40D000A,$5FFFC,$4080015,$A000C
		dc.l	$C000018,$C001C	
;===============================================================================
; Object 0xAC - Balkiry - Sky Chase
; [ End ]
;===============================================================================