;===============================================================================
; Object 0x55 - Oil Ocean Boss
; [ Begin ]
;===============================================================================	
loc_2F4AC:
		moveq	#0,d0
		move.b	$A(a0),d0
		move.w	loc_2F4BA(pc,d0),d1
		jmp	loc_2F4BA(pc,d1)	
loc_2F4BA:	
		dc.w	loc_2F4C4-loc_2F4BA
		dc.w	loc_2F502-loc_2F4BA
		dc.w	loc_2F722-loc_2F4BA
		dc.w	loc_2F96E-loc_2F4BA
		dc.w	loc_2FA88-loc_2F4BA
loc_2F4C4:
		move.l	#OOz_Boss_Mappings,4(a0) 
		move.w	#$38C,2(a0)
		or.b	#4,1(a0)
		move.b	#3,$18(a0)
		bset	#6,1(a0)
		move.b	#0,$F(a0)
		addq.b	#2,$A(a0)
		move.b	#$F,$20(a0)
		move.b	#8,$32(a0)
		move.b	#$40,$E(a0)
		rts
loc_2F502:
		moveq	#0,d0
		move.b	$26(a0),d0
		move.w	loc_2F510(pc,d0),d1
		jmp	loc_2F510(pc,d1)	
loc_2F510:
		dc.w	loc_2F51A-loc_2F510
		dc.w	loc_2F594-loc_2F510
		dc.w	loc_2F5D6-loc_2F510
		dc.w	loc_2F620-loc_2F510
		dc.w	loc_2F6C2-loc_2F510
loc_2F51A:
		move.w	#$2940,($FFFFF750).w
		bclr	#0,1(a0)
		move.w	($FFFFB008).w,d1
		cmp.w	#$293A,d1
		bcc.s	loc_2F536
		bchg	#0,1(a0)
loc_2F536:
		move.w	#$2D0,$C(a0)
		move.w	#$2D0,($FFFFF754).w
		move.b	#8,$B(a0)
		move.b	#1,$F(a0)
		addq.b	#2,$26(a0)
		move.w	#$FF80,($FFFFF75A).w
		move.b	#$F,$20(a0)
		move.w	8(a0),$10(a0)
		move.w	$C(a0),$12(a0)
		clr.b	$1A(a0)
		clr.b	$2A(a0)
		move.b	#8,$15(a0)
		lea	($FFFFF740).w,a2
		move.b	#5,(a2)+
		move.b	#0,(a2)+
		move.b	#1,(a2)+
		move.b	#0,(a2)
		move.b	#0,($FFFFF73F).w
		rts
loc_2F594:
		bsr	loc_29B7E
		move.w	($FFFFF750).w,8(a0)
		bsr	loc_2F606
		cmp.w	#$290,($FFFFF754).w
		bcc	loc_2F67A
		move.w	#$290,($FFFFF754).w
		addq.b	#2,$26(a0)
		move.w	#$A8,($FFFFF75C).w
		btst	#7,$2A(a0)
		bne	loc_2F67A
		lea	($FFFFF740).w,a2
		move.b	#$10,(a2)+
		move.b	#0,(a2)
		bra	loc_2F67A
loc_2F5D6:
		btst	#7,$2A(a0)
		bne.s	loc_2F5F8
		bsr	loc_2F606
		sub.w	#1,($FFFFF75C).w
		bpl	loc_2F67A
		lea	($FFFFF740).w,a2
		move.b	#5,(a2)+
		move.b	#0,(a2)
loc_2F5F8:
		addq.b	#2,$26(a0)
		move.w	#$FFC0,($FFFFF75A).w
		bra	loc_2F67A
loc_2F606:
		move.b	$1A(a0),d0
		jsr	CalcSine	
		asr.w	#7,d1
		add.w	($FFFFF754).w,d1
		move.w	d1,$C(a0)
		addq.b	#4,$1A(a0)
		rts
loc_2F620:
		bsr	loc_29B7E
		move.w	($FFFFF754).w,$C(a0)
		move.w	($FFFFF750).w,8(a0)
		btst	#6,$2A(a0)
		bne.s	loc_2F658
		cmp.w	#$28C,($FFFFF754).w
		bcc	loc_2F67A
		move.w	#$28C,($FFFFF754).w
		move.w	#$80,($FFFFF75A).w
		or.b	#$40,$2A(a0)
		bra	loc_2F67A
