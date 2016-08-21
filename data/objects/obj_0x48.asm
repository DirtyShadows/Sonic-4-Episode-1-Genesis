;=============================================================================== 
; Object 0x48 - Cannon - Oil Ocean 
; [ Begin ]	
;===============================================================================	
loc_21030:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_2104E(pc,d0),d1
		jsr	loc_2104E(pc,d1)
		move.b	$2C(a0),d0
		add.b	$36(a0),d0
		beq	loc_21442
		bra	loc_2143C
loc_2104E:
		dc.w	loc_21062-loc_2104E
		dc.w	loc_210B2-loc_2104E
loc_21052:
		dc.b	$4
loc_21053:	
		dc.b	0,6,7,7,0,5,7,5,0,4,7,6,0,7,$7
loc_21062:
		addq.b	#2,$24(a0)
		move.l	#Cannon_Mappings,4(a0) 
		move.w	#$6368,2(a0)
		bsr	loc_21448
		move.b	$28(a0),d0
		and.w	#$F,d0
		btst	#0,$22(a0)
		beq.s	loc_2108A
		addq.w	#4,d0
loc_2108A:
		add.w	d0,d0
		move.b	loc_21052(pc,d0),1(a0)
		move.b	loc_21053(pc,d0),$3F(a0)
		beq.s	loc_210A0
		move.b	#1,$3E(a0)
loc_210A0:
		move.b	$3F(a0),$1A(a0)
		move.b	#$28,$19(a0)
		move.b	#1,$18(a0)
loc_210B2:
		lea	($FFFFB000).w,a1
		lea	$2C(a0),a4
		moveq	#$2C,d2
		bsr.s	loc_210C8
		lea	($FFFFB040).w,a1
		lea	$36(a0),a4
		moveq	#$36,d2
loc_210C8:
		moveq	#0,d0
		move.b	(a4),d0
		move.w	loc_210D4(pc,d0),d0
		jmp	loc_210D4(pc,d0)
loc_210D4:
		dc.w	loc_210DC-loc_210D4
		dc.w	loc_211A2-loc_210D4
		dc.w	loc_21250-loc_210D4
		dc.w	loc_212B0-loc_210D4
loc_210DC:
		tst.w	($FFFFFE08).w
		bne	loc_211A0
		move.w	8(a1),d0
		sub.w	8(a0),d0
		add.w	#$10,d0
		cmp.w	#$20,d0
		bcc	loc_211A0
		move.w	$C(a1),d1
		sub.w	$C(a0),d1
		add.w	#$10,d1
		cmp.w	#$20,d1
		bcc	loc_211A0
		cmp.b	#6,$24(a1)
		bcc	loc_211A0
		tst.w	($FFFFFE08).w
		bne	loc_211A0
		btst	#3,$22(a1)
		beq.s	loc_2113C
		moveq	#0,d0
		move.b	$3D(a1),d0
		lsl.w	#6,d0
		add.l	#$FFFFB000,d0
		move.l	d0,a3
		move.b	#0,0(a3,d2)
loc_2113C:
		move.w	a0,d0
		sub.w	#$B000,d0
		lsr.w	#6,d0
		and.w	#$7F,d0
		move.b	d0,$3D(a1)
		addq.b	#2,(a4)
		move.w	8(a0),8(a1)
		move.w	$C(a0),$C(a1)
		move.b	#$81,$2A(a1)
		move.b	#2,$1C(a1)
		move.w	#$1000,$14(a1)
		move.w	#0,$10(a1)
		move.w	#0,$12(a1)
		bclr	#5,$22(a0)
		bclr	#5,$22(a1)
		bset	#1,$22(a1)
		bset	#3,$22(a1)
		move.b	$3F(a0),$1A(a0)
		move.w	#$BE,d0
		jsr	Play_Sfx	
loc_211A0:
		rts
loc_211A2:
		tst.b	$3E(a0)
		bne.s	loc_211CA
		cmp.b	#7,$1A(a0)
		beq.s	loc_211E4
		subq.w	#1,$1E(a0)
		bpl.s	loc_211C8
		move.w	#7,$1E(a0)
		addq.b	#1,$1A(a0)
		cmp.b	#7,$1A(a0)
		beq.s	loc_211E4
loc_211C8:
		rts
loc_211CA:
		tst.b	$1A(a0)
		beq.s	loc_211E4
		subq.w	#1,$1E(a0)
		bpl.s	loc_211C8
		move.w	#7,$1E(a0)
		subq.b	#1,$1A(a0)
		beq.s	loc_211E4
		rts
loc_211E4:
		addq.b	#2,(a4)
		move.b	$28(a0),d0
		addq.b	#1,d0
		btst	#0,$22(a0)
		beq.s	loc_211F6
		subq.b	#2,d0
