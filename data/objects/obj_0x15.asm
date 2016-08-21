;=============================================================================== 
; Object 0x15 - Swing Platforms - Oil Ocean / Dust Hill / Neo Green Hill 
; [ Begin ]
;===============================================================================	
loc_D9D4:
		btst	#6,1(a0)
		bne	loc_D9EC
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_D9F4(pc,d0),d1
		jmp	loc_D9F4(pc,d1)
loc_D9EC:
		move.w	#$200,d0
		bra	displaySprite_Param	
loc_D9F4:
		dc.w	loc_DA02-loc_D9F4
		dc.w	loc_DB88-loc_D9F4
		dc.w	loc_DD72-loc_D9F4
		dc.w	loc_DD76-loc_D9F4
		dc.w	loc_DE30-loc_D9F4
		dc.w	loc_DE38-loc_D9F4
		dc.w	loc_DE9E-loc_D9F4
loc_DA02:
		addq.b	#2,$24(a0)
		move.l	#OOz_Swing_Platforms_Mappings,4(a0) 
		move.w	#$43E3,2(a0)
		move.b	#4,1(a0)
		move.b	#3,$18(a0)
		move.b	#$20,$19(a0)
		move.b	#$10,$16(a0)
		move.w	$C(a0),$38(a0)
		move.w	8(a0),$3A(a0)
		cmp.b	#$B,($FFFFFE10).w
		bne.s	loc_DA5A
		move.l	#DHz_Swing_Platforms_Mappings,4(a0) 
		move.w	#0,2(a0)
		move.b	#$18,$19(a0)
		move.b	#8,$16(a0)
loc_DA5A:
		cmp.b	#$F,($FFFFFE10).w
		bne.s	loc_DA7C
		move.l	#NGHz_Swing_Platforms_Mappings,4(a0) 
		move.w	#0,2(a0)
		move.b	#$20,$19(a0)
		move.b	#8,$16(a0)
loc_DA7C:
		bsr	ModifySpriteAttr_2P	
		moveq	#0,d1
		move.b	$28(a0),d1
		bpl.s	loc_DA8C
		addq.b	#4,$24(a0)
loc_DA8C:
		move.b	d1,d4
		and.b	#$70,d4
		and.w	#$F,d1
		move.w	8(a0),d2
		move.w	$C(a0),d3
		bsr	S1SingleObjectLoad	
		bne	loc_DB5C
		move.b	0(a0),0(a1)
		move.l	4(a0),4(a1)
		move.w	2(a0),2(a1)
		move.b	#4,1(a1)
		cmp.b	#$20,d4
		bne.s	loc_DAFE
		move.b	#4,$24(a1)
		move.b	#4,$18(a1)
		move.b	#$10,$19(a1)
		move.b	#$50,$16(a1)
		bset	#4,1(a1)
		move.b	#3,$1A(a1)
		move.w	d2,8(a1)
		add.w	#$40,d3
		move.w	d3,$C(a1)
		add.w	#$48,d3
		move.w	d3,$C(a0)
		bra.s	loc_DB58
loc_DAFE:
		bset	#6,1(a1)
		move.b	#$48,$E(a1)
		move.b	d1,$F(a1)
		subq.b	#1,d1
		lea	$10(a1),a2
loc_DB14:	
		move.w	d2,(a2)+
		move.w	d3,(a2)+
		move.w	#1,(a2)+
		add.w	#$10,d3
		dbra	d1,loc_DB14
		move.b	#2,$15(a1)
		move.w	$28(a1),8(a1)
		move.w	$2A(a1),$C(a1)
		move.w	d2,$28(a1)
		move.w	d3,$2A(a1)
		move.b	#1,$B(a1)
		add.w	#8,d3
		move.w	d3,$C(a0)
		move.b	#$50,$14(a1)
		bset	#4,1(a1)
loc_DB58:
		move.l	a1,$30(a0)
loc_DB5C:
		move.w	#$8000,$26(a0)
		move.w	#0,$3E(a0)
		move.b	$28(a0),d1
		and.w	#$70,d1
		move.b	d1,$28(a0)
		cmp.b	#$40,d1
		bne.s	loc_DB88
		move.l	#DHz_Swing_Platforms_Mappings_01,4(a0) 
		move.b	#$A7,$20(a0)
