;=============================================================================== 
; Object 0x70 - Metropolis - Rotating Gears
; [ Begin ]	
;===============================================================================	
loc_24368:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_24376(pc,d0),d1
		jmp	loc_24376(pc,d1)
loc_24376:
		dc.w	loc_2437A-loc_24376
		dc.w	loc_243FA-loc_24376
loc_2437A:
		moveq	#7,d1
		moveq	#0,d4
		lea	(loc_244CE),a2
		move.l	a0,a1
		move.w	8(a0),d2
		move.w	$C(a0),d3
		bset	#7,$22(a0)
		bra.s	loc_2439C
loc_24396:	
		bsr	loc_246D0
		bne.s	loc_243F6
loc_2439C:
		move.b	0(a0),0(a1)
		addq.b	#2,$24(a1)
		move.l	#Rotating_Gears_Mappings,4(a1) 
		move.w	#$6378,2(a1)
		bsr	loc_246D6
		move.b	#4,1(a1)
		move.b	#4,$18(a1)
		move.b	#$10,$19(a1)
		move.w	d2,$32(a1)
		move.w	d3,$30(a1)
		move.b	(a2)+,d0
		ext.w	d0
		add.w	d2,d0
		move.w	d0,8(a1)
		move.b	(a2)+,d0
		ext.w	d0
		add.w	d3,d0
		move.w	d0,$C(a1)
		move.b	(a2)+,$1A(a1)
		move.w	d4,$34(a1)
		addq.w	#3,d4
		move.b	$22(a0),$22(a1)
loc_243F6:
		dbra	d1,loc_24396
loc_243FA:
		move.w	8(a0),-(sp)
		move.b	($FFFFFE05).w,d0
		move.b	d0,d1
		and.w	#$F,d0
		bne.s	loc_24472
		move.w	$36(a0),d1
		btst	#0,$22(a0)
		beq.s	loc_2442C
		sub.w	#$18,d1
		bcc.s	loc_2444A
		moveq	#$48,d1
		subq.w	#3,$34(a0)
		bcc.s	loc_2444A
		move.w	#$15,$34(a0)
		bra.s	loc_2444A
loc_2442C:
		add.w	#$18,d1
		cmp.w	#$60,d1
		bcs.s	loc_2444A
		moveq	#0,d1
		addq.w	#3,$34(a0)
		cmp.w	#$18,$34(a0)
		bcs.s	loc_2444A
		move.w	#0,$34(a0)
loc_2444A:
		move.w	d1,$36(a0)
		add.w	$34(a0),d1
		lea	loc_244CE(pc,d1),a1
		move.b	(a1)+,d0
		ext.w	d0
		add.w	$32(a0),d0
		move.w	d0,8(a0)
		move.b	(a1)+,d0
		ext.w	d0
		add.w	$30(a0),d0
		move.w	d0,$C(a0)
		move.b	(a1)+,$1A(a0)
loc_24472:
		move.b	$1A(a0),d0
		add.w	d0,d0
		and.w	#$1E,d0
		moveq	#0,d1
		moveq	#0,d2
		move.b	loc_244AE(pc,d0),d1
		move.b	loc_244AF(pc,d0),d2
		move.w	d2,d3
		move.w	(sp)+,d4
		bsr	loc_246DC
		move.w	$32(a0),d0
		and.w	#$FF80,d0
		sub.w	($FFFFF7DA).w,d0
		cmp.w	#$280,d0
		bhi.s	loc_244A8
		jmp	displaySprite	
loc_244A8:
		jmp	deleteObject	
;-------------------------------------------------------------------------------
loc_244AE:
		dc.b	$10
loc_244AF:
		dc.b	$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$C,$10
		dc.b	8,$10,$C,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10 
;-------------------------------------------------------------------------------	
loc_244CE:
		dc.b	0,$B8,0,$32,$CE,4,$48,0,8,$32,$32,$C,0,$48,$10,$CE
		dc.b	$32,$14,$B8,0,$18,$CE,$CE,$1C,$D,$B8,1,$3F,$DA,5,$48,$C
		dc.b	9,$27,$3C,$D,$F3,$48,$11,$C1,$26,$15,$B8,$F4,$19,$D9,$C4,$1D
		dc.b	$19,$BC,2,$46,$E9,6,$46,$17,$A,$19,$44,$E,$E7,$44,$12,$BA
		dc.b	$17,$16,$BA,$E9,$1A,$E7,$BC,$1E,$27,$C4,3,$48,$F4,7,$3F,$26
		dc.b	$B,$D,$48,$F,$D9,$3C,$13,$B8,$C,$17,$C1,$DA,$1B,$F3,$B8,$1F	
