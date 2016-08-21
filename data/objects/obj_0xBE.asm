;===============================================================================
; Object 0xBE - Hatchways that open and close - Sky Fortress
; [ Begin ]
;===============================================================================	
loc_37C8A:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_37C98(pc,d0),d1
		jmp	loc_37C98(pc,d1)
loc_37C98:
		dc.w	loc_37CA4-loc_37C98
		dc.w	loc_37CB2-loc_37C98
		dc.w	loc_37CD6-loc_37C98
		dc.w	loc_37CE4-loc_37C98
		dc.w	loc_37CD6-loc_37C98
		dc.w	loc_37D00-loc_37C98
loc_37CA4:
		moveq	#0,d0
		move.b	#$82,d0
		bsr	EnemySettings_01	
		bra	loc_37692
loc_37CB2:
		move.b	($FFFFFE0F).w,d0
		and.b	#$F0,d0
		cmp.b	$28(a0),d0
		beq.s	loc_37CC4
		bra	loc_3A8A4
loc_37CC4:
		addq.b	#2,$24(a0)
		clr.b	$1C(a0)
		move.w	#$100,$2A(a0)
		bra	loc_3A8A4
loc_37CD6:
		lea	(Hatchway_Animate_Data),a1 
		bsr	loc_3A8BC
		bra	loc_3A8A4
loc_37CE4:
		subq.w	#1,$2A(a0)
		beq.s	loc_37CF2
		bsr	loc_37D10
		bra	loc_3A8A4
loc_37CF2:
		addq.b	#2,$24(a0)
		move.b	#1,$1C(a0)
		bra	loc_3A8A4
loc_37D00:
		move.b	#2,$24(a0)
		move.w	#$60,$2A(a0)
		bra	loc_3A8A4
loc_37D10:
		move.b	$1A(a0),d0
		cmp.b	#3,d0
		beq.s	loc_37D22
		cmp.b	#4,d0
		bne	loc_376D0
loc_37D22:
		move.w	8(a0),-(sp)
		move.w	#$23,d1
		move.w	#$18,d2
		move.w	#$19,d3
		move.w	(sp)+,d4
		bra	loc_3A8F2	
;-------------------------------------------------------------------------------
Obj_0xBE_Ptr: 
		dc.l	Hatchway_Mappings	
		dc.w	$E41A
		dc.b	4,4,$18,$0
;-------------------------------------------------------------------------------
Hatchway_Animate_Data: 
		dc.w	loc_37D46-Hatchway_Animate_Data
		dc.w	loc_37D4C-Hatchway_Animate_Data
loc_37D46:
		dc.b	5,0,1,2,3,$FC
loc_37D4C:
		dc.b	5,3,2,1,0,$FC
;-------------------------------------------------------------------------------	
Hatchway_Mappings: 
		dc.w	loc_37D5C-Hatchway_Mappings
		dc.w	loc_37D6E-Hatchway_Mappings
		dc.w	loc_37D80-Hatchway_Mappings
		dc.w	loc_37D92-Hatchway_Mappings
		dc.w	loc_37DA4-Hatchway_Mappings
loc_37D5C:
		dc.w	$2
		dc.l	$E8090000,$FFE8,$E8090006,$30000
loc_37D6E:
		dc.w	$2
		dc.l	$E809000C,$6FFE8,$E8090012,$90000
loc_37D80:
		dc.w	$2
		dc.l	$E8090018,$CFFE8,$E8090818,$80C0000
loc_37D92:
		dc.w	$2
		dc.l	$E80E001E,$FFFE0,$E80E081E,$80F0000
loc_37DA4:
		dc.w	$2
		dc.l	$E80E002A,$15FFE0,$E80E082A,$8150000	
;===============================================================================
; Object 0xBE - Hatchways that open and close - Sky Fortress
; [ End ]
;===============================================================================