;===============================================================================
; Object 0x59 - Check for End of Special Stage and can give an Emerald
; [ Begin ]	Without this object Special Stage will run Forever
;===============================================================================	
loc_32190:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_3219E(pc,d0),d1
		jmp	loc_3219E(pc,d1)
loc_3219E:
		dc.w	loc_321A8-loc_3219E
		dc.w	loc_32220-loc_3219E
		dc.w	loc_317AA-loc_3219E
		dc.w	loc_32328-loc_3219E
		dc.w	loc_3234C-loc_3219E
loc_321A8:
		st	($FFFFDB87).w
		sub.w	#1,$2A(a0)
		cmp.w	#$FFE2,$2A(a0)
		beq.s	loc_321D4
		cmp.w	#$FFC4,$2A(a0)
		beq.s	loc_321D4
		cmp.w	#$FFA6,$2A(a0)
		beq.s	loc_321D4
		cmp.w	#$FF88,$2A(a0)
		beq.s	loc_321DC
		rts
loc_321D4:
		sub.w	#2,($FFFFDB12).w
		rts
loc_321DC:
		moveq	#0,d0
		move.b	($FFFFFE16).w,d0
		bsr	loc_3214A
		sub.w	#2,($FFFFDB12).w
		move.w	#$78,$2A(a0)
		addq.b	#2,$24(a0)
		move.l	#loc_32402,4(a0)
		move.w	#$6174,2(a0)
		move.b	#4,1(a0)
		move.b	#4,$18(a0)
		move.w	#$36,$30(a0)
		move.b	#$40,$26(a0)
		bsr	loc_3170C
loc_32220:
		bsr	loc_322D6
		bsr	loc_323B0
		bsr	loc_3223A
		lea	(loc_323D0),a1
		bsr	loc_3180E
		bra	loc_3274C
loc_3223A:
		move.l	($FFFFDB82).w,a1
		adda.l	#2,a1
		move.w	$30(a0),d0
		subq.w	#1,d0
		add.w	d0,d0
		move.w	d0,d1
		add.w	d0,d0
		add.w	d1,d0
		move.b	0(a1,d0),d2
		move.b	1(a1,d0),d3
		move.b	2(a1,d0),d4
		move.b	3(a1,d0),d5
		move.w	d5,d6
		swap.w	d5
		move.w	d6,d5
		move.w	d4,d6
		swap.w	d4
		move.w	d6,d4
		bpl.s	loc_32278
		cmp.b	#$48,d3
		bcs.s	loc_32278
		ext.w	d3
loc_32278:
		move.w	d4,d6
		add.w	d4,d4
		add.w	d6,d4
		lsr.w	#2,d4
		move.w	d5,d6
		add.w	d5,d5
		add.w	d6,d5
		lsr.w	#2,d5
		move.b	$26(a0),d0
		bsr	loc_3276A
		muls.w	d4,d1
		muls.w	d5,d0
		asr.l	#8,d0
		asr.l	#8,d1
		add.w	d2,d1
		add.w	d3,d0
		move.w	d1,8(a0)
		move.w	d0,$C(a0)
		swap.w	d4
		swap.w	d5
		move.l	$34(a0),a1
		move.b	$26(a0),d0
		bsr	loc_3276A
		move.w	d4,d6
		lsr.w	#2,d6
		add.w	d6,d4
		muls.w	d4,d1
		move.w	d5,d6
		asr.w	#2,d6
		add.w	d6,d5
		muls.w	d5,d0
		asr.l	#8,d0
		asr.l	#8,d1
		add.w	d2,d1
		add.w	d3,d0
		move.w	d1,8(a1)
		move.w	d0,$C(a1)
		rts
loc_322D6:
		sub.w	#1,$2A(a0)
		bpl.s	loc_3230A
		move.w	($FFFFFE20).w,d2
		add.w	($FFFFFED0).w,d2
		cmp.w	($FFFFDB8C).w,d2
		blt.s	loc_3230C
		cmp.b	#9,$1C(a0)
		bne.s	loc_3230A
		move.w	#$1D,$2A(a0)
		move.b	#8,$24(a0)
		move.w	#$9D,d0
		jsr	Play_Music	
loc_3230A:
		rts
loc_3230C:
		move.b	#6,$24(a0)
		sub.w	#4,($FFFFDB12).w
		move.w	#$45,$2A(a0)
		move.w	#6,d0
		bsr	loc_31F50
		rts