loc_DB88:
		move.w	8(a0),-(sp)
		bsr	loc_DBA8
		moveq	#0,d1
		move.b	$19(a0),d1
		moveq	#0,d3
		move.b	$16(a0),d3
		addq.b	#1,d3
		move.w	(sp)+,d4
		bsr	loc_E030
		bra	loc_DD44
loc_DBA8:
		moveq	#0,d0
		moveq	#0,d1
		move.b	($FFFFFE78).w,d0
		move.b	$28(a0),d1
		beq.s	loc_DBFA
		cmp.b	#$10,d1
		bne.s	loc_DBD6
		cmp.b	#$3F,d0
		beq.s	loc_DBC8
		bcc.s	loc_DBFA
		moveq	#$40,d0
		bra.s	loc_DBFA
loc_DBC8:
		move.w	#$D7,d0
		jsr	Play_Sfx_Ex	
		moveq	#$40,d0
		bra.s	loc_DBFA
loc_DBD6:
		cmp.b	#$20,d1
		beq	loc_DCA4
		cmp.b	#$30,d1
		bne.s	loc_DBF0
		cmp.b	#$41,d0
		beq.s	loc_DBC8
		bcs.s	loc_DBFA
		moveq	#$40,d0
		bra.s	loc_DBFA
loc_DBF0:
		cmp.b	#$40,d1
		bne.s	loc_DBFA
		bsr	loc_DCA6
loc_DBFA:
		move.b	$2E(a0),d1
		cmp.b	d0,d1
		beq	loc_DCA4
		move.b	d0,$2E(a0)
		move.w	#$80,d1
		btst	#0,$22(a0)
		beq.s	loc_DC18
		neg.w	d0
		add.w	d1,d0
loc_DC18:
		bsr	loc_E036
		move.w	$38(a0),d2
		move.w	$3A(a0),d3
		moveq	#0,d6
		move.l	$30(a0),a1
		move.b	$F(a1),d6
		subq.w	#1,d6
		bcs.s	loc_DCA4
		swap.w	d0
		swap.w	d1
		asr.l	#4,d0
		asr.l	#4,d1
		moveq	#0,d4
		moveq	#0,d5
		lea	$10(a1),a2
loc_DC42:	
		movem.l D4/D5,-(sp)
		swap.w	d4
		swap.w	d5
		add.w	d2,d4
		add.w	d3,d5
		move.w	d5,(a2)+
		move.w	d4,(a2)+
		movem.l (sp)+,d4/D5
		add.l	d0,d4
		add.l	d1,d5
		addq.w	#2,a2
		dbra	d6,loc_DC42
		movem.l D4/D5,-(sp)
		swap.w	d4
		swap.w	d5
		add.w	d2,d4
		add.w	d3,d5
		move.w	$28(a1),d2
		move.w	$2A(a1),d3
		move.w	d5,$28(a1)
		move.w	d4,$2A(a1)
		move.w	d2,8(a1)
		move.w	d3,$C(a1)
		movem.l (sp)+,d4/D5
		asr.l	#1,d0
		asr.l	#1,d1
		add.l	d0,d4
		add.l	d1,d5
		swap.w	d4
		swap.w	d5
		add.w	$38(a0),d4
		add.w	$3A(a0),d5
		move.w	d4,$C(a0)
		move.w	d5,8(a0)
loc_DCA4:
		rts
loc_DCA6:
		tst.w	$36(a0)
		beq.s	loc_DCB4
		subq.w	#1,$36(a0)
		bra	loc_DD3E
loc_DCB4:
		tst.b	$34(a0)
		bne.s	loc_DCDA
		move.w	($FFFFB008).w,d0
		sub.w	$3A(a0),d0
		add.w	#$20,d0
		cmp.w	#$40,d0
		bcc.s	loc_DD3E
		tst.w	($FFFFFE08).w
		bne	loc_DD3E
		move.b	#1,$34(a0)
loc_DCDA:
		tst.b	$3D(a0)
		beq.s	loc_DD10
		move.w	$3E(a0),d0
		add.w	#8,d0
		move.w	d0,$3E(a0)
		add.w	d0,$26(a0)
		cmp.w	#$200,d0
		bne.s	loc_DD3E
		move.w	#0,$3E(a0)
		move.w	#$8000,$26(a0)
		move.b	#0,$3D(a0)
		move.w	#$3C,$36(a0)
		bra.s	loc_DD3E
