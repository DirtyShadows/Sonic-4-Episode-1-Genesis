; Boss Moves Settings	[$1=Dill (nº2) Diagonal] 
;	[$2=Dill Ship Boost] 
;	[$3=Dill (nº2) Vertical] 
;	[$4..$B=Dill (nº2) Horizontal] 
;	[$C=Dill (nº2) Moving Down To Up] 
; $FFFF742 => Drill nº 1 Settings 
; $FFFF748 => Drill nº 2 Settings 
; $FFFF750 => Screen Pos
; $FFFF75A => Up/Down Move
; $FFFF758 => Left/Right Move
; (a0) + 32 => Hit Count 
;===============================================================================
; Object 0x57 - Dust Hill Boss
; [ Begin ]
;===============================================================================	
loc_2D4AC:
		moveq	#0,d0
		move.b	$A(a0),d0
		move.w	loc_2D4BA(pc,d0),d1
		jmp	loc_2D4BA(pc,d1)
loc_2D4BA:
		dc.w	loc_2D4C0-loc_2D4BA
		dc.w	loc_2D5C6-loc_2D4BA
		dc.w	loc_2DB00-loc_2D4BA
loc_2D4C0:
		move.l	#DHz_Boss_Mappings,4(a0) 
		move.w	#$3C0,2(a0)
		or.b	#4,1(a0)
		move.b	#3,$18(a0)
		move.w	#$21A0,8(a0)
		move.w	#$560,$C(a0)
		move.b	#5,$B(a0)
		addq.b	#2,$A(a0)
		move.b	#2,$26(a0)
		bset	#6,1(a0)
		move.b	#4,$F(a0)
		move.b	#$F,$20(a0)
		move.b	#8,$32(a0)
		move.w	8(a0),($FFFFF750).w
		move.w	$C(a0),($FFFFF754).w
		move.w	#$C0,($FFFFF75A).w	; Move Down 
		move.b	#0,($FFFFF73F).w
		move.b	#1,($FFFFEEBD).w
		move.b	#$40,$E(a0)
		move.w	8(a0),$10(a0)
		move.w	$C(a0),$12(a0)
		move.b	#2,$15(a0)
		move.w	8(a0),$16(a0)
		move.w	$C(a0),$18(a0)
		move.b	#1,$1B(a0)
		move.w	8(a0),$1C(a0)
		move.w	$C(a0),$1E(a0)
		move.b	#$E,$21(a0)
		move.w	8(a0),$22(a0)
		move.w	$C(a0),$24(a0)
		move.b	#2,$27(a0)
		sub.w	#$28,$22(a0)
		move.w	#$28,($FFFFF75C).w
		move.w	#$FC80,$2E(a0)
		move.w	#$FC80,$30(a0)
		bsr	loc_2D598
		rts
loc_2D598:
		lea	($FFFFF740).w,a2
		move.b	#2,(a2)+
		move.b	#0,(a2)+
		move.b	#3,(a2)+
		move.b	#0,(a2)+
		move.b	#$10,(a2)+
		move.b	#0,(a2)+
		move.b	#$D,(a2)+
		move.b	#0,(a2)+
		move.b	#3,(a2)+
		move.b	#0,(a2)+
		rts
loc_2D5C6:
		moveq	#0,d0
		move.b	$26(a0),d0
		move.w	loc_2D5D4(pc,d0),d1
		jmp	loc_2D5D4(pc,d1)
loc_2D5D4:
		dc.w	loc_2D5E2-loc_2D5D4
		dc.w	loc_2D676-loc_2D5D4
		dc.w	loc_2D6B2-loc_2D5D4
		dc.w	loc_2D752-loc_2D5D4
		dc.w	loc_2D9DA-loc_2D5D4
		dc.w	loc_2DA2E-loc_2D5D4
		dc.w	loc_2DAAE-loc_2D5D4
loc_2D5E2:
		sub.w	#1,($FFFFF75C).w
		bpl.s	loc_2D634
		move.b	#0,($FFFFF745).w
		bsr	loc_29B7E
		cmp.w	#$560,($FFFFF754).w
		bgt.s	loc_2D634
		move.w	#$100,($FFFFF75A).w
		move.w	($FFFFB008).w,d3
		cmp.w	#$2190,d3
		bcc.s	loc_2D612
		move.w	#$2200,d3
		bra.s	loc_2D616
