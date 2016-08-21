;=============================================================================== 
; Object 0x14 - See-saw badnick - Hill Top
; [ Begin ]	
;===============================================================================
loc_1D774:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_1D78A(pc,d0),d1
		jsr	loc_1D78A(pc,d1)
		move.w	$30(a0),d0
		bra	loc_1DBF2
loc_1D78A:
		dc.w	loc_1D796-loc_1D78A
		dc.w	loc_1D804-loc_1D78A
		dc.w	loc_1D8C0-loc_1D78A
		dc.w	loc_1D8EE-loc_1D78A
		dc.w	loc_1D948-loc_1D78A
		dc.w	loc_1D9E0-loc_1D78A	
loc_1D796:
		addq.b	#2,$24(a0)
		move.l	#See_Saw_Mappings,4(a0) 
		move.w	#$3C6,2(a0)
		bsr	loc_1DBE6
		or.b	#4,1(a0)
		move.b	#4,$18(a0)
		move.b	#$30,$19(a0)
		move.w	8(a0),$30(a0)
		tst.b	$28(a0)
		bne.s	loc_1D7F0
		bsr	loc_1DBE0
		bne.s	loc_1D7F0
		move.b	#$14,0(a1)
		addq.b	#6,$24(a1)
		move.w	8(a0),8(a1)
		move.w	$C(a0),$C(a1)
		move.b	$22(a0),$22(a1)
		move.l	a0,$3C(a1)
loc_1D7F0:
		btst	#0,$22(a0)
		beq.s	loc_1D7FE
		move.b	#2,$1A(a0)
loc_1D7FE:
		move.b	$1A(a0),$3A(a0)
loc_1D804:
		move.b	$3A(a0),d1
		btst	#3,$22(a0)
		beq.s	loc_1D85E
		moveq	#2,d1
		lea	($FFFFB000).w,a1
		move.w	8(a0),d0
		sub.w	8(a1),d0
		bcc.s	loc_1D824
		neg.w	d0
		moveq	#0,d1
loc_1D824:
		cmp.w	#8,d0
		bcc.s	loc_1D82C
		moveq	#1,d1
loc_1D82C:
		btst	#4,$22(a0)
		beq.s	loc_1D896
		moveq	#2,d2
		lea	($FFFFB040).w,a1
		move.w	8(a0),d0
		sub.w	8(a1),d0
		bcc.s	loc_1D848
		neg.w	d0
		moveq	#0,d2
loc_1D848:
		cmp.w	#8,d0
		bcc.s	loc_1D850
		moveq	#1,d2
loc_1D850:
		add.w	d2,d1
		cmp.w	#3,d1
		bne.s	loc_1D85A
		addq.w	#1,d1
loc_1D85A:
		lsr.w	#1,d1
		bra.s	loc_1D896
loc_1D85E:
		btst	#4,$22(a0)
		beq.s	loc_1D884
		moveq	#2,d1
		lea	($FFFFB040).w,a1
		move.w	8(a0),d0
		sub.w	8(a1),d0
		bcc.s	loc_1D87A
		neg.w	d0
		moveq	#0,d1
loc_1D87A:
		cmp.w	#8,d0
		bcc.s	loc_1D896
		moveq	#1,d1
		bra.s	loc_1D896
loc_1D884:
		move.w	($FFFFB012).w,d0
		move.w	($FFFFB052).w,d2
		cmp.w	d0,d2
		blt.s	loc_1D892
		move.w	d2,d0
loc_1D892:
		move.w	d0,$38(a0)
loc_1D896:
		bsr	loc_1D8C2
		lea	(loc_1DADA),a2
		btst	#0,$1A(a0)
		beq.s	loc_1D8AE
		lea	(loc_1DB0B),a2
loc_1D8AE:
		move.w	8(a0),-(sp)
		moveq	#0,d1
		move.b	$19(a0),d1
		moveq	#8,d3
		move.w	(sp)+,d4
		bra	loc_15CC2