loc_2F658:
		cmp.w	#$2D0,($FFFFF754).w
		bcs.s	loc_2F67A
		move.w	#$2D0,($FFFFF754).w
		clr.b	$26(a0)
		addq.b	#2,$A(a0)
		btst	#7,$2A(a0)
		beq.s	loc_2F67A
		addq.b	#2,$A(a0)
loc_2F67A:
		bsr	loc_2F690
		lea	(OOz_Boss_Animate_Data),a1 
		bsr	loc_29BA4
		bsr	loc_2F6B0
		bra	loc_2FDB4
loc_2F690:
		bsr	loc_29B1C
		cmp.b	#$1F,$14(a0)
		bne.s	loc_2F6AE
		lea	($FFFFF740).w,a1
		and.b	#$F0,(a1)
		or.b	#3,(a1)
		or.b	#$80,$2A(a0)
loc_2F6AE:
		rts
loc_2F6B0:
		move.w	8(a0),d0
		move.w	$C(a0),d1
		move.w	d0,$10(a0)
		move.w	d1,$12(a0)
		rts
loc_2F6C2:
		subq.w	#1,($FFFFF75C).w
		bmi.s	loc_2F6E2
		cmp.w	#$1E,($FFFFF75C).w
		bcc.s	loc_2F6DA
		move.b	#$B,$B(a0)
		bra	loc_2FDB4
loc_2F6DA:
		bsr	Boss_Defeated	
		bra	loc_2FDB4
loc_2F6E2:
		tst.b	($FFFFF7A7).w
		bne.s	loc_2F6F6
		bsr	loc_2FDF0
		bsr	loc_2FDF6
		move.b	#1,($FFFFF7A7).w
loc_2F6F6:
		cmp.w	#$2A00,($FFFFEECA).w
		bcc.s	loc_2F704
		addq.w	#2,($FFFFEECA).w
		bra.s	loc_2F712
loc_2F704:
		move.w	#$2A00,($FFFFEECA).w
		cmp.w	#$2D0,$C(a0)
		bcc.s	loc_2F71E
loc_2F712:
		add.w	#1,$C(a0)
		bsr.s	loc_2F6B0
		bra	loc_2FDB4
loc_2F71E:
		bra	loc_2FDBA
loc_2F722:
		moveq	#0,d0
		move.b	$26(a0),d0
		move.w	loc_2F730(pc,d0),d1
		jmp	loc_2F730(pc,d1)
loc_2F730:
		dc.w	loc_2F73A-loc_2F730
		dc.w	loc_2F7AE-loc_2F730
		dc.w	loc_2F7DE-loc_2F730
		dc.w	loc_2F83C-loc_2F730
		dc.w	loc_2F8A0-loc_2F730
loc_2F73A:
		clr.w	($FFFFFB22).w
		move.w	#$2940,($FFFFF750).w
		bclr	#0,1(a0)
		move.w	($FFFFB008).w,d1
		cmp.w	#$293A,d1
		bcs.s	loc_2F75A
		bchg	#0,1(a0)
loc_2F75A:
		move.w	#$2B0,($FFFFF754).w
		move.w	#$2B0,$C(a0)
		move.b	#2,$26(a0)
		move.b	#$8A,$20(a0)
		move.b	#5,$B(a0)
		moveq	#7,d0
		moveq	#7,d2
		moveq	#0,d4
		move.w	($FFFFF754).w,d5
loc_2F782:	
		add.w	#$F,d5
		move.b	d0,$15(a0,d4)
		move.w	d5,$12(a0,d4)
		addq.w	#6,d4
		dbra	d2,loc_2F782
		move.b	#8,$F(a0)
		move.w	#$FF80,($FFFFF75A).w
		move.b	#0,$3E(a0)
		move.b	#1,($FFFFF73F).w
		rts
