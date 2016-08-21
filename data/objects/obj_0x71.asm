;=============================================================================== 
; Object 0x71 - Bridge,Support,Hidden Palace Orbs,Metropolis Lava Bubbles... 
; [ Begin ]
;===============================================================================	
loc_F00C:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_F01A(pc,d0),d1
		jmp	loc_F01A(pc,d1)
loc_F01A:
		dc.w	loc_F036-loc_F01A
		dc.w	loc_F078-loc_F01A
loc_F01E:
		dc.l	($3<<$18)|HPz_Bridge_Mappings 
		dc.w	$6300
		dc.b	4,$1
		dc.l	Hpz_Orbs_Mappings	
		dc.w	$E35A
		dc.b	$10,$1
		dc.l	Mz_Lava_Bubble_Mappings 
		dc.w	$4536
		dc.b	$10,$1
loc_F036:
		addq.b	#2,$24(a0)
		move.b	$28(a0),d0
		and.w	#$F,d0
		lsl.w	#3,d0
		lea	loc_F01E(pc),a1
		lea	0(a1,d0),a1
		move.b	(a1),$1A(a0)
		move.l	(a1)+,4(a0)
		move.w	(a1)+,2(a0)
		bsr	ModifySpriteAttr_2P	
		or.b	#4,1(a0)
		move.b	(a1)+,$19(a0)
		move.b	(a1)+,$18(a0)
		move.b	$28(a0),d0
		and.w	#$F0,d0
		lsr.b	#4,d0
		move.b	d0,$1C(a0)
loc_F078:
		lea	(Mz_Hpz_Misc_Animate_Data),a1 
		bsr	animateSprite	
		bra	MarkObjGone	
;-------------------------------------------------------------------------------	
Mz_Hpz_Misc_Animate_Data: 
		dc.w	loc_F08E-Mz_Hpz_Misc_Animate_Data
		dc.w	loc_F096-Mz_Hpz_Misc_Animate_Data
		dc.w	loc_F0A5-Mz_Hpz_Misc_Animate_Data
		dc.w	loc_F0AE-Mz_Hpz_Misc_Animate_Data
loc_F08E:
		dc.b	8,3,3,4,5,5,4,$FF
loc_F096:
		dc.b	5,0,0,0,1,2,3,3,2,1,2,3,3,1,$FF
loc_F0A5:
		dc.b	$B,0,1,2,3,4,5,$FD,$3
loc_F0AE:
		dc.b	$7F,6,$FD,$2
;-------------------------------------------------------------------------------	
Hpz_Orbs_Mappings: 
		dc.w	loc_F0BA-Hpz_Orbs_Mappings
		dc.w	loc_F0C4-Hpz_Orbs_Mappings
		dc.w	loc_F0CE-Hpz_Orbs_Mappings
		dc.w	loc_F0E0-Hpz_Orbs_Mappings
loc_F0BA:
		dc.w	$1
		dc.l	$F40A0000,$FFF4
loc_F0C4:
		dc.w	$1
		dc.l	$F40A0009,$4FFF4
loc_F0CE:
		dc.w	$2
		dc.l	$F00D0012,$9FFF0,$D1812,$1809FFF0
loc_F0E0:
		dc.w	$2
		dc.l	$F00D001A,$DFFF0,$D181A,$180DFFF0	
;=============================================================================== 
; Object 0x71 - Bridge,Support,Hidden Palace Orbs,Metropolis Lava Bubbles... 
; [ End ]
;===============================================================================	