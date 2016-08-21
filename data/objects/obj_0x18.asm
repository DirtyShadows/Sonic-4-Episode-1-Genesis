;=============================================================================== 
; Object 0x18 - Platforms 
; [ Begin ]
;===============================================================================	
loc_E1E0:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_E1EE(pc,d0),d1
		jmp	loc_E1EE(pc,d1)
loc_E1EE:	
		dc.w	loc_E202-loc_E1EE
		dc.w	loc_E29E-loc_E1EE
		dc.w	loc_E304-loc_E1EE
		dc.w	loc_E2DC-loc_E1EE
		dc.w	loc_E308-loc_E1EE
loc_E1F8:
		dc.b	$20,0,$20,1,$20,2,$40,3,$30,$4
loc_E202:
		addq.b	#2,$24(a0)
		moveq	#0,d0
		move.b	$28(a0),d0
		lsr.w	#3,d0
		and.w	#$E,d0
		lea	loc_E1F8(pc,d0),a2
		move.b	(a2)+,$19(a0)
		move.b	(a2)+,$1A(a0)
		move.l	#GHz_Platform_Mappings,4(a0) 
		move.w	#$4000,2(a0)
		cmp.b	#$F,($FFFFFE10).w
		bne.s	loc_E242
		move.l	#NGHz_Platform_Mappings,4(a0) 
		move.w	#$4000,2(a0)
loc_E242:
		bsr	ModifySpriteAttr_2P	
		move.b	#4,1(a0)
		move.b	#4,$18(a0)
		move.w	$C(a0),$2C(a0)
		move.w	$C(a0),$34(a0)
		move.w	8(a0),$32(a0)
		move.w	#$80,$26(a0)
		tst.b	$28(a0)
		bpl.s	loc_E298
		addq.b	#6,$24(a0)
		and.b	#$F,$28(a0)
		move.b	#$30,$16(a0)
		cmp.b	#$F,($FFFFFE10).w
		bne.s	loc_E28E
		move.b	#$28,$16(a0)
loc_E28E:
		bset	#4,1(a0)
		bra	loc_E308
loc_E298:
		and.b	#$F,$28(a0)
loc_E29E:
		move.b	$22(a0),d0
		and.b	#$18,d0
		bne.s	loc_E2B4
		tst.b	$38(a0)
		beq.s	loc_E2C0
		subq.b	#4,$38(a0)
		bra.s	loc_E2C0
loc_E2B4:
		cmp.b	#$40,$38(a0)
		beq.s	loc_E2C0
		addq.b	#4,$38(a0)
loc_E2C0:
		move.w	8(a0),-(sp)
		bsr	loc_E36C
		bsr	loc_E352
		moveq	#0,d1
		move.b	$19(a0),d1
		moveq	#8,d3
		move.w	(sp)+,d4
		bsr	loc_15C6A
		bra.s	loc_E2E4
loc_E2DC:
		bsr	loc_E36C
		bsr	loc_E352
loc_E2E4:
		tst.w	($FFFFFFD8).w
		beq.s	loc_E2EE
		bra	displaySprite	
loc_E2EE:
		move.w	$32(a0),d0
		and.w	#$FF80,d0
		sub.w	($FFFFF7DA).w,d0
		cmp.w	#$280,d0
		bhi.s	loc_E304
		bra	displaySprite	
loc_E304:
		bra	deleteObject	
loc_E308:
		move.b	$22(a0),d0
		and.b	#$18,d0
		bne.s	loc_E31E
		tst.b	$38(a0)
		beq.s	loc_E32A
		subq.b	#4,$38(a0)
		bra.s	loc_E32A
loc_E31E:
		cmp.b	#$40,$38(a0)
		beq.s	loc_E32A
		addq.b	#4,$38(a0)
loc_E32A:
		move.w	8(a0),-(sp)
		bsr	loc_E36C
		bsr	loc_E352
		moveq	#0,d1
		move.b	$19(a0),d1
		add.w	#$B,d1
		moveq	#0,d2
		move.b	$16(a0),d2
		move.w	d2,d3
		addq.w	#1,d3
		move.w	(sp)+,d4
		bsr	SolidObject	
		bra.s	loc_E2E4
loc_E352:
		move.b	$38(a0),d0
		bsr	loc_E5DC
		move.w	#$400,d1
		muls.w	d1,d0
		swap.w	d0
		add.w	$2C(a0),d0
		move.w	d0,$C(a0)
		rts
loc_E36C:
		moveq	#0,d0
		move.b	$28(a0),d0
		and.w	#$F,d0
		add.w	d0,d0
		move.w	loc_E380(pc,d0),d1
		jmp	loc_E380(pc,d1)
loc_E380:
		dc.w	loc_E39C-loc_E380
		dc.w	loc_E3AE-loc_E380
		dc.w	loc_E3F4-loc_E380
		dc.w	loc_E40C-loc_E380
		dc.w	loc_E436-loc_E380
		dc.w	loc_E39E-loc_E380
		dc.w	loc_E3E4-loc_E380
		dc.w	loc_E4AC-loc_E380
		dc.w	loc_E4D8-loc_E380
		dc.w	loc_E39C-loc_E380
		dc.w	loc_E4F0-loc_E380
		dc.w	loc_E50A-loc_E380
		dc.w	loc_E3D6-loc_E380
		dc.w	loc_E3C6-loc_E380
loc_E39C:
		rts
loc_E39E:
		move.w	$32(a0),d0
		move.b	$26(a0),d1
		neg.b	d1
		add.b	#$40,d1
		bra.s	loc_E3BA
