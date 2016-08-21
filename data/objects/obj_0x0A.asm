;=============================================================================== 
; Object 0x0A - Sonic and Miles underwater - HPz / NGHz	
; [ Begin ]
;===============================================================================	
loc_18F40:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_18F4E(pc,d0),d1
		jmp	loc_18F4E(pc,d1)	
loc_18F4E:
		dc.w	loc_18F60-loc_18F4E
		dc.w	loc_18FB8-loc_18F4E
		dc.w	loc_18FC4-loc_18F4E
		dc.w	loc_1903A-loc_18F4E
		dc.w	loc_1904E-loc_18F4E
		dc.w	loc_19226-loc_18F4E
		dc.w	loc_19054-loc_18F4E
		dc.w	loc_1902E-loc_18F4E
		dc.w	loc_1904E-loc_18F4E
loc_18F60:
		addq.b	#2,$24(a0)
		move.l	#Sonic_Underwater_Mappings,4(a0) 
		tst.b	$3F(a0)
		beq.s	loc_18F7A
		move.l	#Miles_Underwater_Mappings,4(a0) 
loc_18F7A:
		move.w	#$855B,2(a0)
		move.b	#$84,1(a0)
		move.b	#$10,$19(a0)
		move.b	#1,$18(a0)
		move.b	$28(a0),d0
		bpl.s	loc_18FA8
		addq.b	#8,$24(a0)
		and.w	#$7F,d0
		move.b	d0,$33(a0)
		bra	loc_19226
loc_18FA8:
		move.b	d0,$1C(a0)
		move.w	8(a0),$30(a0)
		move.w	#$FF78,$12(a0)
loc_18FB8:
		lea	(loc_1946E),a1
		jsr	animateSprite	
loc_18FC4:
		move.w	($FFFFF646).w,d0
		cmp.w	$C(a0),d0
		bcs.s	loc_18FEA
		move.b	#6,$24(a0)
		addq.b	#7,$1C(a0)
		cmp.b	#$D,$1C(a0)
		beq.s	loc_1903A
		bcs.s	loc_1903A
		move.b	#$D,$1C(a0)
		bra.s	loc_1903A
loc_18FEA:
		tst.b	($FFFFF7C7).w
		beq.s	loc_18FF4
		addq.w	#4,$30(a0)
loc_18FF4:
		move.b	$26(a0),d0
		addq.b	#1,$26(a0)
		and.w	#$7F,d0
		lea	(loc_190E0),a1
		move.b	0(a1,d0),d0
		ext.w	d0
		add.w	$30(a0),d0
		move.w	d0,8(a0)
		bsr.s	loc_19094
		jsr	SpeedToPos	
		tst.b	1(a0)
		bpl.s	loc_19028
		jmp	displaySprite	
loc_19028:
		jmp	deleteObject	
loc_1902E:
		move.l	$3C(a0),a2
		cmp.b	#$C,$28(a2)
		bhi.s	loc_1904E
loc_1903A:
		bsr.s	loc_19094
		lea	(loc_1946E),a1
		jsr	animateSprite	
		jmp	displaySprite	
loc_1904E:
		jmp	deleteObject	
loc_19054:
		move.l	$3C(a0),a2
		cmp.b	#$C,$28(a2)
		bhi.s	loc_1908E
		subq.w	#1,$38(a0)
		bne.s	loc_19072
		move.b	#$E,$24(a0)
		addq.b	#7,$1C(a0)
		bra.s	loc_1903A
loc_19072:
		lea	(loc_1946E),a1
		jsr	animateSprite	
		bsr	loc_191E0
		tst.b	1(a0)
		bpl.s	loc_1908E
		jmp	displaySprite	
loc_1908E:
		jmp	deleteObject	
loc_19094:
		tst.w	$38(a0)
		beq.s	loc_190DE
		subq.w	#1,$38(a0)
		bne.s	loc_190DE
		cmp.b	#7,$1C(a0)
		bcc.s	loc_190DE
		move.w	#$F,$38(a0)
		clr.w	$12(a0)
		move.b	#$80,1(a0)
		move.w	8(a0),d0
		sub.w	($FFFFEE00).w,d0
		add.w	#$80,d0
		move.w	d0,8(a0)
		move.w	$C(a0),d0
		sub.w	($FFFFEE04).w,d0
		add.w	#$80,d0
		move.w	d0,$A(a0)
		move.b	#$C,$24(a0)
loc_190DE:
		rts
