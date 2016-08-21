;=============================================================================== 
; Object 0x65 - Metropolis - Platform / Platform Over Gears 
; [ Begin ]	
;===============================================================================	
loc_228A0:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_228AE(pc,d0),d1
		jmp	loc_228AE(pc,d1)	
loc_228AE:
		dc.w	loc_228C6-loc_228AE
		dc.w	loc_229DC-loc_228AE
		dc.w	loc_22C52-loc_228AE
		dc.w	loc_22C70-loc_228AE
loc_228B6:
		dc.b	$40,$C,$80,1,$20,$C,$40,3,$10,$10,$20,0,$40,$C,$80,$7
loc_228C6:
		addq.b	#2,$24(a0)
		move.l	#Mz_Platform_Mappings,4(a0) 
		move.w	#$6000,2(a0)
		bsr	loc_22CFC
		or.b	#4,1(a0)
		move.b	#4,$18(a0)
		moveq	#0,d0
		move.b	$28(a0),d0
		lsr.w	#2,d0
		and.w	#$1C,d0
		lea	loc_228B6(pc,d0),a3
		move.b	(a3)+,$19(a0)
		move.b	(a3)+,$16(a0)
		lsr.w	#2,d0
		move.b	d0,$1A(a0)
		cmp.b	#1,d0
		bne.s	loc_22912
		bset	#7,$22(a0)
loc_22912:
		cmp.b	#2,d0
		bne.s	loc_2292E
		addq.b	#4,$24(a0)
		move.l	#Mini_Gear_Mappings,4(a0) 
		move.w	#$655F,2(a0)
		bra	loc_22C70
loc_2292E:
		move.w	8(a0),$34(a0)
		move.w	$C(a0),$30(a0)
		moveq	#0,d0
		move.b	(a3)+,d0
		move.w	d0,$3C(a0)
		moveq	#0,d0
		move.b	$28(a0),d0
		bpl	loc_229D6
		and.b	#$F,d0
		move.b	d0,$3E(a0)
		move.b	(a3),$28(a0)
		cmp.b	#7,(a3)
		bne.s	loc_22964
		move.w	$3C(a0),$3A(a0)
loc_22964:
		bsr	loc_22CF6
		bne.s	loc_229C4
		move.b	0(a0),0(a1)
		addq.b	#4,$24(a1)
		move.w	8(a0),8(a1)
		move.w	$C(a0),$C(a1)
		add.w	#$FFB4,8(a1)
		add.w	#$14,$C(a1)
		btst	#0,$22(a0)
		bne.s	loc_229A0
		sub.w	#$FFE8,8(a1)
		bset	#0,1(a1)
loc_229A0:
		move.l	#Mini_Gear_Mappings,4(a1) 
		move.w	#$655F,2(a1)
		or.b	#4,1(a1)
		move.b	#$10,$19(a1)
		move.b	#4,$18(a1)
		move.l	a0,$3C(a1)
loc_229C4:
		lea	($FFFFFC00).w,a2
		moveq	#0,d0
		move.b	$23(a0),d0
		beq.s	loc_229D6
		bclr	#7,2(a2,d0)
loc_229D6:
		and.b	#$F,$28(a0)
loc_229DC:
		moveq	#0,d0
		move.b	$28(a0),d0
		add.w	d0,d0
		move.w	loc_22A38(pc,d0),d1
		jsr	loc_22A38(pc,d1)
		moveq	#0,d1
		move.b	$19(a0),d1
		add.w	#$B,d1
		moveq	#0,d2
		move.b	$16(a0),d2
		move.w	d2,d3
		addq.w	#1,d3
		move.w	8(a0),d4
		bsr	loc_22D02
		move.w	$34(a0),d0
		and.w	#$FF80,d0
		sub.w	($FFFFF7DA).w,d0
		cmp.w	#$280,d0
		bhi.s	loc_22A20
		jmp	displaySprite	
loc_22A20:
		lea	($FFFFFC00).w,a2
		moveq	#0,d0
		move.b	$23(a0),d0
		beq.s	loc_22A32
		bclr	#7,2(a2,d0)
loc_22A32:
		jmp	deleteObject	
