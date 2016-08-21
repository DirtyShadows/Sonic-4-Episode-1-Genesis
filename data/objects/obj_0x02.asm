;===============================================================================
; Object 0x02 Miles
; [ Begin ]
;===============================================================================	
loc_176B0:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_176BE(pc,d0),d1
		jmp	loc_176BE(pc,d1)
loc_176BE:
		dc.w	loc_176C8-loc_176BE
		dc.w	loc_1774E-loc_176BE
		dc.w	loc_1884A-loc_176BE
		dc.w	loc_188C6-loc_176BE
		dc.w	loc_189CE-loc_176BE
loc_176C8:
		addq.b	#2,$24(a0)
		move.b	#$F,$16(a0)
		move.b	#9,$17(a0)
		move.l	#Miles_Mappings,4(a0) 
		move.w	#$7A0,2(a0)
		bsr	ModifySpriteAttr_2P	
		move.b	#2,$18(a0)
		move.b	#$18,$19(a0)
		move.b	#$84,1(a0)
		move.w	#$600,($FFFFFEC0).w
		move.w	#$C,($FFFFFEC2).w
		move.w	#$80,($FFFFFEC4).w
		move.b	#$C,$3E(a0)
		move.b	#$D,$3F(a0)
		move.w	8(a0),($FFFFFEE2).w
		move.w	$C(a0),($FFFFFEE4).w
		move.w	2(a0),($FFFFFEEC).w
		move.w	$3E(a0),($FFFFFEEE).w
		move.b	#0,$2C(a0)
		move.b	#4,$2D(a0)
		move.b	#$1E,$28(a0)
		move.b	#5,($FFFFB3C0).w
		move.w	a0,($FFFFB3FE).w
loc_1774E:
		tst.b	($FFFFF7CF).w
		bne.s	loc_1775A
		move.w	($FFFFF606).w,($FFFFF66A).w
loc_1775A:
		tst.w	($FFFFFFD8).w
		bne.s	loc_17764
		bsr	loc_1784E
loc_17764:
		btst	#0,$2A(a0)
		bne.s	loc_1777E
		moveq	#0,d0
		move.b	$22(a0),d0
		and.w	#6,d0
		move.w	loc_177C8(pc,d0),d1
		jsr	loc_177C8(pc,d1)
loc_1777E:
		cmp.w	#$FF00,($FFFFEECC).w
		bne.s	loc_1778C
		and.w	#$7FF,$C(a0)
loc_1778C:
		bsr.s	loc_177D0
		bsr	loc_17C40
		bsr	loc_17C5A
		move.b	($FFFFF768).w,$36(a0)
		move.b	($FFFFF76A).w,$37(a0)
		tst.b	($FFFFF7C7).w
		beq.s	loc_177B4
		tst.b	$1C(a0)
		bne.s	loc_177B4
		move.b	$1D(a0),$1C(a0)
loc_177B4:
		bsr	Miles_Animate	
		tst.b	$2A(a0)
		bmi.s	loc_177C4
		jsr	TouchResponse	
loc_177C4:
		bra	Load_Miles_Dynamic_PLC	
loc_177C8:
		dc.w	loc_17D12-loc_177C8
		dc.w	loc_17D52-loc_177C8
		dc.w	loc_17D7C-loc_177C8
		dc.w	loc_17DBA-loc_177C8
loc_177D0:
		move.w	$30(a0),d0	
		beq.s	loc_177DE
		subq.w	#1,$30(a0)
		lsr.w	#3,d0
		bcc.s	loc_177E4
loc_177DE:
		jsr	displaySprite	
loc_177E4:
		btst	#1,$2B(a0)
		beq.s	loc_17816
		tst.w	$32(a0)
		beq.s	loc_17816
		subq.w	#1,$32(a0)
		bne.s	loc_17816
		tst.b	($FFFFF7AA).w
		bne.s	loc_17810
		cmp.b	#$C,$28(a0)
		bcs.s	loc_17810
		move.w	($FFFFFF90).w,d0
		jsr	Play_Music	
loc_17810:
		bclr	#1,$2B(a0)
loc_17816:
		btst	#2,$2B(a0)
		beq.s	loc_1784C
		tst.w	$34(a0)
		beq.s	loc_1784C
		subq.w	#1,$34(a0)
		bne.s	loc_1784C
		move.w	#$600,($FFFFFEC0).w
		move.w	#$C,($FFFFFEC2).w
		move.w	#$80,($FFFFFEC4).w
		bclr	#2,$2B(a0)
		move.w	#$FC,d0
		jmp	Play_Music	
loc_1784C:
		rts
;--------------------------------------------------------------------------------

loc_1784E:
		move.b	($FFFFF66A).w,d0
		and.b	#$7F,d0
		beq.s	loc_1785E
		move.w	#$258,($FFFFF702).w
loc_1785E:
		lea	($FFFFB000).w,a1
		move.w	($FFFFF708).w,d0
		move.w	loc_1786E(pc,d0),d0
		jmp	loc_1786E(pc,d0)
loc_1786E:
		dc.w	loc_17878-loc_1786E
		dc.w	loc_178AA-loc_1786E
		dc.w	loc_17904-loc_1786E
		dc.w	loc_17A2C-loc_1786E
		dc.w	loc_17BD6-loc_1786E
loc_17878:
		move.w	#6,($FFFFF708).w
		move.b	#0,$2A(a0)
		move.b	#0,$1C(a0)
		move.w	#0,$10(a0)
		move.w	#0,$12(a0)
		move.w	#0,$14(a0)
		move.b	#2,$22(a0)
		move.w	#0,($FFFFF704).w
		rts
;--------------------------------------------------------------------------------

loc_178AA:
		move.b	($FFFFF66A).w,d0
		and.b	#$F0,d0
		bne.s	loc_178CE
		move.w	($FFFFFE04).w,d0
		and.w	#$3F,d0
		bne.s	loc_17902
		tst.b	$2A(a1)
		bne.s	loc_17902
		move.b	$22(a1),d0
		and.b	#$D2,d0
		bne.s	loc_17902
loc_178CE:
		move.w	#4,($FFFFF708).w
		move.w	8(a1),d0
		move.w	d0,8(a0)
		move.w	d0,($FFFFF70A).w
		move.w	$C(a1),d0
		move.w	d0,($FFFFF70C).w
		sub.w	#$C0,d0
		move.w	d0,$C(a0)
		or.w	#$8000,2(a0)
		move.b	#0,$39(a0)
		move.w	#0,$3A(a0)
loc_17902:
		rts
;--------------------------------------------------------------------------------

loc_17904:
		tst.b	1(a0)
		bmi.s	loc_17942
		addq.w	#1,($FFFFF704).w
		cmp.w	#$12C,($FFFFF704).w
		bcs.s	loc_17948
		move.w	#0,($FFFFF704).w
		move.w	#2,($FFFFF708).w
		move.b	#$81,$2A(a0)
		move.b	#2,$22(a0)
		move.w	#0,8(a0)
		move.w	#0,$C(a0)
		move.b	#$20,$1C(a0)
		rts
;--------------------------------------------------------------------------------

loc_17942:
		move.w	#0,($FFFFF704).w
loc_17948:
		lea	($FFFFE500).w,a2
		move.w	#$10,d2
		lsl.b	#2,d2
		addq.b	#4,d2
		move.w	($FFFFEED2).w,d3
		sub.b	d2,d3
		move.w	0(a2,d3),($FFFFF70A).w
		move.w	2(a2,d3),($FFFFF70C).w
		move.w	8(a0),d0
		sub.w	($FFFFF70A).w,d0
		beq.s	loc_179B6
		move.w	d0,d2
		bpl.s	loc_17976
		neg.w	d2
loc_17976:
		lsr.w	#4,d2
		cmp.w	#$C,d2
		bcs.s	loc_17980
		moveq	#$C,d2
loc_17980:
		move.b	$10(a1),d1
		bpl.s	loc_17988
		neg.b	d1
loc_17988:
		add.b	d1,d2
		addq.w	#1,d2
		tst.w	d0
		bmi.s	loc_179A2
		bset	#0,$22(a0)
		cmp.w	d0,d2
		bcs.s	loc_1799E
		move.w	d0,d2
		moveq	#0,d0
loc_1799E:
		neg.w	d2
		bra.s	loc_179B2