loc_2D612:
		move.w	#$2120,d3
loc_2D616:
		move.w	d3,($FFFFF750).w
		addq.b	#2,$26(a0)
		bclr	#0,1(a0)	; Change Direction
		move.w	($FFFFB008).w,d0
		sub.w	($FFFFF750).w,d0
		bmi.s	loc_2D634
		bset	#0,1(a0)	; Change Direction
loc_2D634:
		cmp.w	#$28,($FFFFF75C).w
		bne.s	loc_2D642
		move.b	#0,($FFFFF73F).w
loc_2D642:
		cmp.w	#$620,($FFFFF754).w
		bge.s	loc_2D654
		move.b	#1,($FFFFEEBD).w
		bsr	loc_2D8CE
loc_2D654:
		move.w	($FFFFF754).w,$C(a0)
		move.w	($FFFFF750).w,8(a0)
		bsr	loc_2D942
		lea	(DHz_Boss_Animate_Data),a1 
		bsr	loc_29BA4
		bsr	loc_2D812
		bra	loc_2DDC8
loc_2D676:
		bsr	loc_29B7E
		bsr	loc_2D8CE
		cmp.w	#$620,($FFFFF754).w
		blt.s	loc_2D690
		addq.b	#2,$26(a0)
		move.b	#0,($FFFFEEBD).w
loc_2D690:
		move.w	($FFFFF754).w,$C(a0)
		move.w	($FFFFF750).w,8(a0)
		bsr	loc_2D942
		lea	(DHz_Boss_Animate_Data),a1 
		bsr	loc_29BA4
		bsr	loc_2D812
		bra	loc_2DDC8
loc_2D6B2:
		bsr	loc_29B7E
		cmp.w	#$660,($FFFFF754).w
		blt.s	loc_2D730
		move.w	#$660,($FFFFF754).w
		addq.b	#2,$26(a0)
		lea	($FFFFF740).w,a1
		and.b	#$F0,2(a1)
		or.b	#6,2(a1)
		and.b	#$F0,8(a1)
		or.b	#6,8(a1)
		and.b	#$F0,6(a1)
		or.b	#$D,6(a1)
		move.b	#$20,5(a1)
		move.w	#$64,($FFFFF75C).w
		move.b	#$30,1(a1)
		bclr	#0,1(a0)
		move.w	($FFFFB008).w,d0
		sub.w	($FFFFF750).w,d0
		bmi.s	loc_2D718
		bset	#0,1(a0)	; Change Direction
loc_2D718:
		move.w	#$FE00,($FFFFF758).w	; Move Left
		move.w	#0,($FFFFF75A).w
		btst	#0,1(a0)	; Change Direction
		beq.s	loc_2D730
		neg.w	($FFFFF758).w	; Move Right	
loc_2D730:
		move.w	($FFFFF754).w,$C(a0)
		move.w	($FFFFF750).w,8(a0)
		bsr	loc_2D942
		lea	(DHz_Boss_Animate_Data),a1 
		bsr	loc_29BA4
		bsr	loc_2D812
		bra	loc_2DDC8
loc_2D752:
		sub.w	#1,($FFFFF75C).w
		cmp.w	#$28,($FFFFF75C).w
		bgt	loc_2D7F0
		move.b	#1,($FFFFF73F).w
		tst.w	($FFFFF75C).w
		bpl	loc_2D7F0
		tst.b	$38(a0)
		beq.s	loc_2D77C
		sf	$38(a0)
		bra.s	loc_2D7A0
loc_2D77C:
		bsr	loc_29B7E
		cmp.w	#$2120,($FFFFF750).w
		bgt.s	loc_2D790
		move.w	#$2120,($FFFFF750).w
		bra.s	loc_2D7AA
loc_2D790:
		cmp.w	#$2200,($FFFFF750).w
		blt.s	loc_2D7F0
		move.w	#$2200,($FFFFF750).w
		bra.s	loc_2D7AA
loc_2D7A0:
		lea	($FFFFF740).w,a1
		move.b	#$30,7(a1)
