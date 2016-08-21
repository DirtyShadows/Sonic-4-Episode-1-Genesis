;===============================================================================
; Object 0xB9 - Laser at begining of Wing Fortress
; [ Begin ]
;===============================================================================	
loc_379CE:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_379DC(pc,d0),d1
		jmp	loc_379DC(pc,d1)
loc_379DC:
		dc.w	loc_379E2-loc_379DC
		dc.w	loc_379E8-loc_379DC
		dc.w	loc_37A00-loc_379DC
loc_379E2:
		bsr	EnemySettings	
		rts
loc_379E8:
		tst.b	1(a0)
		bmi.s	loc_379F2
		bra	loc_37A08
loc_379F2:
		addq.b	#2,$24(a0)
		move.w	#$F000,$10(a0)
		bra	loc_37A08
loc_37A00:
		bsr	loc_3A904
		bra	loc_37A08
loc_37A08:
		move.w	8(a0),d0
		move.w	($FFFFEE00).w,d1
		sub.w	#$40,d1
		cmp.w	d1,d0
		blt	loc_3A898
		bra	loc_3A892
;-------------------------------------------------------------------------------
Obj_0xB9_Ptr: 
		dc.l	Laser_Mappings	
		dc.w	$C3C3
		dc.b	4,1,$60,$0	
;-------------------------------------------------------------------------------
Laser_Mappings: 
		dc.w	loc_37A2A-Laser_Mappings
loc_37A2A:
		dc.w	$6
		dc.l	$F8010000,$FFB8,$F80D0002,$1FFC0
		dc.l	$F80D0002,$1FFE0,$F80D0002,$10000
		dc.l	$F80D0002,$10020,$F8010800,$8000040	
			
;===============================================================================
; Object 0xB9 - Laser at begining of Wing Fortress
; [ End ]
;===============================================================================