loc_32328:	
		sub.w	#1,$2A(a0)
		bpl	loc_3274C
		move.b	#$C8,($FFFFDB0D).w
		move.w	#$FD,d0
		jsr	Play_Music	
		st	($FFFFDB86).w
		bsr	loc_32386
		rts
loc_3234C:	
		sub.w	#1,$2A(a0)
		bpl	loc_3274C
		move.b	#$C8,($FFFFDB0D).w
		moveq	#0,d0
		move.b	($FFFFFE10).w,d0
		lea	($FFFFFFB2).w,a0
		st	0(a0,d0)
		st	($FFFFFFB0).w
		add.b	#1,($FFFFDB94).w
		add.b	#1,($FFFFFFB1).w
		st	($FFFFDB86).w
		bsr	loc_32386
		move.l	(sp)+,d0
		rts
;-------------------------------------------------------------------------------	
loc_32386:
		move.l	#$FFB000,a1
		move.w	#$1FF,d0
		moveq	#0,d1
loc_32392:	
		move.l	d1,(a1)+
		move.l	d1,(a1)+
		move.l	d1,(a1)+
		move.l	d1,(a1)+
		dbra	d0,loc_32392
		lea	($FFFFF800).w,a1
		moveq	#0,d0
		move.w	#$A0,d1
loc_323A8	
		move.l	d0,(a1)+
		dbra	d1,loc_323A8
		rts	
;-------------------------------------------------------------------------------	
loc_323B0:
		sub.l	#$4445,$30(a0)
		move.w	$30(a0),d0
		cmp.w	#$1D,d0
		ble.s	loc_323C4
		moveq	#$1E,d0
loc_323C4:
		lea	loc_315F0(pc),a1
		move.b	0(a1,d0),$1C(a0)
		rts	
;-------------------------------------------------------------------------------
loc_323D0:
		dc.w	loc_323E4-loc_323D0
		dc.w	loc_323E7-loc_323D0
		dc.w	loc_323EA-loc_323D0
		dc.w	loc_323ED-loc_323D0
		dc.w	loc_323F0-loc_323D0
		dc.w	loc_323F3-loc_323D0
		dc.w	loc_323F6-loc_323D0
		dc.w	loc_323F9-loc_323D0
		dc.w	loc_323FC-loc_323D0
		dc.w	loc_323FF-loc_323D0
loc_323E4:
		dc.b	$B,0,$FF
loc_323E7:
		dc.b	$B,1,$FF
loc_323EA:
		dc.b	$B,2,$FF
loc_323ED:
		dc.b	$B,3,$FF
loc_323F0:
		dc.b	$B,4,$FF
loc_323F3:
		dc.b	$B,5,$FF
loc_323F6:
		dc.b	$B,6,$FF
loc_323F9:
		dc.b	$B,7,$FF
loc_323FC:
		dc.b	$B,8,$FF
loc_323FF:
		dc.b	$B,9,$FF	
;-------------------------------------------------------------------------------	
loc_32402:
		dc.w	loc_32416-loc_32402
		dc.w	loc_32420-loc_32402
		dc.w	loc_3242A-loc_32402
		dc.w	loc_32434-loc_32402
		dc.w	loc_3243E-loc_32402
		dc.w	loc_32448-loc_32402
		dc.w	loc_32452-loc_32402
		dc.w	loc_3245C-loc_32402
		dc.w	loc_32466-loc_32402
		dc.w	loc_32470-loc_32402
loc_32416:
		dc.w	$1
		dc.l	$FC008000,$8000FFFC
loc_32420:
		dc.w	$1
		dc.l	$FC008001,$8000FFFC
loc_3242A:
		dc.w	$1
		dc.l	$FC008002,$8001FFFC
loc_32434:
		dc.w	$1
		dc.l	$F8058003,$8001FFF8
loc_3243E:
		dc.w	$1
		dc.l	$F8058007,$8003FFF8
loc_32448:
		dc.w	$1
		dc.l	$F805800B,$8005FFF8
loc_32452:
		dc.w	$1
		dc.l	$F805800F,$8007FFF8
loc_3245C:
		dc.w	$1
		dc.l	$F40A8013,$8009FFF4
loc_32466:
		dc.w	$1
		dc.l	$F40A801C,$800EFFF4
loc_32470:
		dc.w	$1
		dc.l	$F40A8025,$8012FFF4	
;===============================================================================
; Object 0x59 - Check for End of Special Stage can give an Emerald
; [ End ]	Without this object Special Stage will run Forever
;===============================================================================