loc_211F6:
		and.w	#3,d0
		add.w	d0,d0
		add.w	d0,d0
		move.w	loc_21240(pc,d0),$10(a1)
		move.w	loc_21242(pc,d0),$12(a1)
		move.w	#3,$1E(a0)
		tst.b	$28(a0)
		bpl.s	loc_2123E
		move.b	#0,$2A(a1)
		bset	#1,$22(a1)
		bclr	#3,$22(a1)
		move.b	#0,$3C(a1)
		move.b	#2,$24(a1)
		move.b	#6,(a4)
		move.w	#7,$3C(a0)
loc_2123E:
		rts
loc_21240:
		dc.w	$0
loc_21242:
		dc.w	$F000,$1000,0,0,$1000,$F000,$0
loc_21250:
		cmp.b	#2,$2C(a0)
		beq.s	loc_2128A
		cmp.b	#2,$36(a0)
		beq.s	loc_2128A
		subq.w	#1,$1E(a0)
		bpl.s	loc_2128A
		move.w	#1,$1E(a0)
		tst.b	$3E(a0)
		beq.s	loc_21280
		cmp.b	#7,$1A(a0)
		beq.s	loc_2128A
		addq.b	#1,$1A(a0)
		bra.s	loc_2128A
loc_21280:
		tst.b	$1A(a0)
		beq.s	loc_2128A
		subq.b	#1,$1A(a0)
loc_2128A:
		move.l	8(a1),d2
		move.l	$C(a1),d3
		move.w	$10(a1),d0
		ext.l	d0
		asl.l	#8,d0
		add.l	d0,d2
		move.w	$12(a1),d0
		ext.l	d0
		asl.l	#8,d0
		add.l	d0,d3
		move.l	d2,8(a1)
		move.l	d3,$C(a1)
		rts
loc_212B0:
		subq.w	#1,$3C(a0)
		bpl.s	loc_212BA
		move.b	#0,(a4)
loc_212BA:
		rts
;-------------------------------------------------------------------------------
Cannon_Mappings: 
		dc.w	loc_212CC-Cannon_Mappings
		dc.w	loc_2130E-Cannon_Mappings
		dc.w	loc_21340-Cannon_Mappings
		dc.w	loc_21362-Cannon_Mappings
		dc.w	loc_21384-Cannon_Mappings
		dc.w	loc_213A6-Cannon_Mappings
		dc.w	loc_213C8-Cannon_Mappings
		dc.w	loc_213FA-Cannon_Mappings
loc_212CC:
		dc.w	$8
		dc.l	$D8040000,$FFF0,$D8040800,$8000000
		dc.l	$E0040002,$1FFF0,$E0040802,$8010000
		dc.l	$E80A0011,$8FFE8,$E80A0811,$8080000
		dc.l	$A1008,$1004FFE8,$A1808,$18040000
loc_2130E:
		dc.w	$6
		dc.l	$E0040000,$FFF0,$E0040800,$8000000
		dc.l	$E80A0011,$8FFE8,$E80A0811,$8080000
		dc.l	$A1008,$1004FFE8,$A1808,$18040000
loc_21340:
		dc.w	$4
		dc.l	$E80A0011,$8FFE8,$E80A0811,$8080000
		dc.l	$A1008,$1004FFE8,$A1808,$18040000
loc_21362:
		dc.w	$4
		dc.l	$E80A001A,$DFFE8,$E80A1823,$18110000
		dc.l	$A0023,$11FFE8,$A181A,$180D0000
loc_21384:
		dc.w	$4
		dc.l	$E80A1023,$1011FFE8,$E80A081A,$80D0000
		dc.l	$A101A,$100DFFE8,$A0823,$8110000
loc_213A6:
		dc.w	$4
		dc.l	$E80A0008,$4FFE8,$E80A102C,$10160000
		dc.l	$A1008,$1004FFE8,$A002C,$160000
loc_213C8:
		dc.w	$6
		dc.l	$E80A0008,$4FFE8,$E80A102C,$10160000
		dc.l	$A1008,$1004FFE8,$A002C,$160000
		dc.l	$F0010006,$30018,$11006,$10030018
loc_213FA:
		dc.w	$8
		dc.l	$E80A0008,$4FFE8,$E80A102C,$10160000
		dc.l	$A1008,$1004FFE8,$A002C,$160000
		dc.l	$F0010004,$20018,$11004,$10020018
		dc.l	$F0010006,$30020,$11006,$10030020	
;=============================================================================== 
; Object 0x48 - Cannon - Oil Ocean 
; [ End ]	
;===============================================================================	