loc_DD10:
		move.w	$3E(a0),d0
		sub.w	#8,d0
		move.w	d0,$3E(a0)
		add.w	d0,$26(a0)
		cmp.w	#$FE00,d0
		bne.s	loc_DD3E
		move.w	#0,$3E(a0)
		move.w	#$4000,$26(a0)
		move.b	#1,$3D(a0)
		move.w	#$3C,$36(a0)
loc_DD3E:
		move.b	$26(a0),d0
		rts
loc_DD44:
		tst.w	($FFFFFFD8).w
		beq.s	loc_DD4E
		bra	displaySprite	
loc_DD4E:
		move.w	$3A(a0),d0
		and.w	#$FF80,d0
		sub.w	($FFFFF7DA).w,d0
		cmp.w	#$280,d0
		bhi	loc_DD66
		bra	displaySprite	
loc_DD66:
		move.l	$30(a0),a1
		bsr	delete_A1_Object	
		bra	deleteObject	
loc_DD72:
		bra	displaySprite	
loc_DD76:
		move.w	8(a0),-(sp)
		bsr	loc_DBA8
		moveq	#0,d1
		move.b	$19(a0),d1
		moveq	#0,d3
		move.b	$16(a0),d3
		addq.b	#1,d3
		move.w	(sp)+,d4
		bsr	loc_E030
		move.b	$22(a0),d0
		and.b	#$18,d0
		beq	loc_DE2C
		tst.b	($FFFFFE78).w
		bne	loc_DE2C
		bsr	S1SingleObjectLoad	
		bne.s	loc_DE1C
		moveq	#0,d0
		move.w	#$F,d1
loc_DDB2:	
		move.l	0(a0,d0),0(a1,d0)
		addq.w	#4,d0
		dbra	d1,loc_DDB2
		move.b	#$A,$24(a1)
		cmp.b	#$F,($FFFFFE10).w
		bne.s	loc_DDD0
		addq.b	#2,$24(a1)
loc_DDD0:
		move.w	#$200,$10(a1)
		btst	#0,$22(a0)
		beq.s	loc_DDE2
		neg.w	$10(a1)
loc_DDE2:
		bset	#1,$22(a1)
		move.w	a0,d0
		sub.w	#$B000,d0
		lsr.w	#6,d0
		and.w	#$7F,d0
		move.w	a1,d1
		sub.w	#$B000,d1
		lsr.w	#6,d1
		and.w	#$7F,d1
		lea	($FFFFB000).w,a1
		cmp.b	$3D(a1),d0
		bne.s	loc_DE0E
		move.b	d1,$3D(a1)
loc_DE0E:
		lea	($FFFFB040).w,a1
		cmp.b	$3D(a1),d0
		bne.s	loc_DE1C
		move.b	d1,$3D(a1)
loc_DE1C:
		move.b	#3,$1A(a0)
		addq.b	#2,$24(a0)
		and.b	#$E7,$22(a0)
loc_DE2C:
		bra	loc_DD44
loc_DE30:
		bsr	loc_DBA8
		bra	loc_DD44
loc_DE38:
		move.w	8(a0),-(sp)
		btst	#1,$22(a0)
		beq.s	loc_DE76
		bsr	SpeedToPos	
		add.w	#$18,$12(a0)
		cmp.w	#$720,$C(a0)
		bcs.s	loc_DE86
		move.w	#$720,$C(a0)
		bclr	#1,$22(a0)
		move.w	#0,$10(a0)
		move.w	#0,$12(a0)
		move.w	$C(a0),$38(a0)
		bra.s	loc_DE86
loc_DE76:
		moveq	#0,d0
		move.b	($FFFFFE74).w,d0
		lsr.w	#1,d0
		add.w	$38(a0),d0
		move.w	d0,$C(a0)
loc_DE86:
		moveq	#0,d1
		move.b	$19(a0),d1
		moveq	#0,d3
		move.b	$16(a0),d3
		addq.b	#1,d3
		move.w	(sp)+,d4
		bsr	loc_E030
		bra	MarkObjGone	
loc_DE9E:
		move.w	8(a0),-(sp)
		bsr	SpeedToPos	
		btst	#1,$22(a0)
		beq.s	loc_DEDA
		add.w	#$18,$12(a0)
		move.w	($FFFFF648).w,d0
		cmp.w	$C(a0),d0
		bhi.s	loc_DF08
		move.w	d0,$C(a0)
		move.w	d0,$38(a0)
		bclr	#1,$22(a0)
		move.w	#$100,$10(a0)
		move.w	#0,$12(a0)
		bra.s	loc_DF08
