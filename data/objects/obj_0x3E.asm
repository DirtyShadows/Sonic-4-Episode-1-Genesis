;=============================================================================== 
; Object 0x3E - Egg Prison / Animals Container
; [ Begin ]	
;=============================================================================== 
loc_3B028:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_3B036(pc,d0),d1
		jmp	loc_3B036(pc,d1)
loc_3B036:
		dc.w	loc_3B056-loc_3B036
		dc.w	loc_3B0BC-loc_3B036
		dc.w	loc_3B198-loc_3B036
		dc.w	loc_3B1D2-loc_3B036
		dc.w	loc_3B1EC-loc_3B036
		dc.w	loc_3B24A-loc_3B036
loc_3B042:
		dc.b	0,2,$20,4,0,$28,4,$10,5,4,$18,6,8,3,5,$0
		dc.b	8,$20,4,$0
loc_3B056:
		move.l	a0,a1
		lea	$38(a0),a3
		lea	loc_3B042(pc),a2
		moveq	#3,d1
		bra.s	loc_3B06C
loc_3B064:	
		bsr	loc_3B392
		bne.s	loc_3B0B6
		move.w	a1,(a3)+
loc_3B06C:
		move.b	0(a0),0(a1)
		move.w	8(a0),8(a1)
		move.w	$C(a0),$C(a1)
		move.w	$C(a0),$30(a1)
		move.l	#Egg_Prison_Mappings,4(a1) 
		move.w	#$2680,2(a1)
		move.b	#$84,1(a1)
		moveq	#0,d0
		move.b	(a2)+,d0
		sub.w	d0,$C(a1)
		move.w	$C(a1),$30(a1)
		move.b	(a2)+,$24(a1)
		move.b	(a2)+,$19(a1)
		move.b	(a2)+,$18(a1)
		move.b	(a2)+,$1A(a1)
loc_3B0B6:
		dbra	d1,loc_3B064
		rts
loc_3B0BC:
		moveq	#0,d0
		move.b	$25(a0),d0
		move.w	loc_3B0F2(pc,d0),d1
		jsr	loc_3B0F2(pc,d1)
		move.w	#$2B,d1
		move.w	#$18,d2
		move.w	#$18,d3
		move.w	8(a0),d4
		jsr	SolidObject	
		lea	(Egg_Prison_Animate_Data),a1 
		jsr	animateSprite	
		jmp	MarkObjGone	
loc_3B0F2:
		dc.w	loc_3B0F8-loc_3B0F2
		dc.w	loc_3B140-loc_3B0F2
		dc.w	loc_3B196-loc_3B0F2	
loc_3B0F8:
		move.w	$38(a0),a1
		tst.w	$32(a1)
		beq.s	loc_3B13E
		move.w	$3A(a0),a2
		jsr	SingleObjectLoad	
		bne.s	loc_3B124
		move.b	#$27,0(a1)
		addq.b	#2,$24(a1)
		move.w	8(a2),8(a1)
		move.w	$C(a2),$C(a1)	
loc_3B124:
		move.w	#$FC00,$12(a2)
		move.w	#$800,$10(a2)
		addq.b	#2,$25(a2)
		move.w	#$1D,$34(a0)
		addq.b	#2,$25(a0)
loc_3B13E:
		rts
loc_3B140:	
		subq.w	#1,$34(a0)
		bpl.s	loc_3B196
		move.b	#1,$1C(a0)
		moveq	#7,d6
		move.w	#$9A,d5
		moveq	#$FFFFFFE4,d4
loc_3B154:	
		jsr	SingleObjectLoad	
		bne.s	loc_3B184
		move.b	#$28,0(a1)
		move.w	8(a0),8(a1)
		move.w	$C(a0),$C(a1)
		add.w	d4,8(a1)
		move.b	#1,$38(a1)
		addq.w	#7,d4
		move.w	d5,$36(a1)
		subq.w	#8,d5
		dbra	d6,loc_3B154
loc_3B184:
		move.w	$3C(a0),a2
		move.w	#$B4,$1E(a2)
		addq.b	#2,$25(a2)
		addq.b	#2,$25(a0)
loc_3B196:
		rts
loc_3B198:
		move.w	#$1B,d1
		move.w	#8,d2
		move.w	#8,d3
		move.w	8(a0),d4
		jsr	SolidObject	
		move.w	$30(a0),$C(a0)
		move.b	$22(a0),d0
		and.b	#$18,d0
		beq.s	loc_3B1CC
		addq.w	#8,$C(a0)
		clr.b	($FFFFFE1E).w
		move.w	#1,$32(a0)
