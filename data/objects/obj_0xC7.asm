;===============================================================================
; Object 0xC7 - Death Egg Final Boss
; [ Begin ]
;=============================================================================== 
loc_393B2:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_393C0(pc,d0),d1
		jmp	loc_393C0(pc,d1)
loc_393C0:
		dc.w	loc_393E2-loc_393C0
		dc.w	loc_393F2-loc_393C0
		dc.w	loc_398BA-loc_393C0
		dc.w	loc_398F0-loc_393C0
		dc.w	loc_3991A-loc_393C0
		dc.w	loc_39A1A-loc_393C0
		dc.w	loc_39A44-loc_393C0
		dc.w	loc_39A6E-loc_393C0
		dc.w	loc_39AF6-loc_393C0
		dc.w	loc_39B42-loc_393C0
		dc.w	loc_39B72-loc_393C0
		dc.w	loc_39BC6-loc_393C0
		dc.w	loc_39BF6-loc_393C0
		dc.w	loc_39CE2-loc_393C0
		dc.w	loc_39D34-loc_393C0
		dc.w	loc_39E02-loc_393C0
		dc.w	loc_39822-loc_393C0
loc_393E2:
		lea	loc_3A3E0(pc),a1
		bsr	EnemySettings_02	
		move.b	$28(a0),$24(a0)
		rts
loc_393F2:
		moveq	#0,d0
		move.b	$25(a0),d0
		move.w	loc_39404(pc,d0),d1
		jsr	loc_39404(pc,d1)
		bra	loc_3A892
loc_39404:
		dc.w	loc_39412-loc_39404
		dc.w	loc_39490-loc_39404
		dc.w	loc_394B6-loc_39404
		dc.w	loc_394F4-loc_39404
		dc.w	loc_39506-loc_39404
		dc.w	loc_3954A-loc_39404
		dc.w	loc_39788-loc_39404
loc_39412:
		addq.b	#2,$25(a0)
		move.b	#3,$1A(a0)
		move.b	#5,$18(a0)
		lea	(loc_3A3AC),a2
		bsr	loc_32970
		lea	(loc_3A3B4),a2
		bsr	loc_32970
		lea	(loc_3A3B0),a2
		bsr	loc_32970
		lea	(loc_3A3B8),a2
		bsr	loc_32970
		lea	(loc_3A3BC),a2
		bsr	loc_32970
		lea	(loc_3A3C0),a2
		bsr	loc_32970
		lea	(loc_3A3C4),a2
		bsr	loc_32970
		lea	(loc_3A3C8),a2
		bsr	loc_32970
		lea	(loc_3A3CC),a2
		bsr	loc_32970
		lea	(loc_3A3D0),a2
		bsr	loc_32970
		lea	(loc_3A132),a1
		bra	loc_3A0FA
loc_39490:
		btst	#2,$22(a0)
		bne.s	loc_3949A
		rts
loc_3949A:
		addq.b	#2,$25(a0)
		move.w	#$FF00,$12(a0)
		move.b	#$79,$1E(a0)
		move.w	$38(a0),a1
		move.b	#4,$25(a1)
		rts
loc_394B6:
		subq.b	#1,$1E(a0)
		beq.s	loc_394CA
		bsr	loc_3A904
		lea	(loc_3A132),a1
		bra	loc_3A0FA
loc_394CA:
		addq.b	#2,$25(a0)
		clr.w	$12(a0)
		move.b	#$1F,$1E(a0)
		move.b	#$16,$20(a0)
		move.b	#8,$21(a0)
		bsr	loc_39F40
		move.w	$38(a0),a1
		move.b	#6,$25(a1)
		rts
loc_394F4:
		bsr	loc_39E50
		subq.b	#1,$1E(a0)
		bmi.s	loc_39500
		rts
loc_39500:
		addq.b	#2,$25(a0)
		rts
loc_39506:
		bsr	loc_39E50
		addq.b	#2,$25(a0)
		move.b	#$20,$1E(a0)
		move.b	$26(a0),d0
		addq.b	#1,d0
		move.b	d0,$26(a0)
		and.w	#3,d0
		move.b	loc_39546(pc,d0),d0
		move.b	d0,$1C(a0)
		clr.b	$1D(a0)
		cmp.b	#2,d0
		bne.s	loc_39544
		move.w	$38(a0),a1
		move.b	#4,$25(a1)
		move.b	#2,$1C(a1)
loc_39544:
		rts
loc_39546:
		dc.b	2,0,2,$4
loc_3954A:
		bsr	loc_39E50
		moveq	#0,d0
		move.b	$1C(a0),d0
		move.w	loc_3955C(pc,d0),d1
		jmp	loc_3955C(pc,d1)
loc_3955C:
		dc.w	loc_39570-loc_3955C
		dc.w	loc_395C8-loc_3955C
		dc.w	loc_396F2-loc_3955C
		subq.b	#1,$1E(a0)
		bmi.s	loc_3956A
		rts
loc_3956A:
		addq.b	#2,$1C(a0)
		rts
loc_39570:
		moveq	#0,d0
		move.b	$1D(a0),d0
		move.w	loc_3957E(pc,d0),d1
		jmp	loc_3957E(pc,d1)
loc_3957E:
		dc.w	loc_39586-loc_3957E
		dc.w	loc_39594-loc_3957E
		dc.w	loc_39586-loc_3957E
		dc.w	loc_395AE-loc_3957E
loc_39586:
		subq.b	#1,$1E(a0)
		bmi.s	loc_3958E
		rts
loc_3958E:
		addq.b	#2,$1D(a0)
		rts
loc_39594:
		lea	(loc_3A25E),a1
		bsr	loc_39FFC
		bne.s	loc_395A2
		rts
loc_395A2:
		addq.b	#2,$1D(a0)
		move.b	#$40,$1E(a0)
		rts
loc_395AE:
		lea	(loc_3A27E),a1
		bsr	loc_39FFC
		bne.s	loc_395BC
		rts
loc_395BC:
		subq.b	#2,$25(a0)
		move.b	#$40,$1E(a0)
		rts
loc_395C8:
		moveq	#0,d0
		move.b	$1D(a0),d0
		move.w	loc_395D6(pc,d0),d1
		jmp	loc_395D6(pc,d1)
loc_395D6:
		dc.w	loc_39586-loc_395D6
		dc.w	loc_395E6-loc_395D6
		dc.w	loc_3960A-loc_395D6
		dc.w	loc_39586-loc_395D6
		dc.w	loc_3963A-loc_395D6
		dc.w	loc_3966E-loc_395D6
		dc.w	loc_396A6-loc_395D6
		dc.w	loc_396E4-loc_395D6
loc_395E6:
		lea	(loc_3A222),a1
		bsr	loc_39FFC
		bne.s	loc_395F4
		rts
