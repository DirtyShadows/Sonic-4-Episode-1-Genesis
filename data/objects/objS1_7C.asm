;=============================================================================== 
; Object 0x7C - Big Ring Flash (Special Stage Access)	
;	Unused - Sonic 1 LeftOver
; [ Begin ]
;===============================================================================	
loc_FFB6:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_FFC4(pc,d0),d1
		jmp	loc_FFC4(pc,d1)
loc_FFC4:
		dc.w	loc_FFCA-loc_FFC4
		dc.w	loc_FFF8-loc_FFC4
		dc.w	loc_10068-loc_FFC4
loc_FFCA:
		addq.b	#2,$24(a0)
		move.l	#Big_Ring_Flash_Mappings,4(a0) 
		move.w	#$2462,2(a0)
		bsr	ModifySpriteAttr_2P	
		or.b	#4,1(a0)
		move.b	#0,$18(a0)
		move.b	#$20,$19(a0)
		move.b	#$FF,$1A(a0)
loc_FFF8:
		bsr.s	loc_10012
		move.w	8(a0),d0
		and.w	#$FF80,d0
		sub.w	($FFFFF7DA).w,d0
		cmp.w	#$280,d0
		bhi	deleteObject	
		bra	displaySprite	
loc_10012:
		subq.b	#1,$1E(a0)
		bpl.s	loc_10058
		move.b	#1,$1E(a0)
		addq.b	#1,$1A(a0)
		cmp.b	#8,$1A(a0)
		bcc.s	loc_1005A
		cmp.b	#3,$1A(a0)
		bne.s	loc_10058
		move.l	$3C(a0),a1
		move.b	#6,$24(a1)
		move.b	#$1C,($FFFFB01C).w
		move.b	#1,($FFFFF7CD).w
		lea	($FFFFB000).w,a1
		bclr	#1,$2B(a1)
		bclr	#0,$2B(a1)
loc_10058:
		rts
loc_1005A:
		addq.b	#2,$24(a0)
		move.w	#0,($FFFFB000).w
		addq.l	#4,sp
		rts
loc_10068:
		bra	deleteObject	
;=============================================================================== 
; Object 0x7C - Big Ring Flash (Special Stage Access)	
;	Unused - Sonic 1 LeftOver
; [ End ]
;=============================================================================== 