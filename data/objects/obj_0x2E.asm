;=============================================================================== 
; Object 0x2E - Monitors Contents
; [ Begin ]
;===============================================================================
loc_104C4:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_104D2(pc,d0),d1
		jmp	loc_104D2(pc,d1)
loc_104D2:
		dc.w	loc_104D8-loc_104D2
		dc.w	loc_10530-loc_104D2
		dc.w	loc_10880-loc_104D2
loc_104D8:
		addq.b	#2,$24(a0)
		move.w	#$8680,2(a0)
		bsr	ModifySpriteAttr_2P	
		move.b	#$24,1(a0)
		move.b	#3,$18(a0)
		move.b	#8,$19(a0)
		move.w	#$FD00,$12(a0)
		moveq	#0,d0
		move.b	$1C(a0),d0
		tst.w	($FFFFFFD8).w
		beq.s	loc_10518
		move.b	($FFFFFE0F).w,d0
		and.w	#7,d0
		addq.w	#1,d0
		move.b	d0,$1C(a0)
loc_10518:
		addq.b	#1,d0
		move.b	d0,$1A(a0)
		move.l	#Monitors_Mappings,a1	
		add.b	d0,d0
		adda.w	0(a1,d0),a1
		addq.w	#2,a1
		move.l	a1,4(a0)
loc_10530:
		bsr.s	loc_10536
		bra	displaySprite	
loc_10536:
		tst.w	$12(a0)
		bpl	loc_1054A
		bsr	SpeedToPos	
		add.w	#$18,$12(a0)
		rts
loc_1054A:
		addq.b	#2,$24(a0)
		move.w	#$1D,$1E(a0)
		move.w	$3E(a0),a1
		lea	($FFFFFEF4).w,a2
		cmpa.w	#$B000,a1
		beq.s	loc_10566
		lea	($FFFFFEF6).w,a2
loc_10566:
		moveq	#0,d0
		move.b	$1C(a0),d0
		add.w	d0,d0
		move.w	Monitor_Subroutines(pc,d0),d0 
		jmp	Monitor_Subroutines(pc,d0) 
Monitor_Subroutines: 
		dc.w	Monitor_Null-Monitor_Subroutines	
		dc.w	Monitor_SonicLife-Monitor_Subroutines	
		dc.w	Monitor_MilesLife-Monitor_Subroutines	
		dc.w	Monitor_Null-Monitor_Subroutines	
		dc.w	Monitor_Rings-Monitor_Subroutines	
		dc.w	Monitor_Shoes-Monitor_Subroutines	
		dc.w	Monitor_Shield-Monitor_Subroutines	
		dc.w	Monitor_Invincibility-Monitor_Subroutines 
		dc.w	Monitor_Random-Monitor_Subroutines 
		dc.w	Monitor_Null_2-Monitor_Subroutines 
Monitor_Null: 
		addq.w	#1,(a2)
		rts
Monitor_SonicLife: 
		addq.w	#1,($FFFFFEF4).w
		addq.b	#1,($FFFFFE12).w
		addq.b	#1,($FFFFFE1C).w
		move.w	#$98,d0
		jmp	Play_Music	
Monitor_MilesLife: 
		addq.w	#1,($FFFFFEF6).w
		addq.b	#1,($FFFFFEC6).w
		addq.b	#1,($FFFFFEC8).w
		move.w	#$98,d0
		jmp	Play_Music	
Monitor_Rings: 
		addq.w	#1,(a2)
		lea	($FFFFFE20).w,a2
		lea	($FFFFFE1D).w,a3
		lea	($FFFFFE1B).w,a4
		cmpa.w	#$B000,a1
		beq.s	loc_105DA
		lea	($FFFFFED0).w,a2
		lea	($FFFFFEC9).w,a3
		lea	($FFFFFEC7).w,a4
loc_105DA:
		add.w	#$A,(a2)
		or.b	#1,(a3)
		cmp.w	#$64,(a2)
		bcs.s	loc_105FA
		bset	#1,(a4)
		beq.s	loc_10604
		cmp.w	#$C8,(a2)
		bcs.s	loc_105FA
		bset	#2,(a4)
		beq.s	loc_10604
loc_105FA:
		move.w	#$B5,d0
		jmp	Play_Music	
loc_10604:
		cmpa.w	#$B000,a1
		beq	Monitor_SonicLife	
		bra	Monitor_MilesLife	
Monitor_Shoes: 
		addq.w	#1,(a2)
		bset	#2,$2B(a1)
		move.w	#$4B0,$34(a1)
		cmpa.w	#$B000,a1
		bne.s	loc_10638
		move.w	#$C00,($FFFFF760).w
		move.w	#$18,($FFFFF762).w
		move.w	#$80,($FFFFF764).w
		bra.s	Monitor_Shoes_Fast_Sound 
loc_10638:
		move.w	#$C00,($FFFFFEC0).w
		move.w	#$18,($FFFFFEC2).w
		move.w	#$80,($FFFFFEC4).w
Monitor_Shoes_Fast_Sound: 
		move.w	#$FB,d0
		jmp	Play_Music	
Monitor_Shield: 
		addq.w	#1,(a2)
		bset	#0,$2B(a1)
		move.b	#$38,($FFFFB180).w	; Call Shield Object
		move.w	#$AF,d0
		jmp	Play_Music	
