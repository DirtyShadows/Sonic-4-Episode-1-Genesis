;===============================================================================
; Object 0xB6 - Platform Helix - Sky Fortress
; [ Begin ]
;===============================================================================	
loc_374E4:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_374F2(pc,d0),d1
		jmp	loc_374F2(pc,d1)
loc_374F2:
		dc.w	loc_374FC-loc_374F2
		dc.w	loc_37516-loc_374F2
		dc.w	loc_37570-loc_374F2
		dc.w	loc_375DC-loc_374F2
		dc.w	loc_37650-loc_374F2
loc_374FC:
		moveq	#0,d0
		move.b	#$6A,d0
		bsr	EnemySettings_01	
		move.b	$28(a0),d0
		and.b	#6,d0
		addq.b	#2,d0
		move.b	d0,$24(a0)
		rts
loc_37516:
		moveq	#0,d0
		move.b	$25(a0),d0
		move.w	loc_37528(pc,d0),d1
		jsr	loc_37528(pc,d1)
		bra	loc_3A8A4
loc_37528:
		dc.w	loc_37530-loc_37528
		dc.w	loc_37538-loc_37528
		dc.w	loc_37558-loc_37528
		dc.w	loc_37562-loc_37528
loc_37530:
		addq.b	#2,$25(a0)
		bra	loc_37692
loc_37538:
		bsr	loc_376A4
		move.b	($FFFFFE0F).w,d0
		and.b	#$F0,d0
		cmp.b	$28(a0),d0
		beq.s	loc_3754C
		rts
loc_3754C:
		addq.b	#2,$25(a0)
		clr.b	$1C(a0)
		bra	loc_376D0
loc_37558:
		lea	(Platform_Helix_Animate_Data),a1 ;	loc_37736
		bra	loc_3A8BC
loc_37562:
		move.b	#2,$25(a0)
		move.w	#$C0,$2A(a0)
		rts
loc_37570:
		moveq	#0,d0
		move.b	$25(a0),d0
		move.w	loc_37582(pc,d0),d1
		jsr	loc_37582(pc,d1)
		bra	loc_3A8A4
loc_37582:	
		dc.w	loc_37530-loc_37582
		dc.w	loc_37588-loc_37582
		dc.w	loc_375BA-loc_37582
loc_37588:
		bsr	loc_376A4
		subq.w	#1,$2A(a0)
		bmi.s	loc_37594
		rts
loc_37594:
		addq.b	#2,$25(a0)
		move.b	#$20,$2A(a0)
		move.b	#3,$1C(a0)
		clr.b	$1B(a0)
		clr.b	$1E(a0)
		bsr	loc_376D0
		bsr	loc_3770C
		moveq	#$FFFFFFDC,d0
		bra	loc_3A8B0
loc_375BA:
		subq.b	#1,$2A(a0)
		bmi.s	loc_375CA
		lea	(Platform_Helix_Animate_Data),a1 
		bra	loc_3A8BC
loc_375CA:
		move.b	#2,$25(a0)
		clr.b	$1A(a0)
		move.w	#$C0,$2A(a0)
		rts	
loc_375DC:
		moveq	#0,d0
		move.b	$25(a0),d0
		move.w	loc_375EE(pc,d0),d1
		jsr	loc_375EE(pc,d1)
		bra	loc_3A8A4
loc_375EE:
		dc.w	loc_375F6-loc_375EE
		dc.w	loc_37612-loc_375EE
		dc.w	loc_37640-loc_375EE
		dc.w	loc_3764A-loc_375EE
loc_375F6:
		bsr	loc_376A4
		move.b	$22(a0),d0
		and.b	#$18,d0
		bne.s	loc_37606
		rts
loc_37606:
		addq.b	#2,$25(a0)
		move.w	#$10,$2A(a0)
		rts
loc_37612:
		bsr	loc_376A4
		subq.w	#1,$2A(a0)
		bmi.s	loc_3761E
		rts
loc_3761E:
		addq.b	#2,$25(a0)
		move.b	#0,$1C(a0)
		bsr	loc_32866
		bclr	#0,$22(a0)
		tst.w	d0
		bne.s	loc_3763C
		bset	#0,$22(a0)
loc_3763C:
		bra	loc_376D0
loc_37640:
		lea	(Platform_Helix_Animate_Data),a1 
		bra	loc_3A8BC
loc_3764A:
		clr.b	$25(a0)
		rts	

