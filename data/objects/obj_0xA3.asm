;===============================================================================
; Object 0xA3 - Flasher - Dust Hill
; [ Begin ]
;===============================================================================	
loc_348B0:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_348BE(pc,d0),d1
		jmp	loc_348BE(pc,d1)
loc_348BE:
		dc.w	loc_348CC-loc_348BE
		dc.w	loc_348D8-loc_348BE
		dc.w	loc_34906-loc_348BE
		dc.w	loc_349A4-loc_348BE
		dc.w	loc_349CE-loc_348BE
		dc.w	loc_349F2-loc_348BE
		dc.w	loc_34A00-loc_348BE
loc_348CC:
		bsr	EnemySettings	
		move.w	#$40,$2A(a0)
		rts
loc_348D8:
		subq.w	#1,$2A(a0)
		bmi.s	loc_348E2
		bra	loc_3A8CE
loc_348E2:
		addq.b	#2,$24(a0)
		move.w	#$FF00,$10(a0)
		move.w	#$40,$12(a0)
		move.w	#2,$2E(a0)
		clr.w	$2A(a0)
		move.w	#$80,$30(a0)
		bra	loc_3A8CE
loc_34906:
		subq.w	#1,$30(a0)
		bmi.s	loc_3496E
		move.w	$2A(a0),d0
		bmi	loc_3A898
		bclr	#0,1(a0)
		bclr	#0,$22(a0)
		tst.w	$10(a0)
		bmi.s	loc_34932
		bset	#0,1(a0)
		bset	#0,$22(a0)
loc_34932:
		addq.w	#1,d0
		move.w	d0,$2A(a0)
		move.w	$2C(a0),d1
		move.w	loc_34982(pc,d1),d2
		cmp.w	d2,d0
		bcs.s	loc_3495E
		addq.w	#2,d1
		move.w	d1,$2C(a0)
		lea	loc_34992(pc,d1),a1
		tst.b	(a1)+
		beq.s	loc_34956
		neg.w	$2E(a0)
loc_34956:
		tst.b	(a1)+
		beq.s	loc_3495E
		neg.w	$12(a0)
loc_3495E:
		move.w	$2E(a0),d0
		add.w	d0,$10(a0)
		bsr	loc_3A904
		bra	loc_3A8CE
loc_3496E:
		addq.b	#2,$24(a0)
		move.w	#$80,$30(a0)
		or.b	#$80,$20(a0)
		bra	loc_3A8CE 
loc_34982:
		dc.w	$100,$1A0,$208,$285,$300,$340,$390,$440
loc_34992:
		dc.w	$F000,$101,1,$101,1,1,$100,$1
		dc.w	$1
loc_349A4:
		move.b	$24(a0),d2
		lea	(loc_34A28),a1
		bsr	loc_3A8BC
		cmp.b	$24(a0),d2
		bne.s	loc_349BC
		bra	loc_3A8CE
loc_349BC:
		clr.l	$1A(a0)
		clr.w	$1E(a0)
		move.b	#3,$1A(a0)
		bra	loc_3A8A4
loc_349CE:
		subq.w	#1,$30(a0)
		bmi.s	loc_349E2
		lea	(loc_34A4C),a1
		bsr	loc_3A8BC
		bra	loc_3A8CE
loc_349E2:
		addq.b	#2,$24(a0)
		clr.l	$1A(a0)
		clr.w	$1E(a0)
		bra	loc_3A8CE
loc_349F2:
		lea	(loc_34A58),a1
		bsr	loc_3A8BC
		bra	loc_3A8CE
loc_34A00:
		move.b	#4,$24(a0)
		move.w	#$80,$30(a0)
		and.b	#$7F,$20(a0)
		clr.l	$1A(a0)
		clr.w	$1E(a0)
		bra	loc_3A8CE	
;-------------------------------------------------------------------------------
Obj_0xA3_Ptr: 
		dc.l	Flasher_Mappings	
		dc.w	$83A8
		dc.b	4,4,$10,$6
;-------------------------------------------------------------------------------	
loc_34A28:	
		dc.w	loc_34A2A-loc_34A28
loc_34A2A:
		dc.b	0,0,1,0,0,0,0,0,1,0,0,0,1,0,0,$1
		dc.b	0,1,0,1,0,1,0,1,0,1,0,1,0,2,3,$4
		dc.b	$FC,$0	
;-------------------------------------------------------------------------------	
loc_34A4C:
		dc.w	loc_34A4E-loc_34A4C
loc_34A4E:
		dc.b	0,2,0,3,0,4,0,3,0,$FF	
;-------------------------------------------------------------------------------	
loc_34A58:
		dc.w	loc_34A5A-loc_34A58
loc_34A5A:
		dc.b	3,4,3,2,1,0,$FC,$0	
;-------------------------------------------------------------------------------
Flasher_Mappings: 
		dc.w	loc_34A6C-Flasher_Mappings
		dc.w	loc_34A76-Flasher_Mappings
		dc.w	loc_34A88-Flasher_Mappings
		dc.w	loc_34AAA-Flasher_Mappings
		dc.w	loc_34ADC-Flasher_Mappings
loc_34A6C:
		dc.w	$1
		dc.l	$F8090000,$FFF0
loc_34A76:
		dc.w	$2
		dc.l	$F8052006,$2003FFF8,$F8090000,$FFF0
loc_34A88:
		dc.w	$4
		dc.l	$F801200A,$2005FFF8,$F801280A,$28050000
		dc.l	$F8052006,$2003FFF8,$F8090000,$FFF0
loc_34AAA:
		dc.w	$6
		dc.l	$F005200C,$2006FFF0,$F005280C,$28060000
		dc.l	$5300C,$3006FFF0,$5380C,$38060000
		dc.l	$F8052006,$2003FFF8,$F8090000,$FFF0
loc_34ADC:
		dc.w	$6
		dc.l	$F0052010,$2008FFF0,$F0052810,$28080000
		dc.l	$53010,$3008FFF0,$53810,$38080000
		dc.l	$F8052006,$2003FFF8,$F8090000,$FFF0	
;===============================================================================
; Object 0xA3 - Flasher - Dust Hill
; [ End ]
;===============================================================================