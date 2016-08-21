;===============================================================================
; Object 0xBC - Boost from Robotnik Rocket - Sky Fortress
; [ Begin ]
;===============================================================================	
loc_37ACC:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_37ADA(pc,d0),d1
		jmp	loc_37ADA(pc,d1)
loc_37ADA:
		dc.w	loc_37ADE-loc_37ADA
		dc.w	loc_37AEA-loc_37ADA
loc_37ADE:
		bsr	EnemySettings	
		move.w	8(a0),$2C(a0)
		rts
loc_37AEA:
		move.w	$2C(a0),d0
		move.w	($FFFFEEE2).w,d1
		cmp.w	#$380,d1
		bcc	loc_3A898
		add.w	d1,d0
		move.w	d0,8(a0)
		bchg	#0,$2A(a0)
		beq	Null_Sub_01	
		bra	loc_3A892
;-------------------------------------------------------------------------------	
Obj_0xBC_Ptr: 
		dc.l	Ship_Boost_Mappings	
		dc.w	$4465
		dc.b	4,4,$10,$0
;-------------------------------------------------------------------------------	
Ship_Boost_Mappings: 
		dc.w	loc_37B1A-Ship_Boost_Mappings
loc_37B1A:
		dc.w	$2
		dc.l	$F00D0000,$FFF0,$D1000,$1000FFF0	
			
;===============================================================================
; Object 0xBC - Boost from Robotnik Rocket - Sky Fortress
; [ End ]
;===============================================================================