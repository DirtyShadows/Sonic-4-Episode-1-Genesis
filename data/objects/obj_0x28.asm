;=============================================================================== 
; Object 0x28 - Flickies
; [ Begin ]
;===============================================================================	
loc_F5A0:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_F5AE(pc,d0),d1
		jmp	loc_F5AE(pc,d1)
loc_F5AE:
		dc.w	loc_F6D2-loc_F5AE
		dc.w	loc_F7F2-loc_F5AE
		dc.w	loc_F84C-loc_F5AE
		dc.w	loc_F888-loc_F5AE
		dc.w	loc_F84C-loc_F5AE
		dc.w	loc_F84C-loc_F5AE
		dc.w	loc_F84C-loc_F5AE
		dc.w	loc_F888-loc_F5AE
		dc.w	loc_F84C-loc_F5AE
		dc.w	loc_F888-loc_F5AE
		dc.w	loc_F84C-loc_F5AE
		dc.w	loc_F84C-loc_F5AE
		dc.w	loc_F84C-loc_F5AE
		dc.w	loc_F84C-loc_F5AE
		dc.w	loc_F908-loc_F5AE
		dc.w	loc_F928-loc_F5AE
		dc.w	loc_F928-loc_F5AE
		dc.w	loc_F948-loc_F5AE
		dc.w	loc_F982-loc_F5AE
		dc.w	loc_F9DC-loc_F5AE
		dc.w	loc_F9FA-loc_F5AE
		dc.w	loc_F9DC-loc_F5AE
		dc.w	loc_F9FA-loc_F5AE
		dc.w	loc_F9DC-loc_F5AE
		dc.w	loc_FA38-loc_F5AE
		dc.w	loc_F99E-loc_F5AE
loc_F5E2:
		dc.b	6,5,6,5,6,5,6,5,9,7,9,7,9,7,9,$7
		dc.b	8,3,8,3,2,3,8,1,$B,5,0,7,4,1,2,$5
		dc.b	$A,$1	
loc_F604:
		dc.w	$FE00,$FC00
		dc.l	loc_FBC0
		dc.w	$FE00,$FD00
		dc.l	loc_FB30
		dc.w	$FE80,$FD00
		dc.l	loc_FBC0
		dc.w	$FEC0,$FE80
		dc.l	loc_FB9C
		dc.w	$FE40,$FD00
		dc.l	loc_FB78
		dc.w	$FD00,$FC00
		dc.l	loc_FB30
		dc.w	$FD80,$FC80
		dc.l	loc_FB54
		dc.w	$FD80,$FD00
		dc.l	loc_FB30
		dc.w	$FE00,$FC80
		dc.l	loc_FB54
		dc.w	$FD40,$FD00
		dc.l	loc_FB54
		dc.w	$FEC0,$FE00
		dc.l	loc_FB54
		dc.w	$FE00,$FD00
		dc.l	loc_FB54	
loc_F664:
		dc.w	$FBC0,$FC00,$FBC0,$FC00,$FBC0,$FC00,$FD00,$FC00
		dc.w	$FD00,$FC00,$FE80,$FD00,$FE80,$FD00,$FEC0,$FE80
		dc.w	$FE40,$FD00,$FE00,$FD00,$FD80,$FC80	
loc_F690:
		dc.l	loc_FB30
		dc.l	loc_FB30
		dc.l	loc_FB30
		dc.l	loc_FBC0
		dc.l	loc_FBC0
		dc.l	loc_FBC0
		dc.l	loc_FBC0
		dc.l	loc_FB9C
		dc.l	loc_FB78
		dc.l	loc_FB30
		dc.l	loc_FB54	
loc_F6BC:
		dc.w	$5A5,$5A5,$5A5,$553,$553,$573,$573,$585
		dc.w	$593,$565,$5B3
loc_F6D2:
		tst.b	$28(a0)
		beq	loc_F740
		moveq	#0,d0
		move.b	$28(a0),d0
		add.w	d0,d0
		move.b	d0,$24(a0)
		sub.w	#$14,d0
		move.w	loc_F6BC(pc,d0),2(a0)
		add.w	d0,d0
		move.l	loc_F690(pc,d0),4(a0)
		lea	loc_F664(pc),a1
		move.w	0(a1,d0),$32(a0)
		move.w	0(a1,d0),$10(a0)
		move.w	2(a1,d0),$34(a0)
		move.w	2(a1,d0),$12(a0)
		bsr	ModifySpriteAttr_2P	
		move.b	#$C,$16(a0)
		move.b	#4,1(a0)
		bset	#0,1(a0)
		move.b	#6,$18(a0)
		move.b	#8,$19(a0)
		move.b	#7,$1E(a0)
		bra	displaySprite	
