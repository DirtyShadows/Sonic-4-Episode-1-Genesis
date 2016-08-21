; =============== S U B R O U T I N E =======================================


Load_Sprites:

		moveq	#0,d0
		move.b	($FFFFF76C).w,d0
		jmp	loc_1B69A(pc,d0.w)
; End of function Load_Sprites

; ---------------------------------------------------------------------------

loc_1B69A:
		bra.w	loc_1B6A8
; ---------------------------------------------------------------------------
		bra.w	loc_1B7F2
; ---------------------------------------------------------------------------
		bra.w	loc_1B7F2
; ---------------------------------------------------------------------------
		rts
; ---------------------------------------------------------------------------

loc_1B6A8:
;		move.l	#Sprite_ListingK,d0
;		move.b	($FFFFFE10).w,d1
;		cmpi.b	#$16,d1
;		bcc.s	loc_1B6CA
;		cmpi.b	#$E,d1
;		bcc.s	loc_1B6C4
;		cmpi.b	#7,d1
;		bcc.s	loc_1B6CA

;loc_1B6C4:
;		move.l	#Sprite_Listing3,d0

;loc_1B6CA:

;		move.l	d0,($FFFFEF5A).w
		addq.b	#4,($FFFFF76C).w
;		tst.b	($FFFFFF97).w
;		bne.s	loc_1B6E8
		lea	($FFFFFC00).w,a0
		moveq	#0,d0
		move.w	#$5E,d1

loc_1B6E2:
		move.l	d0,(a0)+
		dbf	d1,loc_1B6E2

loc_1B6E8:
		move.w	($FFFFFE10).w,d0
		lsl.b	#6,d0
		lsr.w	#4,d0
		lea	(ObjPos_Index).l,a0
		adda.w	(a0,d0.w),a0


loc_1B76A:

		move.l	a0,($FFFFF772).w
		move.l	a0,($FFFFF774).w
		lea	($FFFFFC00).w,a3
;		cmpi.b	#$14,($FFFFFE10).w
;		bne.s	loc_1B78E
;		lea	($FFFF8400).w,a3
;		moveq	#$7F,d6

;loc_1B784:
;		clr.l	(a3)+
;		dbf	d6,loc_1B784
;		lea	($FFFF8400).w,a3

loc_1B78E:
		move.w	(Camera_X_pos).w,d6
		subi.w	#$80,d6
		bcc.s	loc_1B79A
		moveq	#0,d6

loc_1B79A:
		andi.w	#$FF80,d6
		movea.l	($FFFFF772).w,a0

loc_1B7A2:
		cmp.w	(a0),d6
		bls.s	loc_1B7AC
		addq.w	#6,a0
		addq.w	#1,a3
		bra.s	loc_1B7A2
; ---------------------------------------------------------------------------

loc_1B7AC:
		move.l	a0,($FFFFF772).w
		move.w	a3,($FFFFF77A).w
		lea	($FFFFFC00).w,a3
;		cmpi.b	#$14,($FFFFFE10).w
;		bne.s	loc_1B7C4
;		lea	($FFFF8400).w,a3

;loc_1B7C4:
		movea.l	($FFFFF774).w,a0
		subi.w	#$80,d6
		bcs.s	loc_1B7D8

loc_1B7CE:
		cmp.w	(a0),d6
		bls.s	loc_1B7D8
		addq.w	#6,a0
		addq.w	#1,a3
		bra.s	loc_1B7CE
; ---------------------------------------------------------------------------

loc_1B7D8:

		move.l	a0,($FFFFF774).w
		move.w	a3,($FFFFF778).w
		move.w	#-1,($FFFFF76E).w
		move.w	(Camera_Y_pos).w,d0
		andi.w	#$FF80,d0
		move.w	d0,($FFFFF770).w

loc_1B7F2:

		move.w	(Camera_Y_pos).w,d1
		subi.w	#$80,d1
		andi.w	#$FF80,d1
		move.w	d1,($FFFFEF64).w
		move.w	(Camera_X_pos).w,d1
		subi.w	#$80,d1
		andi.w	#$FF80,d1
		move.w	d1,($FFFFF7DA).w
;		movea.l	($FFFFEF5A).w,a4
		tst.w	(Camera_min_Y_pos).w
		bpl.s	loc_1B84A
		lea	loc_1BA40(pc),a6
		move.w	(Camera_Y_pos).w,d3
		andi.w	#$FF80,d3
		move.w	d3,d4
		addi.w	#$200,d4
		subi.w	#$80,d3
		bpl.s	loc_1B83A
		and.w	#$7FF,d3
		bra.s	loc_1B864
; ---------------------------------------------------------------------------

loc_1B83A:
		move.w	#$7FF,d0
		addq.w	#1,d0
		cmp.w	d0,d4
		bls.s	loc_1B860
		and.w	#$7FF,d4
		bra.s	loc_1B864
