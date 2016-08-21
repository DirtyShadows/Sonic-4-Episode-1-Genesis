;=============================================================================== 
; Object 0x17
; [ Begin ]	
;===============================================================================	
loc_E044:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_E052(pc,d0),d1
		jmp	loc_E052(pc,d1)
loc_E052:
		dc.w	loc_E058-loc_E052
		dc.w	loc_E11C-loc_E052
		dc.w	loc_E17E-loc_E052
loc_E058:
		addq.b	#2,$24(a0)
		move.l	#Obj_0x17_Mappings,4(a0) 
		move.w	#$4398,2(a0)
		bsr	ModifySpriteAttr_2P	
		move.b	#4,1(a0)
		move.b	#3,$18(a0)
		move.b	#8,$19(a0)
		move.w	$C(a0),d2
		move.w	8(a0),d3
		move.b	0(a0),d4
		lea	$28(a0),a2
		moveq	#0,d1
		move.b	(a2),d1
		move.b	#0,(a2)+
		move.w	d1,d0
		lsr.w	#1,d0
		lsl.w	#4,d0
		sub.w	d0,d3
		subq.b	#2,d1
		bcs.s	loc_E11C
		moveq	#0,d6
loc_E0A6:	
		bsr	S1SingleObjectLoad	
		bne.s	loc_E11C
		addq.b	#1,$28(a0)
		move.w	a1,d5
		sub.w	#$B000,d5
		lsr.w	#6,d5
		and.w	#$7F,d5
		move.b	d5,(a2)+
		move.b	#4,$24(a1)
		move.b	d4,0(a1)
		move.w	d2,$C(a1)
		move.w	d3,8(a1)
		move.l	4(a0),4(a1)
		move.w	#$4398,2(a1)
		bsr	Modify_A1_SpriteAttr_2P 
		move.b	#4,1(a1)
		move.b	#3,$18(a1)
		move.b	#8,$19(a1)
		move.b	d6,$3E(a1)
		addq.b	#1,d6
		and.b	#7,d6
		add.w	#$10,d3
		cmp.w	8(a0),d3
		bne.s	loc_E118
		move.b	d6,$3E(a0)
		addq.b	#1,d6
		and.b	#7,d6
		add.w	#$10,d3
		addq.b	#1,$28(a0)
loc_E118:
		dbra	d1,loc_E0A6
loc_E11C:
		bsr	loc_E15E
		move.w	8(a0),d0
		and.w	#$FF80,d0
		sub.w	($FFFFF7DA).w,d0
		cmp.w	#$280,d0
		bhi	loc_E138
		bra	displaySprite	
loc_E138:
		moveq	#0,d2
		lea	$28(a0),a2
		move.b	(a2)+,d2
		subq.b	#2,d2
		bcs.s	loc_E15A
loc_E144:	
		moveq	#0,d0
		move.b	(a2)+,d0
		lsl.w	#6,d0
		add.l	#$FFFFB000,d0
		move.l	d0,a1
		bsr	delete_A1_Object	
		dbra	d2,loc_E144
loc_E15A:
		bra	deleteObject	
loc_E15E:
		move.b	($FFFFFEA1).w,d0
		move.b	#0,$20(a0)
		add.b	$3E(a0),d0
		and.b	#7,d0
		move.b	d0,$1A(a0)
		bne.s	loc_E17C
		move.b	#$84,$20(a0)
loc_E17C:
		rts
loc_E17E:
		bsr	loc_E15E
		bra	displaySprite	
;-------------------------------------------------------------------------------
Obj_0x17_Mappings: 
		dc.w	loc_E196-Obj_0x17_Mappings
		dc.w	loc_E1A0-Obj_0x17_Mappings
		dc.w	loc_E1AA-Obj_0x17_Mappings
		dc.w	loc_E1B4-Obj_0x17_Mappings
		dc.w	loc_E1BE-Obj_0x17_Mappings
		dc.w	loc_E1C8-Obj_0x17_Mappings
		dc.w	loc_E1DC-Obj_0x17_Mappings
		dc.w	loc_E1D2-Obj_0x17_Mappings
loc_E196:
		dc.w	$1
		dc.l	$F0010000,$FFFC
loc_E1A0:
		dc.w	$1
		dc.l	$F5050002,$1FFF8
loc_E1AA:
		dc.w	$1
		dc.l	$F8050006,$3FFF8
loc_E1B4:
		dc.w	$1
		dc.l	$FB05000A,$5FFF8
loc_E1BE:
		dc.w	$1
		dc.l	$1000E,$7FFFC
loc_E1C8:
		dc.w	$1
		dc.l	$4000010,$8FFFD
loc_E1D2:
		dc.w	$1
		dc.l	$F4000011,$8FFFD
loc_E1DC:
		dc.w	$0	
;=============================================================================== 
; Object 0x17
; [ End ]	
;===============================================================================	