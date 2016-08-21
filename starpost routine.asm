; ----------------------------------------------------------------------------
; Object 79 - Star pole	/ starpost / checkpoint
; ----------------------------------------------------------------------------


Obj79:						  ; ...
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	Obj79_Index(pc,d0.w),d1
		jmp	Obj79_Index(pc,d1.w)
; ---------------------------------------------------------------------------
Obj79_Index:	dc.w Obj79_Main-Obj79_Index,Obj79_BlueLamp-Obj79_Index; 0 ; ...
		dc.w loc_3195A2-Obj79_Index,loc_3195B4-Obj79_Index; 2
; ---------------------------------------------------------------------------

Obj79_Main:					  ; ...
		addq.b	#2,$24(a0)
		move.l	#Map_Obj79,4(a0)
		move.w	#($D800/$20),2(a0)
		;jsr	Adjust2PArtPointer2_Useless
		move.b	#4,1(a0)
		move.b	#8,$19(a0)
		move.b	#5,$18(a0)
		lea	($FFFFFC00).w,a2
		moveq	#0,d0
		move.b	$23(a0),d0
		bclr	#7,2(a2,d0.w)
		btst	#0,2(a2,d0.w)
		bne.s	Obj79_RedLamp
		move.b	($FFFFFE30).w,d1
		and.b	#$7F,d1
		move.b	$28(a0),d2
		and.b	#$7F,d2
		cmp.b	d2,d1
		bcs.s	Obj79_BlueLamp

Obj79_RedLamp:					  ; ...
		bset	#0,2(a2,d0.w)
		move.b	#2,$1C(a0)

Obj79_BlueLamp:					  ; ...
		tst.w	($FFFFFE08).w
		bne.w	loc_3195A2
		lea	($FFFFD000).w,a3
		move.b	($FFFFFE30).w,d1
		bsr.s	Obj79_HitLamp
		tst.w	($FFFFFFDC).w
		beq.w	loc_3195A2
		lea	($FFFFD040).w,a3
		move.b	($FFFFFEE0).w,d1
		bsr.s	Obj79_HitLamp
		bra.w	loc_3195A2

; =============== S U B	R O U T	I N E =======================================


Obj79_HitLamp:					  ; ...
		andi.b	#$7F,d1
		move.b	$28(a0),d2
		andi.b	#$7F,d2
		cmp.b	d2,d1
		bcc.w	loc_319594
		move.w	8(a3),d0
		sub.w	8(a0),d0
		add.w	#8,d0
		cmp.w	#$10,d0
		bcc.w	return_319592
		move.w	$C(a3),d0
		sub.w	$C(a0),d0
		add.w	#$40,d0
		cmp.w	#$68,d0
		bcc.w	return_319592
		move.w	#$A1,d0
		jsr	PlaySound
		jsr	SingleObjLoad
		bne.s	loc_319578
		move.b	#$79,0(a1)
		move.b	#6,$24(a1)
		move.w	8(a0),$30(a1)
		move.w	$C(a0),$32(a1)
		sub.w	#$14,$32(a1)
		move.l	4(a0),4(a1)
		move.w	2(a0),2(a1)
		move.b	#4,1(a1)
		move.b	#8,$19(a1)
		move.b	#4,$18(a1)
		move.b	#2,$1A(a1)
		move.w	#$20,$36(a1)
		move.w	a0,$3E(a1)
		tst.w	($FFFFFFDC).w
		bne.s	loc_319578
		cmp.b	#7,($FFFFFFB1).w
		beq.s	loc_319578
		cmp.w	#$32,($FFFFFE20).w
		bcs.s	loc_319578
;		bsr.w	Obj79_MakeSpecialStars

loc_319578:					  ; ...
		move.b	#1,$1C(a0)
		bsr.w	sub_31960C
		lea	($FFFFFC00).w,a2
		moveq	#0,d0
		move.b	$23(a0),d0
		bset	#0,2(a2,d0.w)

return_319592:					  ; ...
		rts
; ---------------------------------------------------------------------------

loc_319594:					  ; ...
		tst.b	$1C(a0)
		bne.s	return_3195A0
		move.b	#2,$1C(a0)

return_3195A0:					  ; ...
		rts
; End of function Obj79_HitLamp

; ---------------------------------------------------------------------------

loc_3195A2:					  ; ...
		lea	(Ani_Obj79).l,a1
		jsr	AnimateSprite
		jmp	MarkObjGone
; ---------------------------------------------------------------------------

loc_3195B4:					  ; ...
		subq.w	#1,$36(a0)
		bpl.s	loc_3195D6
		move.w	$3E(a0),a1
		cmp.b	#$79,(a1)
		bne.s	loc_3195D0
		move.b	#2,$1C(a1)
		move.b	#0,$1A(a1)

loc_3195D0:					  ; ...
		jmp	DeleteObject
