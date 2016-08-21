;===============================================================================
; Object 0xB2 - Tornado - Sky Fortress / Sky Chase
; [ Begin ]
;===============================================================================	
loc_3689E:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_368AC(pc,d0),d1
		jmp	loc_368AC(pc,d1)	
loc_368AC:
		dc.w	loc_368BC-loc_368AC
		dc.w	loc_368D2-loc_368AC
		dc.w	loc_3697E-loc_368AC
		dc.w	loc_36A28-loc_368AC
		dc.w	loc_36D02-loc_368AC
		dc.w	loc_36D96-loc_368AC
		dc.w	loc_36DB4-loc_368AC
		dc.w	loc_36DCC-loc_368AC
loc_368BC:
		bsr	EnemySettings	
		moveq	#0,d0
		move.b	$28(a0),d0
		sub.b	#$4E,d0
		move.b	d0,$24(a0)
		bra	loc_3A892
loc_368D2:
		bsr	loc_36FE2
		tst.w	($FFFFFE08).w
		bne	loc_36962
		lea	($FFFFB000).w,a1
		move.w	2(a1),d0
		and.w	#$8000,d0
		move.w	2(a0),d1
		and.w	#$7FFF,d1
		or.w	d0,d1
		move.w	d1,2(a0)
		move.w	8(a0),-(sp)
		bsr	loc_36E34
		move.b	$22(a0),$2E(a0)
		move.w	#$1B,d1
		move.w	#8,d2
		move.w	#9,d3
		move.w	(sp)+,d4
		bsr	loc_3A8F8
		bsr	loc_36EC4
		move.b	$2E(a0),d0
		move.b	$22(a0),d1
		and.b	#8,d0
		and.b	#8,d1
		eor.b	d0,d1
		move.b	d1,$2E(a0)
		move.w	($FFFFEE00).w,d0
		move.w	d0,($FFFFEEC8).w
		cmp.w	#$1400,d0
		bcs.s	loc_3695A
		lea	($FFFFB000).w,a1
		cmp.w	#$1568,8(a1)
		bcc.s	loc_36970
		st	($FFFFF7CC).w
		move.w	#$808,($FFFFF602).w
		bra	loc_3695E
loc_3695A:
		sub.w	#$40,d0
loc_3695E:
		move.w	d0,($FFFFEECA).w
loc_36962:
		lea	(loc_37048),a1
		bsr	loc_3A8BC
		bra	loc_3A892
loc_36970:
		move.w	#1,($FFFFFE02).w
		move.w	#$600,($FFFFFE10).w
		bra.s	loc_36962
loc_3697E:
		bsr	loc_36FE2
		moveq	#0,d0
		move.b	$25(a0),d0
		move.w	loc_3699E(pc,d0),d1
		jsr	loc_3699E(pc,d1)
		lea	(loc_37048),a1
		bsr	loc_3A8BC
		bra	loc_32B00
loc_3699E:
		dc.w	loc_369A6-loc_3699E
		dc.w	loc_369B8-loc_3699E
		dc.w	loc_369FE-loc_3699E
		dc.w	loc_36A22-loc_3699E
loc_369A6:
		addq.b	#2,$25(a0)
		move.w	#$C0,$32(a0)
		move.w	#$100,$10(a0)
		rts
loc_369B8:
		subq.w	#1,$32(a0)
		bmi.s	loc_369E0
		move.w	8(a0),-(sp)
		bsr	loc_3A904
		bsr	loc_329AC
		move.w	#$1B,d1
		move.w	#8,d2
		move.w	#9,d3
		move.w	(sp)+,d4
		bsr	loc_3A8F8
		bra	loc_36F76
loc_369E0:
		addq.b	#2,$25(a0)
		move.w	#$60,$2A(a0)
		move.w	#1,$32(a0)
		move.w	#$100,$10(a0)
		move.w	#$100,$12(a0)
		rts
loc_369FE:
		subq.w	#1,$2A(a0)
		bmi.s	loc_36A1A
