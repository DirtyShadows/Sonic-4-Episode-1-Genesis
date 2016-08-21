;=============================================================================== 
; Object 0x75 - Dust Hill - Spikeball with chain
; [ Begin ]	
;===============================================================================	
loc_24970:
		btst	#6,1(a0)
		bne	loc_24988
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_24990(pc,d0),d1
		jmp	loc_24990(pc,d1)
loc_24988:
		move.w	#$280,d0
		bra	loc_24B68
loc_24990:
		dc.w	loc_24996-loc_24990
		dc.w	loc_24A72-loc_24990
		dc.w	loc_24B14-loc_24990
loc_24996:
		addq.b	#2,$24(a0)
		move.l	#Spikeball_Chain_Mappings,4(a0) 
		move.w	#$2000,2(a0)
		bsr	loc_24B8C
		move.b	#4,1(a0)
		move.b	#5,$18(a0)
		move.b	#$10,$19(a0)
		move.w	8(a0),$30(a0)
		move.w	$C(a0),$32(a0)
		move.b	$28(a0),d1
		move.b	d1,d0
		and.w	#$F,d1
		and.b	#$F0,d0
		ext.w	d0
		asl.w	#3,d0
		move.w	d0,$34(a0)
		move.b	$22(a0),d0
		ror.b	#2,d0
		and.b	#$C0,d0
		move.b	d0,$26(a0)
		cmp.b	#$F,d1
		bne.s	loc_24A06
		addq.b	#2,$24(a0)
		move.b	#4,$18(a0)
		move.b	#2,$1A(a0)
		rts
loc_24A06:
		move.b	#$9A,$20(a0)
		bsr	loc_24B86
		bne.s	loc_24A72
		move.b	0(a0),0(a1)
		move.l	4(a0),4(a1)
		move.w	2(a0),2(a1)
		move.b	#4,1(a1)
		bset	#6,1(a1)
		move.b	#$40,$E(a1)
		move.w	8(a0),d2
		move.w	$C(a0),d3
		move.b	d1,$F(a1)
		subq.w	#1,d1
		lea	$10(a1),a2
loc_24A48:	
		move.w	d2,(a2)+
		move.w	d3,(a2)+
		move.w	#1,(a2)+
		dbra	d1,loc_24A48
		move.w	d2,8(a1)
		move.w	d3,$C(a1)
		move.b	#0,$B(a1)
		move.l	a1,$3C(a0)
		move.b	#$40,$14(a1)
		bset	#4,1(a1)
loc_24A72:
		moveq	#0,d0
		moveq	#0,d1
		move.w	$34(a0),d0
		add.w	d0,$26(a0)
		move.b	$26(a0),d0
		bsr	loc_24B92
		move.w	$32(a0),d2
		move.w	$30(a0),d3
		moveq	#0,d6
		move.l	$3C(a0),a1
		move.b	$F(a1),d6
		subq.w	#1,d6
		bcs.s	loc_24AE6
		swap.w	d0
		swap.w	d1
		asr.l	#4,d0
		asr.l	#4,d1
		moveq	#0,d4
		moveq	#0,d5
		lea	$10(a1),a2
loc_24AAC:	
		movem.l D4/D5,-(sp)
		swap.w	d4
		swap.w	d5
		add.w	d2,d4
		add.w	d3,d5
		move.w	d5,(a2)+
		move.w	d4,(a2)+
		movem.l (sp)+,d4/D5
		add.l	d0,d4
		add.l	d1,d5
		addq.w	#2,a2
		dbra	d6,loc_24AAC
		swap.w	d4
		swap.w	d5
		add.w	d2,d4
		add.w	d3,d5
		move.w	d5,8(a0)
		move.w	d4,$C(a0)
		move.w	$28(a1),8(a1)
		move.w	$2A(a1),$C(a1)
loc_24AE6:
		tst.w	($FFFFFFD8).w
		beq.s	loc_24AF0
		bra	loc_24B6E
loc_24AF0:
		move.w	$30(a0),d0
		and.w	#$FF80,d0
		sub.w	($FFFFF7DA).w,d0
		cmp.w	#$280,d0
		bhi	loc_24B08
		bra	loc_24B6E
loc_24B08:
		move.l	$3C(a0),a1
		bsr	loc_24B80
		bra	loc_24B74
loc_24B14:
		moveq	#0,d1
		move.b	$19(a0),d1
		add.w	#$B,d1
		move.w	#$10,d2
		move.w	#$11,d3
		move.w	8(a0),d4
		bsr	loc_24B98
		bra	loc_24B7A	
;-------------------------------------------------------------------------------
Spikeball_Chain_Mappings: 
		dc.w	loc_24B38-Spikeball_Chain_Mappings
		dc.w	loc_24B4A-Spikeball_Chain_Mappings
		dc.w	loc_24B54-Spikeball_Chain_Mappings
loc_24B38:
		dc.w	$2
		dc.l	$F00D007A,$3DFFF0,$D187A,$183DFFF0
loc_24B4A:
		dc.w	$1
		dc.l	$F8054066,$4033FFF8
loc_24B54:
		dc.w	$2
		dc.l	$F0074040,$4020FFF0,$F0074840,$48200000	
;=============================================================================== 
; Object 0x75 - Dust Hill - Spikeball with chain
; [ End ]	
;===============================================================================	