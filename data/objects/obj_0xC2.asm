;===============================================================================
; Object 0xC2 - Boss Switch - Press to Enable Access to Boss - Sky Fortress 
; [ Begin ]
;===============================================================================	
loc_38204:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_38212(pc,d0),d1
		jmp	loc_38212(pc,d1)
loc_38212:
		dc.w	loc_38216-loc_38212
		dc.w	loc_3821A-loc_38212 
loc_38216:
		bra	EnemySettings	
loc_3821A:
		move.b	($FFFFB01C).w,$30(a0)
		move.w	8(a0),-(sp)
		move.w	#$1B,d1
		move.w	#8,d2
		move.w	#9,d3
		move.w	(sp)+,d4
		bsr	loc_3A8F8
		btst	#3,$22(a0)
		bne.s	loc_38242
		bra	loc_3A8A4
loc_38242:
		cmp.b	#2,$30(a0)
		bne.s	loc_38290
		move.w	#$2880,($FFFFEEC8).w
		bclr	#3,$22(a0)
		move.b	#$27,0(a0)
		move.b	#2,$24(a0)
		bset	#1,($FFFFB022).w
		bclr	#3,($FFFFB022).w
		lea	($FFFF8850).w,a1
		move.l	#$8A707172,(a1)+
		move.w	#$7374,(a1)+
		lea	($FFFF8950).w,a1
		move.l	#$6E787978,(a1)+
		move.w	#$787A,(a1)+
		move.b	#1,($FFFFF72C).w
loc_38290:
		bra	loc_3A8A4	
;-------------------------------------------------------------------------------
Obj_0xC2_Ptr: 
		dc.l	SFz_Boss_Access_Switch_Mappings 
		dc.w	$A461
		dc.b	4,4,$10,$0
;-------------------------------------------------------------------------------	
SFz_Boss_Access_Switch_Mappings: 
		dc.w	loc_382A0-SFz_Boss_Access_Switch_Mappings 
loc_382A0:
		dc.w	$2
		dc.l	$F8050000,$FFF0,$F8050800,$8000000	
;===============================================================================
; Object 0xC2 - Boss Switch - Press to Enable Access to Boss - Sky Fortress 
; [ End ]
;===============================================================================