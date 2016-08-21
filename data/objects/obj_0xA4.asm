;===============================================================================
; Object 0xA4 - Asteron - Metropolis
; [ Begin ]
;===============================================================================	
loc_34B0E:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_34B1C(pc,d0),d1
		jmp	loc_34B1C(pc,d1)
loc_34B1C:
		dc.w	loc_34B24-loc_34B1C
		dc.w	loc_34B28-loc_34B1C
		dc.w	loc_34B4C-loc_34B1C
		dc.w	loc_34B9E-loc_34B1C
loc_34B24:
		bra	EnemySettings	
loc_34B28:
		bsr	loc_32866
		add.w	#$60,d2
		cmp.w	#$C0,d2
		bcc.s	loc_34B40
		add.w	#$40,d3
		cmp.w	#$80,d3
		bcs.s	loc_34B44
loc_34B40:
		bra	loc_3A8A4
loc_34B44:
		addq.b	#2,$24(a0)
		bra	loc_3A8A4
loc_34B4C:
		bsr	loc_32866
		tst.w	d2
		bpl.s	loc_34B56
		neg.w	d2
loc_34B56:
		cmp.w	#$10,d2
		bcs.s	loc_34B6C
		cmp.w	#$60,d2
		bcc.s	loc_34B6C
		move.w	loc_34B8C(pc,d0),$10(a0)
		bsr	loc_34B90
loc_34B6C:
		tst.w	d3
		bpl.s	loc_34B72
		neg.w	d3
loc_34B72:
		cmp.w	#$10,d3
		bcs.s	loc_34B88
		cmp.w	#$60,d3
		bcc.s	loc_34B88
		move.w	loc_34B8C(pc,d1),$12(a0)
		bsr	loc_34B90
loc_34B88:
		bra	loc_3A8A4	
loc_34B8C:
		dc.w	$FFC0,$40
loc_34B90:
		move.b	#6,$24(a0)
		move.b	#$40,$2A(a0)
		rts
loc_34B9E:
		subq.b	#1,$2A(a0)
		bmi.s	loc_34BB6
		bsr	loc_3A904
		lea	(asteron_Animate_Data),a1 
		bsr	loc_3A8BC
		bra	loc_3A8A4
loc_34BB6:
		move.b	#$27,0(a0)
		move.b	#2,$24(a0)
		bsr	loc_34BCA
		bra	loc_3A8A4
loc_34BCA:
		move.b	#$30,d2
		moveq	#4,d6
		lea	(loc_34BDA),a2
		bra	Enemy_Weapon	
;-------------------------------------------------------------------------------
loc_34BDA:
		dc.b	0,$F8,0,$FC,2,0,8,$FC,3,$FF,3,1,8,8,3,$3
		dc.b	4,1,$F8,8,$FD,3,4,0,$F8,$FC,$FD,$FF,3,$0	
;-------------------------------------------------------------------------------
Obj_0xA4_Ptr: 
		dc.l	asteron_Mappings	
		dc.w	$8368
		dc.b	4,4,$10,$B
;-------------------------------------------------------------------------------	
Asteron_Animate_Data: 
		dc.w	loc_34C04-Asteron_Animate_Data
loc_34C04:
		dc.b	1,0,1,$FF 
;-------------------------------------------------------------------------------	
Asteron_Mappings: 
		dc.w	loc_34C12-Asteron_Mappings
		dc.w	loc_34C24-Asteron_Mappings
		dc.w	loc_34C3E-Asteron_Mappings
		dc.w	loc_34C48-Asteron_Mappings
		dc.w	loc_34C52-Asteron_Mappings
loc_34C12:
		dc.w	$2
		dc.l	$F0070000,$FFF0,$F0070800,$8000000
loc_34C24:
		dc.w	$3
		dc.l	$FD00200E,$2007FFFC,$F0070000,$FFF0
		dc.l	$F0070800,$8000000
loc_34C3E:
		dc.w	$1
		dc.l	$F8010008,$4FFFC
loc_34C48:
		dc.w	$1
		dc.l	$FC04000A,$5FFF8
loc_34C52:
		dc.w	$1
		dc.l	$F801000C,$6FFFC	
;===============================================================================
; Object 0xA4 - Asteron - Metropolis
; [ End ]
;===============================================================================