loc_2D7AA:
		move.w	#0,($FFFFF758).w
		move.b	#0,$26(a0)
		lea	($FFFFF740).w,a1
		and.b	#$F0,2(a1)
		or.b	#$B,2(a1)
		and.b	#$F0,8(a1)
		or.b	#$B,8(a1)
		move.b	#0,1(a1)
		and.b	#$F0,6(a1)
		or.b	#$D,6(a1)
		move.w	#$64,($FFFFF75C).w
		move.w	#$FF40,($FFFFF75A).w	; Move Up 
loc_2D7F0:
		move.w	($FFFFF754).w,$C(a0)
		move.w	($FFFFF750).w,8(a0)
		bsr	loc_2D942
		lea	(DHz_Boss_Animate_Data),a1 
		bsr	loc_29BA4
		bsr	loc_2D812
		bra	loc_2DDC8
loc_2D812:
		move.w	8(a0),d0
		move.w	$C(a0),d1
		move.w	d0,$16(a0)
		move.w	d1,$18(a0)
		move.w	d0,$1C(a0)
		move.w	d1,$1E(a0)
		tst.b	$2C(a0)
		bne.s	loc_2D860
		move.w	d0,$22(a0)
		move.w	d1,$24(a0)
		move.w	d0,$10(a0)
		move.w	d1,$12(a0)
		move.w	d1,$3A(a0)
		move.w	d1,$34(a0)
		btst	#0,1(a0)	; Set Drill Direction
		beq.s	loc_2D858
		add.w	#$28,$22(a0)
		rts
loc_2D858:
		sub.w	#$28,$22(a0)
		rts
loc_2D860:
		cmp.w	#$78,($FFFFF75C).w
		bgt.s	loc_2D8CC
		sub.w	#1,$22(a0)	; Eject Back Drill From Ship
		move.l	$3A(a0),d0
		move.w	$2E(a0),d1
		add.w	#$38,$2E(a0)
		ext.l	d1
		asl.l	#8,d1
		add.l	d1,d0
		move.l	d0,$3A(a0)
		move.w	$3A(a0),$24(a0)
		cmp.w	#$6F0,$24(a0)
		blt.s	loc_2D89A
		move.w	#0,$2E(a0)
loc_2D89A:
		add.w	#1,$10(a0)	; Eject Front Drill From Ship
		move.l	$34(a0),d0
		move.w	$30(a0),d1
		add.w	#$38,$30(a0)
		ext.l	d1
		asl.l	#8,d1
		add.l	d1,d0
		move.l	d0,$34(a0)
		move.w	$34(a0),$12(a0)
		cmp.w	#$6F0,$12(a0)
		blt.s	loc_2D8CC
		move.w	#0,$30(a0)
loc_2D8CC:
		rts
loc_2D8CE:
		move.b	($FFFFFE0F).w,d1
		sf	d2
		and.b	#$1F,d1
		beq.s	loc_2D8E2
		and.b	#7,d1
		bne.s	loc_2D940
		st	d2
loc_2D8E2:
		bsr	loc_2DDDA
		swap.w	d1
		and.w	#$1FF,d1
		add.w	#$20F0,d1
		cmp.w	#$2230,d1
		bgt.s	loc_2D8E2
		bsr	loc_2DDD4
		bne.s	loc_2D940
		move.b	#$57,(a1)
		move.b	#4,$A(a1)
		move.w	d1,8(a1)
		move.w	#$5F0,$C(a1)
		move.l	#DHz_Boss_Mappings,4(a1) 
		move.w	#$560,2(a1)
		or.b	#4,1(a1)
		move.b	#3,$18(a1)
		move.b	#$D,$1A(a1)
		tst.b	d2
		bne.s	loc_2D940
		move.b	#$14,$1A(a1)
		move.b	#$B1,$20(a1)
loc_2D940:
		rts
loc_2D942:
		bsr	loc_2D978
		cmp.b	#$1F,$14(a0)
		bne.s	loc_2D958
		lea	($FFFFF740).w,a1
		move.b	#$C0,7(a1)
loc_2D958:
		rts
