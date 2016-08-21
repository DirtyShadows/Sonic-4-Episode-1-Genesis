;=============================================================================== 
; Object 0x4D - Hidden Palace - Rhinobot 
; [ Begin ]	
;===============================================================================

loc_29348:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_29356(pc,d0),d1
		jmp	loc_29356(pc,d1)
loc_29356:
		dc.w	loc_2935A-loc_29356
		dc.w	loc_293AA-loc_29356
loc_2935A:
		move.l	#Rhinobot_Mappings,4(a0) 
		move.w	#$23B2,2(a0)
		or.b	#4,1(a0)
		move.b	#$A,$20(a0)
		move.b	#4,$18(a0)
		move.b	#$18,$19(a0)
		move.b	#$10,$16(a0)
		move.b	#$18,$17(a0)
		bsr	loc_29610
		jsr	ObjHitFloor	
		tst.w	d1
		bpl.s	loc_293A8
		add.w	d1,$C(a0)
		move.w	#0,$12(a0)
		addq.b	#2,$24(a0)
loc_293A8:
		rts
loc_293AA:
		moveq	#0,d0
		move.b	$25(a0),d0
		move.w	loc_293C6(pc,d0),d1
		jsr	loc_293C6(pc,d1)
		lea	(Rhinobot_Animate_Data),a1 
		bsr	loc_2960A
		bra	loc_29604
loc_293C6:
		dc.w	loc_293CA-loc_293C6
		dc.w	loc_293EE-loc_293C6
loc_293CA:
		subq.w	#1,$30(a0)
		bpl.s	loc_293EC
		addq.b	#2,$25(a0)
		move.w	#$FF80,$10(a0)
		move.b	#0,$1C(a0)
		bchg	#0,$22(a0)
		bne.s	loc_293EC
		neg.w	$10(a0)
loc_293EC:
		rts
loc_293EE:
		bsr	loc_29438
		bsr	loc_29610
		jsr	ObjHitFloor	
		cmp.w	#$FFF8,d1
		blt.s	loc_29414
		cmp.w	#$C,d1
		bge.s	loc_29412
		move.w	#0,$12(a0)
		add.w	d1,$C(a0)
loc_29412:
		rts
loc_29414:
		subq.b	#2,$25(a0)
		move.w	#$3B,$30(a0)
		move.w	$10(a0),d0
		ext.l	d0
		asl.l	#8,d0
		sub.l	d0,8(a0)
		move.w	#0,$10(a0)
		move.b	#1,$1C(a0)
		rts
loc_29438:
		move.w	8(a0),d0
		sub.w	($FFFFB008).w,d0
		bmi.s	loc_2946C
		cmp.w	#$60,d0
		bgt.s	loc_2945C
		btst	#0,$22(a0)
		bne.s	loc_2945E
		move.b	#2,$1C(a0)
		move.w	#$FE00,$10(a0)
loc_2945C:
		rts
loc_2945E:
		move.b	#0,$1C(a0)
		move.w	#$80,$10(a0)
		rts
loc_2946C:
		cmp.w	#$FFA0,d0
		blt.s	loc_2945C
		btst	#0,$22(a0)
		beq.s	loc_29488
		move.b	#2,$1C(a0)
		move.w	#$200,$10(a0)
		rts
loc_29488:
		move.b	#0,$1C(a0)
		move.w	#$FF80,$10(a0)
		rts
;-------------------------------------------------------------------------------
Rhinobot_Animate_Data: 
		dc.w	loc_2949C-Rhinobot_Animate_Data
		dc.w	loc_294AA-Rhinobot_Animate_Data
		dc.w	loc_294AD-Rhinobot_Animate_Data
loc_2949C:
		dc.b	2,0,0,0,3,3,4,1,1,2,5,5,5,$FF
loc_294AA:
		dc.b	$F,0,$FF
loc_294AD:
		dc.b	2,6,7,$FF,$0	
;-------------------------------------------------------------------------------	
Rhinobot_Mappings: 
		dc.w	loc_294C2-Rhinobot_Mappings
		dc.w	loc_294EC-Rhinobot_Mappings
		dc.w	loc_29516-Rhinobot_Mappings
		dc.w	loc_29540-Rhinobot_Mappings
		dc.w	loc_2956A-Rhinobot_Mappings
		dc.w	loc_29594-Rhinobot_Mappings
		dc.w	loc_295BE-Rhinobot_Mappings
		dc.w	loc_295E0-Rhinobot_Mappings
loc_294C2:
		dc.w	$5
		dc.l	$F0050000,$FFF0,$F0050004,$20000
		dc.l	$F8010008,$4FFE8,$5000A,$5FFF0
		dc.l	$90022,$110000
loc_294EC:
		dc.w	$5
		dc.l	$F0050000,$FFF0,$F0050004,$20000
		dc.l	$F8010008,$4FFE8,$5000E,$7FFF0
		dc.l	$90022,$110000
loc_29516:
		dc.w	$5
		dc.l	$F0050000,$FFF0,$F0050004,$20000
		dc.l	$F8010008,$4FFE8,$50012,$9FFF0
		dc.l	$90022,$110000
loc_29540:
		dc.w	$5
		dc.l	$F0050000,$FFF0,$F0050004,$20000
		dc.l	$F8010008,$4FFE8,$5000A,$5FFF0
		dc.l	$90028,$140000
loc_2956A:
		dc.w	$5
		dc.l	$F0050000,$FFF0,$F0050004,$20000
		dc.l	$F8010008,$4FFE8,$5000E,$7FFF0
		dc.l	$90028,$140000
loc_29594:
		dc.w	$5
		dc.l	$F0050000,$FFF0,$F0050004,$20000
		dc.l	$F8010008,$4FFE8,$50012,$9FFF0
		dc.l	$90028,$140000
loc_295BE:
		dc.w	$4
		dc.l	$F00B0016,$BFFE8,$F0050004,$20000
		dc.l	$90022,$110000,$FB01002E,$17001A
loc_295E0:
		dc.w	$4
		dc.l	$F00B0016,$BFFE8,$F0050004,$20000
		dc.l	$90028,$140000,$FB010030,$18001A	
;=============================================================================== 
; Object 0x4D - Hidden Palace - Rhinobot 
; [ End ]	
;===============================================================================