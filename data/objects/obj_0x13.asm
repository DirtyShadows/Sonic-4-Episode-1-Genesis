;=============================================================================== 
; Object 0x13 - Hidden Palace - Waterfalls 
; [ Begin ]	
;===============================================================================	
loc_1C1E8:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_1C1F6(pc,d0),d1
		jmp	loc_1C1F6(pc,d1)
loc_1C1F6:
		dc.w	loc_1C1FC-loc_1C1F6
		dc.w	loc_1C2C2-loc_1C1F6
		dc.w	loc_1C34C-loc_1C1F6
loc_1C1FC:
		addq.b	#2,$24(a0)
		move.l	#Hpz_Waterfalls_Mappings,4(a0) 
		move.w	#$E315,2(a0)
		bsr	loc_1C712
		move.b	#4,1(a0)
		move.b	#$10,$19(a0)
		move.b	#1,$18(a0)
		move.b	#$12,$1A(a0)
		bsr.s	loc_1C264
		move.b	#$A0,$16(a1)
		bset	#4,1(a1)
		move.l	a1,$38(a0)
		move.w	$C(a0),$34(a0)
		move.w	$C(a0),$36(a0)
		cmp.b	#$10,$28(a0)
		bcs.s	loc_1C2A8
		bsr.s	loc_1C264
		move.l	a1,$3C(a0)
		move.w	$C(a0),$C(a1)
		add.w	#$98,$C(a1)
		bra.s	loc_1C2A8
loc_1C264:
		jsr	S1SingleObjectLoad	
		bne.s	loc_1C2A6
		move.b	#$13,0(a1)
		addq.b	#4,$24(a1)
		move.w	8(a0),8(a1)
		move.w	$C(a0),$C(a1)
		move.l	#Hpz_Waterfalls_Mappings,4(a1) 
		move.w	#$E315,2(a1)
		bsr	loc_1C70C
		move.b	#4,1(a1)
		move.b	#$10,$19(a1)
		move.b	#1,$18(a1)
loc_1C2A6:
		rts
loc_1C2A8:
		moveq	#0,d1
		move.b	$28(a0),d1
		move.w	$34(a0),d0
		sub.w	#$78,d0
		lsl.w	#4,d1
		add.w	d1,d0
		move.w	d0,$C(a0)
		move.w	d0,$34(a0)
loc_1C2C2:
		move.l	$38(a0),a1
		move.b	#$12,$1A(a0)
		move.w	$34(a0),d0
		move.w	($FFFFF646).w,d1
		cmp.w	d0,d1
		bcc.s	loc_1C2DA
		move.w	d1,d0
loc_1C2DA:
		move.w	d0,$C(a0)
		sub.w	$36(a0),d0
		add.w	#$80,d0
		bmi.s	loc_1C32C
		lsr.w	#4,d0
		move.w	d0,d1
		cmp.w	#$F,d0
		bcs.s	loc_1C2F4
		moveq	#$F,d0
loc_1C2F4:
		move.b	d0,$1A(a1)
		cmp.b	#$10,$28(a0)
		bcs.s	loc_1C314
		move.l	$3C(a0),a1
		sub.w	#$F,d1
		bcc.s	loc_1C30C
		moveq	#0,d1
loc_1C30C:
		add.w	#$13,d1
		move.b	d1,$1A(a1)
loc_1C314:
		move.w	8(a0),d0
		and.w	#$FF80,d0
		sub.w	($FFFFF7DA).w,d0
		cmp.w	#$280,d0
		bhi	loc_1C706
		bra	J_DisplaySprite_04	
loc_1C32C:
		moveq	#$13,d0
		move.b	d0,$1A(a0)
		move.b	d0,$1A(a1)
		move.w	8(a0),d0
		and.w	#$FF80,d0
		sub.w	($FFFFF7DA).w,d0
		cmp.w	#$280,d0
		bhi	loc_1C706
		rts