loc_2D95A:	
		move.b	$1A(a0),d0
		jsr	CalcSine	
		asr.w	#6,d0
		add.w	($FFFFF754).w,d0
		move.w	d0,$C(a0)
		move.w	($FFFFF750).w,8(a0)
		addq.b	#2,$1A(a0)
loc_2D978:
		cmp.b	#8,$26(a0)
		bcc.s	loc_2D9BE
		tst.b	$32(a0)
		beq.s	loc_2D9C0
		tst.b	$20(a0)
		bne.s	loc_2D9BE
		tst.b	$14(a0)
		bne.s	loc_2D9A2
		move.b	#$20,$14(a0)
		move.w	#$AC,d0
		jsr	Play_Sfx	
loc_2D9A2:
		lea	($FFFFFB22).w,a1
		moveq	#0,d0
		tst.w	(a1)
		bne.s	loc_2D9B0
		move.w	#$EEE,d0
loc_2D9B0:
		move.w	d0,(a1)
		subq.b	#1,$14(a0)
		bne.s	loc_2D9BE
		move.b	#$F,$20(a0)
loc_2D9BE:
		rts
loc_2D9C0:
		moveq	#$64,d0
		bsr	loc_2DDE6
		move.w	#$B3,($FFFFF75C).w
		move.b	#8,$26(a0)
		moveq	#$40,d0
		bsr	loc_2DDE0
		rts
loc_2D9DA:
		st	$2C(a0)
		move.b	#0,($FFFFEEBD).w
		subq.w	#1,($FFFFF75C).w
		bmi.s	loc_2D9FC
		move.b	#$13,$21(a0)
		move.b	#7,$B(a0)
		bsr	Boss_Defeated	
		bra.s	loc_2DA1A
loc_2D9FC:
		bset	#0,1(a0)	; Change Direction 
		clr.w	($FFFFF758).w
		clr.w	($FFFFF75A).w
		addq.b	#2,$26(a0)
		move.b	#$12,$21(a0)
		move.w	#$FFEE,($FFFFF75C).w
loc_2DA1A:
		move.w	($FFFFF754).w,$C(a0)
		move.w	($FFFFF750).w,8(a0)
		bsr	loc_2D812
		bra	loc_2DDC8
loc_2DA2E:
		addq.w	#1,($FFFFF75C).w
		beq.s	loc_2DA4A
		bpl.s	loc_2DA50
		cmp.w	#$620,($FFFFF754).w
		bcc.s	loc_2DA42
		subq.w	#1,($FFFFF75C).w
loc_2DA42:
		add.w	#$10,($FFFFF75A).w
		bra.s	loc_2DA92
loc_2DA4A:
		clr.w	($FFFFF75A).w
		bra.s	loc_2DA92
loc_2DA50:
		cmp.w	#$18,($FFFFF75C).w
		bcs.s	loc_2DA7E
		beq.s	loc_2DA86
		cmp.w	#$20,($FFFFF75C).w
		bcs.s	loc_2DA92
		lea	($FFFFF740).w,a1
		move.b	#$D,7(a1)
		move.b	#2,0(a2)
		move.b	#0,1(a1)
		addq.b	#2,$26(a0)
		bra.s	loc_2DA92
loc_2DA7E:
		sub.w	#8,($FFFFF75A).w
		bra.s	loc_2DA92
loc_2DA86:
		clr.w	($FFFFF75A).w
		bsr	loc_2DDEC
		bsr	loc_2DDF2
loc_2DA92:
		bsr	loc_29B7E
		bsr	loc_2D95A
		move.w	($FFFFF754).w,$C(a0)
		move.w	($FFFFF750).w,8(a0)
		bsr	loc_2D812
		bra	loc_2DDC8
loc_2DAAE:
		move.w	#$400,($FFFFF758).w
		move.w	#$FFC0,($FFFFF75A).w
		cmp.w	#$2210,($FFFFEECA).w
		beq.s	loc_2DAC8
		addq.w	#2,($FFFFEECA).w
		bra.s	loc_2DACE
loc_2DAC8:
		tst.b	1(a0)
		bpl.s	loc_2DAF4
