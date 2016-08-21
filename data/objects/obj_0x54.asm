;===============================================================================
; Object 0x54 - Metropolis Boss
; [ Begin ]
;===============================================================================	
loc_2E7A0:
		moveq	#0,d0
		move.b	$A(a0),d0
		move.w	loc_2E7AE(pc,d0),d1
		jmp	loc_2E7AE(pc,d1)
loc_2E7AE:
		dc.w	loc_2E7B6-loc_2E7AE
		dc.w	loc_2E8D2-loc_2E7AE
		dc.w	loc_2F1CC-loc_2E7AE
		dc.w	loc_2F266-loc_2E7AE
loc_2E7B6:
		move.l	#Mz_Boss_Mappings,4(a0) 
		move.w	#$37C,2(a0)
		or.b	#4,1(a0)
		move.b	#3,$18(a0)
		move.w	#$2B50,8(a0)
		move.w	#$380,$C(a0)
		move.b	#2,$B(a0)
		addq.b	#2,$A(a0)
		bset	#6,1(a0)
		move.b	#2,$F(a0)
		move.b	#$F,$20(a0)
		move.b	#8,$32(a0)
		move.b	#7,$3E(a0)
		move.w	8(a0),($FFFFF750).w
		move.w	$C(a0),($FFFFF754).w
		move.w	#0,($FFFFF758).w
		move.w	#$100,($FFFFF75A).w
		move.b	#$20,$E(a0)
		clr.b	$2B(a0)
		clr.b	$2C(a0)
		move.b	#$40,$1A(a0)
		move.b	#$27,$33(a0)
		move.b	#$27,$39(a0)
		move.w	8(a0),$10(a0)
		move.w	$C(a0),$12(a0)
		move.b	#$C,$15(a0)
		move.w	8(a0),$16(a0)
		move.w	$C(a0),$18(a0)
		move.b	#0,$1B(a0)
		bsr	loc_2F474
		bne.s	loc_2E8B4
		move.b	#$54,(a1)
		move.b	#6,$A(a1)
		move.b	#$13,$1A(a1)
		move.l	#Mz_Boss_Mappings,4(a1) 
		move.w	#$37C,2(a1)
		or.b	#4,1(a1)
		move.b	#6,$18(a1)
		move.w	8(a0),8(a1)
		move.w	$C(a0),$C(a1)
		move.l	a0,$34(a1)
		move.b	#$20,$19(a1)
		bsr	loc_2F474
		bne.s	loc_2E8B4
		move.b	#$53,(a1)
		move.l	a0,$34(a1)
loc_2E8B4:
		lea	($FFFFF740).w,a2
		move.b	#$10,(a2)+
		move.b	#0,(a2)+
		move.b	#3,(a2)+
		move.b	#0,(a2)+
		move.b	#1,(a2)+
		move.b	#0,(a2)+
		rts
loc_2E8D2:
		moveq	#0,d0
		move.b	$26(a0),d0
		move.w	loc_2E8E0(pc,d0),d1
		jmp	loc_2E8E0(pc,d1)
loc_2E8E0:
		dc.w	loc_2E8F4-loc_2E8E0
		dc.w	loc_2E96E-loc_2E8E0
		dc.w	loc_2E9F4-loc_2E8E0
		dc.w	loc_2EA3C-loc_2E8E0
		dc.w	loc_2EA5C-loc_2E8E0
		dc.w	loc_2EA8C-loc_2E8E0
		dc.w	loc_2EAD6-loc_2E8E0
		dc.w	loc_2EB46-loc_2E8E0
		dc.w	loc_2ED1A-loc_2E8E0
		dc.w	loc_2ED7C-loc_2E8E0
loc_2E8F4:
		bsr	loc_29B7E
		move.w	($FFFFF754).w,$C(a0)
		cmp.w	#$4A0,($FFFFF754).w
		bcs.s	loc_2E93E
		addq.b	#2,$26(a0)
		move.w	#0,($FFFFF75A).w
		move.w	#$FF00,($FFFFF758).w
		bclr	#7,$2B(a0)
		bclr	#0,1(a0)
		move.w	($FFFFB008).w,d0
		cmp.w	($FFFFF750).w,d0
		bcs.s	loc_2E93E
		move.w	#$100,($FFFFF758).w
		bset	#7,$2B(a0)
		bset	#0,1(a0)
loc_2E93E:
		bsr	loc_2ECA6
		lea	(Mz_Boss_Animate_Data),a1 
		bsr	loc_29BA4
		bsr	loc_2EC8C
		bra	loc_2F468