loc_1C34C:
		move.w	8(a0),d0
		and.w	#$FF80,d0
		sub.w	($FFFFF7DA).w,d0
		cmp.w	#$280,d0
		bhi	loc_1C706
		bra	J_DisplaySprite_04	
;-------------------------------------------------------------------------------
Hpz_Waterfalls_Mappings: 
		dc.w	loc_1C39E-Hpz_Waterfalls_Mappings
		dc.w	loc_1C3A8-Hpz_Waterfalls_Mappings
		dc.w	loc_1C3BA-Hpz_Waterfalls_Mappings
		dc.w	loc_1C3CC-Hpz_Waterfalls_Mappings
		dc.w	loc_1C3E6-Hpz_Waterfalls_Mappings
		dc.w	loc_1C400-Hpz_Waterfalls_Mappings
		dc.w	loc_1C422-Hpz_Waterfalls_Mappings
		dc.w	loc_1C444-Hpz_Waterfalls_Mappings
		dc.w	loc_1C46E-Hpz_Waterfalls_Mappings
		dc.w	loc_1C498-Hpz_Waterfalls_Mappings
		dc.w	loc_1C4CA-Hpz_Waterfalls_Mappings
		dc.w	loc_1C4FC-Hpz_Waterfalls_Mappings
		dc.w	loc_1C536-Hpz_Waterfalls_Mappings
		dc.w	loc_1C570-Hpz_Waterfalls_Mappings
		dc.w	loc_1C5B2-Hpz_Waterfalls_Mappings
		dc.w	loc_1C5F4-Hpz_Waterfalls_Mappings
		dc.w	loc_1C63E-Hpz_Waterfalls_Mappings
		dc.w	loc_1C63E-Hpz_Waterfalls_Mappings
		dc.w	loc_1C63E-Hpz_Waterfalls_Mappings
		dc.w	loc_1C39C-Hpz_Waterfalls_Mappings
		dc.w	loc_1C650-Hpz_Waterfalls_Mappings
		dc.w	loc_1C65A-Hpz_Waterfalls_Mappings
		dc.w	loc_1C664-Hpz_Waterfalls_Mappings
		dc.w	loc_1C676-Hpz_Waterfalls_Mappings
		dc.w	loc_1C688-Hpz_Waterfalls_Mappings
		dc.w	loc_1C6A2-Hpz_Waterfalls_Mappings
		dc.w	loc_1C6BC-Hpz_Waterfalls_Mappings
		dc.w	loc_1C6DE-Hpz_Waterfalls_Mappings
loc_1C39C:
		dc.w	$0
loc_1C39E:
		dc.w	$1
		dc.l	$800C0010,$8FFF0
loc_1C3A8:
		dc.w	$2
		dc.l	$800C0010,$8FFF0,$880D002D,$16FFF0
loc_1C3BA:
		dc.w	$2
		dc.l	$800C0010,$8FFF0,$880F0000,$FFF0
loc_1C3CC:
		dc.w	$3
		dc.l	$800C0010,$8FFF0,$880F0000,$FFF0
		dc.l	$A80D002D,$16FFF0
loc_1C3E6:
		dc.w	$3
		dc.l	$800C0010,$8FFF0,$880F0000,$FFF0
		dc.l	$A80F0000,$FFF0
loc_1C400:
		dc.w	$4
		dc.l	$800C0010,$8FFF0,$880F0000,$FFF0
		dc.l	$A80F0000,$FFF0,$C80D002D,$16FFF0
loc_1C422:
		dc.w	$4
		dc.l	$800C0010,$8FFF0,$880F0000,$FFF0
		dc.l	$A80F0000,$FFF0,$C80F0000,$FFF0
loc_1C444:
		dc.w	$5
		dc.l	$800C0010,$8FFF0,$880F0000,$FFF0
		dc.l	$A80F0000,$FFF0,$C80F0000,$FFF0
		dc.l	$E80D002D,$16FFF0