loc_179A2:
		bclr	#0,$22(a0)
		neg.w	d0
		cmp.w	d0,d2
		bcs.s	loc_179B2
		move.b	d0,d2
		moveq	#0,d0
loc_179B2:
		add.w	d2,8(a0)
loc_179B6:
		moveq	#1,d2
		move.w	$C(a0),d1
		sub.w	($FFFFF70C).w,d1
		beq.s	loc_179CA
		bmi.s	loc_179C6
		neg.w	d2
loc_179C6:
		add.w	d2,$C(a0)
loc_179CA:
		lea	($FFFFE400).w,a2
		move.b	2(a2,d3),d2
		and.b	#$D2,d2
		bne.s	loc_17A2A
		or.w	d0,d1
		bne.s	loc_17A2A
		move.w	#6,($FFFFF708).w
		move.b	#0,$2A(a0)
		move.b	#0,$1C(a0)
		move.w	#0,$10(a0)
		move.w	#0,$12(a0)
		move.w	#0,$14(a0)
		move.b	#2,$22(a0)
		move.w	#0,$2E(a0)
		and.w	#$7FFF,2(a0)
		tst.b	2(a1)
		bpl.s	loc_17A1E
		or.w	#$8000,2(a0)
loc_17A1E:
		move.b	$3E(a1),$3E(a0)
		move.b	$3F(a1),$3F(a0)
loc_17A2A:
		rts
;--------------------------------------------------------------------------------

loc_17A2C:
		bsr	loc_17B84
		tst.w	($FFFFF702).w
		bne	loc_17B46
		tst.b	$2A(a0)
		bmi	loc_17B46
		tst.w	$2E(a0)
		beq.s	loc_17A52
		tst.w	$14(a0)
		bne.s	loc_17A52
		move.w	#8,($FFFFF708).w
loc_17A52:
		lea	($FFFFE500).w,a1
		move.w	#$10,d1
		lsl.b	#2,d1
		addq.b	#4,d1
		move.w	($FFFFEED2).w,d0
		sub.b	d1,d0
		move.w	0(a1,d0),d2
		move.w	2(a1,d0),d3
		lea	($FFFFE400).w,a1
		move.w	0(a1,d0),d1
		move.b	2(a1,d0),d4
		move.w	d1,d0
		btst	#5,$22(a0)
		beq.s	loc_17A8A
		btst	#5,d4
		beq	loc_17B24
loc_17A8A:
		sub.w	8(a0),d2
		beq.s	loc_17AD8
		bpl.s	loc_17AB6
		neg.w	d2
		cmp.w	#$10,d2
		bcs.s	loc_17AA2
		and.w	#$F3F3,d1
		or.w	#$404,d1
loc_17AA2:
		tst.w	$14(a0)
		beq.s	loc_17AEC
		btst	#0,$22(a0)
		beq.s	loc_17AEC
		subq.w	#1,8(a0)
		bra.s	loc_17AEC
loc_17AB6:
		cmp.w	#$10,d2
		bcs.s	loc_17AC4
		and.w	#$F3F3,d1
		or.w	#$808,d1
loc_17AC4:
		tst.w	$14(a0)
		beq.s	loc_17AEC
		btst	#0,$22(a0)
		bne.s	loc_17AEC
		addq.w	#1,8(a0)
		bra.s	loc_17AEC
loc_17AD8:
		bclr	#0,$22(a0)
		move.b	d4,d0
		and.b	#1,d0
		beq.s	loc_17AEC
		bset	#0,$22(a0)
loc_17AEC:
		tst.b	($FFFFF70F).w
		beq.s	loc_17B04
		or.w	#$7000,d1
		btst	#1,$22(a0)
		bne.s	loc_17B40
		move.b	#0,($FFFFF70F).w
loc_17B04:
		move.w	($FFFFFE04).w,d0
		and.w	#$FF,d0
		beq.s	loc_17B14
		cmp.w	#$40,d2
		bcc.s	loc_17B40
loc_17B14:
		sub.w	$C(a0),d3
		beq.s	loc_17B40
		bpl.s	loc_17B40
		neg.w	d3
		cmp.w	#$20,d3
		bcs.s	loc_17B40
loc_17B24:
		move.b	($FFFFFE05).w,d0
		and.b	#$3F,d0
		bne.s	loc_17B40
		cmp.b	#8,$1C(a0)
		beq.s	loc_17B40
		or.w	#$7070,d1
		move.b	#1,($FFFFF70F).w
loc_17B40:
		move.w	d1,($FFFFF66A).w
		rts
;--------------------------------------------------------------------------------

loc_17B46:
		tst.w	($FFFFF702).w
		beq.s	loc_17B50
		subq.w	#1,($FFFFF702).w
loc_17B50:
		rts
;--------------------------------------------------------------------------------

loc_17B52:	
		move.w	#0,($FFFFF702).w
		move.w	#0,($FFFFF704).w
		move.w	#2,($FFFFF708).w
		move.b	#$81,$2A(a0)
		move.b	#2,$22(a0)
		move.w	#0,8(a0)
		move.w	#0,$C(a0)
		move.b	#$20,$1C(a0)
		rts
;--------------------------------------------------------------------------------

loc_17B84:
		tst.b	1(a0)
		bmi.s	loc_17BBA
		btst	#3,$22(a0)
		beq.s	loc_17BAA
		moveq	#0,d0
		move.b	$3D(a0),d0
		lsl.w	#6,d0
		add.l	#$FFFFB000,d0
		move.l	d0,a3
		move.b	($FFFFF70E).w,d0
		cmp.b	(a3),d0
		bne.s	loc_17BB6
loc_17BAA:
		addq.w	#1,($FFFFF704).w
		cmp.w	#$12C,($FFFFF704).w
		bcs.s	loc_17BC0
loc_17BB6:
		bra	loc_17B52
loc_17BBA:
		move.w	#0,($FFFFF704).w
loc_17BC0:
		moveq	#0,d0
		move.b	$3D(a0),d0
		lsl.w	#6,d0
		add.l	#$FFFFB000,d0
		move.l	d0,a3
		move.b	(a3),($FFFFF70E).w
		rts
;--------------------------------------------------------------------------------

loc_17BD6:
		bsr	loc_17B84
		tst.w	($FFFFF702).w
		bne	loc_17C3E
		tst.w	$2E(a0)
		bne.s	loc_17C3E
		tst.b	$39(a0)
		bne.s	loc_17C14
		tst.w	$14(a0)
		bne.s	loc_17C3E
		move.w	#$202,($FFFFF66A).w
		move.b	($FFFFFE05).w,d0
		and.b	#$7F,d0
		beq.s	loc_17C24
		cmp.b	#8,$1C(a0)
		bne.s	loc_17C3E
		move.w	#$7272,($FFFFF66A).w
		rts
;--------------------------------------------------------------------------------

loc_17C14:
		move.w	#$202,($FFFFF66A).w
		move.b	($FFFFFE05).w,d0
		and.b	#$7F,d0
		bne.s	loc_17C32
loc_17C24:
		move.w	#0,($FFFFF66A).w
		move.w	#6,($FFFFF708).w
		rts
;--------------------------------------------------------------------------------

loc_17C32:
		and.b	#$1F,d0
		bne.s	loc_17C3E
		or.w	#$7070,($FFFFF66A).w
loc_17C3E:
		rts
;--------------------------------------------------------------------------------

loc_17C40:
		move.w	($FFFFEED6).w,d0
		lea	($FFFFE600).w,a1
		lea	0(a1,d0),a1
		move.w	8(a0),(a1)+
		move.w	$C(a0),(a1)+
		addq.b	#4,($FFFFEED7).w
		rts
;--------------------------------------------------------------------------------

loc_17C5A:
		tst.b	($FFFFF730).w
		bne.s	loc_17C62
loc_17C60:	
		rts
;--------------------------------------------------------------------------------

loc_17C62:
		move.w	($FFFFF646).w,d0
		cmp.w	$C(a0),d0
		bge.s	loc_17CBA
		bset	#6,$22(a0)
		bne.s	loc_17C60
		move.l	a0,a1
		bsr	ResumeMusic	
		move.b	#$A,($FFFFB300).w
		move.b	#$81,($FFFFB328).w
		move.l	a0,($FFFFB33C).w
		move.w	#$300,($FFFFFEC0).w
		move.w	#6,($FFFFFEC2).w
		move.w	#$40,($FFFFFEC4).w
		asr.w	$10(a0)
		asr.w	$12(a0)
		asr.w	$12(a0)
		beq.s	loc_17C60
		move.w	#$100,($FFFFB45C).w
		move.w	#$AA,d0
		jmp	Play_Sfx	
