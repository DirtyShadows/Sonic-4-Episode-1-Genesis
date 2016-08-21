;=============================================================================== 
; Object 0x77 - Dust Hill - Bridge 
; [ Begin ]	
;===============================================================================	
loc_24D30:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_24D3E(pc,d0),d1
		jmp	loc_24D3E(pc,d1)
loc_24D3E:
		dc.w	loc_24D42-loc_24D3E
		dc.w	loc_24D64-loc_24D3E
loc_24D42:
		addq.b	#2,$24(a0)
		move.l	#Dhz_Bridge_Mappings,4(a0) 
		move.w	#$643C,2(a0)
		bsr	loc_24F66
		or.b	#4,1(a0)
		move.b	#$80,$19(a0)
loc_24D64:
		tst.b	$34(a0)
		bne.s	loc_24D98
		lea	($FFFFF7E0).w,a2
		moveq	#0,d0
		move.b	$28(a0),d0
		btst	#0,0(a2,d0)
		beq.s	loc_24D98
		move.b	#1,$34(a0)
		bchg	#0,$1C(a0)
		tst.b	1(a0)
		bpl.s	loc_24D98
		move.w	#$BB,d0
		jsr	Play_Sfx	
loc_24D98:
		lea	(Dhz_Bridge_Animate_Data),a1 
		jsr	animateSprite	
		tst.b	$1A(a0)
		bne.s	loc_24DC2
		move.w	#$4B,d1
		move.w	#8,d2
		move.w	d2,d3
		addq.w	#1,d3
		move.w	8(a0),d4
		bsr	loc_24F6C
		bra	loc_24F60
loc_24DC2:
		move.b	$22(a0),d0
		and.b	#$18,d0
		beq.s	loc_24DF4
		move.b	d0,d1
		and.b	#8,d0
		beq.s	loc_24DDE
		lea	($FFFFB000).w,a1
		bclr	#3,$22(a1)
loc_24DDE:
		and.b	#$10,d1
		beq.s	loc_24DEE
		lea	($FFFFB040).w,a1
		bclr	#3,$22(a1)
loc_24DEE:
		and.b	#$E7,$22(a0)
loc_24DF4:
		bra	loc_24F60
;-------------------------------------------------------------------------------
Dhz_Bridge_Animate_Data: 
		dc.w	loc_24DFC-Dhz_Bridge_Animate_Data
		dc.w	loc_24E04-Dhz_Bridge_Animate_Data
loc_24DFC:
		dc.b	3,4,3,2,1,0,$FE,$1
loc_24E04:
		dc.b	3,0,1,2,3,4,$FE,$1	
;-------------------------------------------------------------------------------
Dhz_Bridge_Mappings: 
		dc.w	loc_24E16-Dhz_Bridge_Mappings
		dc.w	loc_24E58-Dhz_Bridge_Mappings
		dc.w	loc_24E9A-Dhz_Bridge_Mappings
		dc.w	loc_24EDC-Dhz_Bridge_Mappings
		dc.w	loc_24F1E-Dhz_Bridge_Mappings
loc_24E16:
		dc.w	$8
		dc.l	$F8050000,$FFC0,$F8050000,$FFD0
		dc.l	$F8050000,$FFE0,$F8050000,$FFF0
		dc.l	$F8050000,0,$F8050000,$10
		dc.l	$F8050000,$20,$F8050000,$30
loc_24E58:
		dc.w	$8
		dc.l	$F8050000,$FFC0,$FE050000,$FFCE
		dc.l	$4050000,$FFDD,$A050000,$FFEC
		dc.l	$A050000,4,$4050000,$13
		dc.l	$FE050000,$22,$F8050000,$30
loc_24E9A:
		dc.w	$8
		dc.l	$F8050000,$FFC0,$3050000,$FFCB
		dc.l	$E050000,$FFD6,$19050000,$FFE1
		dc.l	$19050000,$F,$E050000,$1A
		dc.l	$3050000,$25,$F8050000,$30
loc_24EDC:
		dc.w	$8
		dc.l	$F8050000,$FFC0,$6050000,$FFC6
		dc.l	$15050000,$FFCC,$24050000,$FFD2
		dc.l	$24050000,$1E,$15050000,$24
		dc.l	$6050000,$2A,$F8050000,$30
loc_24F1E:
		dc.w	$8
		dc.l	$F8050000,$FFC0,$8050000,$FFC0
		dc.l	$18050000,$FFC0,$28050000,$FFC0
		dc.l	$F8050000,$30,$8050000,$30
		dc.l	$18050000,$30,$28050000,$30	
;=============================================================================== 
; Object 0x77 - Dust Hill - Bridge 
; [ End ]	
;===============================================================================	