loc_F740:
		addq.b	#2,$24(a0)
		bsr	loc_FC50
		move.w	#$580,2(a0)
		and.w	#1,d0
		beq.s	loc_F75A
		move.w	#$594,2(a0)
loc_F75A:
		moveq	#0,d1
		move.b	($FFFFFE10).w,d1
		add.w	d1,d1
		add.w	d0,d1
		lea	loc_F5E2(pc),a1
		move.b	0(a1,d1),d0
		move.b	d0,$30(a0)
		lsl.w	#3,d0
		lea	loc_F604(pc),a1
		adda.w	d0,a1
		move.w	(a1)+,$32(a0)
		move.w	(a1)+,$34(a0)
		move.l	(a1)+,4(a0)
		bsr	ModifySpriteAttr_2P	
		move.b	#$C,$16(a0)
		move.b	#4,1(a0)
		bset	#0,1(a0)
		move.b	#6,$18(a0)
		move.b	#8,$19(a0)
		move.b	#7,$1E(a0)
		move.b	#2,$1A(a0)
		move.w	#$FC00,$12(a0)
		tst.b	$38(a0)
		bne.s	loc_F7E4
		bsr	SingleObjectLoad	
		bne.s	loc_F7E0
		move.b	#$29,0(a1)
		move.w	8(a0),8(a1)
		move.w	$C(a0),$C(a1)
		move.w	$3E(a0),d0
		lsr.w	#1,d0
		move.b	d0,$1A(a1)
loc_F7E0:
		bra	displaySprite	
loc_F7E4:
		move.b	#$1C,$24(a0)
		clr.w	$10(a0)
		bra	displaySprite	
loc_F7F2:
		tst.b	1(a0)
		bpl	deleteObject	
		bsr	ObjectFall	
		tst.w	$12(a0)
		bmi.s	loc_F848
		jsr	ObjHitFloor	
		tst.w	d1
		bpl.s	loc_F848
		add.w	d1,$C(a0)
		move.w	$32(a0),$10(a0)
		move.w	$34(a0),$12(a0)
		move.b	#1,$1A(a0)
		move.b	$30(a0),d0
		add.b	d0,d0
		addq.b	#4,d0
		move.b	d0,$24(a0)
		tst.b	$38(a0)
		beq.s	loc_F848
		btst	#4,($FFFFFE0F).w
		beq.s	loc_F848
		neg.w	$10(a0)
		bchg	#0,1(a0)
loc_F848:
		bra	displaySprite	
loc_F84C:
		bsr	ObjectFall	
		move.b	#1,$1A(a0)
		tst.w	$12(a0)
		bmi.s	loc_F876
		move.b	#0,$1A(a0)
		jsr	ObjHitFloor	
		tst.w	d1
		bpl.s	loc_F876
		add.w	d1,$C(a0)
		move.w	$34(a0),$12(a0)
loc_F876:
		tst.b	$28(a0)
		bne.s	loc_F8EC
		tst.b	1(a0)
		bpl	deleteObject	
		bra	displaySprite	
loc_F888:
		bsr	SpeedToPos	
		add.w	#$18,$12(a0)
		tst.w	$12(a0)
		bmi.s	loc_F8C4
		jsr	ObjHitFloor	
		tst.w	d1
		bpl.s	loc_F8C4
		add.w	d1,$C(a0)
		move.w	$34(a0),$12(a0)
		tst.b	$28(a0)
		beq.s	loc_F8C4
		cmp.b	#$A,$28(a0)
		beq.s	loc_F8C4
		neg.w	$10(a0)
		bchg	#0,1(a0)
loc_F8C4:
		subq.b	#1,$1E(a0)
		bpl.s	loc_F8DA
		move.b	#1,$1E(a0)
		addq.b	#1,$1A(a0)
		and.b	#1,$1A(a0)
loc_F8DA:
		tst.b	$28(a0)
		bne.s	loc_F8EC
		tst.b	1(a0)
		bpl	deleteObject	
		bra	displaySprite	
loc_F8EC:
		move.w	8(a0),d0
		sub.w	($FFFFB008).w,d0
		bcs.s	loc_F904
		sub.w	#$180,d0
		bpl.s	loc_F904
		tst.b	1(a0)
		bpl	deleteObject	
loc_F904:
		bra	displaySprite	