loc_1D8C0:
		rts
loc_1D8C2:
		move.b	$1A(a0),d0
		cmp.b	d1,d0
		beq.s	loc_1D8EC
		bcc.s	loc_1D8CE
		addq.b	#2,d0
loc_1D8CE:
		subq.b	#1,d0
		move.b	d0,$1A(a0)
		move.b	d1,$3A(a0)
		bclr	#0,1(a0)
		btst	#1,$1A(a0)
		beq.s	loc_1D8EC
		bset	#0,1(a0)
loc_1D8EC:
		rts
loc_1D8EE:
		addq.b	#2,$24(a0)	
		move.l	#Sew_Saw_Badnick_Mappings,4(a0) 
		move.w	#$3DE,2(a0)
		bsr	loc_1DBE6
		or.b	#4,1(a0)
		move.b	#4,$18(a0)
		move.b	#$8B,$20(a0)
		move.b	#$C,$19(a0)
		move.w	8(a0),$30(a0)
		add.w	#$28,8(a0)
		add.w	#$10,$C(a0)
		move.w	$C(a0),$34(a0)
		btst	#0,$22(a0)
		beq.s	loc_1D948
		sub.w	#$50,8(a0)
		move.b	#2,$3A(a0)
loc_1D948:
		bsr	loc_1DAB2
		move.l	$3C(a0),a1
		moveq	#0,d0
		move.b	$3A(a0),d0
		sub.b	$3A(a1),d0
		beq.s	loc_1D9A2
		bcc.s	loc_1D960
		neg.b	d0
loc_1D960:
		move.w	#$F7E8,d1
		move.w	#$FEEC,d2
		cmp.b	#1,d0
		beq.s	loc_1D986
		move.w	#$F510,d1
		move.w	#$FF34,d2
		cmp.w	#$A00,$38(a1)
		blt.s	loc_1D986
		move.w	#$F200,d1
		move.w	#$FF60,d2
loc_1D986:
		move.w	d1,$12(a0)
		move.w	d2,$10(a0)
		move.w	8(a0),d0
		sub.w	$30(a0),d0
		bcc.s	loc_1D99C
		neg.w	$10(a0)
loc_1D99C:
		addq.b	#2,$24(a0)
		bra.s	loc_1D9E0
loc_1D9A2:
		lea	(loc_1DAA8),a2
		moveq	#0,d0
		move.b	$1A(a1),d0
		move.w	#$28,d2
		move.w	8(a0),d1
		sub.w	$30(a0),d1
		bcc.s	loc_1D9C0
		neg.w	d2
		addq.w	#2,d0
loc_1D9C0:
		add.w	d0,d0
		move.w	$34(a0),d1
		add.w	0(a2,d0),d1
		move.w	d1,$C(a0)
		add.w	$30(a0),d2
		move.w	d2,8(a0)
		clr.w	$E(a0)
		clr.w	$A(a0)
		rts
loc_1D9E0:
		bsr	loc_1DAB2
		tst.w	$12(a0)
		bpl.s	loc_1DA02
		bsr	loc_1DBEC
		move.w	$34(a0),d0
		sub.w	#$2F,d0
		cmp.w	$C(a0),d0
		bgt.s	loc_1DA00
		bsr	loc_1DBEC
loc_1DA00:
		rts
loc_1DA02:
		bsr	loc_1DBEC
		move.l	$3C(a0),a1
		lea	(loc_1DAA8),a2
		moveq	#0,d0
		move.b	$1A(a1),d0
		move.w	8(a0),d1
		sub.w	$30(a0),d1
		bcc.s	loc_1DA22
		addq.w	#2,d0
loc_1DA22:
		add.w	d0,d0
		move.w	$34(a0),d1
		add.w	0(a2,d0),d1
		cmp.w	$C(a0),d1
		bgt.s	loc_1DA76
		move.l	$3C(a0),a1
		moveq	#2,d1
		tst.w	$10(a0)
		bmi.s	loc_1DA40
		moveq	#0,d1