loc_17CBA:
		bclr	#6,$22(a0)
		beq.s	loc_17C60
		move.l	a0,a1
		bsr	ResumeMusic	
		move.w	#$600,($FFFFFEC0).w
		move.w	#$C,($FFFFFEC2).w
		move.w	#$80,($FFFFFEC4).w
		cmp.b	#4,$24(a0)
		beq.s	loc_17CE6
		asl.w	$12(a0)
loc_17CE6:
		tst.w	$12(a0)
		beq	loc_17C60
		move.w	#$100,($FFFFB45C).w
		move.l	a0,a1
		bsr	ResumeMusic	
		cmp.w	#$F000,$12(a0)
		bgt.s	loc_17D08
		move.w	#$F000,$12(a0)
loc_17D08:
		move.w	#$AA,d0
		jmp	Play_Sfx	
loc_17D12:
		bsr	loc_183CC
		bsr	loc_182DC
		bsr	loc_184D0
		bsr	loc_17DE4
		bsr	loc_18276
		bsr	loc_18218
		jsr	SpeedToPos	
		bsr	Sonic_Miles_AnglePos	
		bsr	loc_18542
		move.w	$14(a0),d0
		bpl.s	loc_17D40
		neg.w	d0
loc_17D40:
		cmp.w	#$800,d0
		bcc.s	loc_17D50
		bsr	loc_1ABA4
		tst.w	d1
		bmi	Kill_Miles	
loc_17D50:
		rts
;--------------------------------------------------------------------------------

loc_17D52:
		bsr	loc_1838A
		bsr	loc_1819E
		bsr	loc_18218
		jsr	ObjectFall	
		btst	#6,$22(a0)
		beq.s	loc_17D72
		sub.w	#$28,$12(a0)
loc_17D72:
		bsr	loc_18584
		bsr	loc_185E4
		rts
;--------------------------------------------------------------------------------

loc_17D7C:
		tst.b	$39(a0)
		bne.s	loc_17D86
		bsr	loc_182DC
loc_17D86:
		bsr	loc_18506
		bsr	loc_1808C
		bsr	loc_18218
		jsr	SpeedToPos	
		bsr	Sonic_Miles_AnglePos	
		bsr	loc_18542
		move.w	$14(a0),d0
		bpl.s	loc_17DA8
		neg.w	d0
loc_17DA8:
		cmp.w	#$800,d0
		bcc.s	loc_17DB8
		bsr	loc_1ABA4
		tst.w	d1
		bmi	Kill_Miles	
loc_17DB8:
		rts
;--------------------------------------------------------------------------------

loc_17DBA:
		bsr	loc_1838A
		bsr	loc_1819E
		bsr	loc_18218
		jsr	ObjectFall	
		btst	#6,$22(a0)
		beq.s	loc_17DDA
		sub.w	#$28,$12(a0)
loc_17DDA:
		bsr	loc_18584
		bsr	loc_185E4
		rts
;--------------------------------------------------------------------------------

loc_17DE4:
		move.w	($FFFFFEC0).w,d6
		move.w	($FFFFFEC2).w,d5
		move.w	($FFFFFEC4).w,d4
		tst.b	$2B(a0)
		bmi	loc_17EF6
		tst.w	$2E(a0)
		bne	loc_17ECA
		btst	#2,($FFFFF66A).w
		beq.s	loc_17E0C
		bsr	loc_17F86
loc_17E0C:
		btst	#3,($FFFFF66A).w
		beq.s	loc_17E18
		bsr	loc_1800C
loc_17E18:
		move.b	$26(a0),d0
		add.b	#$20,d0
		and.b	#$C0,d0
		bne	loc_17ECA
		tst.w	$14(a0)
		bne	loc_17ECA
		bclr	#5,$22(a0)
		move.b	#5,$1C(a0)
		btst	#3,$22(a0)
		beq.s	loc_17E7A
		moveq	#0,d0
		move.b	$3D(a0),d0
		lsl.w	#6,d0
		lea	($FFFFB000).w,a1
		lea	0(a1,d0),a1
		tst.b	$22(a1)
		bmi.s	loc_17EAC
		moveq	#0,d1
		move.b	$19(a1),d1
		move.w	d1,d2
		add.w	d2,d2
		subq.w	#4,d2
		add.w	8(a0),d1
		sub.w	8(a1),d1
		cmp.w	#4,d1
		blt.s	loc_17E9E
		cmp.w	d2,d1
		bge.s	loc_17E8E
		bra.s	loc_17EAC
loc_17E7A:
		jsr	Sonic_HitFloor	
		cmp.w	#$C,d1
		blt.s	loc_17EAC
		cmp.b	#3,$36(a0)
		bne.s	loc_17E96
loc_17E8E:
		bclr	#0,$22(a0)
		bra.s	loc_17EA4
loc_17E96:
		cmp.b	#3,$37(a0)
		bne.s	loc_17EAC
loc_17E9E:
		bset	#0,$22(a0)
loc_17EA4:
		move.b	#6,$1C(a0)
		bra.s	loc_17ECA
loc_17EAC:
		btst	#0,($FFFFF66A).w
		beq.s	loc_17EBC
		move.b	#7,$1C(a0)
		bra.s	loc_17ECA
loc_17EBC:
		btst	#1,($FFFFF66A).w
		beq.s	loc_17ECA
		move.b	#8,$1C(a0)
loc_17ECA:
		move.b	($FFFFF66A).w,d0
		and.b	#$C,d0
		bne.s	loc_17EF6
		move.w	$14(a0),d0
		beq.s	loc_17EF6
		bmi.s	loc_17EEA
		sub.w	d5,d0
		bcc.s	loc_17EE4
		move.w	#0,d0
loc_17EE4:
		move.w	d0,$14(a0)
		bra.s	loc_17EF6
loc_17EEA:
		add.w	d5,d0
		bcc.s	loc_17EF2
		move.w	#0,d0
loc_17EF2:
		move.w	d0,$14(a0)
loc_17EF6:
		move.b	$26(a0),d0
		jsr	CalcSine	
		muls.w	$14(a0),d1
		asr.l	#8,d1
		move.w	d1,$10(a0)
		muls.w	$14(a0),d0
		asr.l	#8,d0
		move.w	d0,$12(a0)
loc_17F14:	
		move.b	$26(a0),d0
		add.b	#$40,d0
		bmi.s	loc_17F84
		move.b	#$40,d1
		tst.w	$14(a0)
		beq.s	loc_17F84
		bmi.s	loc_17F2C
		neg.w	d1
loc_17F2C:
		move.b	$26(a0),d0
		add.b	d1,d0
		move.w	d0,-(sp)
		bsr	Sonic_WalkSpeed	
		move.w	(sp)+,d0
		tst.w	d1
		bpl.s	loc_17F84
		asl.w	#8,d1
		add.b	#$20,d0
		and.b	#$C0,d0
		beq.s	loc_17F80
		cmp.b	#$40,d0
		beq.s	loc_17F6E
		cmp.b	#$80,d0
		beq.s	loc_17F68
		add.w	d1,$10(a0)
		bset	#5,$22(a0)
		move.w	#0,$14(a0)
		rts
;--------------------------------------------------------------------------------

loc_17F68:
		sub.w	d1,$12(a0)
		rts
;--------------------------------------------------------------------------------

loc_17F6E:
		sub.w	d1,$10(a0)
		bset	#5,$22(a0)
		move.w	#0,$14(a0)
		rts
;--------------------------------------------------------------------------------

loc_17F80:
		add.w	d1,$12(a0)
loc_17F84:
		rts
;--------------------------------------------------------------------------------

loc_17F86:
		move.w	$14(a0),d0
		beq.s	loc_17F8E
		bpl.s	loc_17FC0
loc_17F8E:
		bset	#0,$22(a0)
		bne.s	loc_17FA2
		bclr	#5,$22(a0)
		move.b	#1,$1D(a0)
loc_17FA2:
		sub.w	d5,d0
		move.w	d6,d1
		neg.w	d1
		cmp.w	d1,d0
		bgt.s	loc_17FB4
		add.w	d5,d0
		cmp.w	d1,d0
		ble.s	loc_17FB4
		move.w	d1,d0
