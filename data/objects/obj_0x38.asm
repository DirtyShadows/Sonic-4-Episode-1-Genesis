;===============================================================================
; Object 0x38 - Shield
; [ Begin ]
;===============================================================================	
loc_19500:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_1950E(pc,d0),d1
		jmp	loc_1950E(pc,d1)
loc_1950E:
		dc.w	loc_19512-loc_1950E
		dc.w	loc_1953A-loc_1950E
loc_19512:
		addq.b	#2,$24(a0)
		move.l	#Shield_Mappings,4(a0) 
		move.b	#4,1(a0)
		move.b	#1,$18(a0)
		move.b	#$18,$19(a0)
		move.w	#$4BE,2(a0)
		bsr	ModifySpriteAttr_2P	
loc_1953A:
		lea	($FFFFB000).w,a1
		btst	#1,$2B(a1)
		bne.s	loc_19588
		btst	#0,$2B(a1)
		beq.s	loc_1958A
		lea	($FFFFB000).w,a2
		move.w	($FFFFB008).w,8(a0)
		move.w	($FFFFB00C).w,$C(a0)
		move.b	($FFFFB022).w,$22(a0)
		and.w	#$7FFF,2(a0)
		tst.w	2(a2)
		bpl.s	loc_19576
		or.w	#$8000,2(a0)
loc_19576:
		lea	(Shield_AnimateData),a1	
		jsr	animateSprite	
		jmp	displaySprite	
loc_19588:
		rts
loc_1958A:
		jmp	deleteObject	
;===============================================================================
; Object 0x38 - Shield
; [ End ]
;===============================================================================