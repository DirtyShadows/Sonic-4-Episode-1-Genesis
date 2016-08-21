;===============================================================================
; Object 0xA2 - Slicer Sub - Metropolis
; [ Begin ]
;===============================================================================	
loc_3464A:	
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_34658(pc,d0),d1
		jmp	loc_34658(pc,d1)
loc_34658:
		dc.w	loc_3465E-loc_34658
		dc.w	loc_3468C-loc_34658
		dc.w	loc_346DA-loc_34658
loc_3465E:
		bsr	EnemySettings	
		move.w	#$FE00,$10(a0)
		move.w	#$200,$2A(a0)
		move.w	$2E(a0),d0
		lea	loc_34688(pc,d0),a2
		move.b	(a2)+,d0
		ext.w	d0
		add.w	d0,8(a0)
		move.b	(a2)+,d0
		ext.w	d0
		add.w	d0,$C(a0)
		rts
loc_34688:
		dc.b	6,0,$F0,$0
loc_3468C:
		subq.w	#1,$2A(a0)
		bmi.s	loc_346D0
		move.w	$2C(a0),a1
		cmp.b	#$A1,(a1)
		bne.s	loc_346D0
		bsr	loc_32866
		move.w	loc_346CC(pc,d0),d2
		add.w	d2,$10(a0)
		move.w	loc_346CC(pc,d1),d2
		add.w	d2,$12(a0)
		move.w	#$200,d0
		move.w	d0,d1
		bsr	loc_3292A
		bsr	loc_3A904
		lea	(Slicer_Animate_Data_01),a1 
		bsr	loc_3A8BC
		bra	loc_3A8A4
loc_346CC:
		dc.w	$FFF0,$10
loc_346D0:
		addq.b	#2,$24(a0)
		move.w	#$80,$2A(a0)
loc_346DA:
		subq.w	#1,$2A(a0)
		bmi	loc_3A898
		bsr	loc_3A8FE
		lea	(Slicer_Animate_Data_01),a1 
		bsr	loc_3A8BC
		bra	loc_3A8A4
loc_346F4:
		moveq	#0,d1
		moveq	#1,d6
loc_346F8:	
		bsr	loc_3A8B6
		bne.s	loc_34730
		move.b	#$A2,0(a1)
		move.b	#$2A,$28(a1)
		move.b	#5,$1A(a1)
		move.b	#4,$18(a1)
		move.w	a0,$2C(a1)
		move.w	d1,$2E(a1)
		move.w	8(a0),8(a1)
		move.w	$C(a0),$C(a1)
		addq.w	#2,d1
		dbra	d6,loc_346F8
loc_34730:
		rts	
;-------------------------------------------------------------------------------	
Obj_0xA1_Ptr: 
		dc.l	Slicer_Mappings	
		dc.w	$243C
		dc.b	4,5,$10,$6
;-------------------------------------------------------------------------------	
Obj_0xA2_Ptr: 
		dc.l	Slicer_Mappings	
		dc.w	$243C
		dc.b	4,4,$10,$9A
;-------------------------------------------------------------------------------	
Slicer_Animate_Data: 
		dc.w	loc_34748-Slicer_Animate_Data
loc_34748:
		dc.b	$13,0,2,$FF
;-------------------------------------------------------------------------------	
Slicer_Animate_Data_01: 
		dc.w	loc_3474E-Slicer_Animate_Data_01
loc_3474E:
		dc.b	3,5,6,7,8,$FF
;------------------------------------------------------------------------------- 
Slicer_Mappings: 
		dc.w	loc_34766-Slicer_Mappings
		dc.w	loc_347A0-Slicer_Mappings
		dc.w	loc_347DA-Slicer_Mappings
		dc.w	loc_34814-Slicer_Mappings
		dc.w	loc_3484E-Slicer_Mappings
		dc.w	loc_34868-Slicer_Mappings
		dc.w	loc_3487A-Slicer_Mappings
		dc.w	loc_3488C-Slicer_Mappings
		dc.w	loc_3489E-Slicer_Mappings
loc_34766:
		dc.w	$7
		dc.l	$F904001A,$DFFF4,$100001C,$EFFF4
		dc.l	$F0090000,$FFF0,$90006,$3FFF0
		dc.l	$1000C,$60008,$F704001A,$DFFE0
		dc.l	$FF00001C,$EFFE0
loc_347A0:
		dc.w	$7
		dc.l	$F804001A,$DFFF4,$1C,$EFFF4
		dc.l	$F0090000,$FFF0,$9000E,$7FFF0
		dc.l	$1000C,$60008,$F804001A,$DFFE0
		dc.l	$1C,$EFFE0
loc_347DA:
		dc.w	$7
		dc.l	$F704001A,$DFFF4,$FF00001C,$EFFF4
		dc.l	$F0090000,$FFF0,$90014,$AFFF0
		dc.l	$1000C,$60008,$F904001A,$DFFE0
		dc.l	$100001C,$EFFE0
loc_34814:
		dc.w	$7
		dc.l	$E004181E,$180FFFF4,$E800181D,$180EFFFC
		dc.l	$F0090000,$FFF0,$90006,$3FFF0
		dc.l	$1000C,$60008,$E004181E,$180FFFE0
		dc.l	$E800181D,$180EFFE8
loc_3484E:
		dc.w	$3
		dc.l	$F0090000,$FFF0,$90006,$3FFF0
		dc.l	$1000C,$60008
loc_34868:
		dc.w	$2
		dc.l	$F004001A,$DFFF0,$F800001C,$EFFF0
loc_3487A:
		dc.w	$2
		dc.l	$1D,$EFFF0,$804001E,$FFFF0
loc_3488C:
		dc.w	$2
		dc.l	$181C,$180E0008,$804181A,$180D0000
loc_3489E:
		dc.w	$2
		dc.l	$F004181E,$180F0000,$F800181D,$180E0008	
;===============================================================================
; Object 0xA2 - Slicer Sub - Metropolis
; [ End ]
;===============================================================================