;===============================================================================
; Object 0xC0 - Speed Booster - Sky Fortress
; [ Begin ]
;===============================================================================	
loc_37E10:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_37E1E(pc,d0),d1
		jmp	loc_37E1E(pc,d1)
loc_37E1E:
		dc.w	loc_37E22-loc_37E1E
		dc.w	loc_37E44-loc_37E1E
loc_37E22:
		move.w	#$86,d0
		bsr	EnemySettings_01	
		moveq	#0,d0
		move.b	$28(a0),d0
		lsl.w	#4,d0
		btst	#0,$22(a0)
		bne.s	loc_37E3C
		neg.w	d0
loc_37E3C:
		add.w	8(a0),d0
		move.w	d0,$32(a0)
loc_37E44:
		moveq	#0,d0
		move.b	$25(a0),d0
		move.w	loc_37E66(pc,d0),d1
		jsr	loc_37E66(pc,d1)
		move.w	#$10,d1
		move.w	#$11,d3
		move.w	8(a0),d4
		bsr	loc_3A8F2
		bra	loc_3A8A4
loc_37E66:
		dc.w	loc_37E6C-loc_37E66
		dc.w	loc_37EDE-loc_37E66
		dc.w	loc_37F68-loc_37E66
loc_37E6C:
		move.b	$22(a0),d0
		and.b	#$18,d0
		beq.s	loc_37EB8
		addq.b	#2,$25(a0)
		move.w	#$C00,$10(a0)
		move.w	#$80,$30(a0)
		btst	#0,$22(a0)
		bne.s	loc_37E96
		neg.w	$10(a0)
		neg.w	$30(a0)
loc_37E96:
		bsr	loc_3A904
		move.b	$22(a0),d0
		move.b	d0,d1
		and.b	#8,d1
		beq.s	loc_37EAC
		lea	($FFFFB000).w,a1
		bsr.s	loc_37EBA
loc_37EAC:
		and.b	#$10,d0
		beq.s	loc_37EB8
		lea	($FFFFB040).w,a1
		bsr.s	loc_37EBA
loc_37EB8:
		rts
loc_37EBA:
		clr.w	$14(a1)
		clr.w	$10(a1)
		move.w	8(a0),8(a1)
		bclr	#0,$22(a1)
		btst	#0,$22(a0)
		bne.s	loc_37EDC
		bset	#0,$22(a1)
loc_37EDC:
		rts
loc_37EDE:
		move.w	$30(a0),d0
		add.w	d0,$10(a0)
		bsr	loc_3A904
		move.w	$32(a0),d0
		sub.w	8(a0),d0
		btst	#0,$22(a0)
		beq.s	loc_37EFC
		neg.w	d0
loc_37EFC:
		tst.w	d0
		bpl.s	loc_37F3A
		move.b	$22(a0),d0
		and.b	#$18,d0
		beq.s	loc_37F24
		move.b	d0,d1
		and.b	#8,d1
		beq.s	loc_37F18
		lea	($FFFFB000).w,a1
		bsr.s	loc_37EBA
loc_37F18:
		and.b	#$10,d0
		beq.s	loc_37F24
		lea	($FFFFB040).w,a1
		bsr.s	loc_37EBA
loc_37F24:
		rts
loc_37F26:	
		move.w	$10(a0),$10(a1)
		move.w	#$FC00,$12(a1)
		bset	#1,$22(a1)
		rts
loc_37F3A:
		addq.b	#2,$25(a0)
		move.w	$32(a0),8(a0)
		move.b	$22(a0),d0
		and.b	#$18,d0
		beq.s	loc_37F68
		move.b	d0,d1
		and.b	#8,d1
		beq.s	loc_37F5C
		lea	($FFFFB000).w,a1
		bsr.s	loc_37F26
loc_37F5C:
		and.b	#$10,d0
		beq.s	loc_37F68
		lea	($FFFFB040).w,a1
		bsr.s	loc_37F26
loc_37F68:
		rts	
;-------------------------------------------------------------------------------
Obj_0xC0_Ptr: 
		dc.l	Speed_Booster_Mappings 
		dc.w	$245C
		dc.b	4,4,$10,$0	
;-------------------------------------------------------------------------------	
Speed_Booster_Mappings: 
		dc.w	loc_37F76-Speed_Booster_Mappings
loc_37F76:
		dc.w	$2
		dc.l	$E9080000,$FFF0,$E1010003,$10008	
;===============================================================================
; Object 0xC0 - Speed Booster - Sky Fortress
; [ End ]
;===============================================================================