loc_36A04:	
		bsr	loc_36E16
		subq.w	#1,$32(a0)
		bne	Null_Sub_01	
		move.w	#$E,$32(a0)
		bra	loc_36FBE
loc_36A1A:
		addq.b	#2,$25(a0)
		bra	loc_376D0
loc_36A22:
		bsr	loc_3A904
		bra.s	loc_36A04
loc_36A28:
		bsr	loc_36FE2
		moveq	#0,d0
		move.b	$25(a0),d0
		move.w	loc_36A44(pc,d0),d1
		jsr	loc_36A44(pc,d1)
		lea	(loc_37048),a1
		bra	loc_3A8BC
loc_36A44:
		dc.w	loc_36A56-loc_36A44
		dc.w	loc_36AE2-loc_36A44
		dc.w	loc_36B0C-loc_36A44
		dc.w	loc_36B32-loc_36A44
		dc.w	loc_36B5A-loc_36A44
		dc.w	loc_36BAC-loc_36A44
		dc.w	loc_36C08-loc_36A44
		dc.w	loc_36C1C-loc_36A44
		dc.w	loc_36C7E-loc_36A44
loc_36A56:
		lea	($FFFFB000).w,a1
		cmp.w	#$5EC,$C(a1)
		bcs.s	loc_36A72
		clr.w	($FFFFF602).w
		addq.w	#1,$2E(a0)
		cmp.w	#$40,$2E(a0)
		bcc.s	loc_36A74
loc_36A72:
		rts
loc_36A74:
		addq.b	#2,$25(a0)
		move.w	#$2E58,8(a0)
		move.w	#$66C,$C(a0)
		lea	($FFFFB000).w,a1
		bsr	loc_36CEE
		lea	(loc_37028),a2
		bsr	loc_32970
		move.w	#$3118,8(a1)
		move.w	#$3F0,$C(a1)
		lea	(loc_37024),a2
		bsr	loc_32970
		move.w	#$3070,8(a1)
		move.w	#$3B0,$C(a1)
		lea	(loc_37024),a2
		bsr	loc_32970
		move.w	#$3070,8(a1)
		move.w	#$430,$C(a1)
		lea	(loc_3702C),a2
		bsr	loc_32970
		clr.w	8(a1)
		clr.w	$C(a1)
		rts
loc_36AE2:
		lea	($FFFFB000).w,a1
		cmp.w	#$2E30,8(a1)
		bcc.s	loc_36AF6
		move.w	#$808,($FFFFF602).w
		rts
loc_36AF6:
		addq.b	#2,$25(a0)
		clr.w	($FFFFF602).w
		clr.w	$10(a1)
		clr.w	$12(a1)
		clr.w	$14(a1)
		rts
loc_36B0C:
		cmp.w	#$380,($FFFFEEE2).w
		bcc.s	loc_36B1C
		clr.w	($FFFFF602).w
		bra	loc_36CEE
loc_36B1C:
		addq.b	#2,$25(a0)
		move.w	#$100,$10(a0)
		move.w	#$FF00,$12(a0)
		clr.w	$2A(a0)
		rts
loc_36B32:
		bsr	loc_36CEE
		addq.w	#1,$2A(a0)
		cmp.w	#$30,$2A(a0)
		bne.s	loc_36B52
		addq.b	#2,$25(a0)
		move.w	#$4040,($FFFFF602).w
		move.w	#$10,$2E(a0)
loc_36B52:
		bsr	loc_36E16
		bra	loc_3A892
loc_36B5A:
		addq.w	#1,$2A(a0)
		subq.w	#1,$2E(a0)
		bmi.s	loc_36B6A
		move.w	#$4848,($FFFFF602).w
loc_36B6A:
		bsr	loc_36E16
		btst	#3,$22(a0)
		beq.s	loc_36BA8
		addq.b	#2,$25(a0)
		move.w	#$20,$2E(a0)
		lea	($FFFF80D2).w,a1
		move.l	#$501F0025,(a1)+
		lea	($FFFF81D2).w,a1
		move.l	#$25001F50,(a1)+
		lea	($FFFF8BD6).w,a1
		move.l	#$501F0025,(a1)+
		lea	($FFFF8CD6).w,a1
		move.l	#$25001F50,(a1)+
