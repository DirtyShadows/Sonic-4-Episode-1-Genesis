;=============================================================================== 
; Object 0x6F - Special Stage Results Screen
; [ Begin ]
;===============================================================================	
loc_11332:
		moveq	#0,d0
		moveq	#0,d6
		move.b	$24(a0),d0
		move.w	loc_11342(pc,d0),d1
		jmp	loc_11342(pc,d1)
loc_11342:
		dc.w	loc_11372-loc_11342
		dc.w	loc_113B6-loc_11342
		dc.w	loc_113DC-loc_11342
		dc.w	loc_113F4-loc_11342
		dc.w	loc_113F2-loc_11342
		dc.w	loc_113F0-loc_11342
		dc.w	loc_113EE-loc_11342
		dc.w	loc_113EC-loc_11342
		dc.w	loc_113EA-loc_11342
		dc.w	loc_113E8-loc_11342
		dc.w	loc_11462-loc_11342
		dc.w	loc_11420-loc_11342
		dc.w	loc_1140E-loc_11342
		dc.w	loc_11466-loc_11342
		dc.w	loc_11470-loc_11342
		dc.w	loc_1147E-loc_11342
		dc.w	loc_11470-loc_11342
		dc.w	loc_114FC-loc_11342
		dc.w	loc_11470-loc_11342
		dc.w	loc_11470-loc_11342
		dc.w	loc_11506-loc_11342
		dc.w	loc_11556-loc_11342
		dc.w	loc_11470-loc_11342
		dc.w	loc_114FC-loc_11342
loc_11372:
		tst.l	($FFFFF680).w
		beq.s	loc_1137A
		rts
loc_1137A:
		move.l	a0,a1
		lea	loc_1156A(pc),a2
		moveq	#$C,d1
loc_11382:	
		move.b	0(a0),0(a1)
		move.w	(a2)+,8(a1)
		move.w	(a2)+,$30(a1)
		move.w	(a2)+,$A(a1)
		move.b	(a2)+,$24(a1)
		move.b	(a2)+,$1A(a1)
		move.l	#Special_Stage_Results_Mappings,4(a1) 
		bsr	Modify_A1_SpriteAttr_2P 
		move.b	#0,1(a1)
		lea	$40(a1),a1
		dbra	d1,loc_11382
loc_113B6:
		tst.b	($FFFFFFB0).w
		beq.s	loc_113C2
		move.b	#4,$1A(a0)
loc_113C2:
		move.w	$30(a0),d0
		cmp.w	8(a0),d0
		bne.s	loc_113D8
		move.b	#$1C,$24(a0)
		move.w	#$B4,$1E(a0)
loc_113D8:
		bra	loc_10DDC
loc_113DC:
		tst.b	($FFFFFFB0).w
		beq	deleteObject	
		bra	loc_10DDC
loc_113E8:
		addq.w	#1,d6
loc_113EA:
		addq.w	#1,d6
loc_113EC:
		addq.w	#1,d6
loc_113EE:
		addq.w	#1,d6
loc_113F0:
		addq.w	#1,d6
loc_113F2:
		addq.w	#1,d6
loc_113F4:
		lea	($FFFFFFB2).w,a1
		tst.b	0(a1,d6)
		beq	deleteObject	
		btst	#0,($FFFFFE0F).w
		beq.s	loc_1140C
		bsr	displaySprite	
loc_1140C:
		rts
loc_1140E:
		cmp.b	#$26,($FFFFB824).w
		beq	deleteObject	
		moveq	#$F,d0
		lea	($FFFFF7D4).w,a1
		bra.s	loc_11458
loc_11420:
		cmp.b	#$26,($FFFFB824).w
		bne.s	loc_11452
		move.w	#$1388,($FFFFF7D2).w
		move.b	#$2A,$24(a0)
		move.w	#$120,$A(a0)
		st	($FFFFF7D6).w
		move.w	#$CF,d0
		jsr	Play_Sfx	
		move.w	#$5A,($FFFFB81E).w
		bra	loc_11556
loc_11452:
		moveq	#$D,d0
		lea	($FFFFF7D2).w,a1
loc_11458:
		tst.w	(a1)
		bne.s	loc_1145E
		addq.w	#5,d0
loc_1145E:
		move.b	d0,$1A(a0)
loc_11462:
		bra	loc_10DDC
loc_11466:
		tst.b	($FFFFFFB0).w
		beq	deleteObject	
		bra.s	loc_11462
loc_11470:
		subq.w	#1,$1E(a0)
		bne.s	loc_1147A
		addq.b	#2,$24(a0)
loc_1147A:
		bra	displaySprite	
loc_1147E:
		bsr	displaySprite	
		move.b	#1,($FFFFF7D6).w
		moveq	#0,d0
		tst.w	($FFFFF7D2).w
		beq.s	loc_11498
		add.w	#$A,d0
		subq.w	#1,($FFFFF7D2).w
loc_11498:
		tst.w	($FFFFF7D4).w
		beq.s	loc_114A6
		add.w	#$A,d0
		subq.w	#1,($FFFFF7D4).w
loc_114A6:
		tst.w	($FFFFFF8E).w
		beq.s	loc_114B6
		add.w	#$A,d0
		sub.w	#$A,($FFFFFF8E).w
loc_114B6:
		tst.w	d0
		bne.s	loc_114E2
		move.w	#$C5,d0
		jsr	Play_Sfx	
		addq.b	#2,$24(a0)
		move.w	#$78,$1E(a0)
		tst.w	($FFFFFF42).w
		beq.s	loc_114E0
		move.b	#$24,$24(a0)
		move.w	#$5A,$1E(a0)
loc_114E0:
		rts
loc_114E2:
		jsr	add_Points	
		move.b	($FFFFFE0F).w,d0
		and.b	#3,d0
		bne.s	loc_114E0
		move.w	#$CD,d0
		jmp	Play_Sfx	
loc_114FC:
		move.w	#1,($FFFFFE02).w
		bra	displaySprite	
loc_11506:
		bsr	displaySprite	
		move.b	#1,($FFFFF7D6).w
		moveq	#0,d0
		tst.w	($FFFFF7D2).w
		beq.s	loc_11522
		add.w	#$14,d0
		sub.w	#$14,($FFFFF7D2).w
loc_11522:
		tst.w	d0
		beq.s	loc_11540
		jsr	add_Points	
		move.b	($FFFFFE0F).w,d0
		and.b	#3,d0
		bne.s	loc_11554
		move.w	#$CD,d0
		jmp	Play_Sfx	
loc_11540:
		move.w	#$C5,d0
		jsr	Play_Sfx	
		addq.b	#4,$24(a0)
		move.w	#$78,$1E(a0)
loc_11554:
		rts
loc_11556:
		moveq	#$11,d0
		btst	#3,($FFFFFE0F).w
		beq.s	loc_11562
		moveq	#$15,d0
loc_11562:
		move.b	d0,$1A(a0)
		bra	displaySprite	
;-------------------------------------------------------------------------------	
loc_1156A:
		dc.w	$230,$120,$AA,$200,$10,$120,$98,$401
		dc.w	$118,0,$C0,$605,$130,0,$CC,$806
		dc.w	$130,0,$E4,$A07,$118,0,$F0,$C08
		dc.w	$100,0,$E4,$E09,$100,0,$CC,$100A
		dc.w	$118,0,$D8,$120B,$330,$120,$108,$140C
		dc.w	$340,$120,$118,$160D,$350,$120,$128,$180F
		dc.w	$360,$120,$138,$1A10	
;=============================================================================== 
; Object 0x6F - Special Stage Results Screen
; [ End ]
;===============================================================================	