loc_2F7AE:
		bsr	loc_29B7E
		cmp.w	#$240,($FFFFF754).w
		bcc	loc_2F8D2
		move.w	#$240,($FFFFF754).w
		move.w	#0,($FFFFF75A).w
		add.b	#2,$26(a0)
		move.w	#$80,($FFFFF75C).w
		move.b	#3,$38(a0)
		bra	loc_2F8D2
loc_2F7DE:
		subq.b	#1,$2C(a0)
		bne.s	loc_2F7EA
		move.b	#5,$B(a0)
loc_2F7EA:
		sub.w	#1,($FFFFF75C).w
		bne	loc_2F8D2
		sub.b	#1,$38(a0)
		bmi.s	loc_2F824
		bsr	loc_2FDDE
loc_2F800:	
		addq.b	#1,d0
		and.w	#3,d0
		btst	d0,$3E(a0)
		bne.s	loc_2F800
		bset	d0,$3E(a0)
		add.w	d0,d0
		move.w	loc_2F834(pc,d0),($FFFFF75C).w
		addq.b	#2,$26(a0)
		bsr	loc_2F8DE
		bra	loc_2F8D2
loc_2F824:
		move.w	#$80,($FFFFF75A).w
		move.b	#8,$26(a0)
		bra	loc_2F8D2 
loc_2F834:
		dc.w	$238,$230,$240,$25F
loc_2F83C:
		bsr	loc_29B7E
		move.w	($FFFFF75C).w,d0
		tst.w	($FFFFF75A).w
		bmi.s	loc_2F854
		cmp.w	($FFFFF754).w,d0
		bcs.s	loc_2F85A
		bra	loc_2F8D2
loc_2F854:
		cmp.w	($FFFFF754).w,d0
		bcs.s	loc_2F8D2
loc_2F85A:
		move.w	#0,($FFFFF75A).w
		move.b	#8,$2C(a0)
		move.b	#6,$B(a0)
		bsr	loc_2FDC0
		bne	loc_2F8D2
		move.b	#$55,(a1)
		move.b	#8,$A(a1)
		move.l	a0,$34(a1)
		move.b	#$EA,d0
		bsr	loc_2FDCC
		move.b	#4,$26(a0)
		move.w	#$28,($FFFFF75C).w
		move.w	#$FF80,($FFFFF75A).w
		bra	loc_2F8D2
loc_2F8A0:
		subq.b	#1,$2C(a0)
		bne.s	loc_2F8AC
		move.b	#5,$B(a0)
loc_2F8AC:
		bsr	loc_29B7E
		cmp.w	#$2B0,($FFFFF754).w
		bcs.s	loc_2F8D2
		move.w	#$2B0,($FFFFF754).w
		move.w	#0,($FFFFF75A).w
		move.b	#0,$26(a0)
		move.b	#2,$A(a0)
		rts
loc_2F8D2:
		bsr	loc_2F8F8
		bsr	loc_2F91E
		bra	loc_2FDB4
loc_2F8DE:
		move.w	($FFFFF75C).w,d0
		sub.w	($FFFFF754).w,d0
		bpl.s	loc_2F8F0
		move.w	#$FF80,($FFFFF75A).w
		rts
loc_2F8F0:
		move.w	#$80,($FFFFF75A).w
		rts
loc_2F8F8:
		move.w	($FFFFB008).w,d0
		sub.w	8(a0),d0
		blt.s	loc_2F910
		sub.w	#8,d0
		blt.s	loc_2F90E
		bset	#0,1(a0)
loc_2F90E:
		rts
loc_2F910:
		add.w	#8,d0
		bgt.s	loc_2F90E
		bclr	#0,1(a0)
		rts
loc_2F91E:
		move.w	($FFFFF750).w,d5
		move.w	($FFFFF754).w,d6
		move.b	$1A(a0),d3
		move.b	d3,d0
		bsr	loc_2F95E
		move.w	d1,8(a0)
		move.w	d0,$C(a0)
		add.b	#2,$1A(a0)
		moveq	#7,d2
		moveq	#0,d4
loc_2F942:	
		add.w	#$F,d6
		sub.b	#$10,d3
		bsr	loc_2F95E
		move.w	d1,$10(a0,d4)
		move.w	d0,$12(a0,d4)
		addq.w	#6,d4
		dbra	d2,loc_2F942
		rts
