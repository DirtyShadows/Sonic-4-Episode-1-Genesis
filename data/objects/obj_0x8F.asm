;===============================================================================
; Object 0x8F -> Wall Of Hidden Grounder Called by Obj 0x8D / 0x8E
; [ Begin ]
;===============================================================================	
loc_32D76:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_32D84(pc,d0),d1
		jmp	loc_32D84(pc,d1)
loc_32D84:
		dc.w	loc_32D8A-loc_32D84
		dc.w	loc_32D94-loc_32D84
		dc.w	loc_32E0A-loc_32D84
loc_32D8A:
		bsr	EnemySettings	
		clr.w	2(a0)
		rts
loc_32D94:
		move.w	$2C(a0),a1
		tst.b	$2B(a1)
		bne.s	loc_32DA2
		bra	loc_3A8A4
loc_32DA2:
		addq.b	#2,$24(a0)
		move.w	$2E(a0),d0
		move.b	loc_32DBA(pc,d0),$10(a0)
		move.b	loc_32DBB(pc,d0),$12(a0)
		bra	loc_3A8A4
loc_32DBA:	
		dc.b	$1
loc_32DBB:	
		dc.b	$FE,1,$FF,$FF,$FE,$FF,$FF	
;===============================================================================
; Object 0x8F -> Wall Of Hidden Grounder Called by Obj 0x8D / 0x8E
; [ End ]
;===============================================================================
