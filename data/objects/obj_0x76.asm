;=============================================================================== 
; Object 0x76 - Dust Hill - Platform with spikes on sides 
; [ Begin ]	
;===============================================================================	

loc_24BA0:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_24BAE(pc,d0),d1
		jmp	loc_24BAE(pc,d1)
loc_24BAE:
		dc.w	loc_24BB6-loc_24BAE
		dc.w	loc_24C06-loc_24BAE
loc_24BB2:
		dc.b	$40,$10,0,$0
loc_24BB6:
		addq.b	#2,$24(a0)
		move.l	#Platform_Spikes_Mappings,4(a0) 
		move.w	#0,2(a0)
		bsr	loc_24D1E
		or.b	#4,1(a0)
		move.b	#4,$18(a0)
		moveq	#0,d0
		move.b	$28(a0),d0
		lsr.w	#2,d0
		and.w	#$1C,d0
		lea	loc_24BB2(pc,d0),a2
		move.b	(a2)+,$19(a0)
		move.b	(a2)+,$16(a0)
		move.b	(a2)+,$1A(a0)
		move.w	8(a0),$34(a0)
		move.w	$C(a0),$30(a0)
		and.w	#$F,$28(a0)
loc_24C06:
		move.w	8(a0),-(sp)
		moveq	#0,d0
		move.b	$28(a0),d0
		move.w	loc_24C72(pc,d0),d1
		jsr	loc_24C72(pc,d1)
		move.w	(sp)+,d4
		tst.b	1(a0)
		bpl.s	loc_24C6A
		moveq	#0,d1
		move.b	$19(a0),d1
		add.w	#$B,d1
		moveq	#0,d2
		move.b	$16(a0),d2
		move.w	d2,d3
		addq.w	#1,d3
		bsr	loc_24D24
		swap.w	d6
		and.w	#3,d6
		beq.s	loc_24C6A
		move.b	d6,d0
		and.b	#1,d0
		beq.s	loc_24C56
		lea	($FFFFB000).w,a1
		bsr	loc_24D18
		bclr	#5,$22(a0)
loc_24C56:
		and.b	#2,d6
		beq.s	loc_24C6A
		lea	($FFFFB040).w,a1
		bsr	loc_24D18
		bclr	#6,$22(a0)
loc_24C6A:
		move.w	$34(a0),d0
		bra	loc_24D2A
loc_24C72:
		dc.w	loc_24C76-loc_24C72
		dc.w	loc_24CC6-loc_24C72
loc_24C76:
		lea	($FFFFB000).w,a1
		bsr.s	loc_24C80
		lea	($FFFFB040).w,a1
loc_24C80:
		btst	#1,$22(a1)
		bne.s	loc_24CC4
		move.w	8(a1),d0
		sub.w	8(a0),d0
		add.w	#$C0,d0
		btst	#0,$22(a0)
		beq.s	loc_24CA0
		sub.w	#$100,d0
loc_24CA0:
		cmp.w	#$80,d0
		bcc.s	loc_24CC4
		move.w	$C(a1),d0
		sub.w	$C(a0),d0
		add.w	#$10,d0
		cmp.w	#$20,d0
		bcc.s	loc_24CC4
		move.b	#2,$28(a0)
		move.w	#$80,$36(a0)
loc_24CC4:
		rts
loc_24CC6:
		tst.w	$36(a0)
		beq.s	loc_24CE0
		subq.w	#1,$36(a0)
		moveq	#$FFFFFFFF,d0
		btst	#0,$22(a0)
		beq.s	loc_24CDC
		neg.w	d0
loc_24CDC:
		add.w	d0,8(a0)
loc_24CE0:
		rts
;-------------------------------------------------------------------------------
Platform_Spikes_Mappings: 
		dc.w	loc_24CE4-Platform_Spikes_Mappings
loc_24CE4:
		dc.w	$6
		dc.l	$F005242C,$2216FFC0,$5242C,$2216FFC0
		dc.l	$F0076040,$6020FFD0,$F00F6048,$6024FFE0
		dc.l	$F00F6048,$60240000,$F00F6048,$60240020	
;=============================================================================== 
; Object 0x76 - Dust Hill - Platform with spikes on sides 
; [ End ]	
;===============================================================================	