;-------------------------------------------------------------------------------
loc_190E0:
		dc.b	0,0,0,0,0,0,1,1,1,1,1,2,2,2,2,$2
		dc.b	2,2,3,3,3,3,3,3,3,3,3,3,3,3,3,$3
		dc.b	3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,$2
		dc.b	2,2,2,2,2,2,1,1,1,1,1,0,0,0,0,$0
		dc.b	0,$FF,$FF,$FF,$FF,$FF,$FE,$FE,$FE,$FE,$FE,$FD,$FD,$FD,$FD,$FD
		dc.b	$FD,$FD,$FC,$FC,$FC,$FC,$FC,$FC,$FC,$FC,$FC,$FC,$FC,$FC,$FC,$FC
		dc.b	$FC,$FC,$FC,$FC,$FC,$FC,$FC,$FC,$FC,$FC,$FC,$FC,$FC,$FC,$FC,$FD
		dc.b	$FD,$FD,$FD,$FD,$FD,$FD,$FE,$FE,$FE,$FE,$FE,$FF,$FF,$FF,$FF,$FF
		dc.b	0,0,0,0,0,0,1,1,1,1,1,2,2,2,2,$2
		dc.b	2,2,3,3,3,3,3,3,3,3,3,3,3,3,3,$3
		dc.b	3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,$2
		dc.b	2,2,2,2,2,2,1,1,1,1,1,0,0,0,0,$0
		dc.b	0,$FF,$FF,$FF,$FF,$FF,$FE,$FE,$FE,$FE,$FE,$FD,$FD,$FD,$FD,$FD
		dc.b	$FD,$FD,$FC,$FC,$FC,$FC,$FC,$FC,$FC,$FC,$FC,$FC,$FC,$FC,$FC,$FC
		dc.b	$FC,$FC,$FC,$FC,$FC,$FC,$FC,$FC,$FC,$FC,$FC,$FC,$FC,$FC,$FC,$FD
		dc.b	$FD,$FD,$FD,$FD,$FD,$FD,$FE,$FE,$FE,$FE,$FE,$FF,$FF,$FF,$FF,$FF
;-------------------------------------------------------------------------------

loc_191E0:
		moveq	#0,d1
		move.b	$1A(a0),d1
		cmp.b	#8,d1
		bcs.s	loc_19224
		cmp.b	#$E,d1
		bcc.s	loc_19224
		cmp.b	$2E(a0),d1
		beq.s	loc_19224
		move.b	d1,$2E(a0)
		subq.w	#8,d1
		move.w	d1,d0
		add.w	d1,d1
		add.w	d0,d1
		lsl.w	#6,d1
		add.l	#Oxygen_Numbers_Spr,d1 
		move.w	#$9380,d2
		tst.b	$3F(a0)
		beq.s	loc_1921A
		move.w	#$9180,d2
loc_1921A:
		move.w	#$60,d3
		jsr	dMA_68KtoVRAM	
loc_19224:
		rts
loc_19226:
		move.l	$3C(a0),a2
		tst.w	$2C(a0)
		bne	loc_19328
		cmp.b	#6,$24(a2)
		bcc	loc_19436
		btst	#6,$22(a2)
		beq	loc_19436
		subq.w	#1,$38(a0)
		bpl	loc_1934C
		move.w	#$3B,$38(a0)
		move.w	#1,$36(a0)
		jsr	PseudoRandomNumber	
		and.w	#1,d0
		move.b	d0,$34(a0)
		moveq	#0,d0
		move.b	$28(a2),d0
		cmp.w	#$19,d0
		beq.s	loc_192AC
		cmp.w	#$14,d0
		beq.s	loc_192AC
		cmp.w	#$F,d0
		beq.s	loc_192AC
		cmp.w	#$C,d0
		bhi.s	loc_192BC
		bne.s	loc_19298
		tst.b	$3F(a0)
		bne.s	loc_19298
		move.w	#$9F,d0
		jsr	Play_Music	
loc_19298:
		subq.b	#1,$32(a0)
		bpl.s	loc_192BC
		move.b	$33(a0),$32(a0)
		bset	#7,$36(a0)
		bra.s	loc_192BC
loc_192AC:
		tst.b	$3F(a0)
		bne.s	loc_192BC
		move.w	#$C2,d0
		jsr	Play_Sfx	
loc_192BC:
		subq.b	#1,$28(a2)
		bcc	loc_1934A
		move.b	#$81,$2A(a2)
		move.w	#$B2,d0
		jsr	Play_Sfx	
		move.b	#$A,$34(a0)
		move.w	#1,$36(a0)
		move.w	#$78,$2C(a0)
		move.l	a2,a1
		bsr	ResumeMusic	
		move.l	a0,-(sp)
		move.l	a2,a0
		bsr	loc_16F34
		move.b	#$17,$1C(a0)
		bset	#1,$22(a0)
		bset	#7,2(a0)
		move.w	#0,$12(a0)
		move.w	#0,$10(a0)
		move.w	#0,$14(a0)
		move.l	(sp)+,a0
		cmpa.w	#$B000,a2
		bne.s	loc_19326
		move.b	#1,($FFFFEEDC).w
loc_19326:
		rts
loc_19328:
		subq.w	#1,$2C(a0)
		bne.s	loc_19336
		move.b	#6,$24(a2)
		rts
loc_19336:
		move.l	a0,-(sp)
		move.l	a2,a0
		jsr	SpeedToPos	
		add.w	#$10,$12(a0)
		move.l	(sp)+,a0
		bra.s	loc_1934C
loc_1934A:
		bra.s	loc_1935C
