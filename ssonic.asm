
loc_9CF2:				; CODE XREF: ROM:00009CF8j
		move.w	(a5),d1
		btst	#1,d1
		bne.s	loc_9CF2
		move.w	#-$70FE,(a5)
		clr.l	($FFFFF616).w
		clr.l	($FFFFF61A).w
		move.w	#0,($A11100).l
		lea	($C00004).l,a6
		move.w	#-$74FD,(a6)
		move.w	#-$7DD0,(a6)
		move.w	#-$7BF9,(a6)
		move.w	#-$7A84,(a6)
		move.w	#-$6FFF,(a6)
		move.w	#-$7FFC,(a6)
		move.w	#-$78E0,(a6)
		move.w	#-$7521,($FFFFF624).w
		move.w	($FFFFF624).w,(a6)
		clr.b	($FFFFFE19).w
		cmpi.b	#7,($FFFFFFB1).w
		bne.s	loc_9D64
		cmpi.w	#2,($FFFFFF70).w
		beq.s	loc_9D64
		st	($FFFFFE19).w
		move.b	#-1,($FFFFF65F).w
		move.b	#$F,($FFFFF65E).w
		move.w	#$30,($FFFFF65C).w ; '0'

loc_9D64:				; CODE XREF: ROM:00009D44j
					; ROM:00009D4Cj
		moveq	#0,d0
		cmpi.w	#2,($FFFFFF70).w
		beq.s	loc_9D78
		tst.b	($FFFFFE19).w
		bne.s	loc_9D7A
		bra.w	loc_9D7C
; 컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴�

loc_9D78:				; CODE XREF: ROM:00009D6Cj
		addq.w	#2,d0

loc_9D7A:				; CODE XREF: ROM:00009D72j
		addq.w	#2,d0

loc_9D7C:				; CODE XREF: ROM:00009D74j
		move.w	d0,($FFFFF750).w
		bsr.w	sub_ABE2
		bsr.w	sub_AC30
		move.l	#$6AC00000,($C00004).l
		lea	(ArtNem_91F3C).l,a0
		bsr.w	j_NemDec_14DE
		move.l	#$65000001,($C00004).l
		lea	(ArtNem_90992).l,a0
		bsr.w	j_NemDec_14DE
		move.l	#$52600002,($C00004).l
		lea	(ArtNem_927E0).l,a0
		bsr.w	j_NemDec_14DE
		move.l	#$60000002,($C00004).l
		lea	(ArtNem_8CC44).l,a0
		bsr.w	j_NemDec_14DE
		move.l	#$69E00002,($C00004).l
		lea	(ArtNem_8DAFC).l,a0
		bsr.w	j_NemDec_14DE
		move.w	#$E00,($FFFFFE10).w
		move	#$2300,sr
		moveq	#-$6B,d0
		bsr.w	sub_BF98
		move.l	#$EEE0EEE,d1
		lea	($FFFFFB00).w,a1
		moveq	#$1F,d0