loc_1DA40:
		move.b	d1,$3A(a1)
		move.b	d1,$3A(a0)
		cmp.b	$1A(a1),d1
		beq.s	loc_1DA6A
		lea	($FFFFB000).w,a2
		bclr	#3,$22(a1)
		beq.s	loc_1DA5C
		bsr.s	loc_1DA78
loc_1DA5C:
		lea	($FFFFB040).w,a2
		bclr	#4,$22(a1)
		beq.s	loc_1DA6A
		bsr.s	loc_1DA78
loc_1DA6A:
		clr.w	$10(a0)
		clr.w	$12(a0)
		subq.b	#2,$24(a0)
loc_1DA76:
		rts
loc_1DA78:
		move.w	$12(a0),$12(a2)
		neg.w	$12(a2)
		bset	#1,$22(a2)
		bclr	#3,$22(a2)
		clr.b	$3C(a2)
		move.b	#$10,$1C(a2)
		move.b	#2,$24(a2)
		move.w	#$CC,d0
		jmp	Play_Sfx	
loc_1DAA8:
		dc.w	$FFF8,$FFE4,$FFD1,$FFE4,$FFF8
loc_1DAB2:
		move.b	($FFFFFE05).w,d0
		and.b	#3,d0
		bne.s	loc_1DAC2
		bchg	#5,2(a0)
loc_1DAC2:
		and.b	#$FE,1(a0)
		move.w	($FFFFB008).w,d0
		sub.w	8(a0),d0
		bcs.s	loc_1DAD8
		or.b	#1,1(a0)
loc_1DAD8:
		rts	
loc_1DADA:
		dc.b	$14,$14,$16,$18,$1A,$1C,$1A,$18,$16,$14,$13,$12,$11,$10,$F,$E
		dc.b	$D,$C,$B,$A,9,8,7,6,5,4,3,2,1,0,$FF,$FE
		dc.b	$FD,$FC,$FB,$FA,$F9,$F8,$F7,$F6,$F5,$F4,$F3,$F2,$F2,$F2,$F2,$F2
		dc.b	$F2
loc_1DB0B:
		dc.b	5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,$5
		dc.b	5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,$5
		dc.b	5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,$5
		dc.b	$0 
;-------------------------------------------------------------------------------
See_Saw_Mappings: 
		dc.w	loc_1DB44-See_Saw_Mappings
		dc.w	loc_1DB86-See_Saw_Mappings
		dc.w	loc_1DB44-See_Saw_Mappings
		dc.w	loc_1DB86-See_Saw_Mappings
loc_1DB44:
		dc.w	$8
		dc.l	$FC054014,$400AFFF8,$C012012,$2009FFFC
		dc.l	$E4054006,$4003FFD0,$EC05400A,$4005FFE0
		dc.l	$F405400A,$4005FFF0,$FC05400A,$40050000
		dc.l	$405400A,$40050010,$C05400E,$40070020
loc_1DB86:
		dc.w	$8
		dc.l	$FC054014,$400AFFF8,$C012012,$2009FFFC
		dc.l	$F4054000,$4000FFD0,$F4054002,$4001FFE0
		dc.l	$F4054002,$4001FFF0,$F4054002,$40010000
		dc.l	$F4054002,$40010010,$F4054800,$48000020 
;------------------------------------------------------------------------------- 
Sew_Saw_Badnick_Mappings: 
		dc.w	loc_1DBCC-Sew_Saw_Badnick_Mappings
		dc.w	loc_1DBD6-Sew_Saw_Badnick_Mappings
loc_1DBCC:
		dc.w	$1
		dc.l	$F8050000,$FFF8
loc_1DBD6:
		dc.w	$1
		dc.l	$F8052000,$2000FFF8	
;=============================================================================== 
; Object 0x14 - See-saw badnick - Hill Top
; [ End ]	
;===============================================================================	