loc_395F4:
		addq.b	#2,$1D(a0)
		move.b	#$80,$1E(a0)
		clr.w	$10(a0)
		move.w	#$FE00,$12(a0)
		rts
loc_3960A:
		subq.b	#1,$1E(a0)
		bmi.s	loc_3961E
		bsr	loc_3A904
		lea	(loc_3A132),a1
		bra	loc_3A0FA
loc_3961E:
		addq.b	#2,$1D(a0)
		clr.w	$12(a0)
		lea	(loc_3A3D4),a2
		bsr	loc_32970
		clr.w	$10(a0)
		clr.w	$28(a0)
		rts
loc_3963A:
		move.w	$28(a0),d0
		bne.s	loc_39642
		rts
loc_39642:
		addq.b	#2,$1D(a0)
		move.w	d0,8(a0)
		bclr	#0,1(a0)
		cmp.w	#$780,d0
		bcc.s	loc_3965C
		bset	#0,1(a0)
loc_3965C:
		bsr	loc_39FBA
		move.w	#$800,$12(a0)
		move.b	#$20,$1E(a0)
		rts
loc_3966E:
		subq.b	#1,$1E(a0)
		bmi.s	loc_39682
		bsr	loc_3A904
		lea	(loc_3A132),a1
		bra	loc_3A0FA
loc_39682:
		addq.b	#2,$1D(a0)
		clr.w	$12(a0)
		move.b	#1,($FFFFEEBD).w
		move.w	#$40,($FFFFF660).w
		move.w	$38(a0),a1
		move.b	#6,$25(a1)
		moveq	#$FFFFFFB9,d0
		bra	loc_3A8B0
loc_396A6:
		lea	(loc_3A15C),a1
		bsr	loc_39FFC
		bne.s	loc_396B4
		rts
loc_396B4:
		lea	(loc_3A132),a1
		bsr	loc_3A0FA
		bsr	loc_32866
		btst	#0,1(a0)
		beq.s	loc_396CC
		subq.w	#2,d0
loc_396CC:
		tst.w	d0
		bne.s	loc_396D6
		subq.b	#2,$25(a0)
		rts
loc_396D6:
		addq.b	#2,$1D(a0)
		move.b	#$60,$1E(a0)
		bra	loc_39F88
loc_396E4:
		subq.b	#1,$1E(a0)
		bmi.s	loc_396EC
		rts
loc_396EC:
		subq.b	#2,$25(a0)
		rts
loc_396F2:
		moveq	#0,d0
		move.b	$1D(a0),d0
		move.w	loc_39700(pc,d0),d1
		jmp	loc_39700(pc,d1)
loc_39700:
		dc.w	loc_39586-loc_39700
		dc.w	loc_3970C-loc_39700
		dc.w	loc_39586-loc_39700
		dc.w	loc_39754-loc_39700
		dc.w	loc_39586-loc_39700
		dc.w	loc_3976E-loc_39700	
loc_3970C:
		bset	#6,$22(a0)
		lea	(loc_3A148),a1
		bsr	loc_39FFC
		bne.s	loc_39720
		rts
loc_39720:
		bsr	loc_32866
		btst	#0,1(a0)
		beq.s	loc_3972E
		subq.w	#2,d0
loc_3972E:
		tst.w	d0
		bne.s	loc_39744
		addq.b	#2,$1D(a0)
		move.b	#$40,$1E(a0)
		bset	#4,$22(a0)
		rts
loc_39744:
		move.b	#8,$1D(a0)
		move.b	#$20,$1E(a0)
		bra	loc_39F88
loc_39754:
		subq.b	#1,$1E(a0)
		bmi.s	loc_3975C
		rts
loc_3975C:
		addq.b	#2,$1D(a0)
		bset	#5,$22(a0)
		move.b	#$40,$1E(a0)
		rts
loc_3976E:
		lea	(loc_3A152),a1
		bsr	loc_39FFC
		bne.s	loc_3977C
		rts
loc_3977C:
		subq.b	#2,$25(a0)
		bclr	#6,$22(a0)
		rts
loc_39788:
		moveq	#0,d0
		move.b	$1C(a0),d0
		move.w	loc_39796(pc,d0),d1	
		jmp	loc_39796(pc,d1)
loc_39796:
		dc.w	loc_3979C-loc_39796
		dc.w	loc_397D8-loc_39796
		dc.w	loc_397EE-loc_39796
loc_3979C:
		bsr	loc_3A8EC
		bsr	loc_3A8FE
		move.w	$C(a0),d0
		cmp.w	#$15C,d0
		bcc.s	loc_397B0
		rts
loc_397B0:
		move.w	#$15C,$C(a0)
		move.w	$12(a0),d0
		bmi.s	loc_397CC
		lsr.w	#2,d0
		cmp.w	#$100,d0
		bcs.s	loc_397CC
		neg.w	d0
		move.w	d0,$12(a0)
		rts
loc_397CC:
		addq.b	#2,$1C(a0)
		move.b	#$40,$1E(a0)
		rts
loc_397D8:
		subq.b	#1,$1E(a0)
		bmi.s	loc_397E2
		bra	loc_3A8EC
loc_397E2:
		addq.b	#2,$1C(a0)
		move.w	#$1000,($FFFFEECA).w
		rts
loc_397EE:
		move.w	#$808,($FFFFF602).w
		cmp.w	#$840,($FFFFEE00).w
		bcc.s	loc_397FE
		rts
loc_397FE:
		move.b	#$20,$24(a0)
		clr.b	$25(a0)
		move.w	#$20,$2A(a0)
		move.b	#1,($FFFFEEBD).w
		move.w	#$1000,($FFFFF660).w
		move.w	$36(a0),a1
		bra	loc_3A8AA
loc_39822:
		move.b	($FFFFFE0F).w,d0
		and.b	#$1F,d0
		bne.s	loc_39836
		moveq	#$FFFFFFE1,d0
		bsr	loc_3A8B0
		subq.w	#1,$2A(a0)
loc_39836:
		lea	($FFFFB000).w,a1
		move.w	8(a1),d0
		sub.w	$2A(a0),d0
		move.w	d0,8(a0)
		move.w	$C(a1),$C(a0)
		bsr	loc_39E12
		moveq	#0,d0
		move.b	$25(a0),d0
		move.w	loc_3985E(pc,d0),d1
		jmp	loc_3985E(pc,d1)
loc_3985E:
		dc.w	loc_39862-loc_3985E
		dc.w	loc_39882-loc_3985E
loc_39862:
		lea	($FFFFB000).w,a1
		cmp.w	#$EC0,8(a1)
		bcc.s	loc_39870
		rts
loc_39870:
		addq.b	#2,$25(a0)
		move.w	#$3F,($FFFFF626).w
		move.b	#$16,$1E(a0)
		rts
loc_39882:
		subq.b	#1,$1E(a0)
		beq	loc_3989E
		move.l	a0,a1
		lea	($FFFFFB00).w,a0
		moveq	#$3F,d0
