;===============================================================================
; Object 0xBD - Elevators Sky Fortress
; [ Begin ]
;===============================================================================	
loc_37B2C:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_37B3A(pc,d0),d1
		jmp	loc_37B3A(pc,d1)
loc_37B3A:
		dc.w	loc_37B40-loc_37B3A
		dc.w	loc_37B4C-loc_37B3A
		dc.w	loc_37B60-loc_37B3A
loc_37B40:
		addq.b	#2,$24(a0)
		move.w	#1,$2A(a0)
		rts
loc_37B4C:
		subq.w	#1,$2A(a0)
		bne.s	loc_37B5C
		move.w	#$40,$2A(a0)
		bsr	loc_37C08
loc_37B5C:
		bra	loc_3A8E0
loc_37B60:
		moveq	#0,d0
		move.b	$25(a0),d0
		move.w	loc_37B72(pc,d0),d1
		jsr	loc_37B72(pc,d1)
		bra	loc_3A8A4
loc_37B72:
		dc.w	loc_37B7C-loc_37B72
		dc.w	loc_37BBC-loc_37B72
		dc.w	loc_37BC6-loc_37B72
		dc.w	loc_37BDC-loc_37B72
		dc.w	loc_37BE6-loc_37B72
loc_37B7C:
		bsr	EnemySettings	
		move.b	#2,$1A(a0)
		subq.b	#2,$24(a0)
		addq.b	#2,$25(a0)
		move.w	#$C7,$2A(a0)
		btst	#0,1(a0)
		beq.s	loc_37BA2
		move.w	#$1C7,$2A(a0)
loc_37BA2:
		moveq	#0,d0
		move.b	$28(a0),d0
		sub.b	#$7E,d0
		move.b	d0,$28(a0)
		move.w	loc_37BB8(pc,d0),$12(a0)
		rts
loc_37BB8:
		dc.w	$FF00,$100
loc_37BBC:
		lea	(SFz_Elevators_Animate_Data),a1 
		bra	loc_3A8BC
loc_37BC6:
		subq.w	#1,$2A(a0)
		bmi.s	loc_37BD0
		bra	loc_37BEE
loc_37BD0:
		addq.b	#2,$25(a0)
		move.b	#1,$1C(a0)
		rts
loc_37BDC:
		lea	(SFz_Elevators_Animate_Data),a1 
		bra	loc_3A8BC
loc_37BE6:
		bsr	loc_376D0
		bra	loc_3A898
loc_37BEE:
		move.w	8(a0),-(sp)
		bsr	loc_3A904
		move.w	#$23,d1
		move.w	#4,d2
		move.w	#5,d3
		move.w	(sp)+,d4
		bra	loc_3A8F2
loc_37C08:
		bsr	loc_3A8B6
		bne.s	loc_37C32
		move.b	#$BD,0(a1)
		move.w	8(a0),8(a1)
		move.w	$C(a0),$C(a1)
		move.b	#4,$24(a1)
		move.b	$28(a0),$28(a1)
		move.b	1(a0),1(a1)
loc_37C32:
		rts	
;-------------------------------------------------------------------------------
Obj_0xBD_Ptr: 
		dc.l	SFz_Elevators_Mappings	
		dc.w	$E40E
		dc.b	4,4,$18,$0	
;-------------------------------------------------------------------------------
SFz_Elevators_Animate_Data: 
		dc.w	loc_37C42-SFz_Elevators_Animate_Data
		dc.w	loc_37C48-SFz_Elevators_Animate_Data
loc_37C42:
		dc.b	3,2,1,0,$FA,$0
loc_37C48:
		dc.b	1,0,1,2,$FA,$0
;-------------------------------------------------------------------------------	
SFz_Elevators_Mappings: 
		dc.w	loc_37C54-SFz_Elevators_Mappings
		dc.w	loc_37C66-SFz_Elevators_Mappings
		dc.w	loc_37C78-SFz_Elevators_Mappings
loc_37C54:
		dc.w	$2
		dc.l	$FC080000,$FFE8,$FC080003,$10000
loc_37C66:
		dc.w	$2
		dc.l	$FC080006,$3FFE8,$FC080806,$8030000
loc_37C78:
		dc.w	$2
		dc.l	$FC080009,$4FFE8,$FC080809,$8040000	
;===============================================================================
; Object 0xBD - Elevators Sky Fortress
; [ End ]
;===============================================================================