loc_17FB4:
		move.w	d0,$14(a0)
		move.b	#0,$1C(a0)
		rts
;--------------------------------------------------------------------------------

loc_17FC0:
		sub.w	d4,d0
		bcc.s	loc_17FC8
		move.w	#$FF80,d0
loc_17FC8:
		move.w	d0,$14(a0)
		move.b	$26(a0),d0
		add.b	#$20,d0
		and.b	#$C0,d0
		bne.s	loc_1800A
		cmp.w	#$400,d0
		blt.s	loc_1800A
		move.b	#$D,$1C(a0)
		bclr	#0,$22(a0)
		move.w	#$A4,d0
		jsr	Play_Sfx	
		cmp.b	#$C,$28(a0)
		bcs.s	loc_1800A
		move.b	#6,($FFFFB464).w
		move.b	#$15,($FFFFB45A).w
loc_1800A:
		rts
;--------------------------------------------------------------------------------

loc_1800C:
		move.w	$14(a0),d0
		bmi.s	loc_18040
		bclr	#0,$22(a0)
		beq.s	loc_18026
		bclr	#5,$22(a0)
		move.b	#1,$1D(a0)
loc_18026:
		add.w	d5,d0
		cmp.w	d6,d0
		blt.s	loc_18034
		sub.w	d5,d0
		cmp.w	d6,d0
		bge.s	loc_18034
		move.w	d6,d0
loc_18034:
		move.w	d0,$14(a0)
		move.b	#0,$1C(a0)
		rts
;--------------------------------------------------------------------------------

loc_18040:
		add.w	d4,d0
		bcc.s	loc_18048
		move.w	#$80,d0
loc_18048:
		move.w	d0,$14(a0)
		move.b	$26(a0),d0
		add.b	#$20,d0
		and.b	#$C0,d0
		bne.s	loc_1808A
		cmp.w	#$FC00,d0
		bgt.s	loc_1808A
		move.b	#$D,$1C(a0)
		bset	#0,$22(a0)
		move.w	#$A4,d0
		jsr	Play_Sfx	
		cmp.b	#$C,$28(a0)
		bcs.s	loc_1808A
		move.b	#6,($FFFFB464).w
		move.b	#$15,($FFFFB45A).w
loc_1808A:
		rts
;--------------------------------------------------------------------------------

loc_1808C:
		move.w	($FFFFFEC0).w,d6
		asl.w	#1,d6
		move.w	($FFFFFEC2).w,d5
		asr.w	#1,d5
		move.w	($FFFFFEC4).w,d4
		asr.w	#2,d4
		tst.b	$2B(a0)
		bmi	loc_18122
		tst.w	$2E(a0)
		bne.s	loc_180C4
		btst	#2,($FFFFF66A).w
		beq.s	loc_180B8
		bsr	loc_18158
loc_180B8:
		btst	#3,($FFFFF66A).w
		beq.s	loc_180C4
		bsr	loc_1817C
loc_180C4:
		move.w	$14(a0),d0
		beq.s	loc_180E6
		bmi.s	loc_180DA
		sub.w	d5,d0
		bcc.s	loc_180D4
		move.w	#0,d0
loc_180D4:
		move.w	d0,$14(a0)
		bra.s	loc_180E6
loc_180DA:
		add.w	d5,d0
		bcc.s	loc_180E2
		move.w	#0,d0
loc_180E2:
		move.w	d0,$14(a0)
loc_180E6:
		tst.w	$14(a0)
		bne.s	loc_18122
		tst.b	$39(a0)
		bne.s	loc_18110
		bclr	#2,$22(a0)
		move.b	#$F,$16(a0)
		move.b	#9,$17(a0)
		move.b	#5,$1C(a0)
		subq.w	#1,$C(a0)
		bra.s	loc_18122
loc_18110:
		move.w	#$400,$14(a0)
		btst	#0,$22(a0)
		beq.s	loc_18122
		neg.w	$14(a0)
loc_18122:
		move.b	$26(a0),d0
		jsr	CalcSine	
		muls.w	$14(a0),d0
		asr.l	#8,d0
		move.w	d0,$12(a0)
		muls.w	$14(a0),d1
		asr.l	#8,d1
		cmp.w	#$1000,d1
		ble.s	loc_18146
		move.w	#$1000,d1
loc_18146:
		cmp.w	#$F000,d1
		bge.s	loc_18150
		move.w	#$F000,d1
loc_18150:
		move.w	d1,$10(a0)
		bra	loc_17F14
loc_18158:
		move.w	$14(a0),d0
		beq.s	loc_18160
		bpl.s	loc_1816E
loc_18160:
		bset	#0,$22(a0)
		move.b	#2,$1C(a0)
		rts
;--------------------------------------------------------------------------------

loc_1816E:
		sub.w	d4,d0
		bcc.s	loc_18176
		move.w	#$FF80,d0
loc_18176:
		move.w	d0,$14(a0)
		rts
;--------------------------------------------------------------------------------

loc_1817C:
		move.w	$14(a0),d0
		bmi.s	loc_18190
		bclr	#0,$22(a0)
		move.b	#2,$1C(a0)
		rts
;--------------------------------------------------------------------------------

loc_18190:
		add.w	d4,d0
		bcc.s	loc_18198
		move.w	#$80,d0
loc_18198:
		move.w	d0,$14(a0)
		rts
;--------------------------------------------------------------------------------

loc_1819E:
		move.w	($FFFFFEC0).w,d6
		move.w	($FFFFFEC2).w,d5
		asl.w	#1,d5
		btst	#4,$22(a0)
		bne.s	loc_181E8
		move.w	$10(a0),d0
		btst	#2,($FFFFF66A).w
		beq.s	loc_181CE
		bset	#0,$22(a0)
		sub.w	d5,d0
		move.w	d6,d1
		neg.w	d1
		cmp.w	d1,d0
		bgt.s	loc_181CE
		move.w	d1,d0
loc_181CE:
		btst	#3,($FFFFF66A).w
		beq.s	loc_181E4
		bclr	#0,$22(a0)
		add.w	d5,d0
		cmp.w	d6,d0
		blt.s	loc_181E4
		move.w	d6,d0
loc_181E4:
		move.w	d0,$10(a0)
loc_181E8:
		cmp.w	#$FC00,$12(a0)
		bcs.s	loc_18216
		move.w	$10(a0),d0
		move.w	d0,d1
		asr.w	#5,d1
		beq.s	loc_18216
		bmi.s	loc_1820A
		sub.w	d1,d0
		bcc.s	loc_18204
		move.w	#0,d0
loc_18204:
		move.w	d0,$10(a0)
		rts
;--------------------------------------------------------------------------------

loc_1820A:
		sub.w	d1,d0
		bcs.s	loc_18212
		move.w	#0,d0
loc_18212:
		move.w	d0,$10(a0)
loc_18216:
		rts
;--------------------------------------------------------------------------------

loc_18218:
		move.l	8(a0),d1
		move.w	$10(a0),d0
		ext.l	d0
		asl.l	#8,d0
		add.l	d0,d1
		swap.w	d1
		move.w	($FFFFEEF8).w,d0
		add.w	#$10,d0
		cmp.w	d1,d0
		bhi.s	loc_1825E
		move.w	($FFFFEEFA).w,d0
		add.w	#$128,d0
		tst.b	($FFFFF7AA).w
		bne.s	loc_18246
		add.w	#$40,d0
loc_18246:
		cmp.w	d1,d0
		bls.s	loc_1825E
loc_1824A:	
		move.w	($FFFFEEFE).w,d0
		add.w	#$E0,d0
		cmp.w	$C(a0),d0
		blt.s	loc_1825A
		rts
;--------------------------------------------------------------------------------

loc_1825A:
		bra	Kill_Miles	
loc_1825E:
		move.w	d0,8(a0)
		move.w	#0,$A(a0)
		move.w	#0,$10(a0)
		move.w	#0,$14(a0)
		bra.s	loc_1824A
loc_18276:
		tst.b	$2B(a0)
		bmi.s	loc_1829C
		move.w	$14(a0),d0
		bpl.s	loc_18284
		neg.w	d0
loc_18284:
		cmp.w	#$80,d0
		bcs.s	loc_1829C
		move.b	($FFFFF66A).w,d0
		and.b	#$C,d0
		bne.s	loc_1829C
		btst	#1,($FFFFF66A).w
		bne.s	loc_1829E