loc_2DACE:
		bsr	loc_29B7E
		bsr	loc_2D95A
		move.w	($FFFFF754).w,$C(a0)
		move.w	($FFFFF750).w,8(a0)
		lea	(DHz_Boss_Animate_Data),a1 
		bsr	loc_29BA4
		bsr	loc_2D812
		bra	loc_2DDC8
loc_2DAF4:
		move.w	#$2210,($FFFFEECA).w
		jmp	deleteObject	
loc_2DB00:
		bsr	loc_2DDF8
		sub.w	#$28,$12(a0)
		cmp.w	#$6F0,$C(a0)
		bgt	loc_2DDCE
		bra	loc_2DDC8	
;-------------------------------------------------------------------------------
DHz_Boss_Animate_Data: 
		dc.w	loc_2DB36-DHz_Boss_Animate_Data
		dc.w	loc_2DB3C-DHz_Boss_Animate_Data
		dc.w	loc_2DB3F-DHz_Boss_Animate_Data
		dc.w	loc_2DB46-DHz_Boss_Animate_Data
		dc.w	loc_2DB57-DHz_Boss_Animate_Data
		dc.w	loc_2DB68-DHz_Boss_Animate_Data
		dc.w	loc_2DB6F-DHz_Boss_Animate_Data
		dc.w	loc_2DB81-DHz_Boss_Animate_Data
		dc.w	loc_2DB92-DHz_Boss_Animate_Data
		dc.w	loc_2DBA3-DHz_Boss_Animate_Data
		dc.w	loc_2DBB4-DHz_Boss_Animate_Data
		dc.w	loc_2DBBB-DHz_Boss_Animate_Data
		dc.w	loc_2DBCD-DHz_Boss_Animate_Data
		dc.w	loc_2DBDF-DHz_Boss_Animate_Data
		dc.w	loc_2DBF6-DHz_Boss_Animate_Data
loc_2DB36:
		dc.b	$F,1,$FF,0,$FC,$2
loc_2DB3C:
		dc.b	5,8,$FF
loc_2DB3F:
		dc.b	1,5,6,$FF,7,$FC,$3
loc_2DB46:
		dc.b	1,2,2,2,2,2,3,3,3,3,3,4,4,4,4,$FD
		dc.b	$4
loc_2DB57:
		dc.b	1,2,2,2,2,3,3,3,4,4,4,2,2,3,3,$FD
		dc.b	$5
loc_2DB68:
		dc.b	1,4,2,3,4,$FC,$1
loc_2DB6F:
		dc.b	1,2,3,4,4,2,2,3,3,3,4,4,4,2,2,$2
		dc.b	$FD,$7
loc_2DB81:
		dc.b	1,2,3,3,3,3,4,4,4,4,4,2,8,8,8,$FD
		dc.b	$8
loc_2DB92:
		dc.b	1,9,9,9,9,9,$A,$A,$A,$A,$A,$B,$B,$B,$B,$FD
		dc.b	$9
loc_2DBA3:
		dc.b	1,9,9,9,9,$A,$A,$A,$B,$B,$B,9,9,$A,$A,$FD
		dc.b	$A
loc_2DBB4:
		dc.b	1,$B,9,$A,$B,$FC,$1
loc_2DBBB:
		dc.b	1,9,$A,$B,$B,9,9,$A,$A,$A,$B,$B,$B,9,9,$9
		dc.b	$FD,$C
loc_2DBCD:
		dc.b	1,9,$A,$A,$A,$A,$B,$B,$B,$B,$B,9,8,8,8,$8
		dc.b	$FD,$3
loc_2DBDF:
		dc.b	7,$E,$F,$FF,$10,$11,$10,$11,$10,$11,$10,$11,$FF,$12,$12,$12
		dc.b	$12,$12,$12,$12,$12,$12,$FF
loc_2DBF6:
		dc.b	7,$12,$FF,$0
