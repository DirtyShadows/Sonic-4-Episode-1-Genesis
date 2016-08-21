;===============================================================================
; Object 0x88 -
; [ Begin ]
;=============================================================================== 
loc_30EE2: 
		move.l	$38(a0),a1
		move.w	8(a1),8(a0)
		move.w	$C(a1),$C(a0)
		move.b	1(a1),1(a0)
		move.b	$22(a1),$22(a0)
		move.b	$1C(a1),$1C(a0)
		move.b	$18(a1),d0
		subq.b	#1,d0
		move.b	d0,$18(a0)
		cmp.b	#3,$1C(a0)
		bcc.s	loc_30F28
		lea	(loc_311FA),a1
		bsr	loc_3131E
		bsr	loc_30F36
		bra	loc_31318
loc_30F28:
		rts	
loc_30F2A:
		dc.l	$FF55C0,$FF5C60,$FF63C0
loc_30F36:
		moveq	#0,d0
		move.b	$1A(a0),d0
		cmp.b	($FFFFF7DF).w,d0
		beq.s	loc_30F8E
		move.b	d0,($FFFFF7DF).w
		moveq	#0,d6
		cmp.b	#7,d0
		blt.s	loc_30F58
		addq.w	#4,d6
		cmp.b	#$E,d0
		blt.s	loc_30F58
		addq.w	#4,d6
loc_30F58:
		move.l	loc_30F2A(pc,d6),d6
		add.w	#$24,d0
		add.w	d0,d0
		lea	(loc_30AE4),a2
		adda.w	0(a2,d0),a2
		move.w	#$62C0,d2
		moveq	#0,d1
		move.w	(a2)+,d1
		move.w	d1,d3
		lsr.w	#8,d3
		and.w	#$F0,d3
		add.w	#$10,d3
		and.w	#$FFF,d1
		lsl.w	#1,d1
		add.l	d6,d1
		jsr	dMA_68KtoVRAM	
loc_30F8E:
		rts
;-------------------------------------------------------------------------------	
Obj_0x10_AnimateData: 
		dc.w	loc_30F98-Obj_0x10_AnimateData
		dc.w	loc_30F9E-Obj_0x10_AnimateData
		dc.w	loc_30FA8-Obj_0x10_AnimateData
		dc.w	loc_30FAE-Obj_0x10_AnimateData
loc_30F98:
		dc.b	3,0,1,2,3,$FF
loc_30F9E:
		dc.b	3,4,5,6,7,8,9,$A,$B,$FF
loc_30FA8:
		dc.b	3,$C,$D,$E,$F,$FF
loc_30FAE:
		dc.b	1,$10,$11,$FF
;-------------------------------------------------------------------------------
loc_30FB2:
		dc.w	loc_30FD6-loc_30FB2
		dc.w	loc_30FF0-loc_30FB2
		dc.w	loc_31012-loc_30FB2
		dc.w	loc_31034-loc_30FB2
		dc.w	loc_3105E-loc_30FB2
		dc.w	loc_31078-loc_30FB2
		dc.w	loc_3109A-loc_30FB2
		dc.w	loc_310C4-loc_30FB2
		dc.w	loc_310E6-loc_30FB2
		dc.w	loc_31108-loc_30FB2
		dc.w	loc_31132-loc_30FB2
		dc.w	loc_3115C-loc_30FB2
		dc.w	loc_3117E-loc_30FB2
		dc.w	loc_31190-loc_30FB2
		dc.w	loc_311AA-loc_30FB2
		dc.w	loc_311BC-loc_30FB2
		dc.w	loc_311D6-loc_30FB2
		dc.w	loc_311E8-loc_30FB2
loc_30FD6:
		dc.w	$3
		dc.l	$E80A8000,$8000FFF4,$98009,$8004FFF4
		dc.l	$1000800F,$8007FFF4
loc_30FF0:
		dc.w	$4
		dc.l	$E80C8000,$8000FFF0,$F0098004,$8002FFF3
		dc.l	$C800A,$8005FFF0,$805800E,$8007FFF8
loc_31012:
		dc.w	$4
		dc.l	$E80C8000,$8000FFF0,$F0098004,$8002FFF3
		dc.l	$C800A,$8005FFF0,$805800E,$8007FFF8
loc_31034:
		dc.w	$5
		dc.l	$E80C8800,$8800FFF0,$F0098804,$8802FFF5
		dc.l	$C800A,$8005FFF0,$805800E,$8007FFF8
		dc.l	$10008012,$80090008
loc_3105E:
		dc.w	$3
		dc.l	$E1058000,$80000000,$F10D8004,$8002FFF8
		dc.l	$10D800C,$8006FFEC
loc_31078:
		dc.w	$4
		dc.l	$E1018000,$80000000,$F10D8002,$8001FFF7
		dc.l	$10A800A,$8005FFEF,$1018013,$80090007
loc_3109A:
		dc.w	$5
		dc.l	$E8008000,$80000000,$EC088001,$8000FFF8
		dc.l	$F40D8004,$8002FFF0,$F400800C,$80060010
		dc.l	$409800D,$8006FFF0
loc_310C4:
		dc.w	$4
		dc.l	$E9008000,$80000001,$F10F8001,$8000FFF0
		dc.l	$F9008011,$80080010,$11048012,$8009FFF0
