; =============== S U B R O U T I N E =======================================


Render_Sprites:

;		tst.w	($FFFFFFE8).w
;		bne.w	loc_1B1F4
		moveq	#$4F,d7
		moveq	#0,d6
		lea	($FFFFAC00).w,a5
		lea	($FFFFC904).w,a3
		lea	($FFFFF800).w,a6
;		tst.b	($FFFFF711).w
;		beq.s	loc_1AD4A
;		jsr	(sub_DB44).l
;		jsr	(sub_EB86).l

loc_1AD4A:
		tst.w	(a5)
		beq.w	loc_1ADE6
		lea	2(a5),a4

loc_1AD54:
		movea.w	(a4)+,a0
		andi.b	#$7F,render_flags(a0)
		move.b	render_flags(a0),d6
		move.w	x_pos(a0),d0
		move.w	y_pos(a0),d1
		btst	#6,d6
		bne.w	loc_1AE58
		btst	#2,d6
		beq.s	loc_1ADB2
		moveq	#0,d2
		move.b	width_pixels(a0),d2
		sub.w	(a3),d0
		move.w	d0,d3
		add.w	d2,d3
		bmi.s	loc_1ADE0
		move.w	d0,d3
		sub.w	d2,d3
		cmpi.w	#$140,d3
		bge.s	loc_1ADE0
		addi.w	#$80,d0
		sub.w	4(a3),d1
		move.b	y_pos(a0),d2
		add.w	d2,d1
		and.w	$7FF,d1
		move.w	d2,d3
		add.w	d2,d2
		addi.w	#$E0,d2
		cmp.w	d2,d1
		bcc.s	loc_1ADE0
		addi.w	#$80,d1
		sub.w	d3,d1

loc_1ADB2:
		ori.b	#$80,render_flags(a0)
		tst.w	d7
		bmi.s	loc_1ADE0
		movea.l	mappings(a0),a1
		moveq	#0,d4
		btst	#5,d6
		bne.s	loc_1ADD8
		move.b	mapping_frame(a0),d4
		add.w	d4,d4
		adda.w	(a1,d4.w),a1
		move.w	(a1)+,d4
		subq.w	#1,d4
		bmi.s	loc_1ADE0

loc_1ADD8:
		move.w	art_tile(a0),d5
		jsr	sub_1AF6C(pc)

loc_1ADE0:
					; Render_Sprites+6Cj ...
		subq.w	#2,(a5)
		bne.w	loc_1AD54

loc_1ADE6:
;		cmpa.l	#$FFFFAC00,a5
;		bne.s	loc_1ADFC
;		cmpi.b	#9,($FFFFFE10).w
;		bne.s	loc_1ADFC
;		jsr	(sub_1CB68).l

loc_1ADFC:
					; Render_Sprites+D4j
		lea	$80(a5),a5
		cmpa.l	#$FFFFD000,a5
		bcs.w	loc_1AD4A
		move.w	d7,d6
		bmi.s	loc_1AE18
		moveq	#0,d0

loc_1AE10:
		move.w	d0,(a6)
		addq.w	#8,a6
		dbf	d7,loc_1AE10

loc_1AE18:
		subi.w	#$4F,d6
		neg.w	d6
		move.b	d6,($FFFFF62C).w
;		tst.w	($FFFFEF3A).w
;		beq.s	locret_1AE56
;		cmpi.b	#6,($FFFFD024).w
;		bcc.s	loc_1AE34
;		clr.w	($FFFFEF3A).w

;loc_1AE34:
;		lea	($FFFFF7FC).w,a0
;		move.w	#$7C0,d0
;		moveq	#$4E,d1

;loc_1AE3E:
					; Render_Sprites+134j
;		addq.w	#8,a0
;		cmp.w	(a0),d0
;		dbeq	d1,loc_1AE3E
;		bne.s	locret_1AE56
;		move.w	#1,2(a0)
;		clr.w	art_tile(a0)
;		subq.w	#1,d1
;		bpl.s	loc_1AE3E
;
locret_1AE56:
					; Render_Sprites+126j
		rts
; ---------------------------------------------------------------------------

loc_1AE58:
		btst	#2,d6
		bne.s	loc_1AEA2
		moveq	#0,d2
		move.b	width_pixels(a0),d2
		subi.w	#$80,d0
		move.w	d0,d3
		add.w	d2,d3
		bmi.w	loc_1ADE0
		move.w	d0,d3
		sub.w	d2,d3
		cmpi.w	#$140,d3
		bge.w	loc_1ADE0
		addi.w	#$80,d0
		move.b	y_pos(a0),d2
		subi.w	#$80,d1
		move.w	d1,d3
		add.w	d2,d3
		bmi.w	loc_1ADE0
		move.w	d1,d3
		sub.w	d2,d3
		cmpi.w	#$E0,d3
		bge.w	loc_1ADE0
		addi.w	#$80,d1
		bra.s	loc_1AEE4
