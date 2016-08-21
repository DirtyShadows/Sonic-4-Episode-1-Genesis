;===============================================================================
; Object 0xB4 - Vertical Helix - Sky Fortress
; [ Begin ]
;===============================================================================	
loc_3727E:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_3728C(pc,d0),d1
		jmp	loc_3728C(pc,d1)
loc_3728C:
		dc.w	loc_37290-loc_3728C
		dc.w	loc_372A2-loc_3728C
loc_37290:
		bsr	EnemySettings	
		bclr	#1,1(a0)
		beq.s	loc_372A0
		clr.b	$20(a0)
loc_372A0:
		rts
loc_372A2:
		lea	(Vertical_Helix_Animate_Data),a1	
		bsr	loc_3A8BC
		move.b	($FFFFFE0F).w,d0
		and.b	#$1F,d0
		bne.s	loc_372BC
		moveq	#$FFFFFFDE,d0
		bsr	loc_3A8C2
loc_372BC:
		bra	loc_3A8A4
;-------------------------------------------------------------------------------
Obj_0xB4_Ptr: 
		dc.l	Vertical_Helix_Mappings 
		dc.w	$A561
		dc.b	4,4,4,$A8	
;-------------------------------------------------------------------------------
Vertical_Helix_Animate_Data: 
		dc.w	loc_372CC-Vertical_Helix_Animate_Data
loc_372CC:
		dc.b	1,0,1,2,$FF,$0	
;-------------------------------------------------------------------------------	
Vertical_Helix_Mappings: 
		dc.w	loc_372D8-Vertical_Helix_Mappings
		dc.w	loc_372EA-Vertical_Helix_Mappings
		dc.w	loc_372FC-Vertical_Helix_Mappings
loc_372D8:
		dc.w	$2
		dc.l	$C0030000,$FFFC,$E0031000,$1000FFFC
loc_372EA:
		dc.w	$2
		dc.l	$E0030000,$FFFC,$31000,$1000FFFC
loc_372FC:
		dc.w	$2
		dc.l	$30000,$FFFC,$20031000,$1000FFFC	
;===============================================================================
; Object 0xB4 - Vertical Helix - Sky Fortress
; [ End ]
;===============================================================================