;-------------------------------------------------------------------------------	
DHz_Boss_Mappings: 
		dc.w	loc_2DC24-DHz_Boss_Mappings
		dc.w	loc_2DC4E-DHz_Boss_Mappings
		dc.w	loc_2DC78-DHz_Boss_Mappings
		dc.w	loc_2DC8A-DHz_Boss_Mappings
		dc.w	loc_2DC9C-DHz_Boss_Mappings
		dc.w	loc_2DCAE-DHz_Boss_Mappings
		dc.w	loc_2DCC0-DHz_Boss_Mappings
		dc.w	loc_2DCD2-DHz_Boss_Mappings
		dc.w	loc_2DCDC-DHz_Boss_Mappings
		dc.w	loc_2DD06-DHz_Boss_Mappings
		dc.w	loc_2DD18-DHz_Boss_Mappings
		dc.w	loc_2DD2A-DHz_Boss_Mappings
		dc.w	loc_2DD3C-DHz_Boss_Mappings
		dc.w	loc_2DD46-DHz_Boss_Mappings
		dc.w	loc_2DD50-DHz_Boss_Mappings
		dc.w	loc_2DD62-DHz_Boss_Mappings
		dc.w	loc_2DD74-DHz_Boss_Mappings
		dc.w	loc_2DD86-DHz_Boss_Mappings
		dc.w	loc_2DD98-DHz_Boss_Mappings
		dc.w	loc_2DDAA-DHz_Boss_Mappings
		dc.w	loc_2DDBC-DHz_Boss_Mappings
loc_2DC24:
		dc.w	$5
		dc.l	$F80F2148,$20A4FFF0,$F8072158,$20AC0010
		dc.l	$E8050164,$B20010,$F80A2009,$2004FFD8
		dc.l	$D8090021,$10FFF8
loc_2DC4E:
		dc.w	$5
		dc.l	$F80F2148,$20A4FFF0,$F8072158,$20AC0010
		dc.l	$E8050164,$B20010,$F80A2000,$2000FFD8
		dc.l	$D8090021,$10FFF8
loc_2DC78:
		dc.w	$2
		dc.l	$D0072027,$2013000C,$F00B203F,$201F0008
loc_2DC8A:
		dc.w	$2
		dc.l	$D007202F,$2017000C,$F00B204B,$20250008
loc_2DC9C:
		dc.w	$2
		dc.l	$D0072037,$201B000C,$F00B2057,$202B0008
loc_2DCAE:
		dc.w	$2
		dc.l	$12080012,$9FFF8,$1A080015,$AFFF8
loc_2DCC0:
		dc.w	$2
		dc.l	$12080012,$9FFF8,$1A0A0018,$CFFF8
loc_2DCD2:
		dc.w	$1
		dc.l	$12080012,$9FFF8
loc_2DCDC:
		dc.w	$5
		dc.l	$E0092063,$2031FFF8,$F0012069,$20340000
		dc.l	$F00F206B,$20350008,$F802207B,$203D0028
		dc.l	$1004207E,$203F0018
loc_2DD06:
		dc.w	$2
		dc.l	$FC0D2080,$2040FFF0,$F80E2098,$204C0010
loc_2DD18:
		dc.w	$2
		dc.l	$FC0D2088,$2044FFF0,$F80E20A4,$20520010
loc_2DD2A:
		dc.w	$2
		dc.l	$FC0D2090,$2048FFF0,$F80E20B0,$20580010
loc_2DD3C:
		dc.w	$1
		dc.l	$F00F40BC,$405EFFF0
loc_2DD46:
		dc.w	$1
		dc.l	$F8054000,$4000FFF8
loc_2DD50:
		dc.w	$2
		dc.l	$E80D0170,$B8FFF0,$E8050168,$B4FFE0
loc_2DD62:
		dc.w	$2
		dc.l	$E80D0178,$BCFFF0,$E8050168,$B4FFE0
loc_2DD74:
		dc.w	$2
		dc.l	$E80D0180,$C0FFF0,$E805016C,$B6FFE0
loc_2DD86:
		dc.w	$2
		dc.l	$E80D0188,$C4FFF0,$E805016C,$B6FFE0
loc_2DD98:
		dc.w	$2
		dc.l	$E80D0190,$C8FFF0,$E805016C,$B6FFE0
loc_2DDAA:
		dc.w	$2
		dc.l	$E80D0198,$CCFFF0,$E805016C,$B6FFE0
loc_2DDBC:
		dc.w	$1
		dc.l	$F0034004,$4002FFFC	
;===============================================================================
; Object 0x57 - Dust Hill Boss
; [ End ]
;===============================================================================