loc_37650:
		moveq	#0,d0
		move.b	$25(a0),d0
		move.w	loc_37662(pc,d0),d1
		jsr	loc_37662(pc,d1)
		bra	loc_3A8A4
loc_37662:
		dc.w	loc_3766A-loc_37662
		dc.w	loc_37678-loc_37662
		dc.w	loc_37558-loc_37662
		dc.w	loc_37562-loc_37662
loc_3766A:
		addq.b	#2,$25(a0)
		move.b	#2,$1A(a0)
		bra	loc_37692
loc_37678:
		bsr	loc_376BA
		subq.w	#1,$2A(a0)
		bmi.s	loc_37684
		rts
loc_37684:
		addq.b	#2,$25(a0)
		move.b	#4,$1C(a0)
		bra	loc_376D0
loc_37692:
		move.b	$28(a0),d0
		and.w	#$F0,d0
		move.b	d0,$28(a0)
		move.w	d0,$2A(a0)
		rts
loc_376A4:
		move.w	8(a0),-(sp)
		move.w	#$23,d1
		move.w	#4,d2
		move.w	#4,d3
		move.w	(sp)+,d4
		bra	loc_3A8F8
loc_376BA:
		move.w	8(a0),-(sp)
		move.w	#$F,d1
		move.w	#$18,d2
		move.w	#$18,d3
		move.w	(sp)+,d4
		bra	loc_3A8F8
;-------------------------------------------------------------------------------	
loc_376D0:
		move.b	$22(a0),d0
		and.b	#$18,d0
		beq.s	loc_3770A
		bclr	#3,$22(a0)
		beq.s	loc_376F2
		lea	($FFFFB000).w,a1
		bclr	#3,$22(a1)
		bset	#1,$22(a1)
loc_376F2:
		bclr	#4,$22(a0)
		beq.s	loc_3770A
		lea	($FFFFB040).w,a1
		bclr	#4,$22(a1)
		bset	#1,$22(a1)
loc_3770A:
		rts
;-------------------------------------------------------------------------------	
loc_3770C:
		bsr	loc_3A8B6
		bne.s	loc_3772A
		move.b	#$B7,0(a1)
		move.b	#$72,$28(a1)
		move.w	8(a0),8(a1)
		move.w	$C(a0),$C(a1)
loc_3772A:
		rts	
;-------------------------------------------------------------------------------	
Obj_0xB6_Ptr: ; Mappingsloc_3772C:	
		dc.l	Platform_Helix_Mappings 
		dc.w	$A393
		dc.b	4,4,$10,$0	
;-------------------------------------------------------------------------------	
Platform_Helix_Animate_Data: 
		dc.w	loc_37744-Platform_Helix_Animate_Data
		dc.w	loc_3774A-Platform_Helix_Animate_Data
		dc.w	loc_3774E-Platform_Helix_Animate_Data
		dc.w	loc_37754-Platform_Helix_Animate_Data
		dc.w	loc_3775A-Platform_Helix_Animate_Data
		dc.w	loc_37760-Platform_Helix_Animate_Data
		dc.w	loc_37764-Platform_Helix_Animate_Data
loc_37744:
		dc.b	3,1,2,$FD,1,$0
loc_3774A:
		dc.b	$3F,2,$FD,$2
loc_3774E:
		dc.b	3,2,1,0,$FA,$0
loc_37754:
		dc.b	1,0,1,2,3,$FF
loc_3775A:
		dc.b	3,1,0,$FD,5,$0
loc_37760:
		dc.b	$3F,0,$FD,$6
loc_37764:
		dc.b	3,0,1,2,$FA,$0	
;-------------------------------------------------------------------------------
Platform_Helix_Mappings: 
		dc.w	loc_37772-Platform_Helix_Mappings
		dc.w	loc_37784-Platform_Helix_Mappings
		dc.w	loc_37796-Platform_Helix_Mappings
		dc.w	loc_377A8-Platform_Helix_Mappings
loc_37772:
		dc.w	$2
		dc.l	$FC080000,$FFE8,$FC080800,$8000000
loc_37784:
		dc.w	$2
		dc.l	$EC060003,$1FFF0,$FC061803,$18010000
loc_37796:
		dc.w	$2
		dc.l	$E8020009,$4FFFC,$21009,$1004FFFC
loc_377A8:
		dc.w	$2
		dc.l	$EC060803,$8010000,$FC061003,$1001FFF0	
;===============================================================================
; Object 0xB6 - Platform Helix - Sky Fortress
; [ End ]
;===============================================================================