loc_22A38:
		dc.w	loc_22A48-loc_22A38
		dc.w	loc_22A5E-loc_22A38
		dc.w	loc_22AEA-loc_22A38
		dc.w	loc_22B46-loc_22A38
		dc.w	loc_22BEA-loc_22A38
		dc.w	loc_22BF8-loc_22A38
		dc.w	loc_22A4A-loc_22A38
		dc.w	loc_22ACA-loc_22A38
loc_22A48:
		rts
loc_22A4A:
		tst.b	$38(a0)
		bne.s	loc_22A5C
		subq.w	#1,$36(a0)
		bne.s	loc_22A8A
		move.b	#1,$38(a0)
loc_22A5C:
		bra.s	loc_22A7C
loc_22A5E:
		tst.b	$38(a0)
		bne.s	loc_22A7C
		lea	($FFFFF7E0).w,a2
		moveq	#0,d0
		move.b	$3E(a0),d0
		btst	#0,0(a2,d0)
		beq.s	loc_22A8A
		move.b	#1,$38(a0)
loc_22A7C:
		move.w	$3C(a0),d0
		cmp.w	$3A(a0),d0
		beq.s	loc_22AA8
		addq.w	#2,$3A(a0)
loc_22A8A:
		move.w	$3A(a0),d0
		btst	#0,$22(a0)
		beq.s	loc_22A9C
		neg.w	d0
		add.w	#$80,d0
loc_22A9C:
		move.w	$34(a0),d1
		sub.w	d0,d1
		move.w	d1,8(a0)
		rts
loc_22AA8:
		addq.b	#1,$28(a0)
		move.w	#$B4,$36(a0)
		clr.b	$38(a0)
		lea	($FFFFFC00).w,a2
		moveq	#0,d0
		move.b	$23(a0),d0
		beq.s	loc_22A8A
		bset	#0,2(a2,d0)
		bra.s	loc_22A8A
loc_22ACA:
		tst.b	$38(a0)
		bne.s	loc_22AE8
		lea	($FFFFF7E0).w,a2
		moveq	#0,d0
		move.b	$3E(a0),d0
		btst	#0,0(a2,d0)
		beq.s	loc_22B06
		move.b	#1,$38(a0)
loc_22AE8:
		bra.s	loc_22AFC
loc_22AEA:
		tst.b	$38(a0)
		bne.s	loc_22AFC
		subq.w	#1,$36(a0)
		bne.s	loc_22B06
		move.b	#1,$38(a0)
loc_22AFC:
		tst.w	$3A(a0)
		beq.s	loc_22B24
		subq.w	#2,$3A(a0)
loc_22B06:
		move.w	$3A(a0),d0
		btst	#0,$22(a0)
		beq.s	loc_22B18
		neg.w	d0
		add.w	#$80,d0
loc_22B18:
		move.w	$34(a0),d1
		sub.w	d0,d1
		move.w	d1,8(a0)
		rts
loc_22B24:
		subq.b	#1,$28(a0)
		move.w	#$B4,$36(a0)
		clr.b	$38(a0)
		lea	($FFFFFC00).w,a2
		moveq	#0,d0
		move.b	$23(a0),d0
		beq.s	loc_22B06
		bclr	#0,2(a2,d0)
		bra.s	loc_22B06
loc_22B46:
		move.w	$34(a0),d4
		move.w	d4,d5
		btst	#0,$22(a0)
		bne.s	loc_22B5E
		sub.w	#$20,d4
		add.w	#$60,d5
		bra.s	loc_22B66
loc_22B5E:
		sub.w	#$A0,d4
		sub.w	#$20,d5
loc_22B66:
		move.w	$C(a0),d2
		move.w	d2,d3
		sub.w	#$10,d2
		add.w	#$40,d3
		moveq	#0,d1
		move.w	($FFFFB008).w,d0
		cmp.w	d4,d0
		bcs.s	loc_22B90
		cmp.w	d5,d0
		bcc.s	loc_22B90
		move.w	($FFFFB00C).w,d0
		cmp.w	d2,d0
		bcs.s	loc_22B90
		cmp.w	d3,d0
		bcc.s	loc_22B90
		moveq	#1,d1
