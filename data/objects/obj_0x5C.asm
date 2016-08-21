;===============================================================================
; Object 0x5C - Masher -> Green Hill 
; [ Begin ]
;===============================================================================	
loc_29934:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_29946(pc,d0),d1
		jsr	loc_29946(pc,d1)
		bra	loc_29A1C
loc_29946:
		dc.w	loc_2994A-loc_29946
		dc.w	loc_29984-loc_29946
loc_2994A:
		addq.b	#2,$24(a0)
		move.l	#Masher_Mappings,4(a0) 
		move.w	#$414,2(a0)
		bsr	loc_29A28
		move.b	#4,1(a0)
		move.b	#4,$18(a0)
		move.b	#9,$20(a0)
		move.b	#$10,$19(a0)
		move.w	#$FC00,$12(a0)
		move.w	$C(a0),$30(a0)
loc_29984:
		lea	(Masher_Animate_Data),a1 
		bsr	loc_29A22
		bsr	loc_29A2E
		add.w	#$18,$12(a0)
		move.w	$30(a0),d0
		cmp.w	$C(a0),d0
		bcc.s	loc_299AC
		move.w	d0,$C(a0)
		move.w	#$FB00,$12(a0)
loc_299AC:
		move.b	#1,$1C(a0)
		sub.w	#$C0,d0
		cmp.w	$C(a0),d0
		bcc.s	loc_299CE
		move.b	#0,$1C(a0)
		tst.w	$12(a0)
		bmi.s	loc_299CE
		move.b	#2,$1C(a0)
loc_299CE:
		rts
;-------------------------------------------------------------------------------	
Masher_Animate_Data: 
		dc.w	loc_299D6-Masher_Animate_Data
		dc.w	loc_299DA-Masher_Animate_Data
		dc.w	loc_299DE-Masher_Animate_Data
loc_299D6:
		dc.b	7,0,1,$FF
loc_299DA:
		dc.b	3,0,1,$FF
loc_299DE:
		dc.b	7,0,$FF,$0	
;-------------------------------------------------------------------------------
Masher_Mappings: 
		dc.w	loc_299E6-Masher_Mappings
		dc.w	loc_29A00-Masher_Mappings
loc_299E6:
		dc.w	$3
		dc.l	$F0050000,$FFF4,$F0010004,$20004
		dc.l	$9000A,$5FFF4
loc_29A00:
		dc.w	$3
		dc.l	$F0050000,$FFF4,$F0050006,$30002
		dc.l	$90010,$8FFF4	
			
;===============================================================================
; Object 0x5C - Masher -> Green Hill 
; [ End ]
;===============================================================================