loc_36BA8:
		bra	loc_3A892
loc_36BAC:
		addq.w	#1,$2A(a0)
		cmp.w	#$100,$2A(a0)
		bcs.s	loc_36BC6
		addq.b	#2,$25(a0)
		move.w	$3A(a0),a1
		move.b	#2,$25(a1)
loc_36BC6:
		clr.w	($FFFFF602).w
		lea	($FFFFB000).w,a1
		move.w	8(a0),8(a1)
		clr.w	$10(a1)
		clr.w	$12(a1)
		clr.w	$14(a1)
		bclr	#1,$22(a1)
		bclr	#2,$22(a1)
		move.l	#$1000505,$1A(a1)
		move.w	#$100,$1E(a1)
		move.b	#$13,$16(a1)
		bsr	loc_36E16
		bra	loc_3A892
loc_36C08:
		clr.w	($FFFFF602).w
		bsr	loc_36CEE
		cmp.w	#$437,$2A(a0)
		bcs.s	loc_36C2A
		addq.b	#2,$25(a0)
loc_36C1C:
		cmp.w	#$447,$2A(a0)
		bcc.s	loc_36C2A
		move.w	#$4040,($FFFFF602).w
loc_36C2A:
		cmp.w	#$460,$2A(a0)
		bcs.s	loc_36C7E
		move.b	#6,($FFFFEEDF).w
		addq.b	#2,$25(a0)
		lea	(loc_37024),a2
		bsr	loc_32970
		move.w	#$3090,8(a1)
		move.w	#$3D0,$C(a1)
		lea	(loc_37024),a2
		bsr	loc_32970
		move.w	#$30C0,8(a1)
		move.w	#$3F0,$C(a1)
		lea	(loc_37024),a2
		bsr	loc_32970
		move.w	#$3090,8(a1)
		move.w	#$410,$C(a1)
loc_36C7E:
		cmp.w	#$9C0,$2A(a0)
		bcc.s	loc_36CB6
		move.w	$2A(a0),d0
		addq.w	#1,d0
		move.w	d0,$2A(a0)
		move.w	$34(a0),d1
		move.w	loc_36CC4(pc,d1),d2
		cmp.w	d2,d0
		bcs.s	loc_36CAE
		addq.w	#2,d1
		move.w	d1,$34(a0)
		lea	loc_36CD8(pc,d1),a1
		move.b	(a1)+,$10(a0)
		move.b	(a1)+,$12(a0)
loc_36CAE:
		bsr	loc_36E16
		bra	loc_3A892
loc_36CB6:
		move.w	#1,($FFFFFE02).w
		move.w	#$E00,($FFFFFE10).w
		rts	
loc_36CC4:
		dc.w	$1E0,$260,$2A0,$2C0,$300,$3A0,$3F0,$460
		dc.w	$4A0,$580
loc_36CD8:
		dc.b	$FF,$FF,1,0,0,1,1,$FF,1,1,1,$FF,$FF,1,$FF,$FF
		dc.b	$FF,1,$FE,0,0,$0	
loc_36CEE:
		lea	($FFFFB000).w,a1
		move.l	#$1000505,$1A(a1)
		move.w	#$100,$1E(a1)
		rts
loc_36D02:
		moveq	#0,d0
		move.b	$25(a0),d0
		move.w	loc_36D10(pc,d0),d1
		jmp	loc_36D10(pc,d1)
loc_36D10:
		dc.w	loc_36D16-loc_36D10
		dc.w	loc_36D1C-loc_36D10
		dc.w	loc_36D7C-loc_36D10
loc_36D16:
		move.b	#$C7,$20(a0)