loc_22B90:
		move.w	($FFFFB048).w,d0
		cmp.w	d4,d0
		bcs.s	loc_22BAA
		cmp.w	d5,d0
		bcc.s	loc_22BAA
		move.w	($FFFFB04C).w,d0
		cmp.w	d2,d0
		bcs.s	loc_22BAA
		cmp.w	d3,d0
		bcc.s	loc_22BAA
		moveq	#1,d1
loc_22BAA:
		tst.b	d1
		beq.s	loc_22BC0
		move.w	$3C(a0),d0
		cmp.w	$3A(a0),d0
		beq.s	loc_22BE8
		add.w	#$10,$3A(a0)
		bra.s	loc_22BCC
loc_22BC0:
		tst.w	$3A(a0)
		beq.s	loc_22BCC
		sub.w	#$10,$3A(a0)
loc_22BCC:
		move.w	$3A(a0),d0
		btst	#0,$22(a0)
		beq.s	loc_22BDE
		neg.w	d0
		add.w	#$40,d0
loc_22BDE:
		move.w	$34(a0),d1
		sub.w	d0,d1
		move.w	d1,8(a0)
loc_22BE8:
		rts
loc_22BEA:
		btst	#3,$22(a0)
		beq.s	loc_22BF6
		addq.b	#1,$28(a0)
loc_22BF6:
		rts
loc_22BF8:
		tst.b	$38(a0)
		bne.s	loc_22C32
		addq.w	#2,8(a0)
		cmp.b	#5,($FFFFFE10).w
		bne.s	loc_22C22
		cmp.w	#$1CC0,8(a0)
		beq.s	loc_22C1A
		cmp.w	#$2940,8(a0)
		bne.s	loc_22C44
loc_22C1A:
		move.b	#0,$28(a0)
		bra.s	loc_22C44
loc_22C22:
		cmp.w	#$1BC0,8(a0)
		bne.s	loc_22C44
		move.b	#1,$38(a0)
		bra.s	loc_22C44
loc_22C32:
		subq.w	#2,8(a0)
		cmp.w	#$1880,8(a0)
		bne.s	loc_22C44
		move.b	#0,$38(a0)
loc_22C44:
		move.w	8(a0),$34(a0)
		move.w	8(a0),($FFFFF7B0).w
		rts
loc_22C52:
		move.l	$3C(a0),a1
		move.w	$3A(a1),d0
loc_22C5A:	
		and.w	#7,d0	
		move.b	loc_22C68(pc,d0),$1A(a0)
		bra	loc_22CF0
loc_22C68:
		dc.b	0,0,2,2,2,1,1,$1
loc_22C70:	
		move.w	($FFFFF7B0).w,d0
		bra.s	loc_22C5A	
;-------------------------------------------------------------------------------
Mz_Platform_Mappings: 
		dc.w	Platform_Over_Gear_Mappings-Mz_Platform_Mappings 
		dc.w	automatic_Platform_Mappings-Mz_Platform_Mappings 
		dc.w	Platform_Over_Gear_Mappings-Mz_Platform_Mappings 
		dc.w	Platform_Over_Gear_Mappings-Mz_Platform_Mappings 
Platform_Over_Gear_Mappings: 
		dc.w	$4
		dc.l	$F40E004B,$25FFC0,$F40E004B,$25FFE0
		dc.l	$F40E004B,$250000,$F40E004B,$250020
Automatic_Platform_Mappings: 
		dc.w	$2
		dc.l	$F40E0039,$1CFFE0,$F40E0839,$81C0000
;-------------------------------------------------------------------------------
Mini_Gear_Mappings: 
		dc.w	loc_22CB8-Mini_Gear_Mappings
		dc.w	loc_22CCA-Mini_Gear_Mappings
		dc.w	loc_22CDC-Mini_Gear_Mappings	
loc_22CB8:
		dc.w	$2
		dc.l	$F4060000,$FFF0,$F4060800,$8000000
loc_22CCA:
		dc.w	$2
		dc.l	$F4060006,$3FFF0,$F4061806,$18030000
loc_22CDC:
		dc.w	$2
		dc.l	$F4061006,$1003FFF0,$F4060806,$8030000	
;=============================================================================== 
; Object 0x65 - Metropolis - Platform / Platform Over Gears
; [ End ]	
;===============================================================================	