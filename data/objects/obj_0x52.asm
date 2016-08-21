;===============================================================================
; Object 0x52 - Hill Top Boss
; [ Begin ]
;===============================================================================	
loc_2C1F4:
		moveq	#0,d0
		move.b	$A(a0),d0
		move.w	loc_2C202(pc,d0),d1
		jmp	loc_2C202(pc,d1)
loc_2C202:
		dc.w	loc_2C20C-loc_2C202
		dc.w	loc_2C2A4-loc_2C202
		dc.w	loc_2C494-loc_2C202
		dc.w	loc_2C50A-loc_2C202
		dc.w	loc_2C750-loc_2C202
loc_2C20C:	
		move.l	#HTz_Boss_Mappings,4(a0) 
		move.w	#$3C1,2(a0)
		or.b	#4,1(a0)
		move.b	#$90,$E(a0)
		move.b	#$90,$14(a0)
		move.b	#4,$18(a0)
		move.w	#$3040,8(a0)
		move.w	#$580,$C(a0)
		move.b	#1,$2C(a0)
		move.b	#1,$B(a0)
		addq.b	#2,$A(a0)
		bset	#6,1(a0)
		move.b	#$F,$20(a0)
		move.b	#8,$32(a0)
		move.w	#$FF20,($FFFFF75A).w
		move.w	8(a0),($FFFFF750).w
		move.w	$C(a0),($FFFFF754).w
		clr.b	$14(a0)
		move.w	8(a0),$10(a0)
		move.w	$C(a0),$12(a0)
		move.b	#2,$15(a0)
		bsr	loc_2C28E
		rts
loc_2C28E:
		lea	($FFFFF740).w,a2
		move.b	#6,(a2)+
		move.b	#0,(a2)+
		move.b	#$10,(a2)+
		move.b	#0,(a2)+
		rts
loc_2C2A4:
		moveq	#0,d0
		move.b	$26(a0),d0
		move.w	loc_2C2B2(pc,d0),d1
		jmp	loc_2C2B2(pc,d1)
loc_2C2B2:
		dc.w	loc_2C2BC-loc_2C2B2
		dc.w	loc_2C302-loc_2C2B2
		dc.w	loc_2C37E-loc_2C2B2
		dc.w	loc_2C3B2-loc_2C2B2
		dc.w	loc_2C648-loc_2C2B2
loc_2C2BC:
		move.b	#0,($FFFFF73F).w
		bsr	loc_29B7E
		tst.b	$2C(a0)
		bne.s	loc_2C2D6
		cmp.w	#$518,($FFFFF754).w
		bgt.s	loc_2C2F4
		bra.s	loc_2C2DE
loc_2C2D6:
		cmp.w	#$4FC,($FFFFF754).w
		bgt.s	loc_2C2F4
loc_2C2DE:
		move.w	#0,($FFFFF75A).w
		move.b	#4,$1A(a0)
		addq.b	#2,$26(a0)
		move.b	#$3C,$3E(a0)
loc_2C2F4:
		move.w	($FFFFF754).w,$C(a0)
		bsr	loc_29B1C
		bra	loc_2C970
loc_2C302:
		sub.b	#1,$3E(a0)
		bpl.s	loc_2C364
		move.b	#1,($FFFFF73F).w
		move.b	#1,$F(a0)
		cmp.b	#$E8,$3E(a0)
		bne.s	loc_2C364
		bsr	loc_2C97C
		bne.s	loc_2C34E
		move.b	#$52,0(a1)
		move.b	#4,$A(a1)
		move.b	1(a0),1(a1)
		and.b	#1,1(a1)
		move.w	8(a0),8(a1)
		move.w	$C(a0),$C(a1)
		move.b	#$2F,$3E(a0)
loc_2C34E:
		bsr	loc_29B1C
		bsr	loc_2C482
		lea	(HTz_Boss_Animate_Data),a1 
		bsr	loc_29BA4
		bra	loc_2C970
loc_2C364:
		move.b	$1A(a0),d0
		jsr	CalcSine	
		asr.w	#7,d1
		add.w	($FFFFF754).w,d1
		move.w	d1,$C(a0)
		addq.b	#4,$1A(a0)
		bra.s	loc_2C34E
