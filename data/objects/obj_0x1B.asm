;=============================================================================== 
; Object 0x1B - Chemical Plant - Speed Booster
; [ Begin ]	
;===============================================================================	
loc_1E0C8:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_1E0D6(pc,d0),d1
		jmp	loc_1E0D6(pc,d1)
loc_1E0D6:
		dc.w	loc_1E0DE-loc_1E0D6
		dc.w	loc_1E114-loc_1E0D6
loc_1E0DA:
		dc.w	$1000,$A00
loc_1E0DE:
		addq.b	#2,$24(a0)
		move.l	#CPz_Speed_Booster_Mappings,4(a0) 
		move.w	#$E39C,2(a0)
		bsr	loc_1E21E
		or.b	#4,1(a0)
		move.b	#$20,$19(a0)
		move.b	#1,$18(a0)
		move.b	$28(a0),d0
		and.w	#2,d0
		move.w	loc_1E0DA(pc,d0),$30(a0)
loc_1E114:
		move.b	($FFFFFE05).w,d0
		and.b	#2,d0
		move.b	d0,$1A(a0)
		move.w	8(a0),d0
		move.w	d0,d1
		sub.w	#$10,d0
		add.w	#$10,d1
		move.w	$C(a0),d2
		move.w	d2,d3
		sub.w	#$10,d2
		add.w	#$10,d3
		lea	($FFFFB000).w,a1
		btst	#1,$22(a1)
		bne.s	loc_1E170
		move.w	8(a1),d4
		cmp.w	d0,d4
		bcs	loc_1E170
		cmp.w	d1,d4
		bcc	loc_1E170
		move.w	$C(a1),d4
		cmp.w	d2,d4
		bcs	loc_1E170
		cmp.w	d3,d4
		bcc	loc_1E170
		move.w	d0,-(sp)
		bsr	loc_1E1A4
		move.w	(sp)+,d0
loc_1E170:
		lea	($FFFFB040).w,a1
		btst	#1,$22(a1)
		bne.s	loc_1E1A0
		move.w	8(a1),d4
		cmp.w	d0,d4
		bcs	loc_1E1A0
		cmp.w	d1,d4
		bcc	loc_1E1A0
		move.w	$C(a1),d4
		cmp.w	d2,d4
		bcs	loc_1E1A0
		cmp.w	d3,d4
		bcc	loc_1E1A0
		bsr	loc_1E1A4
loc_1E1A0:
		bra	loc_1E218
loc_1E1A4:
		move.w	$10(a1),d0
		btst	#0,$22(a0)
		beq.s	loc_1E1B2
		neg.w	d0
loc_1E1B2:
		cmp.w	#$1000,d0
		bge.s	loc_1E1F4
		move.w	$30(a0),$10(a1)
		bclr	#0,$22(a1)
		btst	#0,$22(a0)
		beq.s	loc_1E1D6
		bset	#0,$22(a1)
		neg.w	$10(a1)
loc_1E1D6:
		move.w	#$F,$2E(a1)
		move.w	$10(a1),$14(a1)
		bclr	#5,$22(a0)
		bclr	#6,$22(a0)
		bclr	#5,$22(a1)
loc_1E1F4:
		move.w	#$CC,d0
		jmp	Play_Sfx	
;-------------------------------------------------------------------------------
CPz_Speed_Booster_Mappings: ; 
		dc.w	loc_1E204-CPz_Speed_Booster_Mappings
		dc.w	loc_1E204-CPz_Speed_Booster_Mappings
		dc.w	loc_1E216-CPz_Speed_Booster_Mappings
loc_1E204:
		dc.w	$2
		dc.l	$F8050000,$FFE8,$F8050000,$8
loc_1E216:
		dc.w	$0	
;=============================================================================== 
; Object 0x1B - Chemical Plant - Speed Booster
; [ End ]	
;===============================================================================	