loc_39892:	
		bsr	loc_3A8D4
		dbra	d0,loc_39892
		move.l	a1,a0
		rts
loc_3989E:
		move.l	#$EEE0EEE,d0
		lea	($FFFFFB00).w,a1
		moveq	#$1F,d6
loc_398AA:	
		move.l	d0,(a1)+
		dbra	d6,loc_398AA
		move.b	#0,($FFFFF600).w
		bra	loc_3A898
loc_398BA:
		moveq	#0,d0
		move.b	$25(a0),d0
		move.w	loc_398DA(pc,d0),d1
		jsr	loc_398DA(pc,d1)
		lea	loc_398DE(pc),a1
		bsr	loc_3A0D4
		tst.b	(a0)
		beq	Null_Sub_01	
		bra	loc_3A892
loc_398DA:
		dc.w	loc_398E2-loc_398DA
		dc.w	loc_398EE-loc_398DA
loc_398DE:
		dc.b	0,$C,$FF,$EC
loc_398E2:
		addq.b	#2,$25(a0)
		move.b	#4,$1A(a0)
		rts
loc_398EE:
		rts
loc_398F0:
		moveq	#0,d0
		move.b	$25(a0),d0
		move.w	loc_39908(pc,d0),d1
		jsr	loc_39908(pc,d1)
		tst.b	(a0)
		beq	Null_Sub_01	
		bra	loc_3A892
loc_39908:
		dc.w	loc_3990C-loc_39908
		dc.w	loc_39918-loc_39908
loc_3990C:
		addq.b	#2,$25(a0)
		move.b	#$B,$1A(a0)
		rts
loc_39918:
		rts
loc_3991A:
		moveq	#0,d0
		move.b	$25(a0),d0
		move.w	loc_3993C(pc,d0),d1
		jsr	loc_3993C(pc,d1)
		tst.b	(a0)
		beq	Null_Sub_01	
		btst	#6,$22(a0)
		bne	Null_Sub_01	
		bra	loc_3A892
loc_3993C:
		dc.w	loc_39946-loc_3993C
		dc.w	loc_39952-loc_3993C
		dc.w	loc_39972-loc_3993C
		dc.w	loc_399D8-loc_3993C
		dc.w	loc_39A00-loc_3993C
loc_39946:
		addq.b	#2,$25(a0)
		move.b	#6,$1A(a0)
		rts
loc_39952:
		move.w	$2C(a0),a1
		bclr	#4,$22(a1)
		bne.s	loc_39960
		rts
loc_39960:
		addq.b	#2,$25(a0)
		move.w	#$10,$2A(a0)
		move.w	$C(a0),$2E(a0)
		rts
loc_39972:
		subq.w	#1,$2A(a0)
		bmi.s	loc_39982
		add.w	#$20,$12(a0)
		bra	loc_3A904
loc_39982:
		addq.b	#2,$25(a0)
		move.w	#$20,$2A(a0)
		bsr	loc_32866
		tst.w	d2
		bpl.s	loc_39996
		neg.w	d2
loc_39996:
		cmp.w	#$100,d2
		bcs.s	loc_399A0
		move.w	#$FF,d2
loc_399A0:
		and.w	#$C0,d2
		lsr.w	#5,d2
		move.w	loc_399D0(pc,d2),d2
		tst.w	d1
		bne.s	loc_399B0
		neg.w	d2
loc_399B0:
		move.w	d2,$12(a0)
		move.w	#$800,d2
		move.w	$2C(a0),a1
		btst	#0,1(a0)
		bne.s	loc_399C6
		neg.w	d2
loc_399C6:
		move.w	d2,$10(a0)
		moveq	#$FFFFFFBC,d0
		bra	loc_3A8B0
loc_399D0:
		dc.w	$200,$100,$80,$0
loc_399D8:
		subq.w	#1,$2A(a0)
		bmi.s	loc_399E2
		bra	loc_3A904
loc_399E2:
		addq.b	#2,$25(a0)
		neg.w	$10(a0)
		move.w	#$20,$2A(a0)
		move.w	$2E(a0),d0
		sub.w	$C(a0),d0
		asl.w	#3,d0
		move.w	d0,$12(a0)
		rts
loc_39A00:
		subq.w	#1,$2A(a0)
		bmi.s	loc_39A0A
		bra	loc_3A904
loc_39A0A:
		move.b	#2,$25(a0)
		clr.w	$10(a0)
		clr.w	$12(a0)
		rts
loc_39A1A:
		moveq	#0,d0
		move.b	$25(a0),d0
		move.w	loc_39A32(pc,d0),d1
		jsr	loc_39A32(pc,d1)
		tst.b	(a0)
		beq	Null_Sub_01	
		bra	loc_3A892
loc_39A32:
		dc.w	loc_39A36-loc_39A32
		dc.w	loc_39A42-loc_39A32
loc_39A36:
		addq.b	#2,$25(a0)
		move.b	#5,$1A(a0)
		rts
loc_39A42:
		rts
loc_39A44:
		moveq	#0,d0
		move.b	$25(a0),d0
		move.w	loc_39A5C(pc,d0),d1
		jsr	loc_39A5C(pc,d1)
		tst.b	(a0)
		beq	Null_Sub_01	
		bra	loc_3A892
loc_39A5C:
		dc.w	loc_39A60-loc_39A5C
		dc.w	loc_39A6C-loc_39A5C
loc_39A60:
		addq.b	#2,$25(a0)
		move.b	#$A,$1A(a0)
		rts
loc_39A6C:
		rts
loc_39A6E:
		moveq	#0,d0
		move.b	$25(a0),d0
		move.w	loc_39A8E(pc,d0),d1
		jsr	loc_39A8E(pc,d1)
		lea	loc_39A98(pc),a1
		bsr	loc_3A0D4
		tst.b	(a0)
		beq	Null_Sub_01	
		bra	loc_3A892
loc_39A8E:
		dc.w	loc_39A9C-loc_39A8E
		dc.w	loc_39AA8-loc_39A8E
		dc.w	loc_39AC2-loc_39A8E
		dc.w	loc_39AD0-loc_39A8E
		dc.w	loc_39AEC-loc_39A8E	
loc_39A98:
		dc.b	0,0,$FF,$CC
loc_39A9C:
		addq.b	#2,$25(a0)
		move.b	#$15,$1A(a0)
		rts
loc_39AA8:
		move.w	($FFFFF660).w,a1
		btst	#3,$22(a1)
		bne.s	loc_39AB6
		rts
loc_39AB6:
		addq.b	#2,$25(a0)
		move.w	#$40,$2A(a0)
		rts
loc_39AC2:
		lea	(loc_3A3EA),a1
		bsr	loc_3A8BC
		bra	loc_3A892