loc_E3AE:
		move.w	$32(a0),d0
		move.b	$26(a0),d1
		sub.b	#$40,d1
loc_E3BA:
		ext.w	d1
		add.w	d1,d0
		move.w	d0,8(a0)
		bra	loc_E522
loc_E3C6:
		move.w	$34(a0),d0
		move.b	($FFFFFE6C).w,d1
		neg.b	d1
		add.b	#$30,d1
		bra.s	loc_E400
loc_E3D6:
		move.w	$34(a0),d0
		move.b	($FFFFFE6C).w,d1
		sub.b	#$30,d1
		bra.s	loc_E400
loc_E3E4:
		move.w	$34(a0),d0
		move.b	$26(a0),d1
		neg.b	d1
		add.b	#$40,d1
		bra.s	loc_E400
loc_E3F4:
		move.w	$34(a0),d0
		move.b	$26(a0),d1
		sub.b	#$40,d1
loc_E400:
		ext.w	d1
		add.w	d1,d0
		move.w	d0,$2C(a0)
		bra	loc_E522
loc_E40C:
		tst.w	$3A(a0)
		bne.s	loc_E424
		move.b	$22(a0),d0
		and.b	#$18,d0
		beq.s	loc_E422
		move.w	#$1E,$3A(a0)
loc_E422:
		rts
loc_E424:
		subq.w	#1,$3A(a0)
		bne.s	loc_E422
		move.w	#$20,$3A(a0)
		addq.b	#1,$28(a0)
		rts
loc_E436:
		tst.w	$3A(a0)
		beq.s	loc_E464
		subq.w	#1,$3A(a0)
		bne.s	loc_E464
		bclr	#3,$22(a0)
		beq.s	loc_E450
		lea	($FFFFB000).w,a1
		bsr.s	loc_E492
loc_E450:
		bclr	#4,$22(a0)
		beq.s	loc_E45E
		lea	($FFFFB040).w,a1
		bsr.s	loc_E492
loc_E45E:
		move.b	#6,$24(a0)
loc_E464:
		move.l	$2C(a0),d3
		move.w	$12(a0),d0
		ext.l	d0
		asl.l	#8,d0
		add.l	d0,d3
		move.l	d3,$2C(a0)
		add.w	#$38,$12(a0)
		move.w	($FFFFEECE).w,d0
		add.w	#$120,d0
		cmp.w	$2C(a0),d0
		bcc.s	loc_E490
		move.b	#4,$24(a0)
loc_E490:
		rts
loc_E492:
		bset	#1,$22(a1)
		bclr	#3,$22(a1)
		move.b	#2,$24(a1)
		move.w	$12(a0),$12(a1)
		rts
loc_E4AC:
		tst.w	$3A(a0)
		bne.s	loc_E4CC
		lea	($FFFFF7E0).w,a2
		moveq	#0,d0
		move.b	$28(a0),d0
		lsr.w	#4,d0
		tst.b	0(a2,d0)
		beq.s	loc_E4CA
		move.w	#$3C,$3A(a0)
loc_E4CA:
		rts
loc_E4CC:
		subq.w	#1,$3A(a0)
		bne.s	loc_E4CA
		addq.b	#1,$28(a0)
		rts
loc_E4D8:
		subq.w	#2,$2C(a0)
		move.w	$34(a0),d0
		sub.w	#$200,d0
		cmp.w	$2C(a0),d0
		bne.s	loc_E4EE
		clr.b	$28(a0)
loc_E4EE:
		rts
loc_E4F0:
		move.w	$34(a0),d0
		move.b	$26(a0),d1
		sub.b	#$40,d1
		ext.w	d1
		asr.w	#1,d1
		add.w	d1,d0
		move.w	d0,$2C(a0)
		bra	loc_E522
loc_E50A:
		move.w	$34(a0),d0
		move.b	$26(a0),d1
		neg.b	d1
		add.b	#$40,d1
		ext.w	d1
		asr.w	#1,d1
		add.w	d1,d0
		move.w	d0,$2C(a0)
loc_E522:
		move.b	($FFFFFE78).w,$26(a0)
		rts
;-------------------------------------------------------------------------------	
GHz_Platform_Mappings: 
		dc.w	loc_E52E-GHz_Platform_Mappings
		dc.w	loc_E540-GHz_Platform_Mappings
loc_E52E:
		dc.w	$2
		dc.l	$F40F0056,$2BFFE0,$F40F0856,$82B0000
loc_E540:
		dc.w	$8
		dc.l	$CC07000A,$5FFE0,$CC0D0012,$9FFF0
		dc.l	$DC0D001A,$DFFF0,$CC070022,$110010
		dc.l	$EC0F002A,$15FFE0,$EC0F082A,$8150000
		dc.l	$C0F003A,$1DFFE0,$C0F083A,$81D0000 
;-------------------------------------------------------------------------------	
NGHz_Platform_Mappings: 
		dc.w	loc_E586-NGHz_Platform_Mappings
		dc.w	loc_E5A8-NGHz_Platform_Mappings
loc_E586:
		dc.w	$4
		dc.l	$F00E0001,$FFE0,$F00E0801,$8000000
		dc.l	$80E002D,$16FFE0,$80E0039,$1C0000
loc_E5A8:
		dc.w	$6
		dc.l	$D00E0001,$FFE0,$D00E0801,$8000000
		dc.l	$E80F000D,$6FFE0,$E80F001D,$E0000
		dc.l	$80F000D,$6FFE0,$80F001D,$E0000	
;=============================================================================== 
; Object 0x18 - Platforms 
; [ End ]
;===============================================================================	