loc_1829C:
		rts
;--------------------------------------------------------------------------------

loc_1829E:
		btst	#2,$22(a0)
		beq.s	loc_182A8
		rts
;--------------------------------------------------------------------------------

loc_182A8:
		bset	#2,$22(a0)
		move.b	#$E,$16(a0)
		move.b	#7,$17(a0)
		move.b	#2,$1C(a0)
		addq.w	#1,$C(a0)
		move.w	#$BE,d0
		jsr	Play_Sfx	
		tst.w	$14(a0)
		bne.s	loc_182DA
		move.w	#$200,$14(a0)
loc_182DA:
		rts
;--------------------------------------------------------------------------------

loc_182DC:
		move.b	($FFFFF66B).w,d0
		and.b	#$70,d0
		beq	loc_18380
		moveq	#0,d0
		move.b	$26(a0),d0
		add.b	#$80,d0
		bsr	loc_1AAA2
		cmp.w	#6,d1
		blt	loc_18380
		move.w	#$680,d2
		btst	#6,$22(a0)
		beq.s	loc_1830E
		move.w	#$380,d2
loc_1830E:
		moveq	#0,d0
		move.b	$26(a0),d0
		sub.b	#$40,d0
		jsr	CalcSine	
		muls.w	d2,d1
		asr.l	#8,d1
		add.w	d1,$10(a0)
		muls.w	d2,d0
		asr.l	#8,d0
		add.w	d0,$12(a0)
		bset	#1,$22(a0)
		bclr	#5,$22(a0)
		addq.l	#4,sp
		move.b	#1,$3C(a0)
		clr.b	$38(a0)
		move.w	#$A0,d0
		jsr	Play_Sfx	
		move.b	#$F,$16(a0)
		move.b	#9,$17(a0)
		btst	#2,$22(a0)
		bne.s	loc_18382
		move.b	#$E,$16(a0)
		move.b	#7,$17(a0)
		move.b	#2,$1C(a0)
		bset	#2,$22(a0)
		addq.w	#1,$C(a0)
loc_18380:
		rts
;--------------------------------------------------------------------------------

loc_18382:
		bset	#4,$22(a0)
		rts
;--------------------------------------------------------------------------------

loc_1838A:
		tst.b	$3C(a0)
		beq.s	loc_183B6
		move.w	#$FC00,d1
		btst	#6,$22(a0)
		beq.s	loc_183A0
		move.w	#$FE00,d1
loc_183A0:
		cmp.w	$12(a0),d1
		ble.s	loc_183B4
		move.b	($FFFFF66A).w,d0
		and.b	#$70,d0
		bne.s	loc_183B4
		move.w	d1,$12(a0)
loc_183B4:
		rts
;--------------------------------------------------------------------------------

loc_183B6:
		tst.b	$39(a0)
		bne.s	loc_183CA
		cmp.w	#$F040,$12(a0)
		bge.s	loc_183CA
		move.w	#$F040,$12(a0)
loc_183CA:
		rts
;--------------------------------------------------------------------------------

loc_183CC:
		tst.b	$39(a0)
		bne.s	loc_18414
		cmp.b	#8,$1C(a0)
		bne.s	loc_18412
		move.b	($FFFFF66B).w,d0
		and.b	#$70,d0
		beq	loc_18412
		move.b	#9,$1C(a0)
		move.w	#$E0,d0
		jsr	Play_Sfx	
		addq.l	#4,sp
		move.b	#1,$39(a0)
		move.w	#0,$3A(a0)
		cmp.b	#$C,$28(a0)
		bcs.s	loc_18412
		move.b	#2,($FFFFB45C).w
loc_18412:
		rts
;--------------------------------------------------------------------------------

loc_18414:
		move.b	($FFFFF66A).w,d0
		btst	#1,d0
		bne.s	loc_18484
		move.b	#$E,$16(a0)
		move.b	#7,$17(a0)
		move.b	#2,$1C(a0)
		addq.w	#1,$C(a0)
		move.b	#0,$39(a0)
		move.w	#$2000,($FFFFEED4).w
		moveq	#0,d0
		move.b	$3A(a0),d0
		add.w	d0,d0
		move.w	loc_18472(pc,d0),$14(a0)
		btst	#0,$22(a0)
		beq.s	loc_1845A
		neg.w	$14(a0)
loc_1845A:
		bset	#2,$22(a0)
		move.b	#0,($FFFFB45C).w
		move.w	#$BC,d0
		jsr	Play_Sfx	
		bra.s	loc_184CC	
loc_18472:
		dc.w	$800,$880,$900,$980,$A00,$A80,$B00,$B80
		dc.w	$C00
loc_18484:
		tst.w	$3A(a0)
		beq.s	loc_1849C
		move.w	$3A(a0),d0
		lsr.w	#5,d0
		sub.w	d0,$3A(a0)
		bcc.s	loc_1849C
		move.w	#0,$3A(a0)
loc_1849C:
		move.b	($FFFFF66B).w,d0
		and.b	#$70,d0
		beq	loc_184CC
		move.w	#$900,$1C(a0)
		move.w	#$E0,d0
		jsr	Play_Sfx	
		add.w	#$200,$3A(a0)
		cmp.w	#$800,$3A(a0)
		bcs.s	loc_184CC
		move.w	#$800,$3A(a0)
loc_184CC:
		addq.l	#4,sp
		rts
;--------------------------------------------------------------------------------

loc_184D0:
		move.b	$26(a0),d0
		add.b	#$60,d0
		cmp.b	#$C0,d0
		bcc.s	loc_18504
		move.b	$26(a0),d0
		jsr	CalcSine	
		muls.w	#$20,d0
		asr.l	#8,d0
		tst.w	$14(a0)
		beq.s	loc_18504
		bmi.s	loc_18500
		tst.w	d0
		beq.s	loc_184FE
		add.w	d0,$14(a0)
loc_184FE:
		rts
;--------------------------------------------------------------------------------

loc_18500:
		add.w	d0,$14(a0)
loc_18504:
		rts
;--------------------------------------------------------------------------------

loc_18506:
		move.b	$26(a0),d0
		add.b	#$60,d0
		cmp.b	#$C0,d0
		bcc.s	loc_18540
		move.b	$26(a0),d0
		jsr	CalcSine	
		muls.w	#$50,d0
		asr.l	#8,d0
		tst.w	$14(a0)
		bmi.s	loc_18536
		tst.w	d0
		bpl.s	loc_18530
		asr.l	#2,d0
loc_18530:
		add.w	d0,$14(a0)
		rts
;--------------------------------------------------------------------------------

loc_18536:
		tst.w	d0
		bmi.s	loc_1853C
		asr.l	#2,d0
loc_1853C:
		add.w	d0,$14(a0)
loc_18540:
		rts
;--------------------------------------------------------------------------------

loc_18542:
		nop
		tst.b	$38(a0)
		bne.s	loc_1857C
		tst.w	$2E(a0)
		bne.s	loc_1857E
		move.b	$26(a0),d0
		add.b	#$20,d0
		and.b	#$C0,d0
		beq.s	loc_1857C
		move.w	$14(a0),d0
		bpl.s	loc_18566
		neg.w	d0
loc_18566:
		cmp.w	#$280,d0
		bcc.s	loc_1857C
		clr.w	$14(a0)
		bset	#1,$22(a0)
		move.w	#$1E,$2E(a0)
loc_1857C:
		rts
;--------------------------------------------------------------------------------

loc_1857E:
		subq.w	#1,$2E(a0)
		rts
;--------------------------------------------------------------------------------

loc_18584:
		move.b	$26(a0),d0
		beq.s	loc_1859E
		bpl.s	loc_18594
		addq.b	#2,d0
		bcc.s	loc_18592
		moveq	#0,d0
loc_18592:
		bra.s	loc_1859A
loc_18594:
		subq.b	#2,d0
		bcc.s	loc_1859A
		moveq	#0,d0
loc_1859A:
		move.b	d0,$26(a0)
loc_1859E:
		move.b	$27(a0),d0
		beq.s	loc_185E2
		tst.w	$14(a0)
		bmi.s	loc_185C2