loc_310E6:
		dc.w	$4
		dc.l	$E2058000,$80000000,$F20C8004,$8002FFF8
		dc.l	$FA078008,$8004FFF0,$FA098010,$80080000
loc_31108:
		dc.w	$5
		dc.l	$E8008000,$80000000,$F00D8001,$8000FFF0
		dc.l	$F8008009,$80040010,$D800A,$8005FFF0
		dc.l	$10048012,$8009FFF0
loc_31132:
		dc.w	$5
		dc.l	$E8008000,$80000000,$F00E8001,$8000FFF0
		dc.l	$F800800D,$80060010,$80C800E,$8007FFE8
		dc.l	$10048012,$8009FFF0
loc_3115C:
		dc.w	$4
		dc.l	$E8008000,$80000000,$F00E8001,$8000FFF0
		dc.l	$F800800D,$80060010,$80D800E,$8007FFE8
loc_3117E:
		dc.w	$2
		dc.l	$F80A8000,$8000FFEC,$F0078009,$80040004
loc_31190:
		dc.w	$3
		dc.l	$F8058000,$8000FFEC,$8008004,$8002FFF4
		dc.l	$F00B8005,$8002FFFC
loc_311AA:
		dc.w	$2
		dc.l	$F7018000,$8000FFEC,$F00F8002,$8001FFF4
loc_311BC:
		dc.w	$3
		dc.l	$F8028000,$8000FFEC,$F0028003,$8001FFF4
		dc.l	$F00B8006,$8003FFFC
loc_311D6:
		dc.w	$2
		dc.l	$F0078000,$8000FFF0,$F0078800,$88000000
loc_311E8:
		dc.w	$2
		dc.l	$F0078000,$8000FFF0,$F0078800,$88000000	
;-------------------------------------------------------------------------------
loc_311FA:	
		dc.w	loc_31200-loc_311FA
		dc.w	loc_31209-loc_311FA
		dc.w	loc_31212-loc_311FA
loc_31200:
		dc.b	3,0,1,2,3,4,5,6,$FF
loc_31209:
		dc.b	3,7,8,9,$A,$B,$C,$D,$FF
loc_31212:
		dc.b	3,$E,$F,$10,$11,$12,$13,$14,$FF,$0	
;-------------------------------------------------------------------------------
loc_3121C:
		dc.w	loc_31246-loc_3121C
		dc.w	loc_31250-loc_3121C
		dc.w	loc_3125A-loc_3121C
		dc.w	loc_31264-loc_3121C
		dc.w	loc_3126E-loc_3121C
		dc.w	loc_31278-loc_3121C
		dc.w	loc_31282-loc_3121C
		dc.w	loc_3128C-loc_3121C
		dc.w	loc_31296-loc_3121C
		dc.w	loc_312A0-loc_3121C
		dc.w	loc_312AA-loc_3121C
		dc.w	loc_312B4-loc_3121C
		dc.w	loc_312BE-loc_3121C
		dc.w	loc_312C8-loc_3121C
		dc.w	loc_312D2-loc_3121C
		dc.w	loc_312DC-loc_3121C
		dc.w	loc_312E6-loc_3121C
		dc.w	loc_312F0-loc_3121C
		dc.w	loc_312FA-loc_3121C
		dc.w	loc_31304-loc_3121C
		dc.w	loc_3130E-loc_3121C
loc_31246:
		dc.w	$1
		dc.l	$FA068000,$8000FFFA
loc_31250:
		dc.w	$1
		dc.l	$A8000,$8000FFF8
loc_3125A:
		dc.w	$1
		dc.l	$8098000,$8000FFF8
loc_31264:
		dc.w	$1
		dc.l	$FF068000,$8000FFF7
loc_3126E:
		dc.w	$1
		dc.l	$F7078000,$8000FFF5
loc_31278:
		dc.w	$1
		dc.l	$F70A8000,$8000FFF0
loc_31282:
		dc.w	$1
		dc.l	$F70A8000,$8000FFF0
loc_3128C:
		dc.w	$1
		dc.l	$A8000,$8000FFF4
loc_31296:
		dc.w	$1
		dc.l	$8098000,$8000FFF3
loc_312A0:
		dc.w	$1
		dc.l	$68000,$8000FFF1
loc_312AA:
		dc.w	$1
		dc.l	$F8078000,$8000FFF4
loc_312B4:
		dc.w	$1
		dc.l	$F80B8000,$8000FFF2
loc_312BE:
		dc.w	$1
		dc.l	$F80A8000,$8000FFF3
loc_312C8:
		dc.w	$1
		dc.l	$F80A8000,$8000FFF4
loc_312D2:
		dc.w	$1
		dc.l	$FC098000,$8000FFEA
loc_312DC:
		dc.w	$1
		dc.l	$F80A8000,$8000FFED
loc_312E6:
		dc.w	$1
		dc.l	$F8068000,$8000FFED
loc_312F0:
		dc.w	$1
		dc.l	$F7098000,$8000FFED
loc_312FA:
		dc.w	$1
		dc.l	$F50D8000,$8000FFE5
loc_31304:
		dc.w	$1
		dc.l	$F00A8000,$8000FFED
loc_3130E:
		dc.w	$1
		dc.l	$F00A8000,$8000FFED	
;===============================================================================
; Object 0x88 - 
; [ End ]
;===============================================================================