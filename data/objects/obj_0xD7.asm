;===============================================================================
; Object 0xD7 - Blue Bumper Casino Night
; [ Begin ]
;===============================================================================	
loc_27E68:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_27E76(pc,d0),d1
		jmp	loc_27E76(pc,d1)
loc_27E76:
		dc.w	loc_27E7A-loc_27E76
		dc.w	loc_27ECC-loc_27E76
loc_27E7A:
		addq.b	#2,$24(a0)
		move.l	#Blue_Bumper_Mappings,4(a0) 
		move.w	#$4394,2(a0)
		bsr	loc_280C6
		move.b	#4,1(a0)
		move.b	#$10,$19(a0)
		move.b	#1,$18(a0)
		move.b	#$CA,$20(a0)
		btst	#0,$22(a0)
		beq.s	loc_27EB6
		move.b	#1,$34(a0)
loc_27EB6:
		move.w	8(a0),d0
		move.w	d0,d1
		sub.w	#$60,d0
		move.w	d0,$30(a0)
		add.w	#$60,d1
		move.w	d1,$32(a0)
loc_27ECC:
		move.b	$21(a0),d0
		beq	loc_27F9E
		lea	($FFFFB000).w,a1
		bclr	#0,$21(a0)
		beq.s	loc_27EE2
		bsr.s	loc_27EF8
loc_27EE2:
		lea	($FFFFB040).w,a1
		bclr	#1,$21(a0)
		beq.s	loc_27EF0
		bsr.s	loc_27EF8
loc_27EF0:
		clr.b	$21(a0)
		bra	loc_27F9E
loc_27EF8:
		move.w	8(a0),d1
		move.w	$C(a0),d2
		sub.w	8(a1),d1
		sub.w	$C(a1),d2
		jsr	CalcAngle	
		add.b	#$20,d0
		and.w	#$C0,d0
		cmp.w	#$40,d0
		beq.s	loc_27F36
		cmp.w	#$80,d0
		beq.s	loc_27F54
		cmp.w	#$C0,d0
		beq.s	loc_27F62
		move.w	#$F800,$10(a1)
		move.b	#2,$1C(a0)
		bra.s	loc_27F7E
loc_27F36:
		sub.w	#$200,$10(a1)
		tst.w	d1
		bpl.s	loc_27F46
		add.w	#$400,$10(a1)
loc_27F46:
		move.w	#$F800,$12(a1)
		move.b	#1,$1C(a0)
		bra.s	loc_27F7E
loc_27F54:
		move.w	#$800,$10(a1)
		move.b	#2,$1C(a0)
		bra.s	loc_27F7E
loc_27F62:
		sub.w	#$200,$10(a1)
		tst.w	d1
		bpl.s	loc_27F72
		add.w	#$400,$10(a1)
loc_27F72:
		move.w	#$800,$12(a1)
		move.b	#1,$1C(a0)
loc_27F7E:
		bset	#1,$22(a1)
		bclr	#4,$22(a1)
		bclr	#5,$22(a1)
		clr.b	$3C(a1)
		move.w	#$B4,d0
		jmp	Play_Sfx	
loc_27F9E:
		lea	(Blue_Bumper_Animate_Data),a1 
		bsr	loc_280C0
		tst.b	$28(a0)
		beq	loc_280BA
		tst.b	$34(a0)
		beq.s	loc_27FCE
		move.w	8(a0),d0
		subq.w	#1,d0
		cmp.w	$30(a0),d0
		bne.s	loc_27FC8
		move.b	#0,$34(a0)
loc_27FC8:
		move.w	d0,8(a0)
		bra.s	loc_27FE4
loc_27FCE:
		move.w	8(a0),d0
		addq.w	#1,d0
		cmp.w	$32(a0),d0
		bne.s	loc_27FE0
		move.b	#1,$34(a0)
loc_27FE0:
		move.w	d0,8(a0)
loc_27FE4:
		tst.w	($FFFFFFD8).w
		beq.s	loc_27FEE
		bra	loc_280B4
loc_27FEE:
		move.w	$30(a0),d0
		and.w	#$FF80,d0
		sub.w	($FFFFF7DA).w,d0
		cmp.w	#$280,d0
		bls.s	loc_28012
		move.w	$32(a0),d0
		and.w	#$FF80,d0
		sub.w	($FFFFF7DA).w,d0
		cmp.w	#$280,d0
		bhi.s	loc_28018
loc_28012:
		jmp	displaySprite	
loc_28018:
		lea	($FFFFFC00).w,a2
		moveq	#0,d0
		move.b	$23(a0),d0
		beq.s	loc_2802A
		bclr	#7,2(a2,d0)
loc_2802A:
		jmp	deleteObject	
;-------------------------------------------------------------------------------
Blue_Bumper_Animate_Data: 
		dc.w	loc_28036-Blue_Bumper_Animate_Data
		dc.w	loc_28039-Blue_Bumper_Animate_Data
		dc.w	loc_2803F-Blue_Bumper_Animate_Data
loc_28036:
		dc.b	$F,0,$FF
loc_28039:
		dc.b	3,1,0,1,$FD,$0
loc_2803F:
		dc.b	3,2,0,2,$FD,0,$0
;-------------------------------------------------------------------------------
Blue_Bumper_Mappings: 
		dc.w	loc_2804C-Blue_Bumper_Mappings
		dc.w	loc_2806E-Blue_Bumper_Mappings
		dc.w	loc_28090-Blue_Bumper_Mappings
loc_2804C:
		dc.w	$4
		dc.l	$F0090000,$FFE8,$F0090800,$8000000
		dc.l	$91000,$1000FFE8,$91800,$18000000
loc_2806E:
		dc.w	$4
		dc.l	$F4090000,$FFE8,$F4090800,$8000000
		dc.l	$4091000,$1000FFE8,$4091800,$18000000
loc_28090:
		dc.w	$4
		dc.l	$F0090000,$FFEC,$F0090800,$8000004
		dc.l	$91000,$1000FFEC,$91800,$18000004	
			
;===============================================================================
; Object 0xD7 - Blue Bumper Casino Night
; [ End ]
;===============================================================================