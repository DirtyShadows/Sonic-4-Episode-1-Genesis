;===============================================================================
; Object 0xAE - Clucker - Sky Fortress
; [ Begin ]
;===============================================================================	
loc_355C4:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_355D2(pc,d0),d1
		jmp	loc_355D2(pc,d1)	
loc_355D2:	
		dc.w	loc_355E0-loc_355D2
		dc.w	loc_355FA-loc_355D2
		dc.w	loc_35614-loc_355D2
		dc.w	loc_35644-loc_355D2
		dc.w	loc_35652-loc_355D2
		dc.w	loc_3567A-loc_355D2
		dc.w	loc_35688-loc_355D2
loc_355E0:
		bsr	EnemySettings	
		move.b	#$15,$1A(a0)
		btst	#0,1(a0)
		beq.s	loc_355F8
		bset	#0,$22(a0)
loc_355F8:
		rts
loc_355FA:
		bsr	loc_32866
		add.w	#$80,d2
		cmp.w	#$100,d2
		bcs.s	loc_3560C
		bra	loc_3A8A4
loc_3560C:
		addq.b	#2,$24(a0)
		bra	loc_3A8A4
loc_35614:
		move.b	$24(a0),d2
		lea	(loc_356FC),a1
		bsr	loc_3A8BC
		cmp.b	$24(a0),d2
		bne.s	loc_3562C
		bra	loc_3A8A4
loc_3562C:
		lea	$1A(a0),a1
		clr.l	(a1)
		clr.w	4(a1)
		move.b	#8,(a1)
		move.b	#6,$20(a0)
		bra	loc_3A8A4
loc_35644:
		lea	(loc_35708),a1
		bsr	loc_3A8BC
		bra	loc_3A8A4
loc_35652:
		tst.b	$2A(a0)
		beq.s	loc_35660
		subq.b	#1,$2A(a0)
		bra	loc_3A8A4
loc_35660:
		addq.b	#2,$24(a0)
		lea	$1A(a0),a1
		clr.l	(a1)
		clr.w	4(a1)
		move.b	#$B,(a1)
		bsr	loc_35698
		bra	loc_3A8A4
loc_3567A:
		lea	(loc_35714),a1
		bsr	loc_3A8BC
		bra	loc_3A8A4
loc_35688:
		move.b	#8,$24(a0)
		move.b	#$40,$2A(a0)
		bra	loc_3A8A4
loc_35698:
		bsr	loc_3A8B6
		bne.s	loc_356E6
		move.b	#$98,0(a1)
		move.b	#$D,$1A(a1)
		move.b	#$46,$28(a1)
		move.w	8(a0),8(a1)
		move.w	$C(a0),$C(a1)
		add.w	#$B,$C(a1)
		move.w	#$FE00,d0
		move.w	#$FFF8,d1
		btst	#0,1(a0)
		beq.s	loc_356D6
		neg.w	d0
		neg.w	d1
loc_356D6:
		move.w	d0,$10(a1)
		add.w	d1,8(a1)
		lea	loc_3391E(pc),a2
		move.l	a2,$2A(a1)
loc_356E6:
		rts 
;-------------------------------------------------------------------------------	
Obj_0xAD_Ptr: 
		dc.l	Clucker_Mappings	
		dc.w	$379
		dc.b	4,4,$18,$0
;-------------------------------------------------------------------------------	
Obj_0xAE_Ptr: 
		dc.l	Clucker_Mappings	
		dc.w	$379
		dc.b	4,5,$10,$0
;-------------------------------------------------------------------------------	
loc_356FC:	
		dc.w	loc_356FE-loc_356FC
loc_356FE:
		dc.b	1,0,1,2,3,4,5,6,7,$FC 
;-------------------------------------------------------------------------------	
loc_35708:
		dc.w	loc_3570A-loc_35708
loc_3570A:
		dc.b	1,8,9,$A,$B,$B,$B,$B,$FC,$0	
;-------------------------------------------------------------------------------
loc_35714:
		dc.w	loc_35716-loc_35714
loc_35716:
		dc.b	3,$A,$B,$FC
;-------------------------------------------------------------------------------	
Clucker_Animate_Data: 
		dc.w	loc_3571C-Clucker_Animate_Data
