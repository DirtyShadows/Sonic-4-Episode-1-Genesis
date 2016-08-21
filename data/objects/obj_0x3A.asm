;=============================================================================== 
; Object 0x3A - Level Results
; [ Begin ]
;=============================================================================== 
loc_11038:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_11046(pc,d0),d1
		jmp	loc_11046(pc,d1)
loc_11046:
		dc.w	loc_1105C-loc_11046
		dc.w	loc_110B2-loc_11046
		dc.w	loc_110D0-loc_11046
		dc.w	loc_110D4-loc_11046
		dc.w	loc_110F6-loc_11046
		dc.w	loc_1112A-loc_11046
		dc.w	loc_11138-loc_11046
		dc.w	loc_1112A-loc_11046
		dc.w	loc_111EE-loc_11046
		dc.w	loc_1122A-loc_11046
		dc.w	loc_11246-loc_11046
loc_1105C:
		tst.l	($FFFFF680).w
		beq.s	loc_11064
		rts
loc_11064:
		move.l	a0,a1
		lea	Level_Results_Screen_Pos(pc),a2 ;	loc_112FA
		moveq	#6,d1
loc_1106C:	
		move.b	0(a1),d0
		beq.s	loc_1107E
		cmp.b	#$3A,d0
		beq.s	loc_1107E
		lea	$40(a1),a1
		bra.s	loc_1106C
loc_1107E:
		move.b	#$3A,0(a1)
		move.w	(a2)+,8(a1)
		move.w	(a2)+,$30(a1)
		move.w	(a2)+,$A(a1)
		move.b	(a2)+,$24(a1)
		move.b	(a2)+,$1A(a1)
		move.l	#End_Level_Results_Mappings,4(a1) 
		bsr	Modify_A1_SpriteAttr_2P 
		move.b	#0,1(a1)
		lea	$40(a1),a1
		dbra	d1,loc_1106C
loc_110B2:
		bsr	loc_10DDC
		move.w	8(a0),d0
		cmp.w	$30(a0),d0
		bne	loc_110CE
		move.b	#$A,$24(a0)
		move.w	#$B4,$1E(a0)
loc_110CE:
		rts
loc_110D0:
		bra	loc_10DDC
loc_110D4:
		move.b	($FFFFFE10).w,d0
		cmp.b	#$10,d0
		beq.s	loc_110EC
		cmp.b	#6,d0
		beq.s	loc_110EC
		cmp.b	#$E,d0
		bne	loc_10DDC
loc_110EC:
		move.b	#5,$1A(a0)
		bra	loc_10DDC
loc_110F6:
		move.b	($FFFFFE10).w,d0
		cmp.b	#$10,d0
		beq	loc_10DFE
		cmp.b	#6,d0
		beq	loc_10DFE
		cmp.b	#$E,d0
		beq	loc_10DFE
		cmp.b	#5,d0
		bne.s	loc_1111C
		moveq	#8,d0
		bra.s	loc_11122
loc_1111C:
		move.b	($FFFFFE11).w,d0
		addq.b	#6,d0
loc_11122:
		move.b	d0,$1A(a0)
		bra	loc_10DDC
loc_1112A:
		subq.w	#1,$1E(a0)
		bne.s	loc_11134
		addq.b	#2,$24(a0)
loc_11134:
		bra	displaySprite	
loc_11138:
		bsr	displaySprite	
		move.b	#1,($FFFFF7D6).w
		moveq	#0,d0
		tst.w	($FFFFF7D2).w
		beq.s	loc_11154
		add.w	#$A,d0
		sub.w	#$A,($FFFFF7D2).w
loc_11154:
		tst.w	($FFFFF7D4).w
		beq.s	loc_11164
		add.w	#$A,d0
		sub.w	#$A,($FFFFF7D4).w