loc_185AA:	
		move.b	$2D(a0),d1
		add.b	d1,d0
		bcc.s	loc_185C0
		subq.b	#1,$2C(a0)
		bcc.s	loc_185C0
		move.b	#0,$2C(a0)
		moveq	#0,d0
loc_185C0:
		bra.s	loc_185DE
loc_185C2:
		tst.b	$29(a0)
		bne.s	loc_185AA
		move.b	$2D(a0),d1
		sub.b	d1,d0
		bcc.s	loc_185DE
		subq.b	#1,$2C(a0)
		bcc.s	loc_185DE
		move.b	#0,$2C(a0)
		moveq	#0,d0
loc_185DE:
		move.b	d0,$27(a0)
loc_185E2:
		rts
;--------------------------------------------------------------------------------

loc_185E4:
		move.l	#$FFFFD000,($FFFFF796).w
		cmp.b	#$C,$3E(a0)
		beq.s	loc_185FC
		move.l	#$FFFFD600,($FFFFF796).w
loc_185FC:
		move.b	$3F(a0),d5
		move.w	$10(a0),d1
		move.w	$12(a0),d2
		jsr	CalcAngle	
		sub.b	#$20,d0
		and.b	#$C0,d0
		cmp.b	#$40,d0
		beq	loc_186C6
		cmp.b	#$80,d0
		beq	loc_18722
		cmp.b	#$C0,d0
		beq	loc_1877E
		bsr	loc_1AEF6
		tst.w	d1
		bpl.s	loc_18640
		sub.w	d1,8(a0)
		move.w	#0,$10(a0)
loc_18640:
		bsr	loc_1AD74
		tst.w	d1
		bpl.s	loc_18652
		add.w	d1,8(a0)
		move.w	#0,$10(a0)
loc_18652:
		bsr	loc_1AAE6
		tst.w	d1
		bpl.s	loc_186C4
		move.b	$12(a0),d2
		addq.b	#8,d2
		neg.b	d2
		cmp.b	d2,d1
		bge.s	loc_1866A
		cmp.b	d2,d0
		blt.s	loc_186C4
loc_1866A:
		add.w	d1,$C(a0)
		move.b	d3,$26(a0)
		bsr	loc_187DA
		move.b	d3,d0
		add.b	#$20,d0
		and.b	#$40,d0
		bne.s	loc_186A2
		move.b	d3,d0
		add.b	#$10,d0
		and.b	#$20,d0
		beq.s	loc_18694
		asr.w	$12(a0)
		bra.s	loc_186B6
loc_18694:
		move.w	#0,$12(a0)
		move.w	$10(a0),$14(a0)
		rts
;--------------------------------------------------------------------------------

loc_186A2:
		move.w	#0,$10(a0)
		cmp.w	#$FC0,$12(a0)
		ble.s	loc_186B6
		move.w	#$FC0,$12(a0)
loc_186B6:
		move.w	$12(a0),$14(a0)
		tst.b	d3
		bpl.s	loc_186C4
		neg.w	$14(a0)
loc_186C4:
		rts
;--------------------------------------------------------------------------------

loc_186C6:
		bsr	loc_1AEF6
		tst.w	d1
		bpl.s	loc_186E0
		sub.w	d1,8(a0)
		move.w	#0,$10(a0)
		move.w	$12(a0),$14(a0)
		rts
;--------------------------------------------------------------------------------

loc_186E0:
		bsr	Sonic_DontRunOnWalls	
		tst.w	d1
		bpl.s	loc_186FA
		sub.w	d1,$C(a0)
		tst.w	$12(a0)
		bpl.s	loc_186F8
		move.w	#0,$12(a0)
loc_186F8:
		rts
;--------------------------------------------------------------------------------

loc_186FA:
		tst.w	$12(a0)
		bmi.s	loc_18720
		bsr	loc_1AAE6
		tst.w	d1
		bpl.s	loc_18720
		add.w	d1,$C(a0)
		move.b	d3,$26(a0)
		bsr	loc_187DA
		move.w	#0,$12(a0)
		move.w	$10(a0),$14(a0)
loc_18720:
		rts
;--------------------------------------------------------------------------------

loc_18722:
		bsr	loc_1AEF6
		tst.w	d1
		bpl.s	loc_18734
		sub.w	d1,8(a0)
		move.w	#0,$10(a0)
loc_18734:
		bsr	loc_1AD74
		tst.w	d1
		bpl.s	loc_18746
		add.w	d1,8(a0)
		move.w	#0,$10(a0)
loc_18746:
		bsr	Sonic_DontRunOnWalls	
		tst.w	d1
		bpl.s	loc_1877C
		sub.w	d1,$C(a0)
		move.b	d3,d0
		add.b	#$20,d0
		and.b	#$40,d0
		bne.s	loc_18766
		move.w	#0,$12(a0)
		rts
;--------------------------------------------------------------------------------

loc_18766:
		move.b	d3,$26(a0)
		bsr	loc_187DA
		move.w	$12(a0),$14(a0)
		tst.b	d3
		bpl.s	loc_1877C
		neg.w	$14(a0)
loc_1877C:
		rts
;--------------------------------------------------------------------------------

loc_1877E:
		bsr	loc_1AD74
		tst.w	d1
		bpl.s	loc_18798
		add.w	d1,8(a0)
		move.w	#0,$10(a0)
		move.w	$12(a0),$14(a0)
		rts
;--------------------------------------------------------------------------------

loc_18798:
		bsr	Sonic_DontRunOnWalls	
		tst.w	d1
		bpl.s	loc_187B2
		sub.w	d1,$C(a0)
		tst.w	$12(a0)
		bpl.s	loc_187B0
		move.w	#0,$12(a0)
loc_187B0:
		rts
;--------------------------------------------------------------------------------

loc_187B2:
		tst.w	$12(a0)
		bmi.s	loc_187D8
		bsr	loc_1AAE6
		tst.w	d1
		bpl.s	loc_187D8
		add.w	d1,$C(a0)
		move.b	d3,$26(a0)
		bsr	loc_187DA
		move.w	#0,$12(a0)
		move.w	$10(a0),$14(a0)
loc_187D8:
		rts
;--------------------------------------------------------------------------------

loc_187DA:
		tst.b	$39(a0)
		bne.s	loc_1880A
		move.b	#0,$1C(a0)
loc_187E6:
		btst	#2,$22(a0)
		beq.s	loc_1880A
		bclr	#2,$22(a0)
		move.b	#$F,$16(a0)
		move.b	#9,$17(a0)
		move.b	#0,$1C(a0)
		subq.w	#1,$C(a0)
loc_1880A:
		bclr	#1,$22(a0)
		bclr	#5,$22(a0)
		bclr	#4,$22(a0)
		move.b	#0,$3C(a0)
		move.w	#0,($FFFFF7D0).w
		move.b	#0,$27(a0)
		move.b	#0,$29(a0)
		move.b	#0,$2C(a0)
		cmp.b	#$14,$1C(a0)
		bne.s	loc_18848
		move.b	#0,$1C(a0)
loc_18848:
		rts 
loc_1884A:
		jsr	SpeedToPos	
		add.w	#$30,$12(a0)
		btst	#6,$22(a0)
		beq.s	loc_18864
		sub.w	#$20,$12(a0)
loc_18864:
		bsr	loc_1887E
		bsr	loc_18218
		bsr	loc_17C40
		bsr	Miles_Animate	
		bsr	Load_Miles_Dynamic_PLC	
		jmp	displaySprite	
loc_1887E:
		move.w	($FFFFEEFE).w,d0
		add.w	#$E0,d0
		cmp.w	$C(a0),d0
		blt	Kill_Miles	
		bsr	loc_185E4
		btst	#1,$22(a0)
		bne.s	loc_188C4
		moveq	#0,d0
		move.w	d0,$12(a0)
		move.w	d0,$10(a0)
		move.w	d0,$14(a0)
		move.b	d0,$2A(a0)
		move.b	#0,$1C(a0)
		move.b	#2,$24(a0)
		move.w	#$78,$30(a0)
		move.b	#0,$39(a0)
loc_188C4:
		rts
;--------------------------------------------------------------------------------

loc_188C6:
		bsr	loc_188E2
		jsr	ObjectFall	
		bsr	loc_17C40
		bsr	Miles_Animate	
		bsr	Load_Miles_Dynamic_PLC	
		jmp	displaySprite	