loc_39AD0:
		subq.w	#1,$2A(a0)
		bmi.s	loc_39ADA
		bra	loc_3A892
loc_39ADA:
		addq.b	#2,$25(a0)
		move.w	$2C(a0),a1
		bset	#2,$22(a1)
		bra	loc_3A892
loc_39AEC:
		move.b	#$FF,$21(a0)
		bra	loc_3A892
loc_39AF6:
		moveq	#0,d0
		move.b	$25(a0),d0
		move.w	loc_39B0C(pc,d0),d1
		jsr	loc_39B0C(pc,d1)
		lea	loc_39B16(pc),a1
		bra	loc_3A0D4
loc_39B0C:
		dc.w	loc_39B1A-loc_39B0C
		dc.w	loc_39B26-loc_39B0C
		dc.w	loc_39B2C-loc_39B0C
		dc.w	loc_39B3A-loc_39B0C
		dc.w	loc_39B26-loc_39B0C	
loc_39B16:
		dc.b	0,$38,0,$18
loc_39B1A:
		addq.b	#2,$25(a0)
		move.b	#$C,$1A(a0)
		rts
loc_39B26:
		move.b	#3,$1C(a0)
loc_39B2C:
		lea	(loc_3A3FA),a1
		bsr	loc_3A8BC
		bra	loc_3A892
loc_39B3A:	
		move.b	#1,$1C(a0)
		bra.s	loc_39B2C
loc_39B42:	
		moveq	#0,d0
		move.b	$25(a0),d0
		move.w	loc_39B5A(pc,d0),d1
		jsr	loc_39B5A(pc,d1)
		tst.b	(a0)
		beq	Null_Sub_01	
		bra	loc_3A892
loc_39B5A:
		dc.w	loc_39B5E-loc_39B5A
		dc.w	loc_39B70-loc_39B5A
loc_39B5E:
		addq.b	#2,$25(a0)
		move.b	#$B,$1A(a0)
		move.b	#5,$18(a0)
		rts
loc_39B70:
		rts
loc_39B72:	
		moveq	#0,d0
		move.b	$25(a0),d0
		move.w	loc_39B8A(pc,d0),d1
		jsr	loc_39B8A(pc,d1)
		tst.b	(a0)
		beq	Null_Sub_01	
		bra	loc_3A892
loc_39B8A:
		dc.w	loc_39B94-loc_39B8A
		dc.w	loc_39BA6-loc_39B8A
		dc.w	loc_39972-loc_39B8A
		dc.w	loc_399D8-loc_39B8A
		dc.w	loc_39A00-loc_39B8A
loc_39B94:
		addq.b	#2,$25(a0)
		move.b	#6,$1A(a0)
		move.b	#5,$18(a0)
		rts
loc_39BA6:
		move.w	$2C(a0),a1
		bclr	#5,$22(a1)
		bne.s	loc_39BB4
		rts
loc_39BB4:
		addq.b	#2,$25(a0)
		move.w	#$10,$2A(a0)
		move.w	$C(a0),$2E(a0)
		rts	
loc_39BC6:	
		moveq	#0,d0
		move.b	$25(a0),d0
		move.w	loc_39BDE(pc,d0),d1
		jsr	loc_39BDE(pc,d1)
		tst.b	(a0)
		beq	Null_Sub_01	
		bra	loc_3A892
loc_39BDE:
		dc.w	loc_39BE2-loc_39BDE
		dc.w	loc_39BF4-loc_39BDE
loc_39BE2:
		addq.b	#2,$25(a0)
		move.b	#$A,$1A(a0)
		move.b	#5,$18(a0)
		rts
loc_39BF4:
		rts
loc_39BF6:	
		moveq	#0,d0
		move.b	$25(a0),d0
		move.w	loc_39C04(pc,d0),d1
		jmp	loc_39C04(pc,d1)
loc_39C04:
		dc.w	loc_39C0A-loc_39C04
		dc.w	loc_39C46-loc_39C04
		dc.w	loc_39CC0-loc_39C04
loc_39C0A:
		addq.b	#2,$25(a0)
		move.b	#$10,$1A(a0)
		or.w	#$8000,2(a0)
		move.b	#1,$18(a0)
		move.w	#$A0,$2A(a0)
		lea	($FFFFB000).w,a1
		move.w	8(a1),8(a0)
		move.w	$C(a1),$C(a0)
		move.w	$10(a1),$30(a0)
		move.w	$12(a1),$32(a0)
		bra	loc_3A892
loc_39C46:
		subq.w	#1,$2A(a0)
		bmi.s	loc_39C94
		lea	$40(a0),a1
		move.l	a1,a2
		move.w	-(a1),$12(a0)
		move.w	-(a1),$10(a0)
		moveq	#2,d6
loc_39C5C:	
		move.l	-(a1),-(a2)
		dbra	d6,loc_39C5C
		lea	($FFFFB000).w,a2
		move.w	$10(a2),d0
		bne.s	loc_39C72
		move.w	8(a2),8(a0)
loc_39C72:
		move.w	d0,(a1)+
		move.w	$12(a2),d0
		bne.s	loc_39C80
		move.w	$C(a2),$C(a0)
loc_39C80:
		move.w	d0,(a1)+
		bsr	loc_3A904
		lea	(loc_3A43E),a1
		bsr	loc_3A8BC
		bra	loc_3A892
loc_39C94:
		addq.b	#2,$25(a0)
		move.w	#$40,$2A(a0)
		lea	($FFFFB000).w,a1
		move.w	8(a1),8(a0)
		move.w	$C(a1),$C(a0)
		lea	(loc_3A3D8),a2
		bsr	loc_32970
		clr.w	$10(a0)
		bra	loc_3A892
loc_39CC0:
		subq.w	#1,$2A(a0)
		bmi.s	loc_39CD4
		lea	(loc_3A43E),a1
		bsr	loc_3A8BC
		bra	loc_3A892
loc_39CD4:
		move.w	$2C(a0),a1
		move.w	8(a0),$28(a1)
		bra	loc_3A898
loc_39CE2:	
		moveq	#0,d0
		move.b	$25(a0),d0
		move.w	loc_39CF0(pc,d0),d1
		jmp	loc_39CF0(pc,d1)
loc_39CF0:
		dc.w	loc_39CF4-loc_39CF0
		dc.w	loc_39D14-loc_39CF0
loc_39CF4:
		addq.b	#2,$25(a0)
		move.b	#$14,$1A(a0)
		move.b	#1,$18(a0)
		or.w	#$8000,2(a0)
		move.w	#4,$2A(a0)
		bra	loc_3A892
loc_39D14:
		move.w	$2C(a0),a1
		tst.b	(a1)
		beq	loc_3A898
		subq.w	#1,$2A(a0)
		bne.s	loc_39D30
		move.w	#4,$2A(a0)
		bchg	#5,2(a0)