loc_2C37E:
		move.b	#0,($FFFFF73F).w
		move.b	#0,$F(a0)
		move.b	#$10,($FFFFF742).w
		move.b	#0,($FFFFF743).w
		sub.b	#1,$3E(a0)
		bne	loc_2C364
		move.w	#$E0,($FFFFF75A).w
		addq.b	#2,$26(a0)
		bsr	loc_2C482
		bra	loc_2C970
loc_2C3B2:
		bsr	loc_29B7E
		tst.b	$2C(a0)
		bne.s	loc_2C3C6
		cmp.w	#$538,($FFFFF754).w
		blt.s	loc_2C3FC
		bra.s	loc_2C3CE
loc_2C3C6:
		cmp.w	#$548,($FFFFF754).w
		blt.s	loc_2C3FC
loc_2C3CE:
		tst.b	$38(a0)
		bne.s	loc_2C3FC
		st	$38(a0)
		bsr	loc_2C97C
		bne.s	loc_2C3FC
		move.b	#$52,(a1)
		move.b	#6,$A(a1)
		move.w	8(a0),8(a1)
		move.w	$C(a0),$C(a1)
		move.b	#$AE,d0
		bsr	loc_2C988
loc_2C3FC:
		tst.b	$2C(a0)
		bne.s	loc_2C412
		cmp.w	#$5A0,($FFFFF754).w
		blt.s	loc_2C474
		move.w	#$5A0,($FFFFF754).w
		bra.s	loc_2C420
loc_2C412:
		cmp.w	#$580,($FFFFF754).w
		blt.s	loc_2C474
		move.w	#$580,($FFFFF754).w
loc_2C420:
		move.w	#$FF20,($FFFFF75A).w
		move.b	#0,$26(a0)
		sf	$38(a0)
		move.w	($FFFFB008).w,d0
		sub.w	#$2FC0,d0
		bmi.s	loc_2C44C
		move.w	#$580,($FFFFF754).w
		move.w	#$3040,8(a0)
		st	$2C(a0)
		bra.s	loc_2C45C
loc_2C44C:
		move.w	#$2F40,8(a0)
		move.w	#$5A0,($FFFFF754).w
		sf	$2C(a0)
loc_2C45C:
		move.w	8(a0),d0
		cmp.w	($FFFFB008).w,d0
		bgt.s	loc_2C46E
		bset	#0,1(a0)
		bra.s	loc_2C474
loc_2C46E:
		bclr	#0,1(a0)
loc_2C474:
		move.w	($FFFFF754).w,$C(a0)
		bsr	loc_29B1C
		bra	loc_2C970
loc_2C482:
		move.w	8(a0),d0
		move.w	$C(a0),d1
		move.w	d0,$10(a0)
		move.w	d1,$12(a0)
		rts
loc_2C494:
		moveq	#0,d0
		move.b	$25(a0),d0
		move.w	loc_2C4A2(pc,d0),d1
		jmp	loc_2C4A2(pc,d1)
loc_2C4A2:
		dc.w	loc_2C4A6-loc_2C4A2
		dc.w	loc_2C4F4-loc_2C4A2
loc_2C4A6:
		move.l	#HTz_Boss_Mappings,4(a0) 
		move.w	#$421,2(a0)
		or.b	#4,1(a0)
		move.b	#4,$18(a0)
		addq.b	#2,$25(a0)
		move.b	#5,$1C(a0)
		move.b	#$98,$20(a0)
		sub.w	#$1C,$C(a0)
		move.w	#$FF90,d0
		move.w	#$FFFC,d1
		btst	#0,1(a0)
		beq.s	loc_2C4EA
		neg.w	d0
		neg.w	d1
loc_2C4EA:
		add.w	d0,8(a0)
		move.w	d1,$10(a0)
		rts
loc_2C4F4:
		move.w	$10(a0),d1
		add.w	d1,8(a0)
		lea	(HTz_Boss_Animate_Data),a1 
		bsr	loc_2C98E
		bra	loc_2C982