loc_2E954:	
		move.b	$1A(a0),d0
		jsr	CalcSine	
		asr.w	#6,d0
		add.w	($FFFFF754).w,d0
		move.w	d0,$C(a0)
		addq.b	#4,$1A(a0)
		rts
loc_2E96E:
		bsr	loc_29B7E
		btst	#7,$2B(a0)
		bne.s	loc_2E9A8
		cmp.w	#$2AD0,($FFFFF750).w
		bcc.s	loc_2E9D4
		bchg	#7,$2B(a0)
		move.w	#$100,($FFFFF758).w
		bset	#0,1(a0)
		bset	#6,$2B(a0)
		beq.s	loc_2E9D4
		addq.b	#2,$26(a0)
		move.w	#$FF00,($FFFFF75A).w
		bra.s	loc_2E9D4
loc_2E9A8:
		cmp.w	#$2BD0,($FFFFF750).w
		bcs.s	loc_2E9D4
		bchg	#7,$2B(a0)
		move.w	#$FF00,($FFFFF758).w
		bclr	#0,1(a0)
		bset	#6,$2B(a0)
		beq.s	loc_2E9D4
		addq.b	#2,$26(a0)
		move.w	#$FF00,($FFFFF75A).w
loc_2E9D4:
		move.w	($FFFFF750).w,8(a0)
		bsr	loc_2E954
loc_2E9DE:	
		bsr	loc_2ECA6
		lea	(Mz_Boss_Animate_Data),a1 
		bsr	loc_29BA4
		bsr	loc_2EC8C
		bra	loc_2F468
loc_2E9F4:
		bsr	loc_29B7E
		cmp.w	#$470,($FFFFF754).w
		bcc.s	loc_2EA06
		move.w	#0,($FFFFF75A).w
loc_2EA06:
		btst	#7,$2B(a0)
		bne.s	loc_2EA1E
		cmp.w	#$2B50,($FFFFF750).w
		bcc.s	loc_2EA2C
		move.w	#0,($FFFFF758).w
		bra.s	loc_2EA2C
loc_2EA1E:
		cmp.w	#$2B50,($FFFFF750).w
		bcs.s	loc_2EA2C
		move.w	#0,($FFFFF758).w
loc_2EA2C:
		move.w	($FFFFF758).w,d0
		or.w	($FFFFF75A).w,d0
		bne.s	loc_2EA3A
		addq.b	#2,$26(a0)
loc_2EA3A:
		bra.s	loc_2E9D4
loc_2EA3C:
		cmp.b	#$68,$33(a0)
		bcc.s	loc_2EA4E
		addq.b	#1,$33(a0)
		addq.b	#1,$39(a0)
		bra.s	loc_2EA58
loc_2EA4E:
		subq.b	#1,$39(a0)
		bne.s	loc_2EA58
		addq.b	#2,$26(a0)
loc_2EA58:
		bra	loc_2E9D4
loc_2EA5C:
		cmp.b	#$27,$33(a0)
		bcs.s	loc_2EA6A
		subq.b	#1,$33(a0)
		bra.s	loc_2EA88
loc_2EA6A:
		addq.b	#1,$39(a0)
		cmp.b	#$27,$39(a0)
		bcs.s	loc_2EA88
		move.w	#$100,($FFFFF75A).w
		move.b	#0,$26(a0)
		bclr	#6,$2B(a0)
loc_2EA88:
		bra	loc_2E9D4
loc_2EA8C:
		tst.b	$39(a0)
		beq.s	loc_2EA98
		subq.b	#1,$39(a0)
		bra.s	loc_2EA9E
loc_2EA98:
		move.b	#$FF,$3A(a0)
loc_2EA9E:
		cmp.b	#$27,$33(a0)
		bcs.s	loc_2EAAA
		subq.b	#1,$33(a0)
loc_2EAAA:
		bsr	loc_29B7E
		cmp.w	#$420,($FFFFF754).w
		bcc.s	loc_2EABC
		move.w	#0,($FFFFF75A).w
loc_2EABC:
		tst.b	$2C(a0)
		bne.s	loc_2EAD2
		tst.b	$3A(a0)
		beq.s	loc_2EACE
		move.b	#$80,$3A(a0)
loc_2EACE:
		addq.b	#2,$26(a0)
loc_2EAD2:
		bra	loc_2E9D4
loc_2EAD6:
		tst.b	$3E(a0)
		beq.s	loc_2EB04
		tst.b	$3A(a0)
		bne.s	loc_2EB42
		cmp.b	#$27,$39(a0)
		bcc.s	loc_2EAF0
		addq.b	#1,$39(a0)
		bra.s	loc_2EB42
