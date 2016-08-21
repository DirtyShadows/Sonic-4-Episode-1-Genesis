;===============================================================================
; Object 0x4B - Green Hill - Buzz Bomber	
; [ Begin ]
;===============================================================================	
loc_29618:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_29626(pc,d0),d1
		jmp	loc_29626(pc,d1)
loc_29626:
		dc.w	loc_29678-loc_29626
		dc.w	loc_29724-loc_29626
		dc.w	loc_29640-loc_29626
		dc.w	loc_2962E-loc_29626
loc_2962E:
		bsr	loc_2992C
		lea	(Buzzer_AnimateData),a1 
		bsr	loc_29914
		bra	loc_29920
loc_29640:
		move.l	$2A(a0),a1
		tst.b	(a1)
		beq	loc_29908
		tst.w	$30(a1)
		bmi.s	loc_29652
		rts
loc_29652:
		move.w	8(a1),8(a0)
		move.w	$C(a1),$C(a0)
		move.b	$22(a1),$22(a0)
		move.b	1(a1),1(a0)
		lea	(Buzzer_AnimateData),a1 
		bsr	loc_29914
		bra	loc_29920
loc_29678:
		move.l	#Buzzer_Mappings,4(a0) 
		move.w	#$3D2,2(a0)
		bsr	loc_29926
		or.b	#4,1(a0)
		move.b	#$A,$20(a0)
		move.b	#4,$18(a0)
		move.b	#$10,$19(a0)
		move.b	#$10,$16(a0)
		move.b	#$18,$17(a0)
		move.b	#3,$18(a0)
		addq.b	#2,$24(a0)
		bsr	loc_2990E
		bne.s	loc_29722
		move.b	#$4B,0(a1)
		move.b	#4,$24(a1)
		move.l	#Buzzer_Mappings,4(a1) 
		move.w	#$3D2,2(a1)
		bsr	loc_2991A
		move.b	#4,$18(a1)
		move.b	#$10,$19(a1)
		move.b	$22(a0),$22(a1)
		move.b	1(a0),1(a1)
		move.b	#1,$1C(a1)
		move.l	a0,$2A(a1)
		move.w	8(a0),8(a1)
		move.w	$C(a0),$C(a1)
		move.w	#$100,$2E(a0)
		move.w	#$FF00,$10(a0)
		btst	#0,1(a0)
		beq.s	loc_29722
		neg.w	$10(a0)
loc_29722:
		rts
loc_29724:
		moveq	#0,d0
		move.b	$25(a0),d0
		move.w	loc_29740(pc,d0),d1
		jsr	loc_29740(pc,d1)
		lea	(Buzzer_AnimateData),a1 
		bsr	loc_29914
		bra	loc_29920
loc_29740:
		dc.w	loc_29744-loc_29740
		dc.w	loc_297D4-loc_29740
loc_29744:
		bsr	loc_29786
		subq.w	#1,$30(a0)
		move.w	$30(a0),d0
		cmp.w	#$F,d0
		beq.s	loc_2976A
		tst.w	d0
		bpl.s	loc_29768
		subq.w	#1,$2E(a0)
		bgt	loc_2992C
		move.w	#$1E,$30(a0)
loc_29768:
		rts
loc_2976A:
		sf	$32(a0)
		neg.w	$10(a0)
		bchg	#0,1(a0)
		bchg	#0,$22(a0)
		move.w	#$100,$2E(a0)
		rts
loc_29786:
		tst.b	$32(a0)
		bne	loc_297D2
		move.w	8(a0),d0
		sub.w	($FFFFB008).w,d0
		move.w	d0,d1
		bpl.s	loc_2979C
		neg.w	d0
loc_2979C:
		cmp.w	#$28,d0
		blt.s	loc_297D2
		cmp.w	#$30,d0
		bgt.s	loc_297D2
		tst.w	d1
		bpl.s	loc_297B6
		btst	#0,1(a0)
		beq.s	loc_297D2
		bra.s	loc_297BE
loc_297B6:
		btst	#0,1(a0)
		bne.s	loc_297D2
loc_297BE:
		st	$32(a0)
		addq.b	#2,$25(a0)
		move.b	#3,$1C(a0)
		move.w	#$32,$34(a0)
loc_297D2:
		rts
loc_297D4:
		move.w	$34(a0),d0
		subq.w	#1,d0
		blt.s	loc_297E8
		move.w	d0,$34(a0)
		cmp.w	#$14,d0
		beq.s	loc_297EE
		rts
loc_297E8:
		subq.b	#2,$25(a0)
		rts
loc_297EE:
		jsr	S1SingleObjectLoad	
		bne.s	loc_29868
		move.b	#$4B,0(a1)
		move.b	#6,$24(a1)
		move.l	#Buzzer_Mappings,4(a1) ; Offset0x02988A
		move.w	#$3D2,2(a1)
		bsr	loc_2991A
		move.b	#4,$18(a1)
		move.b	#$98,$20(a1)
		move.b	#$10,$19(a1)
		move.b	$22(a0),$22(a1)
		move.b	1(a0),1(a1)
		move.b	#2,$1C(a1)
		move.w	8(a0),8(a1)
		move.w	$C(a0),$C(a1)
		add.w	#$18,$C(a1)
		move.w	#$D,d0
		move.w	#$180,$12(a1)
		move.w	#$FE80,$10(a1)
		btst	#0,1(a1)
		beq.s	loc_29868
		neg.w	$10(a1)
		neg.w	d0
loc_29868:
		add.w	d0,8(a1)
		rts
Buzzer_AnimateData: 
		dc.w	loc_29876-Buzzer_AnimateData
		dc.w	loc_29879-Buzzer_AnimateData
		dc.w	loc_2987D-Buzzer_AnimateData
		dc.w	loc_29881-Buzzer_AnimateData
loc_29876:
		dc.b	$F,0,$FF
loc_29879:
		dc.b	2,3,4,$FF
loc_2987D:
		dc.b	3,5,6,$FF
loc_29881:
		dc.b	9,1,1,1,1,1,$FD,0,$0	
Buzzer_Mappings: 
		dc.w	loc_29898-Buzzer_Mappings
		dc.w	loc_298AA-Buzzer_Mappings
		dc.w	loc_298C4-Buzzer_Mappings
		dc.w	loc_298DE-Buzzer_Mappings
		dc.w	loc_298E8-Buzzer_Mappings
		dc.w	loc_298F2-Buzzer_Mappings
		dc.w	loc_298FC-Buzzer_Mappings
loc_29898:
		dc.w	$2
		dc.l	$F8090000,$FFE8,$F8090006,$30000
loc_298AA:
		dc.w	$3
		dc.l	$F8090000,$FFE8,$F805000C,$60000
		dc.l	$8050010,$80002
loc_298C4:
		dc.w	$3
		dc.l	$F8090000,$FFE8,$F805000C,$60000
		dc.l	$8050014,$A0002
loc_298DE:
		dc.w	$1
		dc.l	$F0010014,$A0004
loc_298E8:
		dc.w	$1
		dc.l	$F0010016,$B0004
loc_298F2:
		dc.w	$1
		dc.l	$F8010018,$CFFF4
loc_298FC:
		dc.w	$1
		dc.l	$F801001A,$DFFF4	
;===============================================================================
; Object 0x4B - Green Hill - Buzz Bomber	
; [ End ]
;===============================================================================