loc_36D1C:
		tst.b	$21(a0)
		beq.s	loc_36D7A
		addq.b	#2,$25(a0)
		clr.b	$20(a0)
		move.w	#$80,($FFFFEED8).w
		move.w	$2C(a0),a1
		bset	#6,$22(a1)
		lea	($FFFFB000).w,a1
		clr.w	$10(a1)
		clr.w	$12(a1)
		move.w	8(a0),d0
		sub.w	#$10,d0
		move.w	d0,8(a1)
		bset	#0,$22(a1)
		bclr	#1,$22(a1)
		bclr	#2,$22(a1)
		move.b	#$11,$1C(a1)
		move.b	#1,($FFFFB02A).w
		move.b	#1,($FFFFF7C9).w
		clr.w	($FFFFF602).w
loc_36D7A:
		rts
loc_36D7C:
		lea	($FFFFB000).w,a1
		clr.w	$10(a1)
		clr.w	$12(a1)
		move.w	8(a0),d0
		sub.w	#$10,d0
		move.w	d0,8(a1)
		rts
loc_36D96:
		moveq	#0,d0
		move.b	$25(a0),d0
		move.w	loc_36DA4(pc,d0),d1
		jmp	loc_36DA4(pc,d1)
loc_36DA4:	
		dc.w	loc_36DA6-loc_36DA4
loc_36DA6:
		bchg	#2,$22(a0)
		bne	Null_Sub_01	
		bra	loc_3A892
loc_36DB4:
		moveq	#0,d0
		move.b	$25(a0),d0
		move.w	loc_36DC2(pc,d0),d1
		jmp	loc_36DC2(pc,d1)
loc_36DC2:
		dc.w	loc_36DC4-loc_36DC2
loc_36DC4:
		bsr	loc_3A904
		bra	loc_3A8A4
loc_36DCC:
		moveq	#0,d0
		move.b	$25(a0),d0
		move.w	loc_36DDA(pc,d0),d1
		jmp	loc_36DDA(pc,d1)
loc_36DDA:
		dc.w	loc_36DDE-loc_36DDA
		dc.w	loc_36DE6-loc_36DDA
loc_36DDE:
		bsr	loc_36DF8
		bra	loc_3A892
loc_36DE6:
		bsr	loc_36DF8
		lea	(loc_37050),a1
		bsr	loc_3A8BC
		bra	loc_3A892
loc_36DF8:
		move.w	$2C(a0),a1
		move.w	8(a1),d0
		sub.w	#$C,d0
		move.w	d0,8(a0)
		move.w	$C(a1),d0
		add.w	#$28,d0
		move.w	d0,$C(a0)
		rts
loc_36E16:
		move.w	8(a0),-(sp)
		bsr	loc_3A904
		bsr	loc_329AC
		move.w	#$1B,d1
		move.w	#8,d2
		move.w	#9,d3
		move.w	(sp)+,d4
		bra	loc_3A8F8
loc_36E34:
		lea	($FFFFB000).w,a1
		btst	#3,$22(a1)
		beq.s	loc_36E50
		bsr	loc_36E80
		bsr	loc_36F96
		bsr	loc_3A904
		bra	loc_329AC
loc_36E50:
		tst.b	$2E(a0)
		beq.s	loc_36E5E
		bsr	loc_32866
		move.w	d2,$38(a0)
loc_36E5E:
		move.w	#1,d0
		move.w	$38(a0),d3
		beq.s	loc_36E72
		bmi.s	loc_36E6C
		neg.w	d0
loc_36E6C:
		add.w	d0,d3
		move.w	d3,$38(a0)
loc_36E72:
		move.w	8(a1),d1
		add.w	d3,d1
		move.w	d1,8(a0)
		bra	loc_329AC
loc_36E80:
		tst.b	$2F(a0)
		bne.s	loc_36EA0
		tst.b	$2E(a0)
		beq.s	loc_36EC2
		st	$2F(a0)
		clr.b	$30(a0)
		move.w	#$200,$12(a0)
		move.b	#$14,$31(a0)
loc_36EA0:
		subq.b	#1,$31(a0)
		bpl.s	loc_36EB0
		clr.b	$2F(a0)
		clr.w	$12(a0)
		rts