loc_2EAF0:
		move.w	#$100,($FFFFF75A).w
		move.b	#0,$26(a0)
		bclr	#6,$2B(a0)
		bra.s	loc_2EB42
loc_2EB04:
		move.w	#$FE80,($FFFFF75A).w
		move.w	#$FF00,($FFFFF758).w
		bclr	#0,1(a0)
		btst	#7,$2B(a0)
		beq.s	loc_2EB2A
		move.w	#$100,($FFFFF758).w
		bset	#0,1(a0)
loc_2EB2A:
		move.b	#$E,$26(a0)
		move.b	#0,$2E(a0)
		bclr	#6,$2B(a0)
		move.b	#0,$2F(a0)
loc_2EB42:
		bra	loc_2E9D4
loc_2EB46:
		tst.b	$2F(a0)
		beq.s	loc_2EB54
		subq.b	#1,$2F(a0)
		bra	loc_2E9DE
loc_2EB54:
		moveq	#0,d0
		move.b	$2E(a0),d0
		move.w	loc_2EB62(pc,d0),d1
		jmp	loc_2EB62(pc,d1)
loc_2EB62:
		dc.w	loc_2EB68-loc_2EB62
		dc.w	loc_2EBD0-loc_2EB62
		dc.w	loc_2EC1C-loc_2EB62
loc_2EB68:
		bsr	loc_29B7E
		cmp.w	#$420,($FFFFF754).w
		bcc.s	loc_2EB7A
		move.w	#0,($FFFFF75A).w
loc_2EB7A:
		btst	#7,$2B(a0)
		bne.s	loc_2EBA8
		cmp.w	#$2AF0,($FFFFF750).w
		bcc.s	loc_2EBCC
		addq.b	#2,$2E(a0)
		move.w	#$180,($FFFFF75A).w
		move.b	#3,$2D(a0)
		move.w	#$1E,($FFFFF75C).w
		bset	#0,1(a0)
		bra.s	loc_2EBCC
loc_2EBA8:
		cmp.w	#$2BB0,($FFFFF750).w
		bcs.s	loc_2EBCC
		addq.b	#2,$2E(a0)
		move.w	#$180,($FFFFF75A).w
		move.b	#3,$2D(a0)
		move.w	#$1E,($FFFFF75C).w
		bclr	#0,1(a0)
loc_2EBCC:
		bra	loc_2E9D4
loc_2EBD0:
		bsr	loc_29B7E
		cmp.w	#$4A0,($FFFFF754).w
		bcs.s	loc_2EBEE
		move.w	#$FE80,($FFFFF75A).w
		addq.b	#2,$2E(a0)
		bchg	#7,$2B(a0)
		bra.s	loc_2EC14
loc_2EBEE:
		btst	#7,$2B(a0)
		bne.s	loc_2EC06
		cmp.w	#$2AD0,($FFFFF750).w
		bcc.s	loc_2EC14
		move.w	#0,($FFFFF758).w
		bra.s	loc_2EC14
loc_2EC06:
		cmp.w	#$2BD0,($FFFFF750).w
		bcs.s	loc_2EC14
		move.w	#0,($FFFFF758).w
loc_2EC14:
		bsr	loc_2EC58
		bra	loc_2E9D4
loc_2EC1C:
		bsr	loc_29B7E
		cmp.w	#$470,($FFFFF754).w
		bcc.s	loc_2EC3C
		move.w	#$100,($FFFFF758).w
		btst	#7,$2B(a0)
		bne.s	loc_2EC3C
		move.w	#$FF00,($FFFFF758).w
loc_2EC3C:
		cmp.w	#$420,($FFFFF754).w
		bcc.s	loc_2EC50
		move.w	#0,($FFFFF75A).w
		move.b	#0,$2E(a0)
loc_2EC50:
		bsr	loc_2EC58
		bra	loc_2E9D4
loc_2EC58:
		sub.w	#1,($FFFFF75C).w
		bne.s	loc_2EC8A
		tst.b	$2D(a0)
		beq.s	loc_2EC8A
		subq.b	#1,$2D(a0)
		bsr	loc_2F474
		bne.s	loc_2EC8A
		move.b	#$54,(a1)
		move.b	#4,$A(a1)
		move.l	a0,$34(a1)
		move.w	#$1E,($FFFFF75C).w
		move.b	#$10,$2F(a0)
loc_2EC8A:
		rts
loc_2EC8C:
		move.w	8(a0),d0
		move.w	$C(a0),d1
		move.w	d0,$10(a0)
		move.w	d1,$12(a0)
		move.w	d0,$16(a0)
		move.w	d1,$18(a0)
		rts