loc_39D30:
		bra	loc_3A892
loc_39D34:	
		moveq	#0,d0
		move.b	$25(a0),d0
		move.w	loc_39D42(pc,d0),d1
		jmp	loc_39D42(pc,d1)
loc_39D42:
		dc.w	loc_39D4A-loc_39D42
		dc.w	loc_39D76-loc_39D42
		dc.w	loc_39D9C-loc_39D42
		dc.w	loc_39DD8-loc_39D42
loc_39D4A:
		addq.b	#2,$25(a0)
		move.b	#$E,$1A(a0)
		move.b	#$89,$20(a0)
		move.b	#5,$18(a0)
		move.b	#$C,$19(a0)
		lea	loc_39D72(pc),a1
		bsr	loc_3A0D4
		bra	loc_3A892
loc_39D72:
		dc.b	0,$38,$FF,$EC
loc_39D76:
		bsr	loc_3A8FE
		move.w	$C(a0),d0
		cmp.w	#$170,d0
		bcc.s	loc_39D88
		bra	loc_3A892
loc_39D88:
		addq.b	#2,$25(a0)
		move.w	#$170,$C(a0)
		move.w	#$40,$2A(a0)
		bra	loc_3A892
loc_39D9C:
		subq.w	#1,$2A(a0)
		bmi.s	loc_39DA6
		bra	loc_3A892
loc_39DA6:
		addq.b	#2,$25(a0)
		move.l	#$29AAA,4(a0)
		move.w	#$580,2(a0)
		move.b	#1,$18(a0)
		move.b	#7,$1E(a0)
		move.b	#0,$1A(a0)
		move.w	#$C4,d0
		jsr	Play_Sfx	
		bra	loc_3A892
loc_39DD8:
		subq.b	#1,$1E(a0)
		bpl.s	loc_39DFE
		move.b	#7,$1E(a0)
		addq.b	#1,$1A(a0)
		cmp.b	#5,$1A(a0)
		bcs.s	loc_39DFE
		clr.b	$20(a0)
		cmp.b	#7,$1A(a0)
		beq	loc_3A898
loc_39DFE:
		bra	loc_3A892
loc_39E02:	
		subq.w	#1,$2A(a0)
		bmi	loc_3A898
		bsr	loc_3A8FE
		bra	loc_3A892
loc_39E12:	
		jsr	SingleObjectLoad	
		bne.s	loc_39E4E
		move.b	#$58,0(a1)
		move.w	8(a0),8(a1)
		move.w	$C(a0),$C(a1)
		jsr	PseudoRandomNumber	
		move.w	d0,d1
		moveq	#0,d1
		move.b	d0,d1
		lsr.b	#2,d1
		sub.w	#$30,d1
		add.w	d1,8(a1)
		lsr.w	#8,d0
		lsr.b	#2,d0
		sub.w	#$30,d0
		add.w	d0,$C(a1)
loc_39E4E:
		rts
loc_39E50:	
		tst.b	$21(a0)
		beq.s	loc_39EB2
		tst.b	$2A(a0)
		bne.s	loc_39E86
		tst.b	$20(a0)
		beq.s	loc_39E76
		move.w	$36(a0),a1
		tst.b	$20(a1)
		bne.s	loc_39EB0
		clr.b	$20(a0)
		subq.b	#1,$21(a0)
		beq.s	loc_39EB2
loc_39E76:
		move.b	#$3C,$2A(a0)
		move.w	#$AC,d0
		jsr	Play_Sfx	
loc_39E86:
		lea	($FFFFFB22).w,a1
		moveq	#0,d0
		tst.w	(a1)
		bne.s	loc_39E94
		move.w	#$EEE,d0
loc_39E94:
		move.w	d0,(a1)
		subq.b	#1,$2A(a0)
		bne.s	loc_39EB0
		clr.w	($FFFFFB22).w
		move.b	#$16,$20(a0)
		move.w	$36(a0),a1
		move.b	#$2A,$20(a1)
loc_39EB0:
		rts
loc_39EB2:
		moveq	#$64,d0
		bsr	add_Points	
		clr.b	$1E(a0)
		move.b	#$C,$25(a0)
		clr.b	$1C(a0)
		clr.b	$20(a0)
		clr.w	$10(a0)
		clr.w	$12(a0)
		bsr	loc_39F70
		bsr	loc_39EE6
		move.w	$38(a0),a1
		bsr	loc_3A8AA
		addq.w	#4,sp
		rts
loc_39EE6:
		lea	(loc_39F38),a1
		lea	loc_39F18(pc),a2
		moveq	#0,d0
		moveq	#7,d6
loc_39EF4:	
		move.b	(a1)+,d0
		move.w	0(a0,d0),a3
		move.b	#$1E,$24(a3)
		clr.b	$25(a3)
		move.w	#$80,$2A(a3)
		move.w	(a2)+,$10(a3)
		move.w	(a2)+,$12(a3)
		dbra	d6,loc_39EF4
		rts 
loc_39F18:	
		dc.w	$200,$FC00,$FF00,$FF00,$300,$FD00,$FF00,$FC00
		dc.w	$180,$FE00,$FE00,$FD00,0,$FC00,$100,$FD00
loc_39F38:	
		dc.b	$2C,$2E,$30,$32,$34,$3A,$3C,$3E
loc_39F40:	
		lea	loc_39F66(pc),a1
		lea	loc_39F5C(pc),a2
		moveq	#0,d0
		moveq	#9,d6
loc_39F4C:	
		move.b	(a1)+,d0
		move.w	0(a0,d0),a3
		move.b	(a2)+,$20(a3)
		dbra	d6,loc_39F4C
		rts 
loc_39F5C:
		dc.b	0,$8F,$9C,0,$86,$2A,$8B,$8F,$9C,$8B
loc_39F66:
		dc.b	$2C,$2E,$30,$32,$34,$36,$38,$3A,$3C,$3E	
loc_39F70:
		lea	loc_39F66(pc),a1
		moveq	#0,d0
		moveq	#9,d6
loc_39F78:	
		move.b	(a1)+,d0
		move.w	0(a0,d0),a3
		clr.b	$20(a3)
		dbra	d6,loc_39F78
		rts
loc_39F88:	
		lea	loc_39FB2(pc),a3
		moveq	#1,d6
loc_39F8E:	
		lea	(loc_3A3DC),a2
		bsr	loc_32970
		move.w	(a3)+,d0
		btst	#0,1(a0)
		beq.s	loc_39FA4
		neg.w	d0
loc_39FA4:
		move.w	d0,$10(a1)
		move.w	(a3)+,$12(a1)
		dbra	d6,loc_39F8E
		rts
loc_39FB2:
		dc.w	$60,$F800,$C0,$F600
loc_39FBA:	
		move.b	1(a0),d0
		and.b	#1,d0
		moveq	#0,d1
		lea	loc_39FF0(pc),a1
