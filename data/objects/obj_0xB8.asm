;===============================================================================
; Object 0xB8 - Cannon - Sky Fortress
; [ Begin ]
;===============================================================================
loc_3787C:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_3788A(pc,d0),d1
		jmp	loc_3788A(pc,d1)
loc_3788A:
		dc.w	loc_37890-loc_3788A
		dc.w	loc_37894-loc_3788A
		dc.w	loc_378BE-loc_3788A
loc_37890:
		bra	EnemySettings	
loc_37894:
		tst.b	1(a0)
		bpl.s	loc_378AC
		bsr	loc_32866
		tst.w	d1
		beq.s	loc_378AC
		add.w	#$60,d2
		cmp.w	#$C0,d2
		bcs.s	loc_378B0
loc_378AC:
		bra	loc_3A8A4
loc_378B0:
		addq.b	#2,$24(a0)
		move.w	#2,$2A(a0)
		bra	loc_3A8A4
loc_378BE:
		bsr	loc_32866
		moveq	#0,d6
		add.w	#$20,d2
		cmp.w	#$40,d2
		bcs.s	loc_378D4
		move.w	d0,d6
		lsr.w	#1,d6
		addq.w	#1,d6
loc_378D4:
		move.b	d6,$1A(a0)
		subq.w	#1,$2A(a0)
		bne.s	loc_378E8
		move.w	#$60,$2A(a0)
		bsr	loc_378EC
loc_378E8:
		bra	loc_3A8A4
loc_378EC:
		bsr	loc_3A8B6
		bne.s	loc_3793C
		move.b	#$98,0(a1)
		move.b	#3,$1A(a1)
		move.b	#$8E,$28(a1)
		move.w	8(a0),8(a1)
		move.w	$C(a0),$C(a1)
		lea	loc_33940(pc),a2
		move.l	a2,$2A(a1)
		moveq	#0,d0
		move.b	$1A(a0),d0
		lsl.w	#2,d0
		lea	loc_3793E(pc,d0),a2
		move.b	(a2)+,d0
		ext.w	d0
		add.w	d0,8(a1)
		move.b	(a2)+,d0
		ext.w	d0
		add.w	d0,$C(a1)
		move.b	(a2)+,$10(a1)
		move.b	(a2)+,$12(a1)
loc_3793C:
		rts	
;-------------------------------------------------------------------------------	
loc_3793E:
		dc.b	0,$18,0,1,$EF,$10,$FF,1,$11,$10,1,$1	
;-------------------------------------------------------------------------------	
Obj_0xB8_Ptr: 
		dc.l	SFz_Cannon_Mappings	
		dc.w	$3AB
		dc.b	4,4,$10,$0
;-------------------------------------------------------------------------------
SFz_Cannon_Animate_Data: 
		dc.w	loc_37956-SFz_Cannon_Animate_Data
loc_37956:
		dc.b	2,3,4,$FF
;-------------------------------------------------------------------------------	
SFz_Cannon_Mappings: 
		dc.w	loc_37964-SFz_Cannon_Mappings
		dc.w	loc_37986-SFz_Cannon_Mappings
		dc.w	loc_379A0-SFz_Cannon_Mappings
		dc.w	loc_379BA-SFz_Cannon_Mappings
		dc.w	loc_379C4-SFz_Cannon_Mappings
loc_37964:
		dc.w	$4
		dc.l	$F007E000,$E000FFF0,$F007E008,$E0040000
		dc.l	$E00E010,$E008FFF8,$E00E011,$E0080000
loc_37986:
		dc.w	$3
		dc.l	$F007E000,$E000FFF0,$F007E008,$E0040000
		dc.l	$405E012,$E009FFEB
loc_379A0:
		dc.w	$3
		dc.l	$F007E000,$E000FFF0,$F007E008,$E0040000
		dc.l	$405E812,$E8090005
loc_379BA:
		dc.w	$1
		dc.l	$FC008016,$800BFFFC
loc_379C4:
		dc.w	$1
		dc.l	$FC008017,$800BFFFC	
;===============================================================================
; Object 0xB8 - Cannon - Sky Fortress
; [ End ]
;===============================================================================