loc_1C46E:
		dc.w	$5
		dc.l	$800C0010,$8FFF0,$880F0000,$FFF0
		dc.l	$A80F0000,$FFF0,$C80F0000,$FFF0
		dc.l	$E80F0000,$FFF0
loc_1C498:
		dc.w	$6
		dc.l	$800C0010,$8FFF0,$880F0000,$FFF0
		dc.l	$A80F0000,$FFF0,$C80F0000,$FFF0
		dc.l	$E80F0000,$FFF0,$80D002D,$16FFF0
loc_1C4CA:
		dc.w	$6
		dc.l	$800C0010,$8FFF0,$880F0000,$FFF0
		dc.l	$A80F0000,$FFF0,$C80F0000,$FFF0
		dc.l	$E80F0000,$FFF0,$80F0000,$FFF0
loc_1C4FC:
		dc.w	$7
		dc.l	$800C0010,$8FFF0,$880F0000,$FFF0
		dc.l	$A80F0000,$FFF0,$C80F0000,$FFF0
		dc.l	$E80F0000,$FFF0,$80F0000,$FFF0
		dc.l	$280D002D,$16FFF0
loc_1C536:
		dc.w	$7
		dc.l	$800C0010,$8FFF0,$880F0000,$FFF0
		dc.l	$A80F0000,$FFF0,$C80F0000,$FFF0
		dc.l	$E80F0000,$FFF0,$80F0000,$FFF0
		dc.l	$280F0000,$FFF0
loc_1C570:
		dc.w	$8
		dc.l	$800C0010,$8FFF0,$880F0000,$FFF0
		dc.l	$A80F0000,$FFF0,$C80F0000,$FFF0
		dc.l	$E80F0000,$FFF0,$80F0000,$FFF0
		dc.l	$280F0000,$FFF0,$480D002D,$16FFF0
loc_1C5B2:
		dc.w	$8
		dc.l	$800C0010,$8FFF0,$880F0000,$FFF0
		dc.l	$A80F0000,$FFF0,$C80F0000,$FFF0
		dc.l	$E80F0000,$FFF0,$80F0000,$FFF0
		dc.l	$280F0000,$FFF0,$480F0000,$FFF0
loc_1C5F4:
		dc.w	$9
		dc.l	$800C0010,$8FFF0,$880F0000,$FFF0
		dc.l	$A80F0000,$FFF0,$C80F0000,$FFF0
		dc.l	$E80F0000,$FFF0,$80F0000,$FFF0
		dc.l	$280F0000,$FFF0,$480F0000,$FFF0
		dc.l	$680D002D,$16FFF0
loc_1C63E:
		dc.w	$2
		dc.l	$F00A0018,$CFFE8,$F00A0818,$80C0000
loc_1C650:
		dc.w	$1
		dc.l	$E00D002D,$16FFF0
loc_1C65A:
		dc.w	$1
		dc.l	$E00F0000,$FFF0
loc_1C664:
		dc.w	$2
		dc.l	$E00F0000,$FFF0,$D002D,$16FFF0
loc_1C676:
		dc.w	$2
		dc.l	$E00F0000,$FFF0,$F0000,$FFF0
loc_1C688:
		dc.w	$3
		dc.l	$E00F0000,$FFF0,$F0000,$FFF0
		dc.l	$200D002D,$16FFF0
loc_1C6A2:
		dc.w	$3
		dc.l	$E00F0000,$FFF0,$F0000,$FFF0
		dc.l	$200F0000,$FFF0
loc_1C6BC:
		dc.w	$4
		dc.l	$E00F0000,$FFF0,$F0000,$FFF0
		dc.l	$200F0000,$FFF0,$400D002D,$16FFF0
loc_1C6DE:
		dc.w	$4
		dc.l	$E00F0000,$FFF0,$F0000,$FFF0
		dc.l	$200F0000,$FFF0,$400F0000,$FFF0
;=============================================================================== 
; Object 0x13 - Hidden Palace - Waterfalls 
; [ End ]	
;===============================================================================	