loc_39FC8:	
		move.b	(a1)+,d1
		beq	Null_Sub_01	
		move.w	0(a0,d1),a2
		move.b	1(a2),d2
		and.b	#$FE,d2
		or.b	d0,d2
		move.b	d2,1(a2)
		move.b	$22(a2),d2
		and.b	#$FE,d2
		or.b	d0,d2
		move.b	d2,$22(a2)
		bra.s	loc_39FC8
loc_39FF0:
		dc.b	$2C,$2E,$30,$32,$34,$36,$38,$3A,$3C,$3E,0,$0
loc_39FFC:	
		move.l	(a1)+,a2
		moveq	#0,d0
		move.b	$1B(a0),d0
		move.b	0(a1,d0),d0
		move.b	d0,d1
		moveq	#0,d4
		and.w	#$C0,d1
		beq.s	loc_3A016
		bsr	loc_3A090
loc_3A016:
		add.w	d0,d0
		adda.w	0(a2,d0),a2
		move.b	(a2)+,d0
		move.b	(a2)+,d3
		move.b	$1F(a0),d2
		addq.b	#1,d2
		cmp.b	d3,d2
		bcs.s	loc_3A030
		addq.b	#1,$1B(a0)
		moveq	#0,d2
loc_3A030:
		move.b	d2,$1F(a0)
		moveq	#0,d5
loc_3A036:	
		move.b	(a2)+,d5
		move.w	0(a0,d5),a3
		tst.w	d5
		bne.s	loc_3A042
		move.l	a0,a3
loc_3A042:
		move.l	8(a3),d2
		move.b	(a2)+,d1
		ext.w	d1
		asl.w	#4,d1
		btst	#0,1(a0)
		beq.s	loc_3A056
		neg.w	d1
loc_3A056:
		tst.w	d4
		beq.s	loc_3A05C
		neg.w	d1
loc_3A05C:
		ext.l	d1
		asl.l	#8,d1
		add.l	d1,d2
		move.l	d2,8(a3)
		move.l	$C(a3),d3
		move.b	(a2)+,d1
		ext.w	d1
		asl.w	#4,d1
		tst.w	d4
		beq.s	loc_3A076
		neg.w	d1
loc_3A076:
		ext.l	d1
		asl.l	#8,d1
		add.l	d1,d3
		move.l	d3,$C(a3)
		dbra	d0,loc_3A036
		moveq	#0,d1
		rts
loc_3A088:	
		clr.b	$1B(a0)
		moveq	#1,d1
loc_3A08E:	
		rts
loc_3A090:
		and.b	#$3F,d0
		rol.b	#3,d1
		move.w	loc_3A09E-2(pc,d1),d1
		jmp	loc_3A09E(pc,d1)
loc_3A09E:
		dc.w	loc_3A0A4-loc_3A09E
		dc.w	loc_3A0CC-loc_3A09E
		dc.w	loc_3A0D0-loc_3A09E
loc_3A0A4:
		tst.b	$1F(a0)
		bne.s	loc_3A08E
		move.b	$1B(a0),d1
		addq.b	#1,d1
		move.b	0(a1,d1),d0
		bsr	loc_3A8B0
		addq.b	#1,d1
		move.b	d1,$1B(a0)
		move.b	0(a1,d1),d0
		move.b	d0,d1
		and.b	#$C0,d1
		bne.s	loc_3A090
		rts
loc_3A0CC:
		moveq	#1,d4
		rts
loc_3A0D0:
		addq.w	#4,sp
		bra.s	loc_3A088
loc_3A0D4:	
		move.w	$2C(a0),a2
		move.w	8(a2),d0
		move.w	(a1)+,d1
		btst	#0,1(a2)
		beq.s	loc_3A0E8
		neg.w	d1
loc_3A0E8:
		add.w	d1,d0
		move.w	d0,8(a0)
		move.w	$C(a2),d0
		add.w	(a1)+,d0
		move.w	d0,$C(a0)
		rts	
loc_3A0FA:	
		moveq	#0,d0
		moveq	#0,d6
		move.b	(a1)+,d6
loc_3A100:	
		move.b	(a1)+,d0
		move.w	0(a0,d0),a2
		move.w	8(a0),d1
		move.b	(a1)+,d2
		ext.w	d2
		btst	#0,1(a0)
		beq.s	loc_3A118
		neg.w	d2
loc_3A118:
		add.w	d2,d1
		move.w	d1,8(a2)
		move.w	$C(a0),d1
		move.b	(a1)+,d2
		ext.w	d2
		add.w	d2,d1
		move.w	d1,$C(a2)
		dbra	d6,loc_3A100
		rts 
;-------------------------------------------------------------------------------	
loc_3A132:	
		dc.b	6,$2E,$FC,$3C,$30,$F4,8,$32,$C,$F8,$34,4,$24,$3A,$FC,$3C
		dc.b	$3C,$F4,8,$3E,4,$24
;-------------------------------------------------------------------------------	
loc_3A148:	
		dc.l	loc_3A16A
		dc.b	0,1,2,3,$FF,$0
;-------------------------------------------------------------------------------	
loc_3A152:	
		dc.l	loc_3A16A
		dc.b	5,6,7,8,$FF,$0
;-------------------------------------------------------------------------------	
loc_3A15C:	
		dc.l	loc_3A16A
		dc.b	0,1,2,3,4,5,6,7,8,$C0
;-------------------------------------------------------------------------------	
loc_3A16A:
		dc.w	loc_3A17C-loc_3A16A
		dc.w	loc_3A190-loc_3A16A
		dc.w	loc_3A1A4-loc_3A16A
		dc.w	loc_3A1B8-loc_3A16A
		dc.w	loc_3A1CC-loc_3A16A
		dc.w	loc_3A1D2-loc_3A16A
		dc.w	loc_3A1E6-loc_3A16A
		dc.w	loc_3A1FA-loc_3A16A
		dc.w	loc_3A20E-loc_3A16A
loc_3A17C:
		dc.b	5,8,0,$E0,$C,$30,$E0,$C,$32,$E0,$C,$3C,$E0,$C,$34,$F8
		dc.b	4,$3E,$F8,$4
loc_3A190:
		dc.b	5,8,0,$EC,$14,$30,$EC,$14,$32,$EC,$14,$3C,$EC,$14,$34,$FA
		dc.b	6,$3E,$FA,$6
loc_3A1A4:
		dc.b	5,8,0,$F8,$14,$30,$F8,$14,$32,$F8,$14,$3C,$F8,$14,$34,$FE
		dc.b	4,$3E,$FE,$4
loc_3A1B8:
		dc.b	5,8,0,$FC,$C,$30,$FC,$C,$32,$FC,$C,$3C,$FC,$C,$34,$0
		dc.b	2,$3E,0,$2
loc_3A1CC:
		dc.b	0,8,0,0,0,$0