loc_2C50A:
		moveq	#0,d0
		move.b	$25(a0),d0
		move.w	loc_2C518(pc,d0),d1
		jmp	loc_2C518(pc,d1)
loc_2C518:
		dc.w	loc_2C51C-loc_2C518
		dc.w	loc_2C5AC-loc_2C518
loc_2C51C:
		move.l	a0,a1
		moveq	#0,d2
		moveq	#1,d1
		bra.s	loc_2C538
loc_2C524:	
		bsr	loc_2C97C
		bne	loc_2C5AA
		move.w	8(a0),8(a1)
		move.w	$C(a0),$C(a1)
loc_2C538:
		move.b	#$52,(a1)
		move.b	#6,$A(a1)
		move.l	#HTz_Boss_Mappings,4(a1) 
		move.w	#$421,2(a1)
		or.b	#4,1(a1)
		move.b	#3,$18(a1)
		addq.b	#2,$25(a1)
		move.b	#7,$1C(a1)
		move.b	#$8B,$20(a1)
		move.b	d2,$2E(a1)
		move.b	#8,$16(a1)
		move.b	#8,$17(a1)
		move.w	8(a1),$2A(a1)
		move.w	#$1C00,d0
		tst.w	d2
		bne.s	loc_2C58C
		neg.w	d0
loc_2C58C:
		move.w	d0,$10(a1)
		move.w	#$AC00,$12(a1)
		cmp.w	#$2F40,8(a1)
		beq.s	loc_2C5A4
		move.w	#$9C00,$12(a1)
loc_2C5A4:
		addq.w	#1,d2
		dbra	d1,loc_2C524
loc_2C5AA:
		rts
loc_2C5AC:
		bsr	loc_2C616
		bsr	loc_2C994
		tst.w	d1
		bpl.s	loc_2C608
		add.w	d1,$C(a0)
		move.b	#$20,(a0)
		move.b	#$A,$24(a0)
		move.b	#2,$1C(a0)
		move.b	#4,$1A(a0)
		move.w	#0,$12(a0)
		move.l	#Fireball_Mappings,4(a0) 
		move.w	#$839E,2(a0)
		bsr	loc_2C9A0
		move.b	#0,$1A(a0)
		move.w	#9,$32(a0)
		move.b	#3,$36(a0)
		move.b	#$B3,d0
		bsr	loc_2C988
		bra	loc_2C99A
loc_2C608:
		lea	(HTz_Boss_Animate_Data),a1 
		bsr	loc_2C98E
		bra	loc_2C982
loc_2C616:
		move.l	$2A(a0),d2
		move.l	$C(a0),d3
		move.w	$10(a0),d0
		ext.l	d0
		asl.l	#4,d0
		add.l	d0,d2
		move.w	$12(a0),d0
		add.w	#$380,$12(a0)
		ext.l	d0
		asl.l	#4,d0
		add.l	d0,d3
		move.l	d2,$2A(a0)
		move.l	d3,$C(a0)
		move.w	$2A(a0),8(a0)
		rts
loc_2C648:
		cmp.w	#$314E,($FFFFEECA).w
		bcc.s	loc_2C654
		addq.w	#2,($FFFFEECA).w
loc_2C654:
		move.b	#0,$F(a0)
		sub.w	#1,($FFFFF75C).w
		bmi.s	loc_2C690
		cmp.w	#$1E,($FFFFF75C).w
		bgt.s	loc_2C688
		move.b	#$10,$B(a0)
		bsr	Boss_Defeated	
		move.b	($FFFFFE0F).w,d0
		and.b	#$1F,d0
		bne	loc_2C970
		bsr	loc_2C6F4
		bra	loc_2C970
loc_2C688:
		bsr	Boss_Defeated	
		bra	loc_2C970
loc_2C690:
		move.b	($FFFFFE0F).w,d0
		and.b	#$1F,d0
		bne	loc_2C6A0
		bsr	loc_2C6F4