loc_1934C:
		tst.w	$36(a0)
		beq	loc_19436
		subq.w	#1,$3A(a0)
		bpl	loc_19436
loc_1935C:
		jsr	PseudoRandomNumber	
		and.w	#$F,d0
		addq.w	#8,d0
		move.w	d0,$3A(a0)
		jsr	SingleObjectLoad	
		bne	loc_19436
		move.b	0(a0),0(a1)
		move.w	8(a2),8(a1)
		moveq	#6,d0
		btst	#0,$22(a2)
		beq.s	loc_19394
		neg.w	d0
		move.b	#$40,$26(a1)
loc_19394:
		add.w	d0,8(a1)
		move.w	$C(a2),$C(a1)
		move.l	$3C(a0),$3C(a1)
		move.b	#6,$28(a1)
		tst.w	$2C(a0)
		beq	loc_193E6
		and.w	#7,$3A(a0)
		add.w	#0,$3A(a0)
		move.w	$C(a2),d0
		sub.w	#$C,d0
		move.w	d0,$C(a1)
		jsr	PseudoRandomNumber	
		move.b	d0,$26(a1)
		move.w	($FFFFFE04).w,d0
		and.b	#3,d0
		bne.s	loc_1942C
		move.b	#$E,$28(a1)
		bra.s	loc_1942C
loc_193E6:
		btst	#7,$36(a0)
		beq.s	loc_1942C
		moveq	#0,d2
		move.b	$28(a2),d2
		lsr.w	#1,d2
		jsr	PseudoRandomNumber	
		and.w	#3,d0
		bne.s	loc_19414
		bset	#6,$36(a0)
		bne.s	loc_1942C
		move.b	d2,$28(a1)
		move.w	#$1C,$38(a1)
loc_19414:
		tst.b	$34(a0)
		bne.s	loc_1942C
		bset	#6,$36(a0)
		bne.s	loc_1942C
		move.b	d2,$28(a1)
		move.w	#$1C,$38(a1)
loc_1942C:
		subq.b	#1,$34(a0)
		bpl.s	loc_19436
		clr.w	$36(a0)
loc_19436:
		rts
;===============================================================================
; Sub Routine ResumeMusic
; [ Begin ]
;===============================================================================
ResumeMusic: 
		cmp.b	#$C,$28(a1)
		bhi.s	loc_19466
		cmpa.w	#$B000,a1
		bne.s	loc_19466
		move.w	($FFFFFF90).w,d0
		btst	#1,$2B(a1)
		beq.s	loc_19456
		move.w	#$97,d0
loc_19456:
		tst.b	($FFFFF7AA).w
		beq.s	loc_19460
		move.w	#$93,d0
loc_19460:
		jsr	Play_Music	
loc_19466:
		move.b	#$1E,$28(a1)
		rts	
;===============================================================================
; Sub Routine ResumeMusic
; [ End ]
;===============================================================================	
loc_1946E:
		dc.w	loc_1948C-loc_1946E
		dc.w	loc_19495-loc_1946E
		dc.w	loc_1949E-loc_1946E
		dc.w	loc_194A7-loc_1946E
		dc.w	loc_194B0-loc_1946E
		dc.w	loc_194B9-loc_1946E
		dc.w	loc_194C2-loc_1946E
		dc.w	loc_194C7-loc_1946E
		dc.w	loc_194CF-loc_1946E
		dc.w	loc_194D7-loc_1946E
		dc.w	loc_194DF-loc_1946E
		dc.w	loc_194E7-loc_1946E
		dc.w	loc_194EF-loc_1946E
		dc.w	loc_194F7-loc_1946E
		dc.w	loc_194F9-loc_1946E
loc_1948C:
		dc.b	5,0,1,2,3,4,8,8,$FC
loc_19495:
		dc.b	5,0,1,2,3,4,9,9,$FC
loc_1949E:
		dc.b	5,0,1,2,3,4,$A,$A,$FC
loc_194A7:
		dc.b	5,0,1,2,3,4,$B,$B,$FC
loc_194B0:
		dc.b	5,0,1,2,3,4,$C,$C,$FC
loc_194B9:
		dc.b	5,0,1,2,3,4,$D,$D,$FC
loc_194C2:
		dc.b	$E,0,1,2,$FC
loc_194C7:
		dc.b	7,$10,8,$10,8,$10,8,$FC
loc_194CF:
		dc.b	7,$10,9,$10,9,$10,9,$FC
loc_194D7:
		dc.b	7,$10,$A,$10,$A,$10,$A,$FC
loc_194DF:
		dc.b	7,$10,$B,$10,$B,$10,$B,$FC
loc_194E7:
		dc.b	7,$10,$C,$10,$C,$10,$C,$FC
loc_194EF:
		dc.b	7,$10,$D,$10,$D,$10,$D,$FC
loc_194F7:
		dc.b	$E,$FC
loc_194F9:
		dc.b	$E,1,2,3,4,$FC,$0	
	
;=============================================================================== 
; Object 0x0A - Sonic and Miles underwater - HPz / NGHz	
; [ Begin ]
;===============================================================================	