; ---------------------------------------------------------------------------

loc_1B84A:
		move.w	(Camera_Y_pos).w,d3
		andi.w	#-$80,d3
		move.w	d3,d4
		addi.w	#$200,d4
		subi.w	#$80,d3
		bpl.s	loc_1B860
		moveq	#0,d3

loc_1B860:

		lea	loc_1BA92(pc),a6

loc_1B864:

		move.w	#$FFF,d5
		move.w	(Camera_X_pos).w,d6
		andi.w	#$FF80,d6
		cmp.w	($FFFFF76E).w,d6
		beq.w	loc_1B91A
		bge.s	loc_1B8D2
		move.w	d6,($FFFFF76E).w
		movea.l	($FFFFF774).w,a0
		movea.w	($FFFFF778).w,a3
		subi.w	#$80,d6
		bcs.s	loc_1B8A8
		jsr	Create_New_Sprite(pc)
		bne.s	loc_1B8A8

loc_1B892:
		cmp.w	-6(a0),d6
		bge.s	loc_1B8A8
		subq.w	#6,a0
		subq.w	#1,a3
		jsr	(a6)
		bne.s	loc_1B8A4
		subq.w	#6,a0
		bra.s	loc_1B892
; ---------------------------------------------------------------------------

loc_1B8A4:
		addq.w	#6,a0
		addq.w	#1,a3

loc_1B8A8:

		move.l	a0,($FFFFF774).w
		move.w	a3,($FFFFF778).w
		movea.l	($FFFFF772).w,a0
		movea.w	($FFFFF77A).w,a3
		addi.w	#$300,d6

loc_1B8BC:
		cmp.w	-6(a0),d6
		bgt.s	loc_1B8C8
		subq.w	#6,a0
		subq.w	#1,a3
		bra.s	loc_1B8BC
; ---------------------------------------------------------------------------

loc_1B8C8:
		move.l	a0,($FFFFF772).w
		move.w	a3,($FFFFF77A).w
		bra.s	loc_1B91A
; ---------------------------------------------------------------------------

loc_1B8D2:
		move.w	d6,($FFFFF76E).w
		movea.l	($FFFFF772).w,a0
		movea.w	($FFFFF77A).w,a3
		addi.w	#$280,d6
		jsr	Create_New_Sprite(pc)
		bne.s	loc_1B8F2

loc_1B8E8:
		cmp.w	(a0),d6
		bls.s	loc_1B8F2
		jsr	(a6)
		addq.w	#1,a3
		beq.s	loc_1B8E8

loc_1B8F2:

		move.l	a0,($FFFFF772).w
		move.w	a3,($FFFFF77A).w
		movea.l	($FFFFF774).w,a0
		movea.w	($FFFFF778).w,a3
		subi.w	#$300,d6
		bcs.s	loc_1B912

loc_1B908:
		cmp.w	(a0),d6
		bls.s	loc_1B912
		addq.w	#6,a0
		addq.w	#1,a3
		bra.s	loc_1B908
; ---------------------------------------------------------------------------

loc_1B912:

		move.l	a0,($FFFFF774).w
		move.w	a3,($FFFFF778).w

loc_1B91A:

		move.w	(Camera_Y_pos).w,d6
		andi.w	#$FF80,d6
		move.w	d6,d3
		cmp.w	($FFFFF770).w,d6
		beq.w	loc_1B9FA
		bge.s	loc_1B956
		tst.w	(Camera_min_Y_pos).w
		bpl.s	loc_1B94C
		tst.w	d6
		bne.s	loc_1B940
		cmpi.w	#$80,($FFFFF770).w
		bne.s	loc_1B968

loc_1B940:

		subi.w	#$80,d3
		bpl.s	loc_1B982
		and.w	#$7FF,d3
		bra.s	loc_1B982
; ---------------------------------------------------------------------------

loc_1B94C:
		subi.w	#$80,d3
		bmi.w	loc_1B9FA
		bra.s	loc_1B982
; ---------------------------------------------------------------------------

loc_1B956:
		tst.w	(Camera_min_Y_pos).w
		bpl.s	loc_1B978
		tst.w	($FFFFF770).w
		bne.s	loc_1B968
		cmpi.w	#$80,d6
		bne.s	loc_1B940

loc_1B968:

		addi.w	#$180,d3
		cmp.w	#$7FF,d3
		bcs.s	loc_1B982
		and.w	#$7FF,d3
		bra.s	loc_1B982
; ---------------------------------------------------------------------------

loc_1B978:
		addi.w	#$180,d3
		cmp.w	#$7FF,d3
		bhi.s	loc_1B9FA