Monitor_Invincibility: 
		addq.w	#1,(a2)
		bset	#1,$2B(a1)
		move.w	#$4B0,$32(a1)
		move.b	#$35,($FFFFB200).w	; Call Invicibility Object
		tst.b	($FFFFF7AA).w
		bne.s	loc_10698
		cmp.b	#$C,$28(a1)
		bls.s	loc_10698
		move.w	#$97,d0
		jmp	Play_Music	
loc_10698:
		rts
Monitor_Random: 
		addq.w	#1,(a2)
		lea	(loc_107BA),a3
		moveq	#$11,d2
loc_106A4:	
		move.w	(a3)+,a1
		move.w	(a3)+,a2
		move.w	(a3)+,d1
loc_106AA:	
		move.w	(a1),d0
		move.w	(a2),(a1)+
		move.w	d0,(a2)+
		dbra	d1,loc_106AA
		dbra	d2,loc_106A4
		lea	($FFFFF786).w,a1
		lea	($FFFFF789).w,a2
		moveq	#2,d1
loc_106C2:	
		move.b	(a1),d0
		move.b	(a2),(a1)+
		move.b	d0,(a2)+
		dbra	d1,loc_106C2
		sub.w	#$100,($FFFFEE04).w
		sub.w	#$100,($FFFFEE24).w
		move.w	($FFFFB002).w,d0
		and.w	#$7FFF,($FFFFB002).w
		tst.w	($FFFFB042).w
		bpl.s	loc_106EE
		or.w	#$8000,($FFFFB002).w
loc_106EE:
		and.w	#$7FFF,($FFFFB042).w
		tst.w	d0
		bpl.s	loc_106FE
		or.w	#$8000,($FFFFB042).w
loc_106FE:
		move.b	#1,($FFFFEEDE).w
		lea	($FFFFB800).w,a1
		moveq	#$5F,d1
loc_1070A:	
		cmp.b	#$84,(a1)
		beq.s	loc_10716
		cmp.b	#3,(a1)
		bne.s	loc_10724
loc_10716:
		move.b	$34(a1),d0
		move.b	$35(a1),$34(a1)
		move.b	d0,$35(a1)
loc_10724:
		lea	$40(a1),a1
		dbra	d1,loc_1070A
		lea	($FFFFB000).w,a1
		btst	#2,$22(a1)
		bne.s	loc_10744
		move.b	#$13,$16(a1)
		move.b	#9,$17(a1)
loc_10744:
		btst	#3,$22(a1)
		beq.s	loc_10768
		moveq	#0,d0
		move.b	$3D(a1),d0
		lsl.w	#6,d0
		add.l	#$FFFFB000,d0
		move.l	d0,a2
		bclr	#4,$22(a2)
		bset	#3,$22(a2)
loc_10768:
		lea	($FFFFB040).w,a1
		btst	#2,$22(a1)
		bne.s	loc_10780
		move.b	#$F,$16(a1)
		move.b	#9,$17(a1)
loc_10780:
		btst	#3,$22(a1)
		beq.s	loc_107A4
		moveq	#0,d0
		move.b	$3D(a1),d0
		lsl.w	#6,d0
		add.l	#$FFFFB000,d0
		move.l	d0,a2
		bclr	#3,$22(a2)
		bset	#4,$22(a2)
loc_107A4:
		move.b	#$30,($FFFFF622).w
		move.b	#1,($FFFFF623).w
		move.w	#$EC,d0
		jmp	Play_Music	
loc_107BA:
		dc.w	$B008,$B048,$1B,$F76E,$F78C,0,$FC00,$F78E
		dc.w	0,$F770,$F778,3,$F760,$FEC0,2,$F712
		dc.w	$F716,1,$F71C,$F724,3,$EE00,$EE20,$F
		dc.w	$F7DA,$F7DC,0,$EEC8,$EEF8,3,$EED0,$EED4
		dc.w	1,$EED8,$EEDA,0,$EE40,$EE48,3,$EE50
		dc.w	$EE58,3,$EE60,$EE80,$F,$EEA0,$EEA8,$3
		dc.w	$EEB0,$EEB8,1,$E500,$E600,$7F	
Monitor_Null_2: 
		addq.w	#1,(a2)
		rts	
; Monitor_Teleport: 
		move.b	#1,($FFFFF65F).w
		move.b	#$F,($FFFFF65E).w
		move.b	#1,($FFFFFE19).w
		move.b	#$81,($FFFFB02A).w
		move.b	#$1F,($FFFFB01C).w
		move.b	#$7E,($FFFFB540).w
		move.w	#$A00,($FFFFF760).w
		move.w	#$30,($FFFFF762).w
		move.w	#$100,($FFFFF764).w
		move.w	#0,($FFFFB032).w
		bset	#1,$2B(a1)
		move.w	#$DF,d0
		jsr	Play_Sfx	
		move.w	#$96,d0
		jmp	Play_Music	
loc_10880:
		subq.w	#1,$1E(a0)
		bmi	deleteObject	
		bra	displaySprite	
;=============================================================================== 
; Object 0x2E - Monitors Contents
; [ End ]
;=============================================================================== 