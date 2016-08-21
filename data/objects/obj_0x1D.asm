;=============================================================================== 
; Object 0x1D - Chemical Plant - Worms
; [ Begin ]	
;===============================================================================	
loc_1E224:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_1E232(pc,d0),d1
		jmp	loc_1E232(pc,d1)
loc_1E232:
		dc.w	loc_1E244-loc_1E232
		dc.w	loc_1E2F2-loc_1E232
		dc.w	loc_1E310-loc_1E232
		dc.w	loc_1E2F2-loc_1E232
		dc.w	loc_1E344-loc_1E232	
loc_1E23C:
		dc.w	$FB80,$FB00,$FA00,$F900
loc_1E244:
		addq.b	#2,$24(a0)
		move.w	#$FB80,$12(a0)
		moveq	#0,d1
		move.b	$28(a0),d1
		move.b	d1,d0
		and.b	#$F,d1
		moveq	#2,d5
		and.b	#$F0,d0
		beq.s	loc_1E264
		moveq	#6,d5
loc_1E264:
		move.b	$22(a0),d4
		moveq	#0,d2
		move.l	a0,a1
		bra.s	loc_1E274
loc_1E26E:	
		bsr	loc_1E3A6
		bne.s	loc_1E2EC
loc_1E274:
		move.b	0(a0),0(a1)
		move.b	d5,$24(a1)
		move.w	8(a0),8(a1)
		move.w	$C(a0),$C(a1)
		move.l	#Worms_Mappings,4(a1) 
		move.w	#$643C,2(a1)
		bsr	loc_1E3AC
		move.b	#4,1(a1)
		move.b	#3,$18(a1)
		move.b	#$8B,$20(a1)
		move.w	8(a1),$38(a1)
		move.w	$C(a1),$30(a1)
		move.w	$12(a0),$12(a1)
		move.w	$12(a1),$34(a1)
		move.b	#8,$19(a1)
		move.w	#$60,$3A(a1)
		move.w	#$B,$36(a1)
		and.b	#1,d4
		beq.s	loc_1E2E6
		neg.w	$36(a1)
		neg.w	$3A(a1)
loc_1E2E6:
		move.w	d2,$32(a1)
		addq.w	#3,d2
loc_1E2EC:
		dbra	d1,loc_1E26E
		rts
loc_1E2F2:
		subq.w	#1,$32(a0)
		bpl.s	loc_1E30C
		addq.b	#2,$24(a0)
		move.w	#$3B,$32(a0)
		move.w	#$DA,d0
		jsr	Play_Sfx_Ex	
loc_1E30C:
		bra	loc_1E3A0
loc_1E310:
		bsr	loc_1E3B2
		move.w	$36(a0),d0
		add.w	d0,$10(a0)
		add.w	#$18,$12(a0)
		bne.s	loc_1E328
		neg.w	$36(a0)
loc_1E328:
		move.w	$30(a0),d0
		cmp.w	$C(a0),d0
		bhi.s	loc_1E340
		move.w	$34(a0),$12(a0)
		clr.w	$10(a0)
		subq.b	#2,$24(a0)
loc_1E340:
		bra	loc_1E3A0
loc_1E344:
		bsr	loc_1E3B2
		add.w	#$18,$12(a0)
		bne.s	loc_1E35C
		move.w	$3A(a0),d0
		add.w	$38(a0),d0
		move.w	d0,8(a0)
loc_1E35C:
		cmp.w	#$180,$12(a0)
		bne.s	loc_1E36E
		move.w	#$DA,d0
		jsr	Play_Sfx_Ex	
loc_1E36E:
		move.w	$30(a0),d0
		cmp.w	$C(a0),d0
		bhi.s	loc_1E38E
		move.w	$34(a0),$12(a0)
		move.w	$38(a0),8(a0)
		move.w	#$DA,d0
		jsr	Play_Sfx_Ex	
loc_1E38E:
		bra	loc_1E3A0
;-------------------------------------------------------------------------------
Worms_Mappings: ; 
		dc.w	loc_1E394-Worms_Mappings
loc_1E394:
		dc.w	$1
		dc.l	$F8050000,$FFF8	
;=============================================================================== 
; Object 0x1D - Chemical Plant - Worms
; [ End ]	
;===============================================================================	