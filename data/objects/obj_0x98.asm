;===============================================================================
; Object 0x98 - Coconut from coconuts / Spikes from Asteron / Eggs ...
; [ Begin ]
;===============================================================================	
loc_338D2:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_338E0(pc,d0),d1
		jmp	loc_338E0(pc,d1)
loc_338E0:
		dc.w	loc_338E4-loc_338E0
		dc.w	loc_338E8-loc_338E0
loc_338E4:	
		bra	EnemySettings	
loc_338E8:
		tst.b	1(a0)
		bpl	J_DeleteObject_1	
		move.l	$2A(a0),a1	
		jsr	(a1)
		bra	J_MarkObjGone_1	
;===============================================================================
; Object 0x98 - Coconut from coconuts / Spikes from Asteron / Eggs ...
; [ End ]
;===============================================================================