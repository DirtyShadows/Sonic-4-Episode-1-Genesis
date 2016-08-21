;===============================================================================
; Object 0x7C - Metal Structure - Chemical Plant
; [ Begin ]
;===============================================================================	
loc_1CE20:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_1CE2E(pc,d0),d1
		jmp	loc_1CE2E(pc,d1)
loc_1CE2E:
		dc.w	loc_1CE32-loc_1CE2E
		dc.w	loc_1CE54-loc_1CE2E
loc_1CE32:
		addq.b	#2,$24(a0)
		move.l	#Metal_Structure_Mappings,4(a0) 
		move.w	#$C373,2(a0)
		bsr	loc_1D302
		move.b	#$10,$19(a0)
		move.b	#7,$18(a0)
loc_1CE54:
		move.w	($FFFFEE00).w,d1
		and.w	#$3FF,d1
		cmp.w	#$2E0,d1
		bcc.s	loc_1CE88
		asr.w	#1,d1
		move.w	d1,d0
		asr.w	#1,d1
		add.w	d1,d0
		neg.w	d0
		move.w	d0,8(a0)
		move.w	($FFFFEE04).w,d1
		asr.w	#1,d1
		and.w	#$3F,d1
		neg.w	d1
		add.w	#$100,d1
		move.w	d1,$A(a0)
		bra	loc_1D2F0
loc_1CE88:
		rts	
;-------------------------------------------------------------------------------
Metal_Structure_Mappings: 
		dc.w	loc_1CE8C-Metal_Structure_Mappings
loc_1CE8C:
		dc.w	$9
		dc.l	$800FA000,$A000FFF0,$A00FB000,$B000FFF0
		dc.l	$C00FA000,$A000FFF0,$E00FB000,$B000FFF0
		dc.l	$FA000,$A000FFF0,$200FB000,$B000FFF0
		dc.l	$400FA000,$A000FFF0,$600FB000,$B000FFF0
		dc.l	$7F0FA000,$A000FFF0	
;===============================================================================
; Object 0x7C - Metal Structure - Chemical Plant
; [ End ]
;===============================================================================