loc_188E2:
		move.b	#0,$39(a0)
		move.w	($FFFFEEFE).w,d0
		add.w	#$100,d0
		cmp.w	$C(a0),d0
		bge	loc_189CC
		move.b	#2,$24(a0)
		tst.w	($FFFFFFD8).w
		bne.s	loc_18908
		bra	loc_17B52
loc_18908:
		addq.b	#1,($FFFFFEC8).w
		subq.b	#1,($FFFFFEC6).w
		bne.s	loc_1894E
		move.w	#0,$3A(a0)
		move.b	#$39,($FFFFB080).w
		move.b	#$39,($FFFFB0C0).w
		move.b	#1,($FFFFB0DA).w
		move.w	a0,($FFFFB0BE).w
loc_1892E:	
		clr.b	($FFFFFE1E).w
		clr.b	($FFFFFECA).w
		move.b	#8,$24(a0)
		move.w	#$8F,d0
		jsr	Play_Music	
		moveq	#3,d0
		jmp	LoadPLC	
loc_1894E:
		tst.b	($FFFFFE1A).w
		bne.s	loc_1897E
		tst.b	($FFFFFECC).w
		beq.s	loc_1897E
		move.w	#0,$3A(a0)
		move.b	#$39,($FFFFB080).w
		move.b	#$39,($FFFFB0C0).w
		move.b	#2,($FFFFB09A).w
		move.b	#3,($FFFFB0DA).w
		move.w	a0,($FFFFB0BE).w
		bra.s	loc_1892E
loc_1897E:
		move.w	($FFFFFEE2).w,8(a0)
		move.w	($FFFFFEE4).w,$C(a0)
		move.w	($FFFFFEEC).w,2(a0)
		move.w	($FFFFFEEE).w,$3E(a0)
		move.w	($FFFFFEE6).w,($FFFFFED0).w
		move.b	($FFFFFE55).w,($FFFFFEC7).w
		move.b	#0,$2A(a0)
		move.b	#0,$1C(a0)
		move.w	#0,$10(a0)
		move.w	#0,$12(a0)
		move.w	#0,$14(a0)
		move.b	#2,$22(a0)
		move.w	#0,$2E(a0)
loc_189CC:
		rts
;--------------------------------------------------------------------------------

loc_189CE:
		tst.w	$3A(a0)
		beq.s	loc_189E0
		subq.w	#1,$3A(a0)
		bne.s	loc_189E0
		move.w	#1,($FFFFFE02).w
loc_189E0:
		rts	
Miles_Animate: ;	loc_189E2:
		lea	(Miles_AnimateData),a1 
loc_189E8:	
		moveq	#0,d0
		move.b	$1C(a0),d0
		cmp.b	$1D(a0),d0
		beq.s	loc_18A0A
		move.b	d0,$1D(a0)
		move.b	#0,$1B(a0)
		move.b	#0,$1E(a0)
		bclr	#5,$22(a0)
loc_18A0A:
		add.w	d0,d0
		adda.w	0(a1,d0),a1
		move.b	(a1),d0
		bmi.s	loc_18A7A
		move.b	$22(a0),d1
		and.b	#1,d1
		and.b	#$FC,1(a0)
		or.b	d1,1(a0)
		subq.b	#1,$1E(a0)
		bpl.s	loc_18A48
		move.b	d0,$1E(a0)
loc_18A30:	
		moveq	#0,d1
		move.b	$1B(a0),d1
		move.b	1(a1,d1),d0
		cmp.b	#$F0,d0
		bcc.s	loc_18A4A
loc_18A40:	
		move.b	d0,$1A(a0)
		addq.b	#1,$1B(a0)
loc_18A48:
		rts
;--------------------------------------------------------------------------------

loc_18A4A:
		addq.b	#1,d0
		bne.s	loc_18A5A
		move.b	#0,$1B(a0)
		move.b	1(a1),d0
		bra.s	loc_18A40
loc_18A5A:
		addq.b	#1,d0
		bne.s	loc_18A6E
		move.b	2(a1,d1),d0
		sub.b	d0,$1B(a0)
		sub.b	d0,d1
		move.b	1(a1,d1),d0
		bra.s	loc_18A40
loc_18A6E:
		addq.b	#1,d0
		bne.s	loc_18A78
		move.b	2(a1,d1),$1C(a0)
loc_18A78:
		rts
;--------------------------------------------------------------------------------

loc_18A7A:
		subq.b	#1,$1E(a0)
		bpl.s	loc_18A48
		addq.b	#1,d0
		bne	loc_18B8C
		moveq	#0,d0
		move.b	$27(a0),d0
		bne	loc_18B26
		moveq	#0,d1
		move.b	$26(a0),d0
		bmi.s	loc_18A9C
		beq.s	loc_18A9C
		subq.b	#1,d0
loc_18A9C:
		move.b	$22(a0),d2
		and.b	#1,d2
		bne.s	loc_18AA8
		not.b	d0
loc_18AA8:
		add.b	#$10,d0
		bpl.s	loc_18AB0
		moveq	#3,d1
loc_18AB0:
		and.b	#$FC,1(a0)
		eor.b	d1,d2
		or.b	d2,1(a0)
		btst	#5,$22(a0)
		bne	loc_18BD0
		lsr.b	#4,d0
		and.b	#6,d0
		move.w	$14(a0),d2
		bpl.s	loc_18AD4
		neg.w	d2
loc_18AD4:
		tst.b	$2B(a0)
		bpl	loc_18ADE
		add.w	d2,d2
loc_18ADE:
		move.b	d0,d3
		add.b	d3,d3
		add.b	d3,d3
		lea	(loc_18C98),a1
		cmp.w	#$600,d2
		bcs.s	loc_18B0C
		lea	(loc_18CA2),a1
		move.b	d0,d1
		lsr.b	#1,d1
		add.b	d1,d0
		add.b	d0,d0
		move.b	d0,d3
		cmp.w	#$700,d2
		bcs.s	loc_18B0C
		lea	(loc_18D94),a1
loc_18B0C:
		neg.w	d2
		add.w	#$800,d2
		bpl.s	loc_18B16
		moveq	#0,d2
loc_18B16:
		lsr.w	#8,d2
		move.b	d2,$1E(a0)
		bsr	loc_18A30
		add.b	d3,$1A(a0)
		rts
;--------------------------------------------------------------------------------

loc_18B26:
		move.b	$27(a0),d0
		moveq	#0,d1
		move.b	$22(a0),d2
		and.b	#1,d2
		bne.s	loc_18B54
		and.b	#$FC,1(a0)
		add.b	#$B,d0
		divu.w	#$16,d0
		add.b	#$75,d0
		move.b	d0,$1A(a0)
		move.b	#0,$1E(a0)
		rts
;--------------------------------------------------------------------------------

loc_18B54:
		and.b	#$FC,1(a0)
		tst.b	$29(a0)
		beq.s	loc_18B6C
		or.b	#1,1(a0)
		add.b	#$B,d0
		bra.s	loc_18B78
loc_18B6C:
		or.b	#3,1(a0)
		neg.b	d0
		add.b	#$8F,d0
loc_18B78:
		divu.w	#$16,d0
		add.b	#$75,d0
		move.b	d0,$1A(a0)
		move.b	#0,$1E(a0)
		rts
;--------------------------------------------------------------------------------

loc_18B8C:
		addq.b	#1,d0
		bne.s	loc_18C02
		move.w	$14(a0),d2
		bpl.s	loc_18B98
		neg.w	d2
loc_18B98:
		lea	(loc_18CB1),a1
		cmp.w	#$600,d2
		bcc.s	loc_18BAA
		lea	(loc_18CAC),a1
loc_18BAA:
		neg.w	d2
		add.w	#$400,d2
		bpl.s	loc_18BB4
		moveq	#0,d2
loc_18BB4:
		lsr.w	#8,d2
		move.b	d2,$1E(a0)
		move.b	$22(a0),d1
		and.b	#1,d1
		and.b	#$FC,1(a0)
		or.b	d1,1(a0)
		bra	loc_18A30
loc_18BD0:
		move.w	$14(a0),d2
		bmi.s	loc_18BD8
		neg.w	d2
loc_18BD8:
		add.w	#$800,d2
		bpl.s	loc_18BE0
		moveq	#0,d2
loc_18BE0:
		lsr.w	#6,d2
		move.b	d2,$1E(a0)
		lea	(loc_18CB6),a1
		move.b	$22(a0),d1
		and.b	#1,d1
		and.b	#$FC,1(a0)
		or.b	d1,1(a0)
		bra	loc_18A30