loc_1B982:

		jsr	Create_New_Sprite(pc)
		bne.s	loc_1B9FA
		move.w	d3,d4
		addi.w	#$80,d4
		move.w	#$FFF,d5
		movea.l	($FFFFF774).w,a0
		movea.w	($FFFFF778).w,a3
		move.l	($FFFFF772).w,d7
		sub.l	a0,d7
		beq.s	loc_1B9FA
		addq.w	#2,a0

loc_1B9A4:
		tst.b	(a3)
		bmi.s	loc_1B9F2
		move.w	(a0),d1
		and.w	d5,d1
		cmp.w	d3,d1
		bcs.s	loc_1B9F2
		cmp.w	d4,d1
		bhi.s	loc_1B9F2
		bset	#7,(a3)
		move.w	-2(a0),$10(a1)
		move.w	(a0),d1
		move.w	d1,d2
		and.w	d5,d1
		move.w	d1,$14(a1)
		rol.w	#3,d2
		andi.w	#3,d2
		move.b	d2,4(a1)
		move.b	d2,$2A(a1)
		move.b	2(a0),d2
		add.w	d2,d2
		add.w	d2,d2
		move.l	(a4,d2.w),(a1)
		move.b	3(a0),$2C(a1)
		move.w	a3,$48(a1)
		jsr	SingleObjLoad(pc)
		bne.s	loc_1B9FA

loc_1B9F2:

		addq.w	#6,a0
		addq.w	#1,a3
		subq.w	#6,d7
		bne.s	loc_1B9A4

loc_1B9FA:

		move.w	d6,($FFFFF770).w
		rts
; ---------------------------------------------------------------------------
		bset	#7,(a3)
		beq.s	sub_1BA0C
		addq.w	#6,a0
		moveq	#0,d1
		rts

; =============== S U B R O U T I N E =======================================


sub_1BA0C:

		move.w	(a0)+,$10(a1)
		move.w	(a0)+,d1
		move.w	d1,d2
		andi.w	#$FFF,d1
		move.w	d1,$14(a1)
		rol.w	#3,d2
		andi.w	#3,d2
		move.b	d2,4(a1)
		move.b	d2,$2A(a1)
		move.b	(a0)+,d2
		add.w	d2,d2
		add.w	d2,d2
		move.l	(a4,d2.w),(a1)
		move.b	(a0)+,$2C(a1)
		move.w	a3,$48(a1)
		bra.w	SingleObjLoad
; ---------------------------------------------------------------------------

loc_1BA40:
		tst.b	(a3)
		bpl.s	loc_1BA4A
		addq.w	#6,a0
		moveq	#0,d1
		rts
; ---------------------------------------------------------------------------

loc_1BA4A:
		move.w	(a0)+,d7
		move.w	(a0)+,d1
		move.w	d1,d2
		bmi.s	loc_1BA62
		and.w	d5,d1
		cmp.w	d3,d1
		bcc.s	loc_1BA64
		cmp.w	d4,d1
		bls.s	loc_1BA64
		addq.w	#2,a0
		moveq	#0,d1
		rts
; ---------------------------------------------------------------------------

loc_1BA62:
		and.w	d5,d1

loc_1BA64:

		bset	#7,(a3)
		move.w	d7,$10(a1)
		move.w	d1,$14(a1)
		rol.w	#3,d2
		andi.w	#3,d2
		move.b	d2,4(a1)
		move.b	d2,$2A(a1)
		move.b	(a0)+,d2
		add.w	d2,d2
		add.w	d2,d2
		move.l	(a4,d2.w),(a1)
		move.b	(a0)+,$2C(a1)
		move.w	a3,$48(a1)
		bra.s	SingleObjLoad
; ---------------------------------------------------------------------------

loc_1BA92:
		tst.b	(a3)
		bpl.s	loc_1BA9C
		addq.w	#6,a0
		moveq	#0,d1
		rts
; ---------------------------------------------------------------------------

loc_1BA9C:
		move.w	(a0)+,d7
		move.w	(a0)+,d1
		move.w	d1,d2
		bmi.s	loc_1BAB4
		and.w	d5,d1
		cmp.w	d3,d1
		bcs.s	loc_1BAAE
		cmp.w	d4,d1
		bls.s	loc_1BAB6

loc_1BAAE:
		addq.w	#2,a0
		moveq	#0,d1
		rts
; ---------------------------------------------------------------------------

loc_1BAB4:
		and.w	d5,d1

loc_1BAB6:
		bset	#7,(a3)
		move.w	d7,$10(a1)
		move.w	d1,$14(a1)
		rol.w	#3,d2
		andi.w	#3,d2
		move.b	d2,4(a1)
		move.b	d2,$2A(a1)
		move.b	(a0)+,d2
		add.w	d2,d2
		add.w	d2,d2
		move.l	(a4,d2.w),(a1)
		move.b	(a0)+,$2C(a1)
		move.w	a3,$48(a1)