loc_F908:
		tst.b	1(a0)
		bpl	deleteObject	
		subq.w	#1,$36(a0)
		bne	loc_F924
		move.b	#2,$24(a0)
		move.b	#1,$18(a0)
loc_F924:
		bra	displaySprite	
loc_F928:
		bsr	loc_FACC
		bcc.s	loc_F944
		move.w	$32(a0),$10(a0)
		move.w	$34(a0),$12(a0)
		move.b	#$E,$24(a0)
		bra	loc_F888
loc_F944:
		bra	loc_F8EC
loc_F948:
		bsr	loc_FACC
		bpl.s	loc_F97E
		clr.w	$10(a0)
		clr.w	$32(a0)
		bsr	SpeedToPos	
		add.w	#$18,$12(a0)
		bsr	loc_FA8C
		bsr	loc_FAB4
		subq.b	#1,$1E(a0)
		bpl.s	loc_F97E
		move.b	#1,$1E(a0)
		addq.b	#1,$1A(a0)
		and.b	#1,$1A(a0)
loc_F97E:
		bra	loc_F8EC
loc_F982:
		bsr	loc_FACC
		bpl.s	loc_F9D8
		move.w	$32(a0),$10(a0)
		move.w	$34(a0),$12(a0)
		move.b	#4,$24(a0)
		bra	loc_F84C
loc_F99E:
		bsr	ObjectFall	
		move.b	#1,$1A(a0)
		tst.w	$12(a0)
		bmi.s	loc_F9D8
		move.b	#0,$1A(a0)
		jsr	ObjHitFloor	
		tst.w	d1
		bpl.s	loc_F9D8
		not.b	$29(a0)
		bne.s	loc_F9CE
		neg.w	$10(a0)
		bchg	#0,1(a0)
loc_F9CE:
		add.w	d1,$C(a0)
		move.w	$34(a0),$12(a0)
loc_F9D8:
		bra	loc_F8EC
loc_F9DC:
		bsr	loc_FACC
		bpl.s	loc_F9F6
		clr.w	$10(a0)
		clr.w	$32(a0)
		bsr	ObjectFall	
		bsr	loc_FA8C
		bsr	loc_FAB4
loc_F9F6:
		bra	loc_F8EC
loc_F9FA:
		bsr	loc_FACC
		bpl.s	loc_FA34
		bsr	ObjectFall	
		move.b	#1,$1A(a0)
		tst.w	$12(a0)
		bmi.s	loc_FA34
		move.b	#0,$1A(a0)
		jsr	ObjHitFloor	
		tst.w	d1
		bpl.s	loc_FA34
		neg.w	$10(a0)
		bchg	#0,1(a0)
		add.w	d1,$C(a0)
		move.w	$34(a0),$12(a0)
loc_FA34:
		bra	loc_F8EC
loc_FA38:
		bsr	loc_FACC
		bpl.s	loc_FA88
		bsr	SpeedToPos	
		add.w	#$18,$12(a0)
		tst.w	$12(a0)
		bmi.s	loc_FA72
		jsr	ObjHitFloor	
		tst.w	d1
		bpl.s	loc_FA72
		not.b	$29(a0)
		bne.s	loc_FA68
		neg.w	$10(a0)
		bchg	#0,1(a0)
loc_FA68:
		add.w	d1,$C(a0)
		move.w	$34(a0),$12(a0)
loc_FA72:
		subq.b	#1,$1E(a0)
		bpl.s	loc_FA88
		move.b	#1,$1E(a0)
		addq.b	#1,$1A(a0)
		and.b	#1,$1A(a0)
loc_FA88:
		bra	loc_F8EC
loc_FA8C:
		move.b	#1,$1A(a0)
		tst.w	$12(a0)
		bmi.s	loc_FAB2
		move.b	#0,$1A(a0)
		jsr	ObjHitFloor	
		tst.w	d1
		bpl.s	loc_FAB2
		add.w	d1,$C(a0)
		move.w	$34(a0),$12(a0)
loc_FAB2:
		rts
loc_FAB4:
		bset	#0,1(a0)
		move.w	8(a0),d0
		sub.w	($FFFFB008).w,d0
		bcc.s	loc_FACA
		bclr	#0,1(a0)
loc_FACA:
		rts
loc_FACC:
		move.w	($FFFFB008).w,d0
		sub.w	8(a0),d0
		sub.w	#$B8,d0
		rts	
;=============================================================================== 
; Object 0x28 - Flickies
; [ End ]
;===============================================================================	