loc_2F95E:
		move.b	d3,d0
		bsr	loc_2FDEA
		asr.w	#4,d1
		add.w	d5,d1
		asr.w	#6,d0
		add.w	d6,d0
		rts
loc_2F96E:
		moveq	#0,d0
		move.b	$26(a0),d0
		move.w	loc_2F97C(pc,d0),d1
		jmp	loc_2F97C(pc,d1)
loc_2F97C:
		dc.w	loc_2F980-loc_2F97C
		dc.w	loc_2F9E4-loc_2F97C
loc_2F980:
		clr.w	($FFFFFB22).w
		move.w	#$28C0,($FFFFF750).w
		bclr	#0,1(a0)
		move.w	($FFFFB008).w,d1
		cmp.w	#$293A,d1
		bcs.s	loc_2F9A6
		move.w	#$29C0,($FFFFF750).w
		bset	#0,1(a0)
loc_2F9A6:
		move.w	#$2A0,($FFFFF754).w
		move.b	#2,$B(a0)
		move.b	#$8A,$20(a0)
		addq.b	#2,$26(a0)
		move.b	#$80,$E(a0)
		clr.b	$1A(a0)
		moveq	#7,d0
		moveq	#7,d1
		moveq	#0,d2
loc_2F9CC:	
		move.b	d1,$15(a0,d2)
		addq.w	#6,d2
		dbra	d0,loc_2F9CC
		move.b	#8,$F(a0)
		move.b	#2,($FFFFF73F).w
		rts
loc_2F9E4:
		bsr	loc_2FA06
		cmp.b	#$FE,$1A(a0)
		bcs.s	loc_2F9FE
		move.b	#0,$26(a0)
		move.b	#4,$A(a0)
		rts
loc_2F9FE:
		bsr	loc_2FA64
		bra	loc_2FDB4
loc_2FA06:
		move.b	$1A(a0),d0
		add.b	#$40,d0
		move.b	d0,d3
		bsr	loc_2FA3E
		move.w	d1,8(a0)
		move.w	d0,$C(a0)
		add.b	#1,$1A(a0)
		moveq	#7,d2
		moveq	#0,d4
loc_2FA26:	
		sub.b	#6,d3
		bsr	loc_2FA3E
		move.w	d1,$10(a0,d4)
		move.w	d0,$12(a0,d4)
		addq.w	#6,d4
		dbra	d2,loc_2FA26
		rts
loc_2FA3E:
		move.b	d3,d0
		bsr	loc_2FDEA
		muls.w	#$68,d1
		asr.l	#8,d1
		btst	#0,1(a0)
		bne.s	loc_2FA54
		neg.w	d1
loc_2FA54:
		add.w	($FFFFF750).w,d1
		muls.w	#$68,d0
		asr.l	#8,d0
		add.w	($FFFFF754).w,d0
		rts
loc_2FA64:
		move.b	$1A(a0),d0
		moveq	#$15,d1
		cmp.b	#$52,d0
		bcs.s	loc_2FA82
		moveq	#3,d1
		cmp.b	#$6B,d0
		bcs.s	loc_2FA82
		moveq	#2,d1
		cmp.b	#$92,d0
		bcs.s	loc_2FA82
		moveq	#4,d1
loc_2FA82:
		move.b	d1,$B(a0)
		rts
loc_2FA88:
		moveq	#0,d0
		move.b	$25(a0),d0
		move.w	loc_2FA96(pc,d0),d0
		jmp	loc_2FA96(pc,d0)
loc_2FA96:
		dc.w	loc_2FA9E-loc_2FA96
		dc.w	loc_2FAF6-loc_2FA96
		dc.w	loc_2FBCA-loc_2FA96
		dc.w	loc_2FC26-loc_2FA96
loc_2FA9E:
		addq.b	#2,$25(a0)
		move.l	#OOz_Boss_Mappings,4(a0) 
		move.w	#$38C,2(a0)
		or.b	#4,1(a0)
		move.b	#4,$18(a0)
		move.l	$34(a0),a1
		move.w	8(a1),8(a0)
		move.w	$C(a1),$C(a0)
		move.b	#$C,$1A(a0)
		move.w	#$FFE0,d0
		move.w	#$FC00,$10(a0)
		btst	#0,1(a1)
		beq.s	loc_2FAEA
		neg.w	d0
		neg.w	$10(a0)
