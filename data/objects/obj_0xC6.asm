;===============================================================================
; Object 0xC6 - Robotnik running after you destroy Metal Sonic - Death Egg
; [ Begin ]
;===============================================================================	
loc_38DB4:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_38DC2(pc,d0),d1
		jmp	loc_38DC2(pc,d1)
loc_38DC2:
		dc.w	loc_38DCA-loc_38DC2
		dc.w	loc_38DDC-loc_38DC2
		dc.w	loc_38F1A-loc_38DC2
		dc.w	loc_38F80-loc_38DC2
loc_38DCA:
		bsr	EnemySettings	
		move.b	$28(a0),d0
		sub.b	#$A4,d0
		move.b	d0,$24(a0)
		rts
loc_38DDC:
		moveq	#0,d0
		move.b	$25(a0),d0
		move.w	loc_38DEA(pc,d0),d1
		jmp	loc_38DEA(pc,d1)
loc_38DEA:
		dc.w	loc_38DF4-loc_38DEA
		dc.w	loc_38E16-loc_38DEA
		dc.w	loc_38E3C-loc_38DEA
		dc.w	loc_38E60-loc_38DEA
		dc.w	loc_38EDA-loc_38DEA
loc_38DF4:
		addq.b	#2,$25(a0)
		lea	(loc_38FB4),a2
		bsr	loc_32970
		move.w	#$3F8,8(a1)
		move.w	#$160,$C(a1)
		move.w	a0,($FFFFF660).w
		bra	loc_3A892
loc_38E16:
		bsr	loc_32866
		add.w	#$5C,d2
		cmp.w	#$B8,d2
		bcs.s	loc_38E28
		bra	loc_3A892
loc_38E28:
		addq.b	#2,$25(a0)
		move.w	#$18,$2A(a0)
		move.b	#1,$1A(a0)
		bra	loc_3A892
loc_38E3C:
		subq.w	#1,$2A(a0)
		bmi.s	loc_38E46
		bra	loc_3A892
loc_38E46:
		addq.b	#2,$25(a0)
		bset	#2,$22(a0)
		move.w	#$200,$10(a0)
		move.w	#$10,$2A(a0)
		bra	loc_3A892
loc_38E60:
		cmp.w	#$790,8(a0)
		bcc.s	loc_38EA4
		bsr	loc_32866
		add.w	#$50,d2
		cmp.w	#$A0,d2
		bcc.s	loc_38E82
		move.w	8(a1),d0
		add.w	#$50,d0
		move.w	d0,8(a0)
loc_38E82:
		subq.w	#1,$2A(a0)
		bpl.s	loc_38E92
		move.w	#$20,$2A(a0)
		bsr	loc_38EF0
loc_38E92:
		bsr	loc_3A904
		lea	(Robotnik_Running_Animate_Data),a1 
		bsr	loc_3A8BC
		bra	loc_3A892
loc_38EA4:
		move.b	#2,$1A(a0)
		clr.w	$10(a0)
		tst.b	1(a0)
		bpl.s	loc_38ED6
		addq.b	#2,$25(a0)
		move.w	#$80,$10(a0)
		move.w	#$FE00,$12(a0)
		move.b	#2,$1A(a0)
		move.w	#$50,$2A(a0)
		bset	#3,$22(a0)
loc_38ED6:
		bra	loc_3A892
loc_38EDA:
		subq.w	#1,$2A(a0)
		bmi	loc_3A898
		add.w	#$10,$12(a0)
		bsr	loc_3A904
		bra	loc_3A892
loc_38EF0:
		lea	(loc_38FB8),a2
		bsr	loc_32970
		move.b	#$AA,$28(a1)
		move.b	#5,$1A(a1)
		move.w	#$FF00,$10(a1)
		sub.w	#$18,$C(a1)
		move.w	#8,$2A(a1)
		rts
loc_38F1A:
		moveq	#0,d0
		move.b	$25(a0),d0
		move.w	loc_38F28(pc,d0),d1
		jmp	loc_38F28(pc,d1)
loc_38F28:
		dc.w	loc_38F2E-loc_38F28
		dc.w	loc_38F4A-loc_38F28
		dc.w	loc_38F5C-loc_38F28
loc_38F2E:
		move.w	$2C(a0),a1
		btst	#2,$22(a1)
		bne.s	loc_38F42
		bsr	loc_38F6A
		bra	loc_3A892
loc_38F42:
		addq.b	#2,$25(a0)
		bra	loc_3A892
loc_38F4A:
		bsr	loc_38F6A
		lea	(Robotnik_Running_Animate_Data_1),a1 
		bsr	loc_3A8BC
		bra	loc_3A892
loc_38F5C:
		lea	($FFFFB000).w,a1
		bclr	#5,$22(a1)
		bra	loc_3A898