; ---------------------------------------------------------------------------

loc_3195D6:					  ; ...
		move.b	$26(a0),d0
		sub.b	#$10,$26(a0)
		sub.b	#$40,d0
		jsr	CalcSine
		muls.w	#$C00,d1
		swap	d1
		add.w	$30(a0),d1
		move.w	d1,8(a0)
		muls.w	#$C00,d0
		swap	d0
		add.w	$32(a0),d0
		move.w	d0,$C(a0)
		jmp	MarkObjGone

; =============== S U B	R O U T	I N E =======================================


sub_31960C:					  ; ...
		move.b	$28(a0),($FFFFFE30).w 		; lamppost number
		move.b	($FFFFFE30).w,($FFFFFE31).w
		move.w	8(a0),($FFFFFE32).w		; x-position
		move.w	$C(a0),($FFFFFE34).w		; y-position
		move.w	($FFFFFE20).w,($FFFFFE36).w 	; rings
		move.b	($FFFFFE1B).w,($FFFFFE54).w 	; lives
		move.l	($FFFFFE22).w,($FFFFFE38).w 	; time
		move.b	($FFFFF742).w,($FFFFFE3C).w 	; routine counter for dynamic level mod
		move.w	($FFFFF72E).w,($FFFFFE3E).w 	; lower y-boundary of level
		move.w	($FFFFF700).w,($FFFFFE40).w 	; screen x-position
		move.w	($FFFFF704).w,($FFFFFE42).w 	; screen y-position
		move.w	($FFFFF708).w,($FFFFFE44).w 	; bg position
		move.w	($FFFFF70C).w,($FFFFFE46).w 	; bg position
		move.w	($FFFFF710).w,($FFFFFE48).w 	; bg position
		move.w	($FFFFF714).w,($FFFFFE4A).w 	; bg position
		move.w	($FFFFF718).w,($FFFFFE4C).w 	; bg position
		move.w	($FFFFF71C).w,($FFFFFE4E).w 	; bg position
		move.w	($FFFFF648).w,($FFFFFE50).w 	; water height
		move.b	($FFFFF64D).w,($FFFFFE52).w 	; rountine counter for water
		move.b	($FFFFF64E).w,($FFFFFE53).w 	; water direction
		rts
; ---------------------------------------------------------------------------

loc_31969A:					  ; ...
		move.b	$28(a0),($FFFFFEE0).w
		move.b	($FFFFFEE0).w,($FFFFFEE1).w
		move.w	8(a0),($FFFFFEE2).w
		move.w	$C(a0),($FFFFFEE4).w
		move.w	($FFFFD042).w,($FFFFFEEC).w
		move.w	($FFFFD07E).w,($FFFFFEEE).w
		move.w	($FFFFFED0).w,($FFFFFEE6).w
		move.b	($FFFFFEC7).w,($FFFFFE55).w
		move.l	($FFFFFED2).w,($FFFFFEE8).w
		rts
; End of function sub_31960C


; =============== S U B	R O U T	I N E =======================================


Obj79_LoadData:					  ; ...
		move.b	($FFFFFE31).w,($FFFFFE30).w
		move.w	($FFFFFE32).w,($FFFFD008).w
		move.w	($FFFFFE34).w,($FFFFD00C).w
		move.w	($FFFFFE36).w,($FFFFFE20).w
		move.b	($FFFFFE54).w,($FFFFFE1B).w
		clr.w	($FFFFFE20).w
		clr.b	($FFFFFE1B).w
		move.l	($FFFFFE38).w,($FFFFFE22).w
		move.b	#59,($FFFFFE25).w
		subq.b	#1,($FFFFFE24).w
		move.b	($FFFFFE3C).w,($FFFFF742).w
		move.b	($FFFFFE52).w,($FFFFF64D).w
		move.w	($FFFFFE3E).w,($FFFFF72E).w
		move.w	($FFFFFE3E).w,($FFFFF726).w
		move.w	($FFFFFE40).w,($FFFFF700).w
		move.w	($FFFFFE42).w,($FFFFF704).w
		move.w	($FFFFFE44).w,($FFFFF708).w
		move.w	($FFFFFE46).w,($FFFFF70C).w
		move.w	($FFFFFE48).w,($FFFFF710).w
		move.w	($FFFFFE4A).w,($FFFFF714).w
		move.w	($FFFFFE4C).w,($FFFFF718).w
		move.w	($FFFFFE4E).w,($FFFFF71C).w
		tst.b	($FFFFF730).w
		beq.s	loc_31976C
		move.w	($FFFFFE50).w,($FFFFF648).w
		move.b	($FFFFFE52).w,($FFFFF64D).w
		move.b	($FFFFFE53).w,($FFFFF64E).w

loc_31976C:					  ; ...
		tst.b	($FFFFFE30).w
		bpl.s	return_31977E
		move.w	($FFFFFE32).w,d0
		sub.w	#$A0,d0
		move.w	d0,($FFFFF728).w