loc_2FAEA:
		add.w	d0,8(a0)
		move.b	#$AF,$20(a0)
		rts
loc_2FAF6:
		bsr	loc_2FB16
		bsr	loc_2FDFC
		cmp.w	#$2870,8(a0)
		bcs	loc_2FDBA
		cmp.w	#$2A10,8(a0)
		bcc	loc_2FDBA
		bra	loc_2FDB4
loc_2FB16:
		cmp.w	#$250,$C(a0)
		bcs.s	loc_2FB3E
		tst.w	$10(a0)
		bmi	loc_2FB40
		move.w	8(a0),d0
		cmp.w	#$2980,d0
		bcc.s	loc_2FB3E
		cmp.w	#$297C,d0
		bcs	loc_2FB3E
		move.w	#$2988,d1
		bra.s	loc_2FB58
loc_2FB3E:
		rts
loc_2FB40:
		move.w	8(a0),d0
		cmp.w	#$2900,d0
		bcs.s	loc_2FB56
		cmp.w	#$2904,d0
		bcc.s	loc_2FB56
		move.w	#$28F8,d1
		bra.s	loc_2FB58
loc_2FB56:
		rts
loc_2FB58:
		bsr	loc_2FDC0
		bne.s	loc_2FBC8
		move.b	#$55,(a1)
		move.b	#8,$A(a1)
		move.b	#4,$25(a1)
		move.b	#$8B,$20(a1)
		move.b	#2,$1C(a1)
		move.b	#$D,$1A(a1)
		move.w	#0,$12(a1)
		move.l	#OOz_Boss_Mappings,4(a1) 
		move.w	#$38C,2(a1)
		bsr	loc_2FDE4
		or.b	#4,1(a1)
		move.b	#2,$18(a1)
		move.w	#5,$32(a1)
		move.b	#7,$36(a1)
		move.w	$10(a0),$10(a1)
		move.w	d1,8(a1)
		move.w	#$250,$C(a1)
		move.b	#$EB,d0
		bsr	loc_2FDCC
loc_2FBC8:
		rts
loc_2FBCA:
		subq.w	#1,$32(a0)
		bpl.s	loc_2FC18
		move.w	#$C7,$32(a0)
		subq.b	#1,$36(a0)
		bmi.s	loc_2FC18
		bsr	loc_2FDD2
		bne.s	loc_2FC18
		moveq	#0,d0
		move.w	#$F,d1
loc_2FBE8:	
		move.l	0(a0,d0),0(a1,d0)
		addq.w	#4,d0
		dbra	d1,loc_2FBE8
		move.w	#5,$32(a1)
		move.w	#$200,$1C(a1)
		move.w	#$10,d0
		tst.w	$10(a1)
		bpl.s	loc_2FC0C
		neg.w	d0
loc_2FC0C:
		add.w	d0,8(a1)
		move.b	#$EB,d0
		bsr	loc_2FDCC
loc_2FC18:
		lea	(OOz_Boss_Animate_Data),a1 
		bsr	loc_2FDD8
		bra	loc_2FDC6
loc_2FC26:
		bra	loc_2FDBA	
;-------------------------------------------------------------------------------
OOz_Boss_Animate_Data: 
		dc.w	loc_2FC36-OOz_Boss_Animate_Data
		dc.w	loc_2FC50-OOz_Boss_Animate_Data
		dc.w	loc_2FC53-OOz_Boss_Animate_Data
		dc.w	loc_2FC65-OOz_Boss_Animate_Data
		dc.w	loc_2FC68-OOz_Boss_Animate_Data
		dc.w	loc_2FC6B-OOz_Boss_Animate_Data
loc_2FC36:
		dc.b	9,8,8,8,8,9,9,9,9,8,8,8,8,9,9,$9
		dc.b	9,8,8,8,8,9,9,9,9,$FF
loc_2FC50:
		dc.b	$F,1,$FF
loc_2FC53:
		dc.b	1,$D,$11,$E,$12,$F,$13,$10,$14,$14,$10,$13,$F,$12,$E,$11
		dc.b	$D,$FA
