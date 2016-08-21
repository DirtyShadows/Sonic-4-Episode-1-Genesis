;=============================================================================== 
; Object 0x4B - Big Ring (Special Stage Access)	
;	Unused - Sonic 1 LeftOver
; [ Begin ]
;===============================================================================	
loc_FEF2:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_FF00(pc,d0),d1
		jmp	loc_FF00(pc,d1)
loc_FF00:
		dc.w	loc_FF08-loc_FF00
		dc.w	loc_FF56-loc_FF00
		dc.w	loc_FF74-loc_FF00
		dc.w	loc_FFB2-loc_FF00
loc_FF08:
		move.l	#Big_Ring_Mappings,4(a0) 
		move.w	#$2400,2(a0)
		bsr	ModifySpriteAttr_2P	
		or.b	#4,1(a0)
		move.b	#$40,$19(a0)
		tst.b	1(a0)
		bpl.s	loc_FF56
		cmp.b	#6,($FFFFFFB0).w
		beq	loc_FFB2
		cmp.w	#$32,($FFFFFE20).w
		bcc.s	loc_FF40
		rts
loc_FF40:
		addq.b	#2,$24(a0)
		move.b	#2,$18(a0)
		move.b	#$52,$20(a0)
		move.w	#$C40,($FFFFF7BE).w
loc_FF56:
		move.b	($FFFFFEA3).w,$1A(a0)
		move.w	8(a0),d0
		and.w	#$FF80,d0
		sub.w	($FFFFF7DA).w,d0
		cmp.w	#$280,d0
		bhi	deleteObject	
		bra	displaySprite	
loc_FF74:
		subq.b	#2,$24(a0)
		move.b	#0,$20(a0)
		bsr	SingleObjectLoad	
		bne	loc_FFA6
		move.w	8(a0),8(a1)
		move.w	$C(a0),$C(a1)
		move.l	a0,$3C(a1)
		move.w	($FFFFB008).w,d0
		cmp.w	8(a0),d0
		bcs.s	loc_FFA6
		bset	#0,1(a1)
loc_FFA6:
		move.w	#$C3,d0
		jsr	Play_Unknow	
		bra.s	loc_FF56
loc_FFB2:
		bra	deleteObject	
;=============================================================================== 
; Object 0x4B - Big Ring (Special Stage Access)	
;	Unused - Sonic 1 LeftOver
; [ End ]
;===============================================================================	