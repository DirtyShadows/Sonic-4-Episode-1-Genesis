;=============================================================================== 
; Object 0x23 - Neo Green Hill - Pillar That Drops Lower Half 
; [ Begin ]	
;===============================================================================
loc_21648:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_21656(pc,d0),d1
		jmp	loc_21656(pc,d1)
loc_21656:
		dc.w	loc_2165A-loc_21656
		dc.w	loc_216DE-loc_21656
loc_2165A:
		addq.b	#2,$24(a0)
		move.l	#Pillar_Mappings,4(a0) 
		move.w	#$2000,2(a0)
		bsr	loc_21EA8
		or.b	#4,1(a0)
		move.b	#$10,$19(a0)
		move.b	#$20,$16(a0)
		move.b	#4,$18(a0)
		bsr	loc_21EA2
		bne.s	loc_216DE
		move.b	0(a0),0(a1)
		addq.b	#2,$24(a1)
		addq.b	#2,$25(a1)
		move.l	4(a0),4(a1)
		move.w	2(a0),2(a1)
		move.w	8(a0),8(a1)
		move.w	8(a0),$30(a1)
		move.w	$C(a0),$C(a1)
		add.w	#$30,$C(a1)
		move.b	1(a0),1(a1)
		move.b	#$10,$19(a1)
		move.b	#$10,$16(a1)
		move.b	#4,$18(a1)
		move.b	#1,$1A(a1)
loc_216DE:
		move.w	8(a0),-(sp)
		bsr	loc_21704
		moveq	#0,d1
		move.b	$19(a0),d1
		add.w	#$B,d1
		moveq	#0,d2
		move.b	$16(a0),d2
		move.w	d2,d3
		addq.w	#1,d3
		move.w	(sp)+,d4
		bsr	loc_21EAE
		bra	loc_21E9C
loc_21704:
		moveq	#0,d0
		move.b	$25(a0),d0
		move.w	loc_21712(pc,d0),d1
		jmp	loc_21712(pc,d1)
loc_21712:	
		dc.w	loc_21748-loc_21712
		dc.w	loc_2171A-loc_21712
		dc.w	loc_2174A-loc_21712
		dc.w	loc_21774-loc_21712
loc_2171A:
		tst.w	($FFFFFE08).w
		bne.s	loc_21748
		lea	($FFFFB000).w,a1
		bsr.s	loc_2172A
		lea	($FFFFB040).w,a1
loc_2172A:
		move.w	8(a0),d0
		sub.w	8(a1),d0
		bcc.s	loc_21736
		neg.w	d0
loc_21736:
		cmp.w	#$80,d0
		bcc.s	loc_21748
		move.b	#4,$25(a0)
		move.w	#8,$34(a0)
loc_21748:
		rts
loc_2174A:
		move.w	$34(a0),d0
		subq.w	#1,d0
		bcc.s	loc_21758
		addq.b	#2,$25(a0)
		rts
loc_21758:
		move.w	d0,$34(a0)
		move.b	loc_2176C(pc,d0),d0
		ext.w	d0
		add.w	$30(a0),d0
		move.w	d0,8(a0)
		rts
loc_2176C:
		dc.b	0,1,$FF,1,0,$FF,0,$1
loc_21774:
		bsr	loc_21EB4
		add.w	#$38,$12(a0)
		bsr	ObjHitFloor	
		tst.w	d1
		bpl	loc_217A0
		add.w	d1,$C(a0)
		clr.w	$12(a0)
		move.w	$C(a0),$32(a0)
		move.b	#2,$1A(a0)
		clr.b	$25(a0)
loc_217A0:
		rts 
;-------------------------------------------------------------------------------
Pillar_Mappings: 
		dc.w	loc_217A8-Pillar_Mappings
		dc.w	loc_217DA-Pillar_Mappings
		dc.w	loc_217F4-Pillar_Mappings
loc_217A8:
		dc.w	$6
		dc.l	$E005005D,$2EFFE0,$E005085D,$82E0010
		dc.l	$E00D0061,$30FFF0,$F00D0069,$34FFF0
		dc.l	$D0069,$34FFF0,$100D0071,$38FFF0
loc_217DA:
		dc.w	$3
		dc.l	$F00D0069,$34FFF0,$D0079,$3CFFF0
		dc.l	$10040081,$40FFF0
loc_217F4:
		dc.w	$4
		dc.l	$90D208B,$2045FFF0,$F00D0069,$34FFF0
		dc.l	$D0079,$3CFFF0,$10040081,$40FFF0	
;=============================================================================== 
; Object 0x23 - Neo Green Hill - Pillar That Drops Lower Half 
; [ End ]	
;=============================================================================== 