loc_11164:
		add.w	d0,($FFFFFF8E).w
		tst.w	d0
		bne.s	loc_111D4
		move.w	#$C5,d0
		jsr	Play_Sfx	
		addq.b	#2,$24(a0)
		move.w	#$B4,$1E(a0)
		cmp.w	#$3E8,($FFFFFF8E).w
		bcs.s	loc_111D2
		move.w	#$12C,$1E(a0)
		lea	$40(a0),a1
loc_11192:	
		tst.b	0(a1)
		beq.s	loc_1119E
		lea	$40(a1),a1
		bra.s	loc_11192
loc_1119E:
		move.b	#$3A,0(a1)
		move.b	#$12,$24(a1)
		move.w	#$188,8(a1)
		move.w	#$10C,$A(a1)
		move.l	#End_Level_Results_Mappings,4(a1) 
		bsr	Modify_A1_SpriteAttr_2P 
		move.b	#0,1(a1)
		move.w	#$3C,$1E(a1)
		addq.b	#1,($FFFFFE18).w
loc_111D2:
		rts
loc_111D4:
		jsr	add_Points	
		move.b	($FFFFFE0F).w,d0
		and.b	#3,d0
		bne.s	loc_111D2
		move.w	#$CD,d0
		jmp	Play_Sfx	
loc_111EE:
		moveq	#0,d0
		move.b	($FFFFFE10).w,d0
		add.w	d0,d0
		add.b	($FFFFFE11).w,d0
		add.w	d0,d0
		lea	Level_Sequence_Array(pc),a1 
		tst.w	($FFFFFFD8).w
		beq.s	loc_1120A
		lea	Level_Sequence_2P_Array(pc),a1 
loc_1120A:
		move.w	0(a1,d0),d0
		tst.w	d0
		bpl.s	loc_1121A
		move.b	#0,($FFFFF600).w
		rts
loc_1121A:
		move.w	d0,($FFFFFE10).w
		clr.b	($FFFFFE30).w
		move.w	#1,($FFFFFE02).w
		rts
loc_1122A:
		tst.w	$1E(a0)
		beq.s	loc_11236
		subq.w	#1,$1E(a0)
		rts
loc_11236:
		add.b	#2,$24(a0)
		move.w	#$BF,d0
		jsr	Play_Sfx	
loc_11246:
		subq.w	#1,$1E(a0)
		bpl.s	loc_1125C
		move.w	#$13,$1E(a0)
		addq.b	#1,$1B(a0)
		and.b	#1,$1B(a0)
loc_1125C:
		moveq	#$C,d0
		add.b	$1B(a0),d0
		move.b	d0,$1A(a0)
		btst	#4,($FFFFFE0F).w
		bne	displaySprite	
		rts	
Level_Sequence_Array: 
		dc.w	1,$D00,0,0,$201,$400,0,$0
		dc.w	$401,$1000,$F00,0,$E00,0,$701,$B00
		dc.w	$801,$A00,0,0,$A01,$400,$B01,$A00
		dc.w	$C01,$700,$D01,$F00,$FFFF,0,$F01,$C00
		dc.w	$600,$0	
Level_Sequence_2P_Array: 
		dc.w	1,$C00,0,0,$201,$400,0,$0
		dc.w	$401,$1000,$F00,0,$E00,0,$701,$B00
		dc.w	$801,$A00,0,0,$A01,$400,$B01,$FFFF
		dc.w	$C01,$B00,$D01,$F00,$FFFF,0,$F01,$C00
		dc.w	$600,$0	
Level_Results_Screen_Pos: 
		dc.w	$20,$120,$B8,$200,$200,$100,$CA,$403
		dc.w	$240,$140,$CA,$604,$280,$180,$BE,$806
		dc.w	$320,$120,$114,$409,$330,$120,$F0,$40A
		dc.w	$340,$120,$100,$40B	
;=============================================================================== 
; Object 0x3A - Level Results
; [ Begin ]
;=============================================================================== 