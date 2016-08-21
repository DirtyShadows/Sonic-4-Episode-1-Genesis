;=============================================================================== 
; Object 0x4F - Hidden Palace - Crocobot 
; [ Begin ]	
;===============================================================================
loc_288BC:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_288CA(pc,d0),d1
		jmp	loc_288CA(pc,d1)
loc_288CA:
		dc.w	loc_288CE-loc_288CA
		dc.w	loc_2891E-loc_288CA
loc_288CE:
		move.l	#Crocobot_Mappings,4(a0) 
		move.w	#$2300,2(a0)
		or.b	#4,1(a0)
		move.b	#$A,$20(a0)
		move.b	#4,$18(a0)
		move.b	#$10,$19(a0)
		move.b	#$10,$16(a0)
		move.b	#8,$17(a0)
		bsr	loc_28BA8
		jsr	ObjHitFloor	
		tst.w	d1
		bpl.s	loc_2891C
		add.w	d1,$C(a0)
		move.w	#0,$12(a0)
		addq.b	#2,$24(a0)
loc_2891C:
		rts
loc_2891E:
		moveq	#0,d0
		move.b	$25(a0),d0
		move.w	loc_2893A(pc,d0),d1
		jsr	loc_2893A(pc,d1)
		lea	(Crocobot_Animate_Data),a1 
		bsr	loc_28BA2
		bra	loc_28B9C
loc_2893A:
		dc.w	loc_2893E-loc_2893A
		dc.w	loc_28962-loc_2893A
loc_2893E:
		subq.w	#1,$30(a0)
		bpl.s	loc_28960
		addq.b	#2,$25(a0)
		move.w	#$FF40,$10(a0)
		move.b	#0,$1C(a0)
		bchg	#0,$22(a0)
		bne.s	loc_28960
		neg.w	$10(a0)
loc_28960:
		rts
loc_28962:
		bsr	loc_2899A
		bsr	loc_28BAE
		jsr	ObjHitFloor	
		cmp.w	#$FFF8,d1
		blt.s	loc_28982
		cmp.w	#$C,d1
		bge.s	loc_28982
		add.w	d1,$C(a0)
		rts
loc_28982:
		subq.b	#2,$25(a0)
		move.w	#$3B,$30(a0)
		move.w	#0,$10(a0)
		move.b	#1,$1C(a0)
		rts
loc_2899A:
		move.w	8(a0),d0
		sub.w	($FFFFB008).w,d0
		bmi.s	loc_289B4
		cmp.w	#$40,d0
		bgt.s	loc_289CA
		btst	#0,$22(a0)
		beq.s	loc_289C2
		rts
loc_289B4:
		cmp.w	#$FFC0,d0
		blt.s	loc_289CA
		btst	#0,$22(a0)
		beq.s	loc_289CA
loc_289C2:
		move.b	#2,$1C(a0)
		rts
loc_289CA:
		move.b	#0,$1C(a0)
		rts	
;-------------------------------------------------------------------------------
Crocobot_Animate_Data: 
		dc.w	loc_289D8-Crocobot_Animate_Data
		dc.w	loc_289E0-Crocobot_Animate_Data
		dc.w	loc_289E3-Crocobot_Animate_Data
loc_289D8:
		dc.b	3,0,4,2,3,1,5,$FF
loc_289E0:
		dc.b	$F,0,$FF
loc_289E3:
		dc.b	3,6,$A,8,9,7,$B,$FF,$0	
;-------------------------------------------------------------------------------	
Crocobot_Mappings: 
		dc.w	loc_28A04-Crocobot_Mappings
		dc.w	loc_28A26-Crocobot_Mappings
		dc.w	loc_28A48-Crocobot_Mappings
		dc.w	loc_28A6A-Crocobot_Mappings
		dc.w	loc_28A8C-Crocobot_Mappings
		dc.w	loc_28AAE-Crocobot_Mappings
		dc.w	loc_28AD0-Crocobot_Mappings
		dc.w	loc_28AF2-Crocobot_Mappings
		dc.w	loc_28B14-Crocobot_Mappings
		dc.w	loc_28B36-Crocobot_Mappings
		dc.w	loc_28B58-Crocobot_Mappings
		dc.w	loc_28B7A-Crocobot_Mappings
loc_28A04:
		dc.w	$4
		dc.l	$F80E0000,$FFE4,$F8050018,$C0004
		dc.l	$1001C,$E0004,$50020,$10000C
loc_28A26:
		dc.w	$4
		dc.l	$F80E0000,$FFE4,$F8050018,$C0004
		dc.l	$1001C,$E0004,$50024,$12000C
loc_28A48:
		dc.w	$4
		dc.l	$F80E0000,$FFE4,$F8050018,$C0004
		dc.l	$1001C,$E0004,$50028,$14000C
loc_28A6A:
		dc.w	$4
		dc.l	$F80E0000,$FFE4,$F8050018,$C0004
		dc.l	$1001E,$F0004,$50020,$10000C
loc_28A8C:
		dc.w	$4
		dc.l	$F80E0000,$FFE4,$F8050018,$C0004
		dc.l	$1001E,$F0004,$50024,$12000C
loc_28AAE:
		dc.w	$4
		dc.l	$F80E0000,$FFE4,$F8050018,$C0004
		dc.l	$1001E,$F0004,$50028,$14000C
loc_28AD0:
		dc.w	$4
		dc.l	$F00B000C,$6FFEC,$F8050018,$C0004
		dc.l	$1001C,$E0004,$50020,$10000C
loc_28AF2:
		dc.w	$4
		dc.l	$F00B000C,$6FFEC,$F8050018,$C0004
		dc.l	$1001C,$E0004,$50024,$12000C
loc_28B14:
		dc.w	$4
		dc.l	$F00B000C,$6FFEC,$F8050018,$C0004
		dc.l	$1001C,$E0004,$50028,$14000C
loc_28B36:
		dc.w	$4
		dc.l	$F00B000C,$6FFEC,$F8050018,$C0004
		dc.l	$1001E,$F0004,$50020,$10000C
loc_28B58:
		dc.w	$4
		dc.l	$F00B000C,$6FFEC,$F8050018,$C0004
		dc.l	$1001E,$F0004,$50024,$12000C
loc_28B7A:
		dc.w	$4
		dc.l	$F00B000C,$6FFEC,$F8050018,$C0004
		dc.l	$1001E,$F0004,$50028,$14000C	
;=============================================================================== 
; Object 0x4F - Hidden Palace - Crocobot 
; [ End ]	
;===============================================================================	