loc_3B1CC:
		jmp	MarkObjGone	
loc_3B1D2:
		tst.b	$25(a0)
		beq.s	loc_3B1E6
		tst.b	1(a0)
		bpl	loc_3B38C
		jsr	ObjectFall	
loc_3B1E6:
		jmp	MarkObjGone	
loc_3B1EC:
		tst.b	$25(a0)
		beq.s	loc_3B248
		move.b	($FFFFFE0F).w,d0
		and.b	#7,d0
		bne.s	loc_3B238
		jsr	SingleObjectLoad	
		bne.s	loc_3B238
		move.b	#$28,0(a1)
		move.w	8(a0),8(a1)
		move.w	$C(a0),$C(a1)
		jsr	PseudoRandomNumber	
		and.w	#$1F,d0
		subq.w	#6,d0
		tst.w	d1
		bpl.s	loc_3B228
		neg.w	d0
loc_3B228:
		add.w	d0,8(a1)
		move.b	#1,$38(a1)
		move.w	#$C,$36(a1)
loc_3B238:
		subq.w	#1,$1E(a0)
		bne.s	loc_3B248
		addq.b	#2,$24(a0)
		move.w	#$B4,$1E(a0)
loc_3B248:
		rts
loc_3B24A:
		moveq	#$3F,d0
		moveq	#$28,d1
		lea	($FFFFB800).w,a1
loc_3B252:	
		cmp.b	(a1),d1
		beq.s	loc_3B26A
		lea	$40(a1),a1
		dbra	d0,loc_3B252
		jsr	Load_Level_Results	
		jmp	deleteObject	
loc_3B26A:
		rts
;-------------------------------------------------------------------------------
Egg_Prison_Animate_Data: 
		dc.w	loc_3B270-Egg_Prison_Animate_Data
		dc.w	loc_3B273-Egg_Prison_Animate_Data
loc_3B270:
		dc.b	$F,0,$FF
loc_3B273:
		dc.b	3,0,1,2,3,$FE,$1	
;-------------------------------------------------------------------------------
Egg_Prison_Mappings: 
		dc.w	loc_3B286-Egg_Prison_Mappings
		dc.w	loc_3B2C0-Egg_Prison_Mappings
		dc.w	loc_3B302-Egg_Prison_Mappings
		dc.w	loc_3B344-Egg_Prison_Mappings
		dc.w	loc_3B36E-Egg_Prison_Mappings
		dc.w	loc_3B380-Egg_Prison_Mappings
loc_3B286:
		dc.w	$7
		dc.l	$E00D0000,$FFE0,$E00D0800,$8000000
		dc.l	$F00A0008,$4FFE0,$F0060011,$8FFF8
		dc.l	$F00A0808,$8040008,$80E0017,$BFFE0
		dc.l	$80E0817,$80B0000
loc_3B2C0:
		dc.w	$7
		dc.l	$E00D0000,$FFE0,$E00D0800,$8000000
		dc.l	$80E0017,$BFFE0,$80E0817,$80B0000
		dc.l	$E8060011,$8FFF8,$F80A0008,$4FFE0
		dc.l	$F80A0808,$8040008
Unk_Mapping_loc_3B2FA:	
		dc.l	$F0060023,$11FFF8
loc_3B302:
		dc.w	$7
		dc.l	$E00D0000,$FFE0,$E00D0800,$8000000
		dc.l	$80E0017,$BFFE0,$80E0817,$80B0000
		dc.l	$E0060011,$8FFF8,$A0008,$4FFE0
		dc.l	$A0808,$8040008
Unk_Mapping_loc_3B33C:	
		dc.l	$F0060023,$11FFF8	
loc_3B344:
		dc.w	$5
		dc.l	$E00D0000,$FFE0,$E00D0800,$8000000
		dc.l	$F0060023,$11FFF8,$80E0017,$BFFE0
		dc.l	$80E0817,$80B0000
loc_3B36E:
		dc.w	$2
		dc.l	$F8050029,$14FFF0,$F8050829,$8140000
loc_3B380:
		dc.w	$1
		dc.l	$F805002D,$16FFF8	
;=============================================================================== 
; Object 0x3E - Egg Prison / Animals Container
; [ End ]	
;=============================================================================== 