return_31977E:					  ; ...
		rts
; End of function Obj79_LoadData

; ---------------------------------------------------------------------------

Ani_Obj79:	dc.w byte_319786-Ani_Obj79,byte_319789-Ani_Obj79; 0 ; ...
		dc.w byte_31978C-Ani_Obj79	  ; 2
byte_319786:	dc.b   $F,  0,$FF		  ; 0 ;	...
byte_319789:	dc.b   $F,   1,	 $FF		  ; 0 ;	...
byte_31978C:	dc.b	1,   0,	  3,  $FF	  ; 0 ;	...

; ===========================================================================
; ---------------------------------------------------------------------------
; Sprite mappings - lamppost
; ---------------------------------------------------------------------------
Map_obj79:
	include "_maps\obj79.asm"

; =============== S U B	R O U T	I N E =======================================


;Obj79_MakeSpecialStars:				  ; ...
;		moveq	#3,d1
;		moveq	#0,d2

loc_319814:					  ; ...
		bsr.w	SingleObjLoad2
		bne.s	return_319880
		move.b	0(a0),0(a1)
		move.l	#Map_Obj25,4(a1)
		move.w	#$47C,2(a1)
		move.b	#4,1(a1)
		move.b	#8,$24(a1)
		move.w	8(a0),d0
		move.w	d0,8(a1)
		move.w	d0,$30(a1)
		move.w	$C(a0),d0
		sub.w	#$30,d0
		move.w	d0,$C(a1)
		move.w	d0,$32(a1)
		move.b	$18(a0),$18(a1)
		move.b	#8,$19(a1)
		move.b	#1,$1A(a1)
		move.w	#$FC00,$10(a1)
		move.w	#0,$12(a1)
		move.w	d2,$34(a1)
		add.w	#$40,d2
		dbf	d1,loc_319814

return_319880:					  ; ...
		rts
; End of function Obj79_MakeSpecialStars

; ---------------------------------------------------------------------------

loc_319882:					  ; ...
		move.b	$21(a0),d0
		beq.w	loc_3198A0
		and.b	#1,d0
		beq.s	loc_31989C
		move.b	#1,($FFFFF7CD).w
		move.b	#$10,($FFFFF600).w	  ; Set	Screen mode to special stage

loc_31989C:					  ; ...
		clr.b	$21(a0)

loc_3198A0:					  ; ...
		add.w	#$A,$34(a0)
		move.w	$34(a0),d0
		and.w	#$FF,d0
		jsr	CalcSine
		asr.w	#5,d0
		asr.w	#3,d1
		move.w	d1,d3
		move.w	$34(a0),d2
		and.w	#$3E0,d2
		lsr.w	#5,d2
		moveq	#2,d5
		moveq	#0,d4
		cmp.w	#$10,d2
		ble.s	loc_3198D0
		neg.w	d1

loc_3198D0:					  ; ...
		and.w	#$F,d2
		cmp.w	#8,d2
		ble.s	loc_3198E0
		neg.w	d2
		and.w	#7,d2

loc_3198E0:					  ; ...
		lsr.w	#1,d2
		beq.s	loc_3198E6
		add.w	d1,d4

loc_3198E6:					  ; ...
		asl.w	#1,d1
		dbf	d5,loc_3198E0
		asr.w	#4,d4
		add.w	d4,d0
		addq.w	#1,$36(a0)
		move.w	$36(a0),d1
		cmp.w	#$80,d1
		beq.s	loc_31990A
		bgt.s	loc_319910

loc_319900:					  ; ...
		muls.w	d1,d0
		muls.w	d1,d3
		asr.w	#7,d0
		asr.w	#7,d3
		bra.s	loc_319922
; ---------------------------------------------------------------------------

loc_31990A:					  ; ...
		move.b	#$D8,$20(a0)

loc_319910:					  ; ...
		cmp.w	#$180,d1
		ble.s	loc_319922
		neg.w	d1
		add.w	#$200,d1
		bmi.w	j_DeleteObject
		bra.s	loc_319900
; ---------------------------------------------------------------------------

loc_319922:					  ; ...
		move.w	$30(a0),d2
		add.w	d3,d2
		move.w	d2,8(a0)
		move.w	$32(a0),d2
		add.w	d0,d2
		move.w	d2,$C(a0)
		addq.b	#1,$1B(a0)
		move.b	$1B(a0),d0
		and.w	#6,d0
		lsr.w	#1,d0
		cmp.b	#3,d0
		bne.s	loc_31994C
		moveq	#1,d0

loc_31994C:					  ; ...
		move.b	d0,$1A(a0)
		jmp	MarkObjGone
; ---------------------------------------------------------------------------

j_DeleteObject:					  ; ...
		jmp	DeleteObject
; ---------------------------------------------------------------------------