loc_38F6A:
		move.w	8(a0),-(sp)
		move.w	#$13,d1
		move.w	#$20,d2
		move.w	#$20,d3
		move.w	(sp)+,d4
		bra	loc_3A8F8
loc_38F80:
		subq.w	#1,$2A(a0)
		bmi	loc_3A898
		add.w	#$10,$12(a0)
		bsr	loc_3A904
		bra	loc_3A8A4	
;-------------------------------------------------------------------------------
loc_38F96:
		dc.l	Robotnik_Running_Mappings 
		dc.w	$0
		dc.b	4,5,$18,$0	
;-------------------------------------------------------------------------------	
loc_38FA0:
		dc.l	Robotnik_Running_Automatic_Door 
		dc.w	$2328
		dc.b	4,1,8,$0	
;-------------------------------------------------------------------------------	
loc_38FAA:
		dc.l	Robotnik_Running_Mappings 
		dc.w	$0
		dc.b	4,5,4,$0	
;-------------------------------------------------------------------------------	
loc_38FB4:
		dc.w	$3E,$C6A8
loc_38FB8:
		dc.w	$3C,$C6AA
;-------------------------------------------------------------------------------
Robotnik_Running_Animate_Data: 
		dc.w	loc_38FC0-Robotnik_Running_Animate_Data
		dc.w	loc_38FC6-Robotnik_Running_Animate_Data
loc_38FC0:
		dc.b	5,2,3,4,$FF,$0
loc_38FC6:
		dc.b	5,6,7,$FF
;-------------------------------------------------------------------------------
Robotnik_Running_Animate_Data_1: 
		dc.w	loc_38FCC-Robotnik_Running_Animate_Data_1
loc_38FCC:
		dc.b	1,0,1,2,3,$FA	
;-------------------------------------------------------------------------------
Robotnik_Running_Mappings: 
		dc.w	loc_38FE2-Robotnik_Running_Mappings
		dc.w	loc_38FFC-Robotnik_Running_Mappings
		dc.w	loc_39016-Robotnik_Running_Mappings
		dc.w	loc_39040-Robotnik_Running_Mappings
		dc.w	loc_39062-Robotnik_Running_Mappings
		dc.w	loc_39084-Robotnik_Running_Mappings
		dc.w	loc_3908E-Robotnik_Running_Mappings
		dc.w	loc_390A8-Robotnik_Running_Mappings
loc_38FE2:
		dc.w	$3
		dc.l	$E60D0500,$280FFF0,$F60E0564,$2B2FFF0
		dc.l	$E0D0570,$2B8FFF0
loc_38FFC:
		dc.w	$3
		dc.l	$E60D0510,$288FFF0,$F60E0564,$2B2FFF0
		dc.l	$E0D0570,$2B8FFF0
loc_39016:
		dc.w	$5
		dc.l	$EC040518,$28CFFE0,$E40D051A,$28DFFF0
		dc.l	$F40E0522,$291FFF0,$401052E,$297FFE8
		dc.l	$4050530,$2980010
loc_39040:
		dc.w	$4
		dc.l	$EC040518,$28CFFE0,$E40D051A,$28DFFF0
		dc.l	$F40E0534,$29AFFF0,$C050540,$2A0FFF8
loc_39062:
		dc.w	$4
		dc.l	$EC040518,$28CFFE0,$E40E0544,$2A2FFF0
		dc.l	$FC0F0550,$2A8FFF0,$C010560,$2B00010
loc_39084:
		dc.w	$1
		dc.l	$FC040562,$2B1FFF8
loc_3908E:
		dc.w	$3
		dc.l	$E60D0508,$284FFF0,$F60E0564,$2B2FFF0
		dc.l	$E0D0570,$2B8FFF0
loc_390A8:
		dc.w	$3
		dc.l	$E70D0508,$284FFF0,$F70E0564,$2B2FFF0
		dc.l	$F0D0578,$2BCFFF0	
;-------------------------------------------------------------------------------
Robotnik_Running_Automatic_Door: 
		dc.w	loc_390CA-Robotnik_Running_Automatic_Door
		dc.w	loc_390EC-Robotnik_Running_Automatic_Door
		dc.w	loc_39106-Robotnik_Running_Automatic_Door
		dc.w	loc_39118-Robotnik_Running_Automatic_Door
loc_390CA:
		dc.w	$4
		dc.l	$E0050000,$FFF8,$F0050000,$FFF8
		dc.l	$50000,$FFF8,$10050000,$FFF8
loc_390EC:
		dc.w	$3
		dc.l	$E0050000,$FFF8,$F0050000,$FFF8
		dc.l	$50000,$FFF8
loc_39106:
		dc.w	$2
		dc.l	$E0050000,$FFF8,$F0050000,$FFF8
loc_39118:
		dc.w	$1
		dc.l	$E0050000,$FFF8	
;===============================================================================
; Object 0xC6 - Robotnik running after you destroy Metal Sonic - Death Egg
; [ End ]
;===============================================================================