loc_18C02:
		move.w	($FFFFB050).w,d1
		move.w	($FFFFB052).w,d2
		jsr	CalcAngle	
		moveq	#0,d1
		move.b	$22(a0),d2
		and.b	#1,d2
		bne.s	loc_18C20
		not.b	d0
		bra.s	loc_18C24
loc_18C20:
		add.b	#$80,d0
loc_18C24:
		add.b	#$10,d0
		bpl.s	loc_18C2C
		moveq	#3,d1
loc_18C2C:
		and.b	#$FC,1(a0)
		eor.b	d1,d2
		or.b	d2,1(a0)
		lsr.b	#3,d0
		and.b	#$C,d0
		move.b	d0,d3
		lea	(loc_18F06),a1
		move.b	#3,$1E(a0)
		bsr	loc_18A30
		add.b	d3,$1A(a0)
		rts	
Miles_AnimateData: 
		dc.w	loc_18C98-Miles_AnimateData
		dc.w	loc_18CA2-Miles_AnimateData
		dc.w	loc_18CAC-Miles_AnimateData
		dc.w	loc_18CB1-Miles_AnimateData
		dc.w	loc_18CB6-Miles_AnimateData
		dc.w	loc_18CC0-Miles_AnimateData
		dc.w	loc_18CFE-Miles_AnimateData
		dc.w	loc_18D16-Miles_AnimateData
		dc.w	loc_18D19-Miles_AnimateData
		dc.w	loc_18D1C-Miles_AnimateData
		dc.w	loc_18D21-Miles_AnimateData
		dc.w	loc_18D24-Miles_AnimateData
		dc.w	loc_18D2A-Miles_AnimateData
		dc.w	loc_18D2E-Miles_AnimateData
		dc.w	loc_18D35-Miles_AnimateData
		dc.w	loc_18D39-Miles_AnimateData
		dc.w	loc_18D40-Miles_AnimateData
		dc.w	loc_18D4F-Miles_AnimateData
		dc.w	loc_18D53-Miles_AnimateData
		dc.w	loc_18D59-Miles_AnimateData
		dc.w	loc_18D5E-Miles_AnimateData
		dc.w	loc_18D62-Miles_AnimateData
		dc.w	loc_18D69-Miles_AnimateData
		dc.w	loc_18D6C-Miles_AnimateData
		dc.w	loc_18D6F-Miles_AnimateData
		dc.w	loc_18D72-Miles_AnimateData
		dc.w	loc_18D75-Miles_AnimateData
		dc.w	loc_18D78-Miles_AnimateData
		dc.w	loc_18D7C-Miles_AnimateData
		dc.w	loc_18D80-Miles_AnimateData
		dc.w	loc_18D8A-Miles_AnimateData
		dc.w	loc_18D94-Miles_AnimateData
		dc.w	loc_18D9E-Miles_AnimateData
loc_18C98:
		dc.b	$FF,$10,$11,$12,$13,$14,$15,$E,$F,$FF
loc_18CA2:
		dc.b	$FF,$2E,$2F,$30,$31,$FF,$FF,$FF,$FF,$FF
loc_18CAC:
		dc.b	1,$48,$47,$46,$FF
loc_18CB1:
		dc.b	1,$48,$47,$46,$FF
loc_18CB6:
		dc.b	$FD,$63,$64,$65,$66,$FF,$FF,$FF,$FF,$FF
loc_18CC0:
		dc.b	7,1,1,1,1,1,1,1,1,1,1,3,2,1,1,$1
		dc.b	1,1,1,1,1,3,2,1,1,1,1,1,1,1,1,$1
		dc.b	5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,$5
		dc.b	6,7,8,7,8,7,8,7,8,7,8,6,$FE,$1C
loc_18CFE:
		dc.b	9,$69,$69,$6A,$6A,$69,$69,$6A,$6A,$69,$69,$6A,$6A,$69,$69,$6A
		dc.b	$6A,$69,$69,$6A,$6A,$69,$6A,$FF
loc_18D16:
		dc.b	$3F,4,$FF
loc_18D19:
		dc.b	$3F,$5B,$FF
loc_18D1C:
		dc.b	0,$60,$61,$62,$FF
loc_18D21:
		dc.b	$3F,$82,$FF
loc_18D24:
		dc.b	7,8,8,9,$FD,$5
loc_18D2A:
		dc.b	7,9,$FD,$5
loc_18D2E:
		dc.b	7,$67,$68,$67,$68,$FD,$0
loc_18D35:
		dc.b	9,$6E,$73,$FF
loc_18D39:
		dc.b	9,$6E,$6F,$70,$71,$72,$FF
loc_18D40:
		dc.b	3,$59,$5A,$59,$5A,$59,$5A,$59,$5A,$59,$5A,$59,$5A,$FD,$0
loc_18D4F:
		dc.b	5,$6C,$6D,$FF
loc_18D53:
		dc.b	$F,1,2,3,$FE,$1
loc_18D59:
		dc.b	$F,1,2,$FE,$1
loc_18D5E:
		dc.b	$13,$85,$86,$FF
loc_18D62:
		dc.b	$B,$74,$74,$12,$13,$FD,$0
loc_18D69:
		dc.b	$20,$5D,$FF
loc_18D6C:
		dc.b	$2F,$5D,$FF
loc_18D6F:
		dc.b	3,$5D,$FF
loc_18D72:
		dc.b	3,$5D,$FF
loc_18D75:
		dc.b	3,$5C,$FF
loc_18D78:
		dc.b	9,$6B,$5C,$FF
loc_18D7C:
		dc.b	$77,0,$FD,$0
loc_18D80:
		dc.b	3,1,2,3,4,5,6,7,8,$FF
loc_18D8A:
		dc.b	3,1,2,3,4,5,6,7,8,$FF
loc_18D94:
		dc.b	$FF,$32,$33,$FF,$FF,$FF,$FF,$FF,$FF,$FF
loc_18D9E:
		dc.b	1,$5E,$5F,$FF	
;=============================================================================== 
; Sub Routine Load_Miles_Tail_Dynamic_PLC
; [ Begin ]	
;===============================================================================	
Load_Miles_Tail_Dynamic_PLC: 
		moveq	#0,d0
		move.b	$1A(a0),d0
		cmp.b	($FFFFF7DF).w,d0
		beq.s	loc_18E1C
		move.b	d0,($FFFFF7DF).w
		lea	(Miles_Dyn_Script),a2	
		add.w	d0,d0
		adda.w	0(a2,d0),a2
		move.w	(a2)+,d5
		subq.w	#1,d5
		bmi.s	loc_18E1C
		move.w	#$F600,d4
		bra.s	loc_18DF0
;=============================================================================== 
; Sub Routine Load_Miles_Tail_Dynamic_PLC
; [ End ]	
;===============================================================================	
	
;=============================================================================== 
; Sub Routine Load_Miles_Dynamic_PLC
; [ Begin ]	
;===============================================================================	
Load_Miles_Dynamic_PLC: 
		moveq	#0,d0
		move.b	$1A(a0),d0
Load_Miles_Tornado_Dyn_PLC: 
		cmp.b	($FFFFF7DE).w,d0
		beq.s	loc_18E1C
		move.b	d0,($FFFFF7DE).w
		lea	(Miles_Dyn_Script),a2 
		add.w	d0,d0
		adda.w	0(a2,d0),a2
		move.w	(a2)+,d5
		subq.w	#1,d5
		bmi.s	loc_18E1C
		move.w	#$F400,d4
loc_18DF0:
		moveq	#0,d1
		move.w	(a2)+,d1
		move.w	d1,d3
		lsr.w	#8,d3
		and.w	#$F0,d3
		add.w	#$10,d3
		and.w	#$FFF,d1
		lsl.l	#5,d1
		add.l	#Miles_Sprites,d1	
		move.w	d4,d2
		add.w	d3,d4
		add.w	d3,d4
		jsr	dMA_68KtoVRAM	
		dbra	d5,loc_18DF0
loc_18E1C:
		rts	
;=============================================================================== 
; Sub Routine Load_Miles_Dynamic_PLC
; [ End ]	
;===============================================================================	
;===============================================================================
; Object 0x02 Miles
; [ End ]
;===============================================================================
