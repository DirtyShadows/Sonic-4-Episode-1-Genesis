;=============================================================================== 
; Object 0x77 - Dust Hill - Bridge - Down when you hang on vines
; [ Begin ]	
;===============================================================================	
loc_25C08:
		btst	#6,1(a0)
		bne	loc_25C20
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_25C28(pc,d0),d1
		jmp	loc_25C28(pc,d1)
loc_25C20:
		move.w	#$280,d0
		bra	loc_25E68
loc_25C28:	
		dc.w	loc_25C2E-loc_25C28
		dc.w	loc_25D06-loc_25C28
		dc.w	loc_25D92-loc_25C28
loc_25C2E:
		addq.b	#2,$24(a0)
		move.l	#Vertical_Bridge_Mappings,4(a0) 
		move.w	#$643C,2(a0)
		bsr	loc_25E86
		move.b	#4,1(a0)
		move.b	#5,$18(a0)
		move.b	#8,$19(a0)
		or.b	#$80,$22(a0)
		move.w	8(a0),$30(a0)
		move.w	$C(a0),$32(a0)
		sub.w	#$48,$C(a0)
		move.b	#$C0,$26(a0)
		moveq	#$FFFFFFF0,d4
		btst	#1,$22(a0)
		beq.s	loc_25C8C
		add.w	#$90,$C(a0)
		move.b	#$40,$26(a0)
		neg.w	d4
loc_25C8C:
		move.w	#$100,d1
		btst	#0,$22(a0)
		beq.s	loc_25C9A
		neg.w	d1
loc_25C9A:
		move.w	d1,$34(a0)
		bsr	loc_25E80
		bne.s	loc_25D06
		move.b	0(a0),0(a1)
		move.l	4(a0),4(a1)
		move.w	2(a0),2(a1)
		move.b	#4,1(a1)
		bset	#6,1(a1)
		move.b	#$40,$E(a1)
		move.w	$30(a0),d2
		move.w	$32(a0),d3
		moveq	#8,d1
		move.b	d1,$F(a1)
		subq.w	#1,d1
		lea	$10(a1),a2
loc_25CDC:	
		add.w	d4,d3
		move.w	d2,(a2)+
		move.w	d3,(a2)+
		move.w	#1,(a2)+
		dbra	d1,loc_25CDC
		move.w	$28(a1),8(a1)
		move.w	$2A(a1),$C(a1)
		move.l	a1,$3C(a0)
		move.b	#$40,$14(a1)
		bset	#4,1(a1)
loc_25D06:
		lea	($FFFFF7E0).w,a2
		moveq	#0,d0
		move.b	$28(a0),d0
		btst	#0,0(a2,d0)
		beq.s	loc_25D42
		tst.b	$36(a0)
		bne.s	loc_25D42
		move.b	#1,$36(a0)
		move.w	#$E7,d0
		jsr	Play_Unknow	
		cmp.b	#$81,$22(a0)
		bne.s	loc_25D42
		move.w	$30(a0),8(a0)
		sub.w	#$48,8(a0)
loc_25D42:
		tst.b	$36(a0)
		beq.s	loc_25D90
		move.w	#$48,d1
		tst.b	$26(a0)
		beq.s	loc_25D5C
		cmp.b	#$80,$26(a0)
		bne.s	loc_25D88
		neg.w	d1
loc_25D5C:
		move.w	$32(a0),$C(a0)
		move.w	$30(a0),8(a0)
		add.w	d1,8(a0)
		move.b	#$40,$19(a0)
		move.b	#0,$36(a0)
		move.w	#$E9,d0
		jsr	Play_Sfx	
		addq.b	#2,$24(a0)
		bra.s	loc_25D90
loc_25D88:
		move.w	$34(a0),d0
		add.w	d0,$26(a0)
loc_25D90:
		bsr.s	loc_25DF2
loc_25D92:
		move.w	#$13,d1
		move.w	#$40,d2
		move.w	#$41,d3
		move.b	$26(a0),d0
		beq.s	loc_25DB0
		cmp.b	#$40,d0
		beq.s	loc_25DBC
		cmp.b	#$C0,d0
		bcc.s	loc_25DBC
loc_25DB0:
		move.w	#$4B,d1
		move.w	#8,d2
		move.w	#9,d3
loc_25DBC:
		move.w	8(a0),d4
		bsr	loc_25E92
		tst.w	($FFFFFFD8).w
		beq.s	loc_25DCE
		bra	loc_25E6E
loc_25DCE:
		move.w	$30(a0),d0
		and.w	#$FF80,d0
		sub.w	($FFFFF7DA).w,d0
		cmp.w	#$280,d0
		bhi	loc_25DE6
		bra	loc_25E6E
loc_25DE6:
		move.l	$3C(a0),a1
		bsr	loc_25E7A
		bra	loc_25E74
loc_25DF2:
		tst.b	$36(a0)
		beq.s	loc_25E54
		moveq	#0,d0
		moveq	#0,d1
		move.b	$26(a0),d0
		bsr	loc_25E8C
		move.w	$32(a0),d2
		move.w	$30(a0),d3
		moveq	#0,d6
		move.l	$3C(a0),a1
		move.b	$F(a1),d6
		subq.w	#1,d6
		bcs.s	loc_25E54
		swap.w	d0
		swap.w	d1
		asr.l	#4,d0
		asr.l	#4,d1
		move.l	d0,d4
		move.l	d1,d5
		lea	$10(a1),a2
loc_25E2A:	
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
		dbra	d6,loc_25E2A
		move.w	$28(a1),8(a1)
		move.w	$2A(a1),$C(a1)
loc_25E54:
		rts
;-------------------------------------------------------------------------------
Vertical_Bridge_Mappings: 
		dc.w	loc_25E5A-Vertical_Bridge_Mappings
		dc.w	loc_25E5C-Vertical_Bridge_Mappings
loc_25E5A:
		dc.w	$0
loc_25E5C:
		dc.w	$1
		dc.l	$F8050000,$FFF8	
;=============================================================================== 
; Object 0x77 - Dust Hill - Bridge - Down when you hang on vines
; [ End ]	
;===============================================================================	