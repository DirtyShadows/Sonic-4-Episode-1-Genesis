;===============================================================================
; Object 0x90 -> Rock spraying when grounder come from wall. 
; [ Begin ]	Called by Obj 0x8D / 0x8E 
;===============================================================================
loc_32DC2:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_32DD0(pc,d0),d1
		jmp	loc_32DD0(pc,d1)
loc_32DD0:
		dc.w	loc_32DD4-loc_32DD0
		dc.w	loc_32E0A-loc_32DD0
loc_32DD4:
		bsr	EnemySettings	
		move.w	#$4509,2(a0)
		move.w	$2E(a0),d0
		move.b	loc_32E00(pc,d0),$10(a0)
		move.b	loc_32E01(pc,d0),$12(a0)
		lsr.w	#1,d0
		move.b	loc_32DFA(pc,d0),$1A(a0)
		bra	loc_3A8A4
;-------------------------------------------------------------------------------
loc_32DFA:	
		dc.b	0,2,0,1,0,$0	
;-------------------------------------------------------------------------------	
loc_32E00:	
		dc.b	$FF
loc_32E01:	
		dc.b	$FC,4,$FD,2,0,$FD,$FF,$FD,$FD
;-------------------------------------------------------------------------------	
loc_32E0A:
		tst.b	1(a0)
		bpl	loc_3A898
		bsr	loc_3A8FE
		bra	loc_3A8A4
loc_32E1A:
		moveq	#0,d1
		moveq	#4,d6
loc_32E1E:	
		bsr	loc_3A89E
		bne.s	loc_32E2C
		bsr	loc_32E2E
		dbra	d6,loc_32E1E
loc_32E2C:
		rts
loc_32E2E:
		move.b	#$90,0(a1)
		move.b	#6,$28(a1)
		move.w	a0,$2C(a1)
		move.w	d1,$2E(a1)
		move.w	8(a0),8(a1)
		move.w	$C(a0),$C(a1)
		addq.w	#2,d1
		rts
loc_32E52:
		moveq	#0,d1
		moveq	#3,d6
loc_32E56:	
		bsr	loc_3A89E
		bne.s	loc_32E64
		bsr	loc_32E66
		dbra	d6,loc_32E56
loc_32E64:
		rts
loc_32E66:
		move.b	#$8F,0(a1)
		move.b	#4,$28(a1)
		move.w	a0,$2C(a1)
		move.w	d1,$2E(a1)
		move.l	8(a0),d0
		swap.w	d0
		moveq	#0,d2
		move.b	loc_32EAA(pc,d1),d2
		ext.w	d2
		add.w	d2,d0
		swap.w	d0
		move.l	d0,8(a1)
		move.l	$C(a0),d0
		swap.w	d0
		moveq	#0,d2
		move.b	loc_32EAB(pc,d1),d2
		ext.w	d2
		add.w	d2,d0
		swap.w	d0
		move.l	d0,$C(a1)
		addq.w	#2,d1
		rts	
;-------------------------------------------------------------------------------
loc_32EAA:	
		dc.b	$0
loc_32EAB:	
		dc.b	$EC,$10,$FC,0,$C,$F0,$FC	
;-------------------------------------------------------------------------------
Obj_0x8E_Ptr: 
		dc.l	Grounder_Mappings	
		dc.w	$A509
		dc.b	4,5,$10,$2
;-------------------------------------------------------------------------------
Obj_0x8F_Ptr: 
		dc.l	Grounder_Wall_Mappings	
		dc.w	$0
		dc.b	$84,4,$10,$0
;-------------------------------------------------------------------------------
Obj_0x90_Ptr: 
		dc.l	Grounder_Rock_Mappings	
		dc.w	$A509
		dc.b	$84,4,8,$0
;-------------------------------------------------------------------------------
loc_32ED0:
		dc.w	loc_32ED2-loc_32ED0
loc_32ED2:
		dc.b	3,2,3,4,$FF,$0	
;-------------------------------------------------------------------------------	
loc_32ED8:
		dc.w	loc_32EDA-loc_32ED8
loc_32EDA:
		dc.b	7,0,1,$FC	
;-------------------------------------------------------------------------------
Grounder_Mappings: 
		dc.w	loc_32EF0-Grounder_Mappings
		dc.w	loc_32F12-Grounder_Mappings
		dc.w	loc_32F34-Grounder_Mappings
		dc.w	loc_32F46-Grounder_Mappings
		dc.w	loc_32F58-Grounder_Mappings
Grounder_Rock_Mappings: 
		dc.w	loc_32F6A-Grounder_Rock_Mappings
		dc.w	loc_32F74-Grounder_Rock_Mappings
		dc.w	loc_32F7E-Grounder_Rock_Mappings 
Grounder_Wall_Mappings: 
		dc.w	loc_32F88-Grounder_Wall_Mappings	
loc_32EF0:
		dc.w	$4
		dc.l	$F4000000,$FFF8,$FC060001,$FFF0
		dc.l	$F4000800,$8000000,$FC060801,$8000000
loc_32F12:
		dc.w	$4
		dc.l	$EC000007,$3FFF8,$F4070008,$4FFF0
		dc.l	$EC000807,$8030000,$F4070808,$8040000
loc_32F34:
		dc.w	$2
		dc.l	$EC0F0010,$8FFF0,$C0C0020,$10FFF0
loc_32F46:
		dc.w	$2
		dc.l	$EC0F0010,$8FFF0,$C0C0024,$12FFF0
loc_32F58:
		dc.w	$2
		dc.l	$EC0F0010,$8FFF0,$C0C0028,$14FFF0	
loc_32F6A:
		dc.w	$1
		dc.l	$F805002C,$16FFF8
loc_32F74:
		dc.w	$1
		dc.l	$FC000030,$18FFFC
loc_32F7E:
		dc.w	$1
		dc.l	$FC000031,$18FFFC	
loc_32F88:
		dc.w	$2
		dc.l	$F8054093,$4049FFF0,$F8054097,$404B0000	
;===============================================================================
; Object 0x90 -> Rock spraying when grounder come from wall. 
; [ End ]	Called by Obj 0x8D / 0x8E 
;===============================================================================
