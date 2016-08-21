;===============================================================================
; Object 0xDA - Continue Counter
; [ Begin ]
;===============================================================================	
loc_859A:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_85A8(pc,d0),d1
		jmp	loc_85A8(pc,d1)
loc_85A8:
		dc.w	loc_85B0-loc_85A8
		dc.w	loc_85DE-loc_85A8
		dc.w	loc_8602-loc_85A8
		dc.w	loc_8678-loc_85A8
loc_85B0:
		addq.b	#2,$24(a0)
		move.l	#Continue_Counter_Mappings,4(a0) 
		move.w	#$8500,2(a0)
		bsr	loc_887E
		move.b	#0,1(a0)
		move.b	#$3C,$19(a0)
		move.w	#$120,8(a0)
		move.w	#$C0,$A(a0)
loc_85DE:
		jmp	displaySprite	
loc_85E4:
		dc.w	$116,$12A,$102,$13E,$EE,$152,$DA,$166
		dc.w	$C6,$17A,$B2,$18E,$9E,$1A2,$8A
loc_8602:
		move.l	a0,a1
		lea	loc_85E4(pc),a2
		moveq	#0,d1
		move.b	($FFFFFE18).w,d1
		subq.b	#2,d1
		bcc.s	loc_8618
		jmp	deleteObject	
loc_8618:
		moveq	#1,d3
		cmp.b	#$E,d1
		bcs.s	loc_8624
		moveq	#0,d3
		moveq	#$E,d1
loc_8624:
		move.b	d1,d2
		and.b	#1,d2
loc_862A:	
		move.b	#$DA,0(a1)
		move.w	(a2)+,8(a1)
		tst.b	d2
		beq.s	loc_863E
		sub.w	#$A,8(a1)
loc_863E:
		move.w	#$D0,$A(a1)
		move.b	#4,$1A(a1)
		move.b	#6,$24(a1)
		move.l	#Continue_Counter_Mappings,4(a1) 
		move.w	#$8524,2(a1)
		bsr	loc_8878
		move.b	#0,1(a1)
		lea	$40(a1),a1
		dbra	d1,loc_862A
		lea	$FFFFFFC0(a1),a1
		move.b	d3,$28(a1)
loc_8678:
		tst.b	$28(a0)
		beq.s	loc_8698
		cmp.b	#6,($FFFFB024).w
		bcs.s	loc_8698
		move.b	($FFFFFE0F).w,d0
		and.b	#1,d0
		bne.s	loc_8698
		tst.w	($FFFFB010).w
		bne.s	J_DeleteObject_01	
		rts
loc_8698:
		move.b	($FFFFFE0F).w,d0
		and.b	#$F,d0
		bne.s	J_DisplaySprite_01	
		bchg	#0,$1A(a0)	
;===============================================================================
; Object 0xDA - Continue Counter
; [ End ]
;===============================================================================