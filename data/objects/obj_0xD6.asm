;===============================================================================
; Object 0xD6 -> Slot Machine Starter And Bonus Points
; [ Begin ]
;===============================================================================
loc_27708:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_27716(pc,d0),d1
		jmp	loc_27716(pc,d1)
loc_27716:
		dc.w	loc_2771A-loc_27716
		dc.w	loc_27742-loc_27716
loc_2771A:
		addq.b	#2,$24(a0)
		move.l	#Slot_Machine_Starter_Mappings,4(a0) 
		move.w	#$388,2(a0)
		bsr	loc_27E5A
		move.b	#4,1(a0)
		move.b	#$18,$19(a0)
		move.b	#1,$18(a0)
loc_27742:
		move.w	#$23,d1
		move.w	#$10,d2
		move.w	#$11,d3
		move.w	8(a0),d4
		lea	$30(a0),a2
		lea	($FFFFB000).w,a1
		moveq	#3,d6
		movem.l D1-D4,-(sp)
		bsr	loc_27784
		movem.l (sp)+,d1-D4
		lea	$34(a0),a2
		lea	($FFFFB040).w,a1
		moveq	#4,d6
		bsr	loc_27784
		lea	(Slot_Machine_Starter_Animate_Data),a1 
		bsr	loc_27E54
		bra	loc_27E4E
loc_27784:
		move.w	(a2),d0
		move.w	loc_2778E(pc,d0),d0
		jmp	loc_2778E(pc,d0)
loc_2778E:
		dc.w	loc_27794-loc_2778E
		dc.w	loc_277FA-loc_2778E
		dc.w	loc_2788C-loc_2778E
loc_27794:
		bsr	loc_27E60
		tst.w	d4
		bpl.s	loc_277F8
		move.w	8(a0),8(a1)
		move.w	$C(a0),$C(a1)
		move.w	#0,$10(a1)
		move.w	#0,$12(a1)
		move.w	#0,$14(a1)
		move.b	#$81,$2A(a1)
		bset	#2,$22(a1)
		move.b	#$E,$16(a1)
		move.b	#7,$17(a1)
		move.b	#2,$1C(a1)
		move.b	#1,$1C(a0)
		addq.w	#2,(a2)+
		move.w	#$78,(a2)
		tst.b	$28(a0)
		beq.s	loc_277F8
		cmp.b	#$18,($FFFFFF4E).w
		bne.s	loc_277F8
		move.b	#8,($FFFFFF4E).w
loc_277F8:
		rts
loc_277FA:
		tst.b	$28(a0)
		beq.s	loc_2781E
		cmp.b	#$18,($FFFFFF4E).w
		beq.s	loc_27824
		move.b	($FFFFFE0F).w,d0
		and.w	#$F,d0
		bne.s	loc_2781C
		move.w	#$C0,d0
		jsr	Play_Sfx	
loc_2781C:
		rts
loc_2781E:
		subq.w	#1,2(a2)
		bpl.s	loc_2784E
loc_27824:
		move.b	#0,$1C(a0)
		move.b	#0,$2A(a1)
		bclr	d6,$22(a0)
		bclr	#3,$22(a1)
		bset	#1,$22(a1)
		move.w	#$400,$12(a1)
		addq.w	#2,(a2)+
		move.w	#$3C,(a2)
		rts
loc_2784E:
		move.w	2(a2),d0
		and.w	#$F,d0
		bne.s	loc_2788A
		move.w	#$C0,d0
		jsr	Play_Sfx	
		moveq	#$A,d0
		move.w	a1,a3
		jsr	addPoints_1	
		bsr	loc_27E48
		bne.s	loc_2788A
		move.b	#$29,0(a1)
		move.w	8(a0),8(a1)
		move.w	$C(a0),$C(a1)
		move.b	#0,$1A(a1)
loc_2788A:
		rts
loc_2788C:
		subq.w	#1,2(a2)
		bpl.s	loc_27894
		clr.w	(a2)
loc_27894:
		rts
;-------------------------------------------------------------------------------
Slot_Machine_Starter_Animate_Data: 
		dc.w	loc_2789A-Slot_Machine_Starter_Animate_Data
		dc.w	loc_2789D-Slot_Machine_Starter_Animate_Data
loc_2789A:
		dc.b	$F,0,$FF
loc_2789D:
		dc.b	1,1,0,$FF,$0	
;-------------------------------------------------------------------------------	
Slot_Machine_Starter_Mappings: 
		dc.w	loc_278A6-Slot_Machine_Starter_Mappings
		dc.w	loc_278D8-Slot_Machine_Starter_Mappings
loc_278A6:
		dc.w	$6
		dc.l	$EC090000,$FFE8,$EC090800,$8000000
		dc.l	$FC090000,$FFE8,$FC090800,$8000000
		dc.l	$C090000,$FFE8,$C090800,$8000000
loc_278D8:
		dc.w	$6
		dc.l	$EC092006,$2003FFE8,$EC092806,$28030000
		dc.l	$FC092006,$2003FFE8,$FC092806,$28030000
		dc.l	$C092006,$2003FFE8,$C092806,$28030000	
;===============================================================================
; Object 0xD6 -> Slot Machine Starter And Bonus Points
; [ End ]
;===============================================================================
