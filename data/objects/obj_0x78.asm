;=============================================================================== 
; Object 0x78 - Chemical Plant - Rotanting Platforms / 
; [ Begin ]	Platform Goes Up or Down when you Touch in it
;===============================================================================	
loc_24F74:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_24F8A(pc,d0),d1
		jsr	loc_24F8A(pc,d1)
		move.w	$30(a0),d0
		bra	loc_25142
loc_24F8A:
		dc.w	loc_24F90-loc_24F8A
		dc.w	loc_25014-loc_24F8A
		dc.w	loc_25028-loc_24F8A
loc_24F90:
		addq.b	#2,$24(a0)
		moveq	#$34,d3
		moveq	#2,d4
		btst	#0,$22(a0)
		beq.s	loc_24FA4
		moveq	#$3A,d3
		moveq	#$FFFFFFFE,d4
loc_24FA4:
		move.w	8(a0),d2
		move.l	a0,a1
		moveq	#3,d1
		bra.s	loc_24FBC
loc_24FAE:	
		bsr	loc_25130
		bne	loc_25014
		move.b	#4,$24(a1)
loc_24FBC:
		move.b	0(a0),0(a1)
		move.l	#CPz_Block_Mappings,4(a1) 
		move.w	#$6418,2(a1)
		bsr	loc_25136
		move.b	#4,1(a1)
		move.b	#3,$18(a1)
		move.b	#$10,$19(a1)
		move.b	$28(a0),$28(a1)
		move.w	d2,8(a1)
		move.w	$C(a0),$C(a1)
		move.w	8(a0),$30(a1)
		move.w	$C(a1),$32(a1)
		add.w	#$20,d2
		move.b	d3,$2F(a1)
		move.l	a0,$3C(a1)
		add.b	d4,d3
		dbra	d1,loc_24FAE
loc_25014:
		moveq	#0,d0
		move.b	$28(a0),d0
		and.w	#7,d0
		add.w	d0,d0
		move.w	loc_25060(pc,d0),d1
		jsr	loc_25060(pc,d1)
loc_25028:
		move.l	$3C(a0),a2
		moveq	#0,d0
		move.b	$2F(a0),d0
		move.w	0(a2,d0),d0
		add.w	$32(a0),d0
		move.w	d0,$C(a0)
		moveq	#0,d1
		move.b	$19(a0),d1
		add.w	#$B,d1
		move.w	#$10,d2
		move.w	#$11,d3
		move.w	8(a0),d4
		bsr	loc_2513C
		swap.w	d6
		or.b	d6,$2E(a2)
		rts
loc_25060:
		dc.w	loc_25070-loc_25060
		dc.w	loc_250DC-loc_25060
		dc.w	loc_25094-loc_25060
		dc.w	loc_250DC-loc_25060
		dc.w	loc_25070-loc_25060
		dc.w	loc_25106-loc_25060
		dc.w	loc_25094-loc_25060
		dc.w	loc_25106-loc_25060	
loc_25070:
		tst.w	$2C(a0)
		bne.s	loc_25088
		move.b	$2E(a0),d0
		and.b	#$30,d0
		beq.s	loc_25086
		move.w	#$1E,$2C(a0)
loc_25086:
		rts
loc_25088:
		subq.w	#1,$2C(a0)
		bne.s	loc_25086
		addq.b	#1,$28(a0)
		rts
loc_25094:
		tst.w	$2C(a0)
		bne.s	loc_250AC
		move.b	$2E(a0),d0
		and.b	#$C,d0
		beq.s	loc_250AA
		move.w	#$3C,$2C(a0)
loc_250AA:
		rts
loc_250AC:
		subq.w	#1,$2C(a0)
		bne.s	loc_250B8
		addq.b	#1,$28(a0)
		rts
loc_250B8:
		lea	$34(a0),a1
		move.w	$2C(a0),d0
		lsr.b	#2,d0
		and.b	#1,d0
		move.w	d0,(a1)+
		eor.b	#1,d0
		move.w	d0,(a1)+
		eor.b	#1,d0
		move.w	d0,(a1)+
		eor.b	#1,d0
		move.w	d0,(a1)+
		rts
loc_250DC:
		lea	$34(a0),a1
		cmp.w	#$80,(a1)
		beq.s	loc_25104
		addq.w	#1,(a1)
		moveq	#0,d1
		move.w	(a1)+,d1
		swap.w	d1
		lsr.l	#1,d1
		move.l	d1,d2
		lsr.l	#1,d1
		move.l	d1,d3
		add.l	d2,d3
		swap.w	d1
		swap.w	d2
		swap.w	d3
		move.w	d3,(a1)+
		move.w	d2,(a1)+
		move.w	d1,(a1)+
loc_25104:
		rts
loc_25106:
		lea	$34(a0),a1
		cmp.w	#$FF80,(a1)
		beq.s	loc_2512E
		subq.w	#1,(a1)
		moveq	#0,d1
		move.w	(a1)+,d1
		swap.w	d1
		asr.l	#1,d1
		move.l	d1,d2
		asr.l	#1,d1
		move.l	d1,d3
		add.l	d2,d3
		swap.w	d1
		swap.w	d2
		swap.w	d3
		move.w	d3,(a1)+
		move.w	d2,(a1)+
		move.w	d1,(a1)+
loc_2512E:
		rts	
;=============================================================================== 
; Object 0x78 - Chemical Plant - Rotanting Platforms / 
; [ Begin ]	Platform Goes Up or Down when you Touch in it	
;===============================================================================	