loc_36EB0:
		move.w	$12(a0),d0
		cmp.w	#$FF00,d0
		ble.s	loc_36EBE
		add.w	#$FFE0,d0
loc_36EBE:
		move.w	d0,$12(a0)
loc_36EC2:
		rts
loc_36EC4:
		lea	($FFFFB000).w,a1
		btst	#3,$22(a1)
		beq.s	loc_36F2A
		tst.b	$2F(a0)
		bne.s	loc_36EFC
		clr.w	$12(a0)
		move.w	($FFFFF604).w,d2
		move.w	#$80,d3
		and.w	#$300,d2
		beq.s	loc_36EFC
		and.w	#$200,d2
		bne.s	loc_36EF0
		neg.w	d3
loc_36EF0:
		move.w	d3,$12(a0)
		bsr	loc_36F96
		bsr	loc_3A904
loc_36EFC:
		bsr	loc_32866
		moveq	#$10,d3
		add.w	d3,d2
		cmp.w	#$20,d2
		bcs.s	loc_36F28
		move.w	$14(a1),d2
		bpl.s	loc_36F12
		neg.w	d2
loc_36F12:
		cmp.w	#$900,d2
		bcc.s	loc_36F28
		tst.w	d0
		beq.s	loc_36F1E
		neg.w	d3
loc_36F1E:
		move.w	8(a1),d1
		add.w	d3,d1
		move.w	d1,8(a0)
loc_36F28:
		rts
loc_36F2A:
		tst.b	$30(a0)
		bne.s	loc_36F4A
		tst.b	$2E(a0)
		beq.s	loc_36F28
		st	$30(a0)
		clr.b	$2F(a0)
		move.w	#$200,$12(a0)
		move.b	#$2B,$31(a0)
loc_36F4A:
		subq.b	#1,$31(a0)
		bpl.s	loc_36F5A
		clr.b	$30(a0)
		clr.w	$12(a0)
		rts
loc_36F5A:
		move.w	$12(a0),d0
		cmp.w	#$FF00,d0
		ble.s	loc_36F68
		add.w	#$FFE0,d0
loc_36F68:
		move.w	d0,$12(a0)
		bsr	loc_36F96
		bsr	loc_3A904
		rts
loc_36F76:
		bsr	loc_32866
		moveq	#$10,d3
		add.w	d3,d2
		cmp.w	#$20,d2
		bcs.s	loc_36F94
		tst.w	d0
		beq.s	loc_36F8A
		neg.w	d3
loc_36F8A:
		move.w	8(a0),d1
		sub.w	d3,d1
		move.w	d1,8(a1)
loc_36F94:
		rts
loc_36F96:
		move.w	($FFFFEE04).w,d0
		move.w	$C(a0),d1
		move.w	$12(a0),d2
		beq.s	loc_36FBC
		bpl.s	loc_36FB0
		add.w	#$34,d0
		cmp.w	d0,d1
		bcs.s	loc_36FB8
		rts
loc_36FB0:
		add.w	#$A8,d0
		cmp.w	d0,d1
		bcs.s	loc_36FBC
loc_36FB8:
		clr.w	$12(a0)
loc_36FBC:
		rts
loc_36FBE:
		bsr	loc_3A8B6
		bne.s	loc_36FE0
		move.b	#$C4,0(a1)
		move.b	#$90,$28(a1)
		move.w	a0,$2C(a1)
		move.w	8(a0),8(a1)
		move.w	$C(a0),$C(a1)
loc_36FE0:
		rts
loc_36FE2:
		subq.b	#1,$37(a0)
		bmi.s	loc_36FEA
		rts
loc_36FEA:
		move.b	#8,$37(a0)	
		moveq	#0,d0
		move.b	$36(a0),d0
		addq.b	#1,d0
		cmp.w	#$18,d0
		bcs.s	loc_37000
		moveq	#0,d0
loc_37000:
		move.b	d0,$36(a0)
		move.b	loc_3700C(pc,d0),d0
		bra	J_Load_Miles_Tornado_Dyn_PLC 