; ---------------------------------------------------------------------------

loc_1AEA2:
		moveq	#0,d2
		move.b	width_pixels(a0),d2
		sub.w	(a3),d0
		move.w	d0,d3
		add.w	d2,d3
		bmi.w	loc_1ADE0
		move.w	d0,d3
		sub.w	d2,d3
		cmpi.w	#$140,d3
		bge.w	loc_1ADE0
		addi.w	#$80,d0
		sub.w	4(a3),d1
		move.b	y_pos(a0),d2
		add.w	d2,d1
		and.w	$7FF,d1
		move.w	d2,d3
		add.w	d2,d2
		addi.w	#$E0,d2
		cmp.w	d2,d1
		bcc.w	loc_1ADE0
		addi.w	#$80,d1
		sub.w	d3,d1

loc_1AEE4:
		ori.b	#$80,render_flags(a0)
		tst.w	d7
		bmi.w	loc_1ADE0
		move.w	art_tile(a0),d5
		movea.l	mappings(a0),a2
		moveq	#0,d4
		move.b	mapping_frame(a0),d4
		beq.s	loc_1AF1C
		add.w	d4,d4
		lea	(a2),a1
		adda.w	(a1,d4.w),a1
		move.w	(a1)+,d4
		subq.w	#1,d4
		bmi.s	loc_1AF1C
		move.w	d6,d3
		jsr	sub_1B070(pc)
		move.w	d3,d6
		tst.w	d7
		bmi.w	loc_1ADE0

loc_1AF1C:
					; Render_Sprites+1ECj
		move.w	$16(a0),d3
		subq.w	#1,d3
		bcs.w	loc_1ADE0
		lea	$18(a0),a0

loc_1AF2A:
		move.w	(a0)+,d0
		move.w	(a0)+,d1
		btst	#2,d6
		beq.s	loc_1AF46
		sub.w	(a3),d0
		addi.w	#$80,d0
		sub.w	4(a3),d1
		addi.w	#$80,d1
		and.w	$7FF,d1

loc_1AF46:
		addq.w	#1,a0
		moveq	#0,d4
		move.b	(a0)+,d4
		add.w	d4,d4
		lea	(a2),a1
		adda.w	(a1,d4.w),a1
		move.w	(a1)+,d4
		subq.w	#1,d4
		bmi.s	loc_1AF62
		move.w	d6,-(sp)
		jsr	sub_1B070(pc)
		move.w	(sp)+,d6

loc_1AF62:
		tst.w	d7
		dbmi	d3,loc_1AF2A
		bra.w	loc_1ADE0
; End of function Render_Sprites

; =============== S U B R O U T I N E =======================================


sub_1AF6C:

		lsr.b	#1,d6
		bcs.s	loc_1AF9E
		lsr.b	#1,d6
		bcs.w	loc_1B038

loc_1AF76:
		move.b	(a1)+,d2
		ext.w	d2
		add.w	d1,d2
		move.w	d2,(a6)+
		move.b	(a1)+,(a6)+
		addq.w	#1,a6
		move.w	(a1)+,d2
		add.w	d5,d2
		move.w	d2,(a6)+
		move.w	(a1)+,d2
		add.w	d0,d2
		andi.w	#$1FF,d2
		bne.s	loc_1AF94
		addq.w	#1,d2

loc_1AF94:
		move.w	d2,(a6)+
		subq.w	#1,d7
		dbmi	d4,loc_1AF76
		rts
; ---------------------------------------------------------------------------

loc_1AF9E:
		lsr.b	#1,d6
		bcs.s	loc_1AFE8

loc_1AFA2:
		move.b	(a1)+,d2
		ext.w	d2
		add.w	d1,d2
		move.w	d2,(a6)+
		move.b	(a1)+,d6
		move.b	d6,(a6)+
		addq.w	#1,a6
		move.w	(a1)+,d2
		add.w	d5,d2
		eori.w	#$800,d2
		move.w	d2,(a6)+
		move.w	(a1)+,d2
		neg.w	d2
		move.b	byte_1AFD8(pc,d6.w),d6
		sub.w	d6,d2
		add.w	d0,d2
		andi.w	#$1FF,d2
		bne.s	loc_1AFCE
		addq.w	#1,d2

