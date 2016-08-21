;=============================================================================== 
; Object 0x39 - Time Over / Game Over
; [ Begin ]
;===============================================================================
loc_10F34:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_10F42(pc,d0),d1
		jmp	loc_10F42(pc,d1)
loc_10F42:
		dc.w	loc_10F48-loc_10F42
		dc.w	loc_10F8C-loc_10F42
		dc.w	loc_10FAE-loc_10F42
loc_10F48:
		tst.l	($FFFFF680).w
		beq.s	loc_10F50
		rts
loc_10F50:
		addq.b	#2,$24(a0)
		move.w	#$50,8(a0)
		btst	#0,$1A(a0)
		beq.s	loc_10F68
		move.w	#$1F0,8(a0)
loc_10F68:
		move.w	#$F0,$A(a0)
		move.l	#Time_Over_Game_Over_Mappings,4(a0) 
		move.w	#$84DE,2(a0)
		bsr	ModifySpriteAttr_2P	
		move.b	#0,1(a0)
		move.b	#0,$18(a0)
loc_10F8C:
		moveq	#$10,d1
		cmp.w	#$120,8(a0)
		beq.s	loc_10FA2
		bcs.s	loc_10F9A
		neg.w	d1
loc_10F9A:
		add.w	d1,8(a0)
		bra	displaySprite	
loc_10FA2:
		move.w	#$2D0,$1E(a0)
		addq.b	#2,$24(a0)
		rts
loc_10FAE:
		move.b	($FFFFF605).w,d0
		or.b	($FFFFF607).w,d0
		and.b	#$70,d0
		bne.s	loc_10FD2
		btst	#0,$1A(a0)
		bne.s	loc_11034
		tst.w	$1E(a0)
		beq.s	loc_10FD2
		subq.w	#1,$1E(a0)
		bra	displaySprite	
loc_10FD2:
		tst.b	($FFFFFE1A).w
		bne.s	loc_10FF2
		tst.b	($FFFFFECC).w
		bne.s	loc_10FF2
		move.b	#$14,($FFFFF600).w
		tst.b	($FFFFFE18).w
		bne.s	loc_10FFC
		move.b	#0,($FFFFF600).w
		bra.s	loc_10FFC
loc_10FF2:
		clr.l	($FFFFFE38).w
		move.w	#1,($FFFFFE02).w
loc_10FFC:
		tst.w	($FFFFFFD8).w
		beq.s	loc_11034
		move.b	#$18,($FFFFF600).w
		move.w	#0,($FFFFFF10).w
		tst.b	($FFFFFE1A).w
		bne.s	loc_11034
		tst.b	($FFFFFECC).w
		bne.s	loc_11034
		move.w	#1,($FFFFFF10).w
		bsr	loc_12256
		move.w	#$FFFF,(a4)
		tst.b	$3F(a0)
		beq.s	loc_11030
		addq.w	#1,a4
loc_11030:
		move.b	#$FE,(a4)
loc_11034:
		bra	displaySprite	
;=============================================================================== 
; Object 0x39 - Time Over / Game Over
; [ End ]
;=============================================================================== 