loc_2C6A0:
		cmp.w	#$FFC4,($FFFFF75C).w
		bgt	loc_2C970
		tst.b	($FFFFF7A7).w
		bne.s	loc_2C6BE
		bsr	loc_2C9A6
		bsr	loc_2C9AC
		move.b	#1,($FFFFF7A7).w
loc_2C6BE:
		addq.w	#2,$C(a0)
		tst.b	1(a0)
		bpl.s	loc_2C6EA
		tst.b	$2C(a0)
		bne.s	loc_2C6DC
		cmp.w	#$578,$C(a0)
		bgt	loc_2C6EA
		bra	loc_2C970
loc_2C6DC:
		cmp.w	#$588,$C(a0)
		bgt	loc_2C6EA
		bra	loc_2C970
loc_2C6EA:
		move.w	#$314E,($FFFFEECA).w
		bra	loc_2C976
loc_2C6F4:
		bsr	loc_2C97C
		bne.s	loc_2C74E
		move.b	#$52,(a1)
		move.b	#8,$A(a1)
		move.l	#HTz_Boss_Defeated_Smoke_Mappings,4(a1) 
		move.w	#$5E4,2(a1)
		or.b	#4,1(a1)
		move.b	#1,$18(a1)
		move.w	8(a0),8(a1)
		move.w	$C(a0),$C(a1)
		move.w	8(a0),$2A(a1)
		sub.w	#$28,$C(a1)
		move.w	#$FFA0,$10(a1)
		move.w	#$FF40,$12(a1)
		move.b	#0,$1A(a1)
		move.b	#$11,$1E(a1)
loc_2C74E:
		rts
loc_2C750:
		subq.b	#1,$1E(a0)
		bpl.s	loc_2C76A
		move.b	#$11,$1E(a0)
		addq.b	#1,$1A(a0)
		cmp.b	#4,$1A(a0)
		beq	loc_2C976
loc_2C76A:
		move.l	$2A(a0),d2
		move.l	$C(a0),d3
		move.w	$10(a0),d0
		ext.l	d0
		asl.l	#8,d0
		add.l	d0,d2
		move.w	$12(a0),d0
		ext.l	d0
		asl.l	#8,d0
		add.l	d0,d3
		move.l	d2,$2A(a0)
		move.w	$2A(a0),8(a0)
		move.l	d3,$C(a0)
		bra	loc_2C970	
;-------------------------------------------------------------------------------
HTz_Boss_Defeated_Smoke_Mappings: 
		dc.w	loc_2C7A0-HTz_Boss_Defeated_Smoke_Mappings
		dc.w	loc_2C7AA-HTz_Boss_Defeated_Smoke_Mappings
		dc.w	loc_2C7B4-HTz_Boss_Defeated_Smoke_Mappings
		dc.w	loc_2C7BE-HTz_Boss_Defeated_Smoke_Mappings
loc_2C7A0:
		dc.w	$1
		dc.l	$F8052000,$2000FFF8
loc_2C7AA:
		dc.w	$1
		dc.l	$F8052004,$2002FFF8
loc_2C7B4:
		dc.w	$1
		dc.l	$F8052008,$2004FFF8
loc_2C7BE:
		dc.w	$1
		dc.l	$F805200C,$2006FFF8
;-------------------------------------------------------------------------------
HTz_Boss_Animate_Data: 
		dc.w	loc_2C7D8-HTz_Boss_Animate_Data
		dc.w	loc_2C7DD-HTz_Boss_Animate_Data
		dc.w	loc_2C7E2-HTz_Boss_Animate_Data
		dc.w	loc_2C7E7-HTz_Boss_Animate_Data
		dc.w	loc_2C7EC-HTz_Boss_Animate_Data
		dc.w	loc_2C7F0-HTz_Boss_Animate_Data
		dc.w	loc_2C7F4-HTz_Boss_Animate_Data
		dc.w	loc_2C7F7-HTz_Boss_Animate_Data
loc_2C7D8:
		dc.b	1,2,3,$FD,$1
loc_2C7DD:
		dc.b	2,4,5,$FD,$2
loc_2C7E2:
		dc.b	3,6,7,$FD,$3
loc_2C7E7:
		dc.b	4,8,9,$FD,$4
