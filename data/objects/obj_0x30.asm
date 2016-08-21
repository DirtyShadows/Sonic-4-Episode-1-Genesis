;===============================================================================
; Object 0x30
; [ Begin ]
;===============================================================================	
loc_1F6F8:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_1F706(pc,d0),d1
		jmp	loc_1F706(pc,d1)
loc_1F706:
		dc.w	loc_1F714-loc_1F706
		dc.w	loc_1F760-loc_1F706
loc_1F70A:
		dc.b	$C0,0,$C0,0,$C0,0,$E0,0,$C0,$0
loc_1F714:
		addq.b	#2,$24(a0)
		move.w	$C(a0),$32(a0)
		move.w	8(a0),$30(a0)
		moveq	#0,d0
		move.b	$28(a0),d0
		move.b	loc_1F70A(pc,d0),$19(a0)
		cmp.b	#6,d0
		bcs.s	loc_1F760
		bne.s	loc_1F742
		cmp.w	#$380,($FFFFEE04).w
		bcc.s	loc_1F760
		bra.s	loc_1F74A
loc_1F742:
		cmp.w	#$380,($FFFFEE04).w
		bcs.s	loc_1F760
loc_1F74A:
		lea	($FFFFFC00).w,a2
		moveq	#0,d0
		move.b	$23(a0),d0
		beq.s	loc_1F75C
		bclr	#7,2(a2,d0)
loc_1F75C:
		bra	loc_1F8EC
loc_1F760:
		move.w	$32(a0),d0
		add.w	($FFFFEEE4).w,d0
		move.w	d0,$C(a0)
		moveq	#0,d0
		move.b	$28(a0),d0
		move.w	loc_1F784(pc,d0),d1
		jsr	loc_1F784(pc,d1)
		tst.b	($FFFFEEBC).w
		beq	loc_1F8F8
		rts	
loc_1F784:
		dc.w	loc_1F78E-loc_1F784
		dc.w	loc_1F78E-loc_1F784
		dc.w	loc_1F7A6-loc_1F784
		dc.w	loc_1F7EC-loc_1F784
		dc.w	loc_1F806-loc_1F784
loc_1F78E:
		move.w	#$CB,d1
		move.w	#$80,d2
		move.w	#$81,d3
		move.w	8(a0),d4
		bsr	loc_1F904
		bra	loc_1F8FE
loc_1F7A6:
		move.w	#$CB,d1
		move.w	#$78,d2
		move.w	#$79,d3
		move.w	8(a0),d4
		bsr	loc_1F904
		bsr	loc_1F8FE
loc_1F7BE:	
		btst	#3,$22(a0)
		beq.s	loc_1F7D4
		move.l	a0,-(sp)
		move.l	a0,a1
		lea	($FFFFB000).w,a0
		bsr	loc_1F8F2
		move.l	(sp)+,a0
loc_1F7D4:
		btst	#4,$22(a0)
		beq.s	loc_1F7EA
		move.l	a0,-(sp)
		move.l	a0,a1
		lea	($FFFFB040).w,a0
		bsr	loc_1F8F2
		move.l	(sp)+,a0
loc_1F7EA:
		rts
loc_1F7EC:
		move.w	#$EB,d1
		move.w	#$78,d2
		move.w	#$79,d3
		move.w	8(a0),d4
		bsr	loc_1F904
		bsr	loc_1F8FE
		bra.s	loc_1F7BE
loc_1F806:
		move.w	#$CB,d1
		move.w	#$2E,d2
		move.w	8(a0),d4
		lea	(loc_1F820),a2
		bsr	loc_1F90A
		bra	loc_1F8FE
;------------------------------------------------------------------------------- 
loc_1F820:
		dc.b	$30,$30,$30,$30,$30,$30,$30,$30,$2F,$2F,$2E,$2E,$2D,$2D,$2C,$2C
		dc.b	$2B,$2B,$2A,$2A,$29,$29,$28,$28,$27,$27,$26,$26,$25,$25,$24,$24
		dc.b	$23,$23,$22,$22,$21,$21,$20,$20,$1F,$1F,$1E,$1E,$1D,$1D,$1C,$1C
		dc.b	$1B,$1B,$1A,$1A,$19,$19,$18,$18,$17,$17,$16,$16,$15,$15,$14,$14
		dc.b	$13,$13,$12,$12,$11,$11,$10,$10,$F,$F,$E,$E,$D,$D,$C,$C
		dc.b	$B,$B,$A,$A,9,9,8,8,7,7,6,6,5,5,4,$4
		dc.b	3,3,2,2,1,1,0,0,$FF,$FF,$FE,$FE,$FD,$FD,$FC,$FC
		dc.b	$FB,$FB,$FA,$FA,$F9,$F9,$F8,$F8,$F7,$F7,$F6,$F6,$F5,$F5,$F4,$F4
		dc.b	$F3,$F3,$F2,$F2,$F1,$F1,$F0,$F0,$EF,$EF,$EE,$EE,$ED,$ED,$EC,$EC
		dc.b	$EB,$EB,$EA,$EA,$E9,$E9,$E8,$E8,$E7,$E7,$E6,$E6,$E5,$E5,$E4,$E4
		dc.b	$E3,$E3,$E2,$E2,$E1,$E1,$E0,$E0,$DF,$DF,$DE,$DE,$DD,$DD,$DC,$DC
		dc.b	$DB,$DB,$DA,$DA,$D9,$D9,$D8,$D8,$D7,$D7,$D6,$D6,$D5,$D5,$D4,$D4
		dc.b	$D3,$D3,$D2,$D2,$D1,$D1,$D0,$D0,$D0,$D0,$D0,$D0	
;===============================================================================
; Object 0x30
; [ End ]
;===============================================================================