loc_2ECA6:
		bsr	loc_2EDFC
		cmp.b	#$3F,$14(a0)
		bne.s	loc_2ECEA
		st	$38(a0)
		lea	($FFFFF740).w,a1
		and.b	#$F0,2(a1)
		or.b	#5,2(a1)
		tst.b	$3E(a0)
		beq.s	loc_2ECE2
		move.b	#$A,$26(a0)
		move.w	#$FE80,($FFFFF75A).w
		subq.b	#1,$3E(a0)
		move.w	#0,($FFFFF758).w
loc_2ECE2:
		move.w	#0,($FFFFF758).w
		rts
loc_2ECEA:
		cmp.b	#4,($FFFFB024).w
		beq.s	loc_2ECFA
		cmp.b	#4,($FFFFB064).w
		bne.s	loc_2ED18
loc_2ECFA:
		lea	($FFFFF740).w,a1
		move.b	2(a1),d0
		and.b	#$F,d0
		cmp.b	#4,d0
		beq.s	loc_2ED18
		and.b	#$F0,2(a1)
		or.b	#4,2(a1)
loc_2ED18:
		rts
loc_2ED1A:
		subq.w	#1,($FFFFF75C).w
		cmp.w	#$3C,($FFFFF75C).w
		bcs.s	loc_2ED5E
		bmi.s	loc_2ED38
		bsr	Boss_Defeated	
		lea	($FFFFF740).w,a1
		move.b	#7,2(a1)
		bra.s	loc_2ED5E
loc_2ED38:
		bset	#0,1(a0)
		clr.w	($FFFFF758).w
		clr.w	($FFFFF75A).w
		addq.b	#2,$26(a0)
		move.w	#$FFEE,($FFFFF75C).w
		lea	($FFFFF740).w,a1
		move.b	#3,2(a1)
		bsr	loc_2F492
loc_2ED5E:
		move.w	($FFFFF754).w,$C(a0)
		move.w	($FFFFF750).w,8(a0)
		lea	(Mz_Boss_Animate_Data),a1 
		bsr	loc_29BA4
		bsr	loc_2EC8C
		bra	loc_2F468
loc_2ED7C:
		move.w	#$400,($FFFFF758).w
		move.w	#$FFC0,($FFFFF75A).w
		cmp.w	#$2BD0,($FFFFEECA).w
		bcc.s	loc_2ED96
		addq.w	#2,($FFFFEECA).w
		bra.s	loc_2ED9C
loc_2ED96:
		tst.b	1(a0)
		bpl.s	loc_2EDD2
loc_2ED9C:
		tst.b	($FFFFF7A7).w
		bne.s	loc_2EDAC
		move.b	#1,($FFFFF7A7).w
		bsr	loc_2F498
loc_2EDAC:
		bsr	loc_29B7E
		bsr	loc_2EDDE
		move.w	($FFFFF754).w,$C(a0)
		move.w	($FFFFF750).w,8(a0)
		lea	(Mz_Boss_Animate_Data),a1 
		bsr	loc_29BA4
		bsr	loc_2EC8C
		bra	loc_2F468
loc_2EDD2:
		move.w	#$2BD0,($FFFFEECA).w
		jmp	deleteObject	
loc_2EDDE:
		move.b	$1A(a0),d0
		jsr	CalcSine	
		asr.w	#6,d0
		add.w	($FFFFF754).w,d0
		move.w	d0,$C(a0)
		move.w	($FFFFF750).w,8(a0)
		addq.b	#2,$1A(a0)
loc_2EDFC:
		cmp.b	#$10,$26(a0)
		bcc.s	loc_2EE42
		tst.b	$32(a0)
		beq.s	loc_2EE44
		tst.b	$20(a0)
		bne.s	loc_2EE42
		tst.b	$14(a0)
		bne.s	loc_2EE26
		move.b	#$40,$14(a0)
		move.w	#$AC,d0
		jsr	Play_Sfx	
loc_2EE26:
		lea	($FFFFFB22).w,a1
		moveq	#0,d0
		tst.w	(a1)
		bne.s	loc_2EE34
		move.w	#$EEE,d0
loc_2EE34:
		move.w	d0,(a1)
		subq.b	#1,$14(a0)
		bne.s	loc_2EE42
		move.b	#$F,$20(a0)
loc_2EE42:
		rts
loc_2EE44:
		moveq	#$64,d0
		bsr	loc_2F48C
		move.w	#$EF,($FFFFF75C).w
		move.b	#$10,$26(a0)
		moveq	#$40,d0
		bsr	loc_2F486
		rts	
;===============================================================================
; Object 0x54 - Metropolis Boss
; [ End ]
;===============================================================================