loc_DEDA:
		moveq	#0,d0
		move.b	($FFFFFE74).w,d0
		lsr.w	#1,d0
		add.w	$38(a0),d0
		move.w	d0,$C(a0)
		tst.w	$10(a0)
		beq.s	loc_DF08
		moveq	#0,d3
		move.b	$19(a0),d3
		bsr	loc_E03C
		tst.w	d1
		bpl.s	loc_DF08
		add.w	d1,8(a0)
		move.w	#0,$10(a0)
loc_DF08:
		moveq	#0,d1
		move.b	$19(a0),d1
		moveq	#0,d3
		move.b	$16(a0),d3
		addq.b	#1,d3
		move.w	(sp)+,d4
		bsr	loc_E030
		bra	MarkObjGone	
;-------------------------------------------------------------------------------	
OOz_Swing_Platforms_Mappings: 
		dc.w	loc_DF28-OOz_Swing_Platforms_Mappings
		dc.w	loc_DF4A-OOz_Swing_Platforms_Mappings
		dc.w	loc_DF4A-OOz_Swing_Platforms_Mappings
		dc.w	loc_DF54-OOz_Swing_Platforms_Mappings
loc_DF28:
		dc.w	$4
		dc.l	$F00D2004,$2002FFE0,$F00D200C,$20060000
		dc.l	$D2014,$200AFFE0,$D2814,$280A0000
loc_DF4A:
		dc.w	$1
		dc.l	$F8050000,$FFF8
loc_DF54:
		dc.w	$0	
;-------------------------------------------------------------------------------
NGHz_Swing_Platforms_Mappings: 
		dc.w	loc_DF5E-NGHz_Swing_Platforms_Mappings
		dc.w	loc_DF70-NGHz_Swing_Platforms_Mappings
		dc.w	loc_DF7A-NGHz_Swing_Platforms_Mappings
		dc.w	loc_DF8C-NGHz_Swing_Platforms_Mappings
loc_DF5E:
		dc.w	$2
		dc.l	$F80D6055,$602AFFE0,$F80D6055,$602A0000
loc_DF70:
		dc.w	$1
		dc.l	$F8052051,$2028FFF8
loc_DF7A:
		dc.w	$2
		dc.l	$F00E4045,$4022FFF0,$F8052051,$2028FFF8
loc_DF8C:
		dc.w	$0 
;-------------------------------------------------------------------------------
DHz_Swing_Platforms_Mappings: 
		dc.w	loc_DF96-DHz_Swing_Platforms_Mappings
		dc.w	loc_DFA8-DHz_Swing_Platforms_Mappings
		dc.w	loc_DFB2-DHz_Swing_Platforms_Mappings
		dc.w	loc_DFC4-DHz_Swing_Platforms_Mappings
loc_DF96:
		dc.w	$2
		dc.l	$F8096060,$6030FFE8,$F8096860,$68300000
loc_DFA8:
		dc.w	$1
		dc.l	$F8056066,$6033FFF8
loc_DFB2:
		dc.w	$2
		dc.l	$E805406A,$4035FFF4,$F80B406E,$4037FFF4
loc_DFC4:
		dc.w	$A
		dc.l	$A805406A,$4035FFF4,$B80B406E,$4037FFF4
		dc.l	$C8056066,$6033FFF8,$D8056066,$6033FFF8
		dc.l	$E8056066,$6033FFF8,$F8056066,$6033FFF8
		dc.l	$8056066,$6033FFF8,$18056066,$6033FFF8
		dc.l	$28056066,$6033FFF8,$38056066,$6033FFF8	
;-------------------------------------------------------------------------------	
DHz_Swing_Platforms_Mappings_01: 
		dc.w	loc_E01C-DHz_Swing_Platforms_Mappings_01
		dc.w	loc_DFA8-DHz_Swing_Platforms_Mappings_01
		dc.w	loc_DFB2-DHz_Swing_Platforms_Mappings_01
loc_E01C:
		dc.w	$2
		dc.l	$F80D6058,$602CFFE0,$F80D6858,$682C0000	
;=============================================================================== 
; Object 0x15 - Swing Platforms - Oil Ocean / Dust Hill / Neo Green Hill 
; [ End ]
;===============================================================================	