loc_3700C:
		dc.b	$10,$10,$10,$10,1,2,3,2,1,1,$10,$10,$10,$10,1,$2
		dc.b	3,2,1,1,4,4,1,$1	
;-------------------------------------------------------------------------------
loc_37024:
		dc.w	$3E,$B258
loc_37028:
		dc.w	$3C,$B256
loc_3702C:
		dc.w	$3A,$B25C,$3E,$B25A	
;-------------------------------------------------------------------------------	
Obj_0xB2_Ptr: 
		dc.l	Tornado_Mappings	
		dc.w	$8500
		dc.b	4,4,$40,$0
Obj_0xB2_01_Ptr: 
		dc.l	loc_371A6
		dc.w	$561
		dc.b	4,3,$40,$0	
;-------------------------------------------------------------------------------	
loc_37048:	
		dc.w	loc_3704A-loc_37048
loc_3704A:
		dc.b	0,0,1,2,3,$FF 
;-------------------------------------------------------------------------------	
loc_37050:
		dc.w	loc_37052-loc_37050
loc_37052:
		dc.b	0,1,2,$FF
;-------------------------------------------------------------------------------
Tornado_Mappings: 
		dc.w	loc_3705E-Tornado_Mappings
		dc.w	loc_370B0-Tornado_Mappings
		dc.w	loc_37102-Tornado_Mappings
		dc.w	loc_37154-Tornado_Mappings
loc_3705E:
		dc.w	$A
		dc.l	$F00B0000,$FFA0,$1008000C,$6FFA0
		dc.l	$30A000F,$7FFB8,$F80902A0,$150FFD0
		dc.l	$80E001E,$FFFD0,$F80D002A,$15FFE8
		dc.l	$F8000032,$190008,$80E0033,$19FFF0
		dc.l	$802003F,$1F0010,$20050042,$21FFF4
loc_370B0:
		dc.w	$A
		dc.l	$F00B0000,$FFA0,$1008000C,$6FFA0
		dc.l	$30A000F,$7FFB8,$F80902A0,$150FFD0
		dc.l	$80E001E,$FFFD0,$F80D002A,$15FFE8
		dc.l	$F8000032,$190008,$80E0033,$19FFF0
		dc.l	$8020046,$230010,$20050042,$21FFF4
loc_37102:
		dc.w	$A
		dc.l	$F00B0000,$FFA0,$1008000C,$6FFA0
		dc.l	$30A000F,$7FFB8,$F80902A0,$150FFD0
		dc.l	$80E001E,$FFFD0,$F80D002A,$15FFE8
		dc.l	$F8000032,$190008,$80E0033,$19FFF0
		dc.l	$8020049,$240010,$20050042,$21FFF4
loc_37154:
		dc.w	$A
		dc.l	$F00B0000,$FFA0,$1008000C,$6FFA0
		dc.l	$30A000F,$7FFB8,$F80902A0,$150FFD0
		dc.l	$80E001E,$FFFD0,$F80D002A,$15FFE8
		dc.l	$F8000032,$190008,$80E0033,$19FFF0
		dc.l	$802004C,$260010,$20050042,$21FFF4	
;-------------------------------------------------------------------------------
loc_371A6:
		dc.w	loc_371AC-loc_371A6
		dc.w	loc_371BE-loc_371A6
		dc.w	loc_371D8-loc_371A6
loc_371AC:
		dc.w	$2
		dc.l	$F8092000,$2000FFE4,$F80D2006,$2003FFFC
loc_371BE:
		dc.w	$3
		dc.l	$F8092000,$2000FFE4,$F80D2006,$2003FFFC
		dc.l	$F80D400E,$4007FFC4
loc_371D8:
		dc.w	$3
		dc.l	$F8092000,$2000FFE4,$F80D2006,$2003FFFC
		dc.l	$F8054016,$400BFFD4	
;===============================================================================
; Object 0xB2 - Tornado - Sky Fortress / Sky Chase
; [ End ]
;===============================================================================