loc_3571C:
		dc.b	3,$D,$E,$F,$10,$11,$12,$13,$14,$FF
;-------------------------------------------------------------------------------
Clucker_Mappings: 
		dc.w	loc_35752-Clucker_Mappings
		dc.w	loc_3575C-Clucker_Mappings
		dc.w	loc_35766-Clucker_Mappings
		dc.w	loc_35770-Clucker_Mappings
		dc.w	loc_35782-Clucker_Mappings
		dc.w	loc_35794-Clucker_Mappings
		dc.w	loc_357A6-Clucker_Mappings
		dc.w	loc_357B8-Clucker_Mappings
		dc.w	loc_357CA-Clucker_Mappings
		dc.w	loc_357E4-Clucker_Mappings
		dc.w	loc_357FE-Clucker_Mappings
		dc.w	loc_35818-Clucker_Mappings
		dc.w	loc_35832-Clucker_Mappings
		dc.w	loc_35844-Clucker_Mappings
		dc.w	loc_3584E-Clucker_Mappings
		dc.w	loc_35858-Clucker_Mappings
		dc.w	loc_35862-Clucker_Mappings
		dc.w	loc_3586C-Clucker_Mappings
		dc.w	loc_35876-Clucker_Mappings
		dc.w	loc_35880-Clucker_Mappings
		dc.w	loc_3588A-Clucker_Mappings
		dc.w	loc_35894-Clucker_Mappings
loc_35752:
		dc.w	$1
		dc.l	$C0D2000,$2000FFF0
loc_3575C:
		dc.w	$1
		dc.l	$80D2000,$2000FFF0
loc_35766:
		dc.w	$1
		dc.l	$40D2000,$2000FFF0
loc_35770:
		dc.w	$2
		dc.l	$D2000,$2000FFF0,$100D2008,$2004FFF0
loc_35782:
		dc.w	$2
		dc.l	$FC0D2000,$2000FFF0,$C0D2008,$2004FFF0
loc_35794:
		dc.w	$2
		dc.l	$F80D2000,$2000FFF0,$80D2008,$2004FFF0
loc_357A6:
		dc.w	$2
		dc.l	$F40D2000,$2000FFF0,$40D2008,$2004FFF0
loc_357B8:
		dc.w	$2
		dc.l	$F00D2000,$2000FFF0,$D2008,$2004FFF0
loc_357CA:
		dc.w	$3
		dc.l	$F00D2000,$2000FFF0,$D2008,$2004FFF0
		dc.l	$7002010,$2008FFEE
loc_357E4:
		dc.w	$3
		dc.l	$F00D2000,$2000FFF0,$D2008,$2004FFF0
		dc.l	$7002010,$2008FFEC
loc_357FE:
		dc.w	$3
		dc.l	$F00D2000,$2000FFF0,$D2008,$2004FFF0
		dc.l	$7002010,$2008FFEA
loc_35818:
		dc.w	$3
		dc.l	$F00D2000,$2000FFF0,$D2008,$2004FFF0
		dc.l	$7002010,$2008FFE8
loc_35832:
		dc.w	$2
		dc.l	$F8096011,$6008FFE8,$F8096811,$68080000
loc_35844:
		dc.w	$1
		dc.l	$FC000017,$BFFFC
loc_3584E:
		dc.w	$1
		dc.l	$FC000018,$CFFFC
loc_35858:
		dc.w	$1
		dc.l	$FC000019,$CFFFC
loc_35862:
		dc.w	$1
		dc.l	$FC001018,$100CFFFC
loc_3586C:
		dc.w	$1
		dc.l	$FC001017,$100BFFFC
loc_35876:
		dc.w	$1
		dc.l	$FC001818,$180CFFFC
loc_35880:
		dc.w	$1
		dc.l	$FC000819,$80CFFFC
loc_3588A:
		dc.w	$1
		dc.l	$FC000818,$80CFFFC
loc_35894:
		dc.w	$1
		dc.l	$100D2000,$2000FFF0	
;===============================================================================
; Object 0xAE - Clucker - Sky Fortress
; [ End ]
;===============================================================================