loc_1AFCE:
		move.w	d2,(a6)+
		subq.w	#1,d7
		dbmi	d4,loc_1AFA2
		rts
; ---------------------------------------------------------------------------
byte_1AFD8:	dc.b 8
		dc.b 8
		dc.b 8
		dc.b 8
		dc.b $10
		dc.b $10
		dc.b $10
		dc.b $10
		dc.b $18
		dc.b $18
		dc.b $18
		dc.b $18
		dc.b $20
		dc.b $20
		dc.b $20
		dc.b $20
; ---------------------------------------------------------------------------

loc_1AFE8:

		move.b	(a1)+,d2
		ext.w	d2
		neg.w	d2
		move.b	(a1),d6
		move.b	byte_1B028(pc,d6.w),d6
		sub.w	d6,d2
		add.w	d1,d2
		move.w	d2,(a6)+
		move.b	(a1)+,d6
		move.b	d6,(a6)+
		addq.w	#1,a6
		move.w	(a1)+,d2
		add.w	d5,d2
		eori.w	#$1800,d2
		move.w	d2,(a6)+
		move.w	(a1)+,d2
		neg.w	d2
		move.b	byte_1AFD8(pc,d6.w),d6
		sub.w	d6,d2
		add.w	d0,d2
		andi.w	#$1FF,d2
		bne.s	loc_1B01E
		addq.w	#1,d2

loc_1B01E:
		move.w	d2,(a6)+
		subq.w	#1,d7
		dbmi	d4,loc_1AFE8
		rts
; ---------------------------------------------------------------------------
byte_1B028:	dc.b 8
		dc.b $10
		dc.b $18
		dc.b $20
		dc.b 8
		dc.b $10
		dc.b $18
		dc.b $20
		dc.b 8
		dc.b $10
		dc.b $18
		dc.b $20
		dc.b 8
		dc.b $10
		dc.b $18
		dc.b $20
; ---------------------------------------------------------------------------

loc_1B038:

		move.b	(a1)+,d2
		ext.w	d2
		neg.w	d2
		move.b	(a1)+,d6
		move.b	d6,2(a6)
		move.b	byte_1B028(pc,d6.w),d6
		sub.w	d6,d2
		add.w	d1,d2
		move.w	d2,(a6)+
		addq.w	#2,a6
		move.w	(a1)+,d2
		add.w	d5,d2
		eori.w	#$1000,d2
		move.w	d2,(a6)+
		move.w	(a1)+,d2
		add.w	d0,d2
		andi.w	#$1FF,d2
		bne.s	loc_1B066
		addq.w	#1,d2

loc_1B066:
		move.w	d2,(a6)+
		subq.w	#1,d7
		dbmi	d4,loc_1B038
		rts
; End of function sub_1AF6C


; =============== S U B R O U T I N E =======================================


sub_1B070:
					; Render_Sprites+23Ct ...
		lsr.b	#1,d6
		bcs.s	loc_1B0C2
		lsr.b	#1,d6
		bcs.w	loc_1B19C

loc_1B07A:

		move.b	(a1)+,d2
		ext.w	d2
		add.w	d1,d2
		cmpi.w	#$60,d2
		bls.s	loc_1B0BA
		cmpi.w	#$160,d2
		bcc.s	loc_1B0BA
		move.w	d2,(a6)+
		move.b	(a1)+,(a6)+
		addq.w	#1,a6
		move.w	(a1)+,d2
		add.w	d5,d2
		move.w	d2,(a6)+
		move.w	(a1)+,d2
		add.w	d0,d2
		cmpi.w	#$60,d2
		bls.s	loc_1B0B2
		cmpi.w	#$1C0,d2
		bcc.s	loc_1B0B2
		move.w	d2,(a6)+
		subq.w	#1,d7
		dbmi	d4,loc_1B07A
		rts
; ---------------------------------------------------------------------------

loc_1B0B2:

		subq.w	#6,a6
		dbf	d4,loc_1B07A
		rts
; ---------------------------------------------------------------------------

loc_1B0BA:

		addq.w	#5,a1
		dbf	d4,loc_1B07A
		rts
; ---------------------------------------------------------------------------

loc_1B0C2:
		lsr.b	#1,d6
		bcs.s	loc_1B12C