loc_3A1D2:
		dc.b	5,8,0,4,$E8,$30,4,$E8,$32,4,$E8,$3C,4,$E8,$34,$2
		dc.b	$FA,$3E,2,$FA
loc_3A1E6:
		dc.b	5,8,0,$C,$E8,$30,$C,$E8,$32,$C,$E8,$3C,$C,$E8,$34,$4
		dc.b	$FC,$3E,4,$FC
loc_3A1FA:
		dc.b	5,8,0,$18,$F4,$30,$18,$F4,$32,$18,$F4,$3C,$18,$F4,$34,$4
		dc.b	$FC,$3E,4,$FC
loc_3A20E:
		dc.b	5,8,0,$18,$FC,$30,$18,$FC,$32,$18,$FC,$3C,$18,$FC,$34,$6
		dc.b	$FE,$3E,6,$FE
;-------------------------------------------------------------------------------	
loc_3A222:	
		dc.l	loc_3A22A
		dc.b	0,1,2,$C0
;-------------------------------------------------------------------------------	
loc_3A22A:
		dc.w	loc_3A230-loc_3A22A
		dc.w	loc_3A244-loc_3A22A
		dc.w	loc_3A24A-loc_3A22A
loc_3A230:
		dc.b	5,$10,0,0,4,$30,0,4,$32,0,4,$3C,0,4,$34,$0
		dc.b	4,$3E,0,$4
loc_3A244:
		dc.b	0,$10,0,0,0,$0
loc_3A24A:
		dc.b	5,8,0,0,$F8,$30,0,$F8,$32,0,$F8,$3C,0,$F8,$34,$0
		dc.b	$F8,$3E,0,$F8
;-------------------------------------------------------------------------------	
loc_3A25E: 
		dc.l	loc_3A288	
		dc.b	0,1,2,3,$40,$BD,4,5,6,7,8,$40,$BD,9,$A,$1
		dc.b	2,3,$40,$BD,4,5,6,7,8,$40,$BD,$C0
;-------------------------------------------------------------------------------	
loc_3A27E:	
		dc.l	loc_3A288
		dc.b	$88,$87,$86,$85,$B,$C0	
;-------------------------------------------------------------------------------	
loc_3A288:
		dc.w	loc_3A2A0-loc_3A288
		dc.w	loc_3A2B8-loc_3A288
		dc.w	loc_3A2D0-loc_3A288
		dc.w	loc_3A2E4-loc_3A288
		dc.w	loc_3A2FC-loc_3A288
		dc.w	loc_3A314-loc_3A288
		dc.w	loc_3A326-loc_3A288
		dc.w	loc_3A33E-loc_3A288
		dc.w	loc_3A352-loc_3A288
		dc.w	loc_3A36A-loc_3A288
		dc.w	loc_3A382-loc_3A288
		dc.w	loc_3A394-loc_3A288
loc_3A2A0:
		dc.b	6,$20,$34,$F8,$F8,$2E,$F8,$F8,0,0,$FC,$30,4,$FB,$32,$3
		dc.b	$FB,$3C,$FC,$FB,$3E,0,$FE,$0
loc_3A2B8:
		dc.b	6,$10,$34,$F0,$FC,$2E,$F0,$FC,0,$F0,$FC,$30,$F4,$FB,$32,$F3
		dc.b	$FB,$3C,$EC,$FB,$3E,$F8,0,$0
loc_3A2D0:
		dc.b	5,$10,$34,$F8,4,$2E,$F8,4,0,$F8,4,$30,$FC,3,$32,$FB
		dc.b	3,$3C,$F4,$3
loc_3A2E4:
		dc.b	6,$10,$34,$FC,$10,$2E,$F8,$10,0,0,8,$30,$F8,$A,$32,$FA
		dc.b	$A,$3C,8,$A,$3E,0,8,$0
loc_3A2FC:
		dc.b	6,$20,$34,$FE,$FE,0,$F4,$FC,$30,$F0,$FD,$32,$F1,$FD,$3C,$F8
		dc.b	$FD,$3E,$EC,$FA,$3A,$E8,$FC,$0
loc_3A314:
		dc.b	4,$20,$3E,$F8,$FC,$3A,$F8,$FC,$30,$FC,$FF,$32,$FD,$FF,$3C,$4
		dc.b	$FF,$0
loc_3A326:
		dc.b	6,$10,$3E,$F0,$FC,$3A,$F0,$FC,0,$F0,$FC,$30,$EC,$FB,$32,$ED
		dc.b	$FB,$3C,$F4,$FB,$34,$F8,0,$0
loc_3A33E:
		dc.b	5,$10,$3E,$F8,4,$3A,$F8,4,0,$F8,4,$30,$F4,3,$32,$F5
		dc.b	3,$3C,$FC,$3
loc_3A352:
		dc.b	6,$10,$3E,$FC,$10,$3A,$F8,$10,0,0,8,$30,8,$A,$32,$6
		dc.b	$A,$3C,$F8,$A,$34,0,8,$0
loc_3A36A:
		dc.b	6,$20,$3E,$FE,$FE,0,$F4,$FC,$30,$F8,$FD,$32,$F7,$FD,$3C,$F1
		dc.b	$FD,$34,$EC,$FA,$2E,$E8,$FC,$0
loc_3A382:
		dc.b	4,$20,$34,$F8,$FC,$2E,$F8,$FC,$30,4,$FF,$32,3,$FF,$3C,$FC
		dc.b	$FF,$0
loc_3A394:
		dc.b	6,$10,$3E,0,8,$3A,0,8,0,0,8,$30,0,8,$32,$0
		dc.b	8,$3C,0,8,$34,0,8,$0
;------------------------------------------------------------------------------- 
loc_3A3AC:
		dc.w	$2C,$C704
loc_3A3B0:
		dc.w	$2E,$C706
loc_3A3B4:
		dc.w	$30,$C708
loc_3A3B8:
		dc.w	$32,$C70A
loc_3A3BC:
		dc.w	$34,$C70C 
loc_3A3C0:
		dc.w	$36,$C70E
loc_3A3C4:
		dc.w	$38,$C710
loc_3A3C8:
		dc.w	$3A,$C712
loc_3A3CC:
		dc.w	$3C,$C714
loc_3A3D0:
		dc.w	$3E,$C716
loc_3A3D4:
		dc.w	$10,$C718
loc_3A3D8:
		dc.w	$10,$C71A
loc_3A3DC:
		dc.w	$10,$C71C
;-------------------------------------------------------------------------------	
loc_3A3E0: 
		dc.l	Final_Boss_Mappings	
		dc.w	$330
		dc.b	4,4,$38,$0
;-------------------------------------------------------------------------------	
loc_3A3EA:	
		dc.w	loc_3A3EC-loc_3A3EA
