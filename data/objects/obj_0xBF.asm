;===============================================================================
; Object 0xBF
; [ Begin ]
;===============================================================================	
loc_37DB6:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_37DC4(pc,d0),d1
		jmp	loc_37DC4(pc,d1)
loc_37DC4:
		dc.w	loc_37DC8-loc_37DC4
		dc.w	loc_37DCC-loc_37DC4
loc_37DC8:
		bra	EnemySettings	
loc_37DCC:
		lea	(Engine_Part_Animate_Data),a1 
		bsr	loc_3A8BC
		bra	loc_3A8A4
;-------------------------------------------------------------------------------
Obj_0xBF_Ptr: 
		dc.l	Engine_Part_Mappings 
		dc.w	$E450
		dc.b	4,4,4,$4
;-------------------------------------------------------------------------------	
Engine_Part_Animate_Data: 
		dc.w	loc_37DE6-Engine_Part_Animate_Data
loc_37DE6:
		dc.b	1,0,1,2,$FF,$0	
;-------------------------------------------------------------------------------
Engine_Part_Mappings: 
		dc.w	loc_37DF2-Engine_Part_Mappings
		dc.w	loc_37DFC-Engine_Part_Mappings
		dc.w	loc_37E06-Engine_Part_Mappings
loc_37DF2:
		dc.w	$1
		dc.l	$F0030000,$FFFC
loc_37DFC:
		dc.w	$1
		dc.l	$F0030004,$2FFFC
loc_37E06:
		dc.w	$1
		dc.l	$F0030008,$4FFFC	
;===============================================================================
; Object 0xBF
; [ End ]
;===============================================================================