loc_1B0C6:

		move.b	(a1)+,d2
		ext.w	d2
		add.w	d1,d2
		cmpi.w	#$60,d2
		bls.s	loc_1B114
		cmpi.w	#$160,d2
		bcc.s	loc_1B114
		move.w	d2,(a6)+
		move.b	(a1)+,d6
		move.b	d6,(a6)+
		addq.w	#1,a6
		move.w	(a1)+,d2
		add.w	d5,d2
		eori.w	#$800,d2
		move.w	d2,(a6)+
		move.w	(a1)+,d2
		neg.w	d2
		move.b	byte_1B11C(pc,d6.w),d6
		sub.w	d6,d2
		add.w	d0,d2
		cmpi.w	#$60,d2
		bls.s	loc_1B10C
		cmpi.w	#$1C0,d2
		bcc.s	loc_1B10C
		move.w	d2,(a6)+
		subq.w	#1,d7
		dbmi	d4,loc_1B0C6
		rts
; ---------------------------------------------------------------------------

loc_1B10C:

		subq.w	#6,a6
		dbf	d4,loc_1B0C6
		rts
; ---------------------------------------------------------------------------

loc_1B114:

		addq.w	#5,a1
		dbf	d4,loc_1B0C6
		rts
; ---------------------------------------------------------------------------
byte_1B11C:	dc.b 8
		dc.b 8
		dc.b 8
		dc.b 8
		dc.b $10
		dc.b $10
		dc.b $10
		dc.b $10
		dc.b $18
		dc.b $18
		dc.b $18
		dc.b $18
		dc.b $20
		dc.b $20
		dc.b $20
		dc.b $20
; ---------------------------------------------------------------------------

loc_1B12C:

		move.b	(a1)+,d2
		ext.w	d2
		neg.w	d2
		move.b	(a1),d6
		move.b	byte_1B18C(pc,d6.w),d6
		sub.w	d6,d2
		add.w	d1,d2
		cmpi.w	#$60,d2
		bls.s	loc_1B184
		cmpi.w	#$160,d2
		bcc.s	loc_1B184
		move.w	d2,(a6)+
		move.b	(a1)+,d6
		move.b	d6,(a6)+
		addq.w	#1,a6
		move.w	(a1)+,d2
		add.w	d5,d2
		eori.w	#$1800,d2
		move.w	d2,(a6)+
		move.w	(a1)+,d2
		neg.w	d2
		move.b	byte_1B11C(pc,d6.w),d6
		sub.w	d6,d2
		add.w	d0,d2
		cmpi.w	#$60,d2
		bls.s	loc_1B17C
		cmpi.w	#$1C0,d2
		bcc.s	loc_1B17C
		move.w	d2,(a6)+
		subq.w	#1,d7
		dbmi	d4,loc_1B12C
		rts
; ---------------------------------------------------------------------------

loc_1B17C:

		subq.w	#6,a6
		dbf	d4,loc_1B12C
		rts
; ---------------------------------------------------------------------------

loc_1B184:

		addq.w	#5,a1
		dbf	d4,loc_1B12C
		rts
; ---------------------------------------------------------------------------
byte_1B18C:	dc.b 8
		dc.b $10
		dc.b $18
		dc.b $20
		dc.b 8
		dc.b $10
		dc.b $18
		dc.b $20
		dc.b 8
		dc.b $10
		dc.b $18
		dc.b $20
		dc.b 8
		dc.b $10
		dc.b $18
		dc.b $20
; ---------------------------------------------------------------------------

loc_1B19C:

		move.b	(a1)+,d2
		ext.w	d2
		neg.w	d2
		move.b	(a1)+,d6
		move.b	d6,2(a6)
		move.b	byte_1B18C(pc,d6.w),d6
		sub.w	d6,d2
		add.w	d1,d2
		cmpi.w	#$60,d2
		bls.s	loc_1B1EC
		cmpi.w	#$160,d2
		bcc.s	loc_1B1EC
		move.w	d2,(a6)+
		addq.w	#2,a6
		move.w	(a1)+,d2
		add.w	d5,d2
		eori.w	#$1000,d2
		move.w	d2,(a6)+
		move.w	(a1)+,d2
		add.w	d0,d2
		cmpi.w	#$60,d2
		bls.s	loc_1B1E4
		cmpi.w	#$1C0,d2
		bcc.s	loc_1B1E4
		move.w	d2,(a6)+
		subq.w	#1,d7
		dbmi	d4,loc_1B19C
		rts
; ---------------------------------------------------------------------------

loc_1B1E4:

		subq.w	#6,a6
		dbf	d4,loc_1B19C
		rts
; ---------------------------------------------------------------------------

loc_1B1EC:

		addq.w	#4,a1
		dbf	d4,loc_1B19C
		rts
; End of function sub_1B070