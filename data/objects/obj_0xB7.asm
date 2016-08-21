;===============================================================================
; Object 0xB7 - Unused Vertical Large Laser - Sky Fortress
; [ Begin ]
;===============================================================================	
loc_377BA:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_377C8(pc,d0),d1
		jmp	loc_377C8(pc,d1)
loc_377C8:
		dc.w	loc_377CC-loc_377C8
		dc.w	loc_377D8-loc_377C8
loc_377CC:
		bsr	EnemySettings	
		move.b	#$20,$2A(a0)
		rts
loc_377D8:
		subq.b	#1,$2A(a0)
		beq	loc_3A898
		bchg	#0,$2B(a0)
		beq	Null_Sub_01	
		bra	loc_3A8A4
;-------------------------------------------------------------------------------	
Obj_0xB7_Ptr: 
		dc.l	Vertical_Large_Laser_Mappings 
		dc.w	$C39F
		dc.b	4,4,$18,$A9
;-------------------------------------------------------------------------------	
Vertical_Large_Laser_Mappings: 
		dc.w	loc_377FA-Vertical_Large_Laser_Mappings	
loc_377FA:
		dc.w	$10
		dc.l	$900B0000,$FFE8,$900B0800,$8000000
		dc.l	$B00B0000,$FFE8,$B00B0800,$8000000
		dc.l	$D00B0000,$FFE8,$D00B0800,$8000000
		dc.l	$F00B0000,$FFE8,$F00B0800,$8000000
		dc.l	$100B0000,$FFE8,$100B0800,$8000000
		dc.l	$300B0000,$FFE8,$300B0800,$8000000
		dc.l	$500B0000,$FFE8,$500B0800,$8000000
		dc.l	$700B0000,$FFE8,$700B0800,$8000000	
;===============================================================================
; Object 0xB7 - Unused Vertical Large Laser - Sky Fortress
; [ End ]
;===============================================================================