loc_2FC65:
		dc.b	$F,$A,$FF
loc_2FC68:
		dc.b	$F,$B,$FF
loc_2FC6B:
		dc.b	$F,8,$FF	
;-------------------------------------------------------------------------------
OOz_Boss_Mappings: 
		dc.w	OOz_Boss_Mappings-OOz_Boss_Mappings
		dc.w	loc_2FC9A-OOz_Boss_Mappings
		dc.w	loc_2FCD4-OOz_Boss_Mappings
		dc.w	loc_2FCE6-OOz_Boss_Mappings
		dc.w	loc_2FD00-OOz_Boss_Mappings
		dc.w	loc_2FD2C-OOz_Boss_Mappings
		dc.w	loc_2FD3E-OOz_Boss_Mappings
		dc.w	loc_2FD50-OOz_Boss_Mappings
		dc.w	loc_2FD5A-OOz_Boss_Mappings
		dc.w	loc_2FD64-OOz_Boss_Mappings
		dc.w	loc_2FD6E-OOz_Boss_Mappings
		dc.w	loc_2FD78-OOz_Boss_Mappings
		dc.w	loc_2FD82-OOz_Boss_Mappings
		dc.w	loc_2FD8C-OOz_Boss_Mappings
		dc.w	loc_2FD96-OOz_Boss_Mappings
		dc.w	loc_2FDA0-OOz_Boss_Mappings
		dc.w	loc_2FDAA-OOz_Boss_Mappings
		dc.w	loc_2FD8C-OOz_Boss_Mappings
		dc.w	loc_2FD96-OOz_Boss_Mappings
		dc.w	loc_2FDA0-OOz_Boss_Mappings
		dc.w	loc_2FDAA-OOz_Boss_Mappings
		dc.w	loc_2FD1A-OOz_Boss_Mappings
loc_2FC9A:
		dc.w	$7
		dc.l	$E00D2001,$20000000,$E8002000,$2000FFF8
		dc.l	$F00D2009,$2004FFE8,$F00D2011,$20080008
		dc.l	$F2019,$200CFFD0,$F2029,$2014FFF0
		dc.l	$F2039,$201C0010
loc_2FCD4:
		dc.w	$2
		dc.l	$F80D2049,$2024FFDE,$F8052079,$203CFFF8
loc_2FCE6:
		dc.w	$3
		dc.l	$E2092051,$2028FFE2,$F2092057,$202BFFEA
		dc.l	$F8052079,$203CFFF8
loc_2FD00:
		dc.w	$3
		dc.l	$6062063,$2031FFE2,$FE06205D,$202EFFF2
		dc.l	$F8052079,$203CFFF8
loc_2FD1A:
		dc.w	$2
		dc.l	$DE0720AD,$2056FFF8,$F8052079,$203CFFF8
loc_2FD2C:
		dc.w	$2
		dc.l	$F80D2069,$2034FFE0,$F8052079,$203CFFF8
loc_2FD3E:
		dc.w	$2
		dc.l	$F80D2071,$2038FFE0,$F8052079,$203CFFF8
loc_2FD50:
		dc.w	$1
		dc.l	$F8052079,$203CFFF8
loc_2FD5A:
		dc.w	$1
		dc.l	$F009007D,$3EFFF4
loc_2FD64:
		dc.w	$1
		dc.l	$F0090083,$41FFF4
loc_2FD6E:
		dc.w	$1
		dc.l	$F0090089,$44FFF4
loc_2FD78:
		dc.w	$1
		dc.l	$F009008F,$47FFF4
loc_2FD82:
		dc.w	$1
		dc.l	$FC0C00A9,$54FFF0
loc_2FD8C:
		dc.w	$1
		dc.l	$8040095,$4AFFF8
loc_2FD96:
		dc.w	$1
		dc.l	$50097,$4BFFF8
loc_2FDA0:
		dc.w	$1
		dc.l	$F806009B,$4DFFF8
loc_2FDAA:
		dc.w	$1
		dc.l	$F00700A1,$50FFF8	
;===============================================================================
; Object 0x55 - Oil Ocean Boss
; [ End ]
;===============================================================================