loc_3A3EC:
		dc.b	7,$15,$15,$15,$15,$15,$15,$15,$15,0,1,2,$FA,$0
;-------------------------------------------------------------------------------	
loc_3A3FA:	
		dc.w	loc_3A402-loc_3A3FA
		dc.w	loc_3A406-loc_3A3FA
		dc.w	loc_3A420-loc_3A3FA
		dc.w	loc_3A43A-loc_3A3FA
loc_3A402:
		dc.b	1,$C,$D,$FF
loc_3A406:
		dc.b	1,$C,$D,$C,$C,$D,$D,$C,$C,$C,$D,$D,$D,$C,$C,$C
		dc.b	$C,$C,$D,$D,$D,$D,$D,$D,$FA,$0
loc_3A420:
		dc.b	1,$D,$D,$D,$D,$D,$D,$C,$C,$C,$C,$C,$D,$D,$D,$C
		dc.b	$C,$C,$D,$D,$C,$C,$D,$C,$FD,$0
loc_3A43A:
		dc.b	0,$D,$15,$FF
;-------------------------------------------------------------------------------	
loc_3A43E:	
		dc.w	loc_3A440-loc_3A43E
loc_3A440:
		dc.b	3,$13,$12,$11,$10,$16,$FF,$0
;-------------------------------------------------------------------------------	
Final_Boss_Mappings: 
		dc.w	loc_3A476-Final_Boss_Mappings
		dc.w	loc_3A480-Final_Boss_Mappings
		dc.w	loc_3A49A-Final_Boss_Mappings
		dc.w	loc_3A4B4-Final_Boss_Mappings
		dc.w	loc_3A506-Final_Boss_Mappings
		dc.w	loc_3A510-Final_Boss_Mappings
		dc.w	loc_3A51A-Final_Boss_Mappings
		dc.w	loc_3A52C-Final_Boss_Mappings
		dc.w	loc_3A52C-Final_Boss_Mappings
		dc.w	loc_3A52C-Final_Boss_Mappings
		dc.w	loc_3A52C-Final_Boss_Mappings
		dc.w	loc_3A536-Final_Boss_Mappings
		dc.w	loc_3A568-Final_Boss_Mappings
		dc.w	loc_3A572-Final_Boss_Mappings
		dc.w	loc_3A57C-Final_Boss_Mappings
		dc.w	loc_3A586-Final_Boss_Mappings
		dc.w	loc_3A590-Final_Boss_Mappings
		dc.w	loc_3A5D2-Final_Boss_Mappings
		dc.w	loc_3A614-Final_Boss_Mappings
		dc.w	loc_3A656-Final_Boss_Mappings
		dc.w	loc_3A698-Final_Boss_Mappings
		dc.w	loc_3A6A2-Final_Boss_Mappings
		dc.w	loc_3A6AC-Final_Boss_Mappings
loc_3A476:
		dc.w	$1
		dc.l	$F00B0000,$C
loc_3A480:
		dc.w	$3
		dc.l	$F00D000C,$6FFEC,$90014,$AFFF4
		dc.l	$F80A001A,$D000C
loc_3A49A:
		dc.w	$3
		dc.l	$8000023,$11FFDC,$F80E0024,$12FFE4
		dc.l	$F80E0030,$180004
loc_3A4B4:
		dc.w	$A
		dc.l	$DC0F203C,$201EFFD4,$DC0F204C,$2026FFF4
		dc.l	$DC0B205C,$202E0014,$DC0B2068,$2034002C
		dc.l	$FC0F2074,$203AFFD4,$FC0F2084,$2042FFF4
		dc.l	$FC0B2094,$204A0014,$FC0920A0,$2050002C
		dc.l	$1C0C20A6,$2053FFE4,$1C0C20AA,$20550004
loc_3A506:
		dc.w	$1
		dc.l	$F00F20AE,$2057FFF0
loc_3A510:
		dc.w	$1
		dc.l	$F40A20BE,$205FFFF4
loc_3A51A:
		dc.w	$2
		dc.l	$F40E20C7,$20630000,$F40E20D3,$2069FFE0
loc_3A52C:
		dc.w	$1
		dc.l	$F00F20E2,$2071FFF0
loc_3A536:
		dc.w	$6
		dc.l	$E00620F2,$2079FFEB,$E80920F8,$207CFFFB
		dc.l	$F80620FE,$207FFFEE,$100D2104,$2082FFE0
		dc.l	$F80E210C,$2086FFFE,$100D2118,$208C0000
loc_3A568:
		dc.w	$1
		dc.l	$F4062120,$2090FFF8
loc_3A572:
		dc.w	$1
		dc.l	$F4052126,$2093FFF8
loc_3A57C:
		dc.w	$1
		dc.l	$F00F012B,$95FFF0
loc_3A586:
		dc.w	$1
		dc.l	$FC00013B,$9DFFFC
loc_3A590:
		dc.w	$8
		dc.l	$F005213C,$209EFFF0,$F005293C,$289E0000
		dc.l	$5313C,$309EFFF0,$5393C,$389E0000
		dc.l	$E0002144,$20A2FFE0,$E0002944,$28A20018
		dc.l	$18003144,$30A2FFE0,$18003944,$38A20018
loc_3A5D2:
		dc.w	$8
		dc.l	$F005213C,$209EFFF0,$F005293C,$289E0000
		dc.l	$5313C,$309EFFF0,$5393C,$389E0000
		dc.l	$D8002145,$20A2FFD8,$D8002945,$28A20020
		dc.l	$20003145,$30A2FFD8,$20003945,$38A20020
loc_3A614:
		dc.w	$8
		dc.l	$F005213C,$209EFFF0,$F005293C,$289E0000
		dc.l	$5313C,$309EFFF0,$5393C,$389E0000
		dc.l	$D0002146,$20A3FFD0,$D0002946,$28A30028
		dc.l	$28003146,$30A3FFD0,$28003946,$38A30028
loc_3A656:
		dc.w	$8
		dc.l	$F005213C,$209EFFF0,$F005293C,$289E0000
		dc.l	$5313C,$309EFFF0,$5393C,$389E0000
		dc.l	$C800212A,$2095FFC8,$C800292A,$28950030
		dc.l	$3000312A,$3095FFC8,$3000392A,$38950030
loc_3A698:
		dc.w	$1
		dc.l	$F8050140,$A0FFF8
loc_3A6A2:
		dc.w	$1
		dc.l	4,$20000
loc_3A6AC:
		dc.w	$8
		dc.l	$F005213C,$209EFFF0,$F005293C,$289E0000
		dc.l	$5313C,$309EFFF0,$5393C,$389E0000
		dc.l	$E8002144,$20A2FFE8,$E8002944,$28A20010
		dc.l	$10003144,$30A2FFE8,$10003944,$38A20010	
;===============================================================================
; Object 0xC7 - Death Egg Final Boss
; [ End ]
;===============================================================================