;-------------------------------------------------------------------------------	
Rotating_Gears_Mappings: 
		dc.w	loc_2456E-Rotating_Gears_Mappings
		dc.w	loc_24580-Rotating_Gears_Mappings
		dc.w	loc_2458A-Rotating_Gears_Mappings
		dc.w	loc_24594-Rotating_Gears_Mappings
		dc.w	loc_2459E-Rotating_Gears_Mappings
		dc.w	loc_245A8-Rotating_Gears_Mappings
		dc.w	loc_245B2-Rotating_Gears_Mappings
		dc.w	loc_245BC-Rotating_Gears_Mappings
		dc.w	loc_245C6-Rotating_Gears_Mappings
		dc.w	loc_245D8-Rotating_Gears_Mappings
		dc.w	loc_245E2-Rotating_Gears_Mappings
		dc.w	loc_245EC-Rotating_Gears_Mappings
		dc.w	loc_245F6-Rotating_Gears_Mappings
		dc.w	loc_24600-Rotating_Gears_Mappings
		dc.w	loc_2460A-Rotating_Gears_Mappings
		dc.w	loc_24614-Rotating_Gears_Mappings
		dc.w	loc_2461E-Rotating_Gears_Mappings
		dc.w	loc_24630-Rotating_Gears_Mappings
		dc.w	loc_2463A-Rotating_Gears_Mappings
		dc.w	loc_24644-Rotating_Gears_Mappings
		dc.w	loc_2464E-Rotating_Gears_Mappings
		dc.w	loc_24658-Rotating_Gears_Mappings
		dc.w	loc_24662-Rotating_Gears_Mappings
		dc.w	loc_2466C-Rotating_Gears_Mappings
		dc.w	loc_24676-Rotating_Gears_Mappings
		dc.w	loc_24688-Rotating_Gears_Mappings
		dc.w	loc_24692-Rotating_Gears_Mappings
		dc.w	loc_2469C-Rotating_Gears_Mappings
		dc.w	loc_246A6-Rotating_Gears_Mappings
		dc.w	loc_246B0-Rotating_Gears_Mappings
		dc.w	loc_246BA-Rotating_Gears_Mappings
		dc.w	loc_246C4-Rotating_Gears_Mappings
loc_2456E:
		dc.w	$2
		dc.l	$F0070000,$FFF0,$F0070800,$8000000
loc_24580:
		dc.w	$1
		dc.l	$F00B0808,$804FFF4
loc_2458A:
		dc.w	$1
		dc.l	$F00F0814,$80AFFF0
loc_24594:
		dc.w	$1
		dc.l	$F00F0824,$812FFF0
loc_2459E:
		dc.w	$1
		dc.l	$F00F0834,$81AFFF0
loc_245A8:
		dc.w	$1
		dc.l	$F00F0844,$822FFF0
loc_245B2:
		dc.w	$1
		dc.l	$F00F0854,$82AFFF0
loc_245BC:
		dc.w	$1
		dc.l	$F40E0864,$832FFF0
loc_245C6:
		dc.w	$2
		dc.l	$F00D0870,$838FFF0,$D1870,$1838FFF0
loc_245D8:
		dc.w	$1
		dc.l	$F40E1864,$1832FFF0
loc_245E2:
		dc.w	$1
		dc.l	$F00F1854,$182AFFF0
loc_245EC:
		dc.w	$1
		dc.l	$F00F1844,$1822FFF0
loc_245F6:
		dc.w	$1
		dc.l	$F00F1834,$181AFFF0
loc_24600:
		dc.w	$1
		dc.l	$F00F1824,$1812FFF0
loc_2460A:
		dc.w	$1
		dc.l	$F00F1814,$180AFFF0
loc_24614:
		dc.w	$1
		dc.l	$F00B1808,$1804FFF4
loc_2461E:
		dc.w	$2
		dc.l	$F0071000,$1000FFF0,$F0071800,$18000000
loc_24630:
		dc.w	$1
		dc.l	$F00B1008,$1004FFF4
loc_2463A:
		dc.w	$1
		dc.l	$F00F1014,$100AFFF0
loc_24644:
		dc.w	$1
		dc.l	$F00F1024,$1012FFF0
loc_2464E:
		dc.w	$1
		dc.l	$F00F1034,$101AFFF0
loc_24658:
		dc.w	$1
		dc.l	$F00F1044,$1022FFF0
loc_24662:
		dc.w	$1
		dc.l	$F00F1054,$102AFFF0
loc_2466C:
		dc.w	$1
		dc.l	$F40E1064,$1032FFF0
loc_24676:
		dc.w	$2
		dc.l	$F00D0070,$38FFF0,$D1070,$1038FFF0
loc_24688:
		dc.w	$1
		dc.l	$F40E0064,$32FFF0
loc_24692:
		dc.w	$1
		dc.l	$F00F0054,$2AFFF0
loc_2469C:
		dc.w	$1
		dc.l	$F00F0044,$22FFF0
loc_246A6:
		dc.w	$1
		dc.l	$F00F0034,$1AFFF0
loc_246B0:
		dc.w	$1
		dc.l	$F00F0024,$12FFF0
loc_246BA:
		dc.w	$1
		dc.l	$F00F0014,$AFFF0
loc_246C4:
		dc.w	$1
		dc.l	$F00B0008,$4FFF4	
;=============================================================================== 
; Object 0x70 - Metropolis - Rotating Gears
; [ End ]	
;===============================================================================	