;===============================================================================
; Object 0xBA - Wheels in Sides of Conveyor Belts - Sky Fortress
; [ Begin ]
;===============================================================================	
loc_37A5C:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_37A6A(pc,d0),d1
		jmp	loc_37A6A(pc,d1)
loc_37A6A:
		dc.w	loc_37A6E-loc_37A6A
		dc.w	loc_37A72-loc_37A6A
loc_37A6E:
		bra	EnemySettings	
loc_37A72:
		bra	loc_3A8A4
;-------------------------------------------------------------------------------	
Obj_0xBA_Ptr: 
		dc.l	Conveyor_Belt_Wheels_Mappings 
		dc.w	$C3EA
		dc.b	4,4,$10,$0
;-------------------------------------------------------------------------------	
Conveyor_Belt_Wheels_Mappings: 
		dc.w	loc_37A82-Conveyor_Belt_Wheels_Mappings
loc_37A82:
		dc.w	$1
		dc.l	$F00F0000,$FFF0	
;===============================================================================
; Object 0xBA - Wheels in Sides of Conveyor Belts - Sky Fortress
; [ End ]
;===============================================================================