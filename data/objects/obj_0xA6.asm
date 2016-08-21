;===============================================================================
; Object 0xA6 - Lander badnick - Chemical Plant
; [ Begin ]
;=============================================================================== 
loc_34CF8:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_34D06(pc,d0),d1
		jmp	loc_34D06(pc,d1)
loc_34D06:
		dc.w	loc_34D0C-loc_34D06
		dc.w	loc_34D1E-loc_34D06
		dc.w	loc_34D70-loc_34D06
loc_34D0C:
		bsr	EnemySettings	
		move.w	#$FFC0,$12(a0)
		move.w	#$80,$2A(a0)
		rts
loc_34D1E:
		tst.b	$2B(a0)
		beq.s	loc_34D2C
		subq.b	#1,$2B(a0)
		bra	loc_34D3A
loc_34D2C:
		bsr	loc_32866
		add.w	#$60,d2
		cmp.w	#$C0,d2
		bcs.s	loc_34D5C
loc_34D3A:
		subq.b	#1,$2A(a0)
		bne.s	loc_34D4A
		move.w	#$80,$2A(a0)
		neg.w	$12(a0)
loc_34D4A:
		bsr	loc_3A904
		lea	(Vertical_Lander_Animate_Data),a1 
		bsr	loc_3A8BC
		bra	loc_3A8A4
loc_34D5C:
		addq.b	#2,$24(a0)
		move.b	#$28,$2B(a0)
		move.b	#5,$1A(a0)
		bra	loc_3A8A4
loc_34D70:
		subq.b	#1,$2B(a0)
		bmi.s	loc_34D86
		cmp.b	#$14,$2B(a0)
		bne.s	loc_34D82
		bsr	loc_34DE0
loc_34D82:
		bra	loc_3A8A4
loc_34D86:
		subq.b	#2,$24(a0)
		move.b	#$40,$2B(a0)
		bra	loc_3A8A4
;-------------------------------------------------------------------------------
loc_34D94:
		bsr	loc_3A8B6
		bne.s	loc_34DDE
		move.b	#$98,0(a1)
		move.b	#6,$1A(a1)
		move.b	#$34,$28(a1)
		move.w	8(a0),8(a1)
		move.w	$C(a0),$C(a1)
		move.w	#$FD00,$12(a1)
		move.w	#$100,d1
		lea	($FFFFB000).w,a2
		move.w	8(a0),d0
		cmp.w	8(a2),d0
		bcs.s	loc_34DD2
		neg.w	d1
loc_34DD2:
		move.w	d1,$10(a1)
		lea	loc_3392C(pc),a2
		move.l	a2,$2A(a1)
loc_34DDE:
		rts	
;-------------------------------------------------------------------------------	
loc_34DE0:
		bsr	loc_3A8B6
		bne.s	loc_34E1E
		move.b	#$98,0(a1)
		move.b	#6,$1A(a1)
		move.b	#$34,$28(a1)
		move.w	8(a0),8(a1)
		move.w	$C(a0),$C(a1)
		move.w	#$300,d1
		btst	#0,1(a0)
		beq.s	loc_34E12
		neg.w	d1
loc_34E12:
		move.w	d1,$10(a1)
		lea	loc_3392C(pc),a2
		move.l	a2,$2A(a1)
loc_34E1E:
		rts	
;-------------------------------------------------------------------------------	
Obj_0xA5_Ptr: 
		dc.l	Lander_Mappings	
		dc.w	$252D
		dc.b	4,4,8,$B
;-------------------------------------------------------------------------------	
Horizontal_Lander_Animate_Data: 
		dc.w	loc_34E2C-Horizontal_Lander_Animate_Data
loc_34E2C:
		dc.b	9,0,1,$FF	
;-------------------------------------------------------------------------------
Vertical_Lander_Animate_Data: 
		dc.w	loc_34E32-Vertical_Lander_Animate_Data
loc_34E32:
		dc.b	9,3,4,$FF
;------------------------------------------------------------------------------- 
Lander_Animate_Data: 
		dc.w	loc_34E38-Lander_Animate_Data
loc_34E38:
		dc.b	3,6,7,$FF 
;-------------------------------------------------------------------------------	
Lander_Mappings: 
		dc.w	loc_34E4C-Lander_Mappings
		dc.w	loc_34E6E-Lander_Mappings
		dc.w	loc_34E90-Lander_Mappings
		dc.w	loc_34EB2-Lander_Mappings
		dc.w	loc_34ED4-Lander_Mappings
		dc.w	loc_34EF6-Lander_Mappings
		dc.w	loc_34F18-Lander_Mappings
		dc.w	loc_34F22-Lander_Mappings
loc_34E4C:
		dc.w	$4
		dc.l	$F4000000,$FFF8,$FC090001,$FFE8
		dc.l	$F4000800,$8000000,$FC090801,$8000000
loc_34E6E:
		dc.w	$4
		dc.l	$F4000000,$FFF8,$FC090007,$3FFE8
		dc.l	$F4000800,$8000000,$FC090807,$8030000
loc_34E90:
		dc.w	$4
		dc.l	$F404000D,$6FFF0,$FC090001,$FFE8
		dc.l	$F404080D,$8060000,$FC090801,$8000000
loc_34EB2:
		dc.w	$4
		dc.l	$E806000F,$7FFF4,$F8000015,$A0004
		dc.l	$6100F,$1007FFF4,$1015,$100A0004
loc_34ED4:
		dc.w	$4
		dc.l	$E8060016,$BFFF4,$F8000015,$A0004
		dc.l	$61016,$100BFFF4,$1015,$100A0004
loc_34EF6:
		dc.w	$4
		dc.l	$E806000F,$7FFF4,$F001001C,$E0004
		dc.l	$6100F,$1007FFF4,$1101C,$100E0004
loc_34F18:
		dc.w	$1
		dc.l	$FC00001E,$FFFFC
loc_34F22:
		dc.w	$1
		dc.l	$FC00001F,$FFFFC	
			
;===============================================================================
; Object 0xA6 - Lander badnick - Chemical Plant
; [ End ]
;===============================================================================