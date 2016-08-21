;===============================================================================
; Object 0xA0 - Shellcracker Sub - Metropolis
; [ Begin ]
;===============================================================================	
loc_34314:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_34322(pc,d0),d1
		jmp	loc_34322(pc,d1)
loc_34322:
		dc.w	loc_34328-loc_34322
		dc.w	loc_34364-loc_34322
		dc.w	loc_34438-loc_34322
loc_34328:
		bsr	EnemySettings	
		move.w	$2C(a0),a1
		move.b	1(a1),d0
		and.b	#1,d0
		or.b	d0,1(a0)
		move.w	$2E(a0),d0
		beq.s	loc_34350
		move.b	#4,$1A(a0)
		addq.w	#6,8(a0)
		addq.w	#6,$C(a0)
loc_34350:
		lsr.w	#1,d0
		move.b	loc_3435C(pc,d0),$2A(a0)
		bra	loc_3A8A4	
loc_3435C:
		dc.b	0,3,5,7,9,$B,$D,$F	
loc_34364:
		move.w	$2C(a0),a1
		cmp.b	#$9F,(a1)
		bne.s	loc_34388
		moveq	#0,d0
		move.b	$25(a0),d0
		move.w	loc_34380(pc,d0),d1
		jsr	loc_34380(pc,d1)
		bra	loc_3A8A4	
loc_34380:	
		dc.w	loc_34398-loc_34380
		dc.w	loc_343E2-loc_34380
		dc.w	loc_343FC-loc_34380
		dc.w	loc_34410-loc_34380
loc_34388:
		move.b	#4,$24(a0)
		move.w	#$40,$2A(a0)
		bra	loc_3A8A4
loc_34398:
		subq.b	#1,$2A(a0)
		beq.s	loc_343A2
		bmi.s	loc_343A2
		rts
loc_343A2:
		addq.b	#2,$25(a0)
		move.w	$2E(a0),d0
		cmp.w	#$E,d0
		bcc.s	loc_343D2
		move.w	#$FC00,d2
		btst	#0,1(a0)
		beq.s	loc_343BE
		neg.w	d2
loc_343BE:
		move.w	d2,$10(a0)
		lsr.w	#1,d0
		move.b	loc_343DA(pc,d0),d1
		move.b	d1,$2A(a0)
		move.b	d1,$2B(a0)
		rts
loc_343D2:
		move.w	#$B,$2A(a0)
		rts
loc_343DA:
		dc.b	$D,$C,$A,8,6,4,2,$0
loc_343E2:
		bsr	loc_3A904
		subq.b	#1,$2A(a0)
		beq.s	loc_343F0
		bmi.s	loc_343F0
		rts
loc_343F0:
		addq.b	#2,$25(a0)
		move.b	#8,$2A(a0)
		rts
loc_343FC:
		subq.b	#1,$2A(a0)
		beq.s	loc_34406
		bmi.s	loc_34406
		rts
loc_34406:
		addq.b	#2,$25(a0)
		neg.w	$10(a0)
		rts
loc_34410:
		bsr	loc_3A904
		subq.b	#1,$2B(a0)
		beq.s	loc_3441E
		bmi.s	loc_3441E
		rts
loc_3441E:
		tst.w	$2E(a0)
		bne	loc_3A898
		move.w	$2C(a0),a1
		move.b	#0,$1A(a1)
		st	$2C(a1)
		bra	loc_3A898
loc_34438:
		bsr	loc_3A8FE
		sub.w	#1,$2A(a0)
		bmi	loc_3A898
		bra	loc_3A8A4
;-------------------------------------------------------------------------------	
loc_3444A:
		moveq	#0,d1
		moveq	#7,d6
loc_3444E:	
		bsr	loc_3A8B6
		bne.s	loc_344A6
		move.b	#$A0,0(a1)
		move.b	#$26,$28(a1)
		move.b	#5,$1A(a1)
		move.b	#4,$18(a1)
		move.w	a0,$2C(a1)
		move.w	d1,$2E(a1)
		move.w	8(a0),8(a1)
		move.w	#$FFEC,d2
		btst	#0,1(a0)
		beq.s	loc_34490
		neg.w	d2
		tst.w	d1
		beq.s	loc_34490
		sub.w	#$C,d2
loc_34490:
		add.w	d2,8(a1)
		move.w	$C(a0),$C(a1)
		sub.w	#8,$C(a1)
		addq.w	#2,d1
		dbra	d6,loc_3444E
loc_344A6:
		rts
;-------------------------------------------------------------------------------	
Obj_0x9F_Ptr: 
		dc.l	Shellcracker_Mappings	
		dc.w	$31C
		dc.b	4,5,$18,$A
;-------------------------------------------------------------------------------
Obj_0xA0_Ptr: 
		dc.l	Shellcracker_Mappings	
		dc.w	$31C
		dc.b	4,4,$C,$9A
;-------------------------------------------------------------------------------	
Shellcracker_Animate_Data: 
		dc.w	loc_344C0-Shellcracker_Animate_Data
		dc.w	loc_344C6-Shellcracker_Animate_Data
loc_344C0:
		dc.b	$E,0,1,2,$FF,$0
loc_344C6:
		dc.b	$E,0,2,1,$FF,$0
;-------------------------------------------------------------------------------
Shellcracker_Mappings: 
		dc.w	loc_344D8-Shellcracker_Mappings
		dc.w	loc_344FA-Shellcracker_Mappings
		dc.w	loc_3451C-Shellcracker_Mappings
		dc.w	loc_3453E-Shellcracker_Mappings
		dc.w	loc_34558-Shellcracker_Mappings
		dc.w	loc_34562-Shellcracker_Mappings
loc_344D8:
		dc.w	$4
		dc.l	$EC0A0018,$CFFE0,$F8040021,$100008
		dc.l	$F40A0000,$FFE8,$F40A0800,$8000000
loc_344FA:
		dc.w	$4
		dc.l	$EC0A0018,$CFFE0,$F8040021,$100008
		dc.l	$F4060812,$809FFF0,$F40A0809,$8040000
loc_3451C:
		dc.w	$4
		dc.l	$EC0A0018,$CFFE0,$F8040021,$100008
		dc.l	$F40A0009,$4FFE8,$F4060012,$90000
loc_3453E:
		dc.w	$3
		dc.l	$F8040021,$100008,$F40A0000,$FFE8
		dc.l	$F40A0800,$8000000
loc_34558:
		dc.w	$1
		dc.l	$FC000023,$11FFFC
loc_34562:
		dc.w	$1
		dc.l	$F40A0018,$CFFF4
;-------------------------------------------------------------------------------	
;===============================================================================
; Object 0xA0 - Shellcracker Sub - Metropolis
; [ End ]
;===============================================================================	