loc_2C7EC:
		dc.b	5,$A,$B,$FE
loc_2C7F0:
		dc.b	3,$C,$D,$FF
loc_2C7F4:
		dc.b	$F,1,$FF
loc_2C7F7:
		dc.b	3,$E,$F,$FF,$0
;-------------------------------------------------------------------------------
HTz_Boss_Mappings: ;loc_2C7FC:
		dc.w	HTz_Boss_Mappings-HTz_Boss_Mappings
		dc.w	loc_2C81E-HTz_Boss_Mappings
		dc.w	loc_2C860-HTz_Boss_Mappings
		dc.w	loc_2C86A-HTz_Boss_Mappings
		dc.w	loc_2C874-HTz_Boss_Mappings
		dc.w	loc_2C87E-HTz_Boss_Mappings
		dc.w	loc_2C890-HTz_Boss_Mappings
		dc.w	loc_2C8A2-HTz_Boss_Mappings
		dc.w	loc_2C8BC-HTz_Boss_Mappings
		dc.w	loc_2C8D6-HTz_Boss_Mappings
		dc.w	loc_2C8F0-HTz_Boss_Mappings
		dc.w	loc_2C902-HTz_Boss_Mappings
		dc.w	loc_2C90C-HTz_Boss_Mappings
		dc.w	loc_2C916-HTz_Boss_Mappings
		dc.w	loc_2C920-HTz_Boss_Mappings
		dc.w	loc_2C92A-HTz_Boss_Mappings
		dc.w	loc_2C934-HTz_Boss_Mappings
loc_2C81E:
		dc.w	$8
		dc.l	$4052000,$2000FFE0,$14052004,$2002FFE0
		dc.l	$40F2008,$2004FFF0,$4072018,$200C0010
		dc.l	$F40D0060,$30FFE0,$F40D0068,$340000
		dc.l	$DC0A2070,$2038FFE8,$DC062079,$203C0000
loc_2C860:
		dc.w	$1
		dc.l	$DF040083,$41FFD8
loc_2C86A:
		dc.w	$1
		dc.l	$DF040085,$42FFD8
loc_2C874:
		dc.w	$1
		dc.l	$DF080087,$43FFD0
loc_2C87E:
		dc.w	$2
		dc.l	$DF0C008A,$45FFC0,$DF00008E,$47FFE0
loc_2C890:
		dc.w	$2
		dc.l	$DF0C008F,$47FFB0,$DF080093,$49FFD0
loc_2C8A2:
		dc.w	$3
		dc.l	$DF0C0096,$4BFFA0,$DF0C009A,$4DFFC0
		dc.l	$DF00009E,$4FFFE0
loc_2C8BC:
		dc.w	$3
		dc.l	$DF0C009F,$4FFF90,$DF0C00A3,$51FFB0
		dc.l	$DF0800A7,$53FFD0
loc_2C8D6:
		dc.w	$3
		dc.l	$DF0C00AA,$55FF88,$DF0C00AE,$57FFA8
		dc.l	$DF0800B2,$59FFC8
loc_2C8F0:
		dc.w	$2
		dc.l	$DF0C00B5,$5AFF88,$DF0C00B9,$5CFFA8
loc_2C902:
		dc.w	$1
		dc.l	$DF0C00BD,$5EFF88
loc_2C90C:
		dc.w	$1
		dc.l	$FC000061,$30FFFC
loc_2C916:
		dc.w	$1
		dc.l	$FC000062,$31FFFC
loc_2C920:
		dc.w	$1
		dc.l	$F8050063,$31FFF8
loc_2C92A:
		dc.w	$1
		dc.l	$F8050067,$33FFF8
loc_2C934:
		dc.w	$7
		dc.l	$4052000,$2000FFE0,$14052004,$2002FFE0
		dc.l	$40F2008,$2004FFF0,$4072018,$200C0010
		dc.l	$F40D0060,$30FFE0,$F40D0068,$340000
		dc.l	$EC0C007F,$3FFFF0	
;===============================================================================
; Object 0x52 - Hill Top Boss
; [ End ]
;===============================================================================