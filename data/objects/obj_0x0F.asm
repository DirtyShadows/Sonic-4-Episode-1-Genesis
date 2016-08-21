;===============================================================================
; Object 0x0F 1 Player 2 Vs In Title Screen
; [ Begin ]
;===============================================================================	
loc_10A5A:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_10A6C(pc,d0),d1
		jsr	loc_10A6C(pc,d1)
		jmp	displaySprite	
loc_10A6C:
		dc.w	loc_10A70-loc_10A6C
		dc.w	loc_10A9E-loc_10A6C
loc_10A70:
		addq.b	#2,$24(a0)
		move.w	#$128,8(a0)
		move.w	#$14C,$A(a0)
		move.l	#Map_obj0F_Menu,4(a0) 
		move.w	#$512,2(a0)
;		bsr	ModifySpriteAttr_2P	
		move.b	($FFFFFF18).w,$1A(a0)
		and.b	#1,$1A(a0)
loc_10A9E:
		move.b	($FFFFF605).w,d0
		and.b	#3,d0
		beq.s	loc_10AB4
		bchg	#0,$1A(a0)
		move.b	$1A(a0),($FFFFFF18).w
loc_10AB4:
		moveq	#0,d0
		move.b	($FFFFFF18).w,d0
		move.w	d0,($FFFFFF8A).w
		rts	
;===============================================================================
; Object 0x0F 1 Player 2 Vs In Title Screen
; [ End ]
;===============================================================================