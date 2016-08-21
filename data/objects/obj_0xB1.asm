;===============================================================================
; Object 0xB1 Sonic in Sega Screen
; [ Begin ]
;===============================================================================	
loc_36506:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_36514(pc,d0),d1
		jmp	loc_36514(pc,d1)
loc_36514:
		dc.w	loc_36518-loc_36514
		dc.w	loc_36530-loc_36514
loc_36518:
		bsr	EnemySettings	
		move.b	#4,$1A(a0)
		move.w	#$174,8(a0)
		move.w	#$D8,$A(a0)
		rts
loc_36530:
		bra	J_DisplaySprite_1	
loc_36534:
		lea	($FFFFE138).w,a1
		move.w	#$22,d6
loc_3653C:	
		sub.w	#$20,(a1)
		addq.w	#8,a1
		dbra	d6,loc_3653C
		rts
loc_36548:
		lea	($FFFFE13C).w,a1
		move.w	#$22,d6
loc_36550:	
		add.w	#$20,(a1)
		addq.w	#8,a1
		dbra	d6,loc_36550
		rts	
loc_3655C:
		subq.b	#1,$2C(a0)
		bne.s	loc_365A4
		moveq	#0,d0
		move.b	$2D(a0),d0
		addq.b	#1,d0
		cmp.b	1(a1),d0
		bcs.s	loc_36576
		tst.b	3(a1)
		bne.s	loc_365A8
loc_36576:
		move.b	d0,$2D(a0)
		move.b	0(a1),$2C(a0)
		lea	6(a1),a2
		moveq	#0,d1
		move.b	2(a1),d1
		move.w	d1,d2
		tst.w	d0
		beq.s	loc_3659A
loc_36590:	
		subq.b	#1,d0
		beq.s	loc_36598
		add.w	d2,d1
		bra.s	loc_36590
loc_36598:
		adda.w	d1,a2
loc_3659A:
		move.w	4(a1),a3
loc_3659E:	
		move.w	(a2)+,(a3)+
		subq.w	#2,d2
		bne.s	loc_3659E
loc_365A4:
		moveq	#0,d0
		rts
loc_365A8:
		moveq	#1,d0
		rts	
loc_365AC:	
		dc.w	$407,$10FF,$FB10,$E60,$E60,$E60,$E60,$E60
		dc.w	$E60,$E60,$EEE,$E62,$EEE,$EEE,$EEE,$EEE
		dc.w	$EEE,$EEE,$EEE,$E84,$E62,$E60,$E60,$E60
		dc.w	$E60,$E60,$EEE,$EA6,$E84,$E62,$E60,$E60
		dc.w	$E60,$E60,$EEE,$EC8,$EA6,$E84,$E62,$E60
		dc.w	$E60,$E60,$EEE,$EEC,$EC8,$EA6,$E84,$E62
		dc.w	$E60,$E60,$EEE,$EEE,$EEC,$EC8,$EA6,$E84
		dc.w	$E62,$E60,$EEE 
loc_36622:
		dc.w	$407,$10FF,$FB00,$EEE,$E60,$E60,$E60,$E60
		dc.w	$E60,$E60,$E60,$EEE,$E62,$E60,$E60,$E60
		dc.w	$E60,$E60,$E60,$EEE,$E84,$E62,$E60,$E60
		dc.w	$E60,$E60,$E60,$EEE,$EA6,$E84,$E62,$E60
		dc.w	$E60,$E60,$E60,$EEE,$EC8,$EA6,$E84,$E62
		dc.w	$E60,$E60,$E60,$EEE,$EEC,$EC8,$EA6,$E84
		dc.w	$E62,$E60,$E60,$EEE,$EEE,$EEC,$EC8,$EA6
		dc.w	$E84,$E62,$E60
Obj_0xB0_Ptr: 
		dc.l	Sonic_Sega_Logo_Mappings
		dc.w	$C088
		dc.b	0,1,$10,$0
Obj_0xB1_Ptr: 
		dc.l	Sonic_Sega_Logo_Mappings
		dc.w	$3
		dc.b	0,2,8,$0

loc_366AC:
		dc.w	loc_366AE-loc_366AC
loc_366AE:
		dc.b	0,0,1,2,3,$FF	

Sonic_Sega_Logo_Mappings: 
		dc.w	loc_366BE-Sonic_Sega_Logo_Mappings
		dc.w	loc_366F0-Sonic_Sega_Logo_Mappings
		dc.w	loc_36722-Sonic_Sega_Logo_Mappings
		dc.w	loc_36754-Sonic_Sega_Logo_Mappings
		dc.w	loc_36786-Sonic_Sega_Logo_Mappings
loc_366BE:
		dc.w	$6
		dc.l	$D80F0000,$FFF0,$D8070010,$80010
		dc.l	$F80F0018,$CFFE0,$180F0028,$14FFE0
		dc.l	$F80F0038,$1C0000,$180F0048,$240000
loc_366F0:
		dc.w	$6
		dc.l	$D80F0058,$2CFFF0,$D8070068,$340010
		dc.l	$F80F0070,$38FFE0,$180F0080,$40FFE0
		dc.l	$F80F0090,$480000,$180F00A0,$500000
loc_36722:
		dc.w	$6
		dc.l	$D80F00B0,$58FFF0,$D80700C0,$600010
		dc.l	$F80F00C8,$64FFE0,$180F00D8,$6CFFE0
		dc.l	$F80F00E8,$740000,$180F00F8,$7C0000
loc_36754:
		dc.w	$6
		dc.l	$D80F0108,$84FFF0,$D8070118,$8C0010
		dc.l	$F80F0120,$90FFE0,$180F0130,$98FFE0
		dc.l	$F80F0140,$A00000,$180F0150,$A80000
loc_36786:
		dc.w	$2
		dc.l	$FC000000,$FFF8,$FC000000,$0	
;===============================================================================
; Object 0xB1 Sonic in Sega Screen
; [ End ]
;===============================================================================