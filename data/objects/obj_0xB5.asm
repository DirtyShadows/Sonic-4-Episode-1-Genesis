;===============================================================================
; Object 0xB5 - Horizontal Helix - Sky Fortress
; [ Begin ]
;===============================================================================	
loc_3730E:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_3731C(pc,d0),d1
		jmp	loc_3731C(pc,d1)
loc_3731C:
		dc.w	loc_37322-loc_3731C
		dc.w	loc_3733A-loc_3731C
		dc.w	loc_3735C-loc_3731C
loc_37322:
		bsr	EnemySettings	
		move.b	#4,$1C(a0)
		move.b	$28(a0),d0
		sub.b	#$64,d0
		move.b	d0,$24(a0)
		rts
loc_3733A:
		moveq	#0,d0
		move.b	$25(a0),d0
		move.w	loc_37356(pc,d0),d1
		jsr	loc_37356(pc,d1)
		lea	(Horizontal_Helix_Animate_Data),a1 
		bsr	loc_3A8BC
		bra	loc_3A8A4
loc_37356:
		dc.w	loc_37358-loc_37356
loc_37358:
		bra	loc_3736A
loc_3735C:
		lea	(Horizontal_Helix_Animate_Data),a1 
		bsr	loc_3A8BC
		bra	loc_3A8A4
loc_3736A:
		cmp.b	#4,$1C(a0)
		bne.s	loc_373F0
		lea	($FFFFB000).w,a1
		bsr	loc_3737E
		lea	($FFFFB040).w,a1
loc_3737E:
		move.w	8(a1),d0
		sub.w	8(a0),d0
		add.w	#$40,d0
		cmp.w	#$80,d0
		bcc.s	loc_373F0
		moveq	#0,d1
		move.b	($FFFFFE74).w,d1
		add.w	$C(a1),d1
		add.w	#$60,d1
		sub.w	$C(a0),d1
		bcs.s	loc_373F0
		cmp.w	#$90,d1
		bcc.s	loc_373F0
		sub.w	#$60,d1
		bcs.s	loc_373B4
		not.w	d1
		add.w	d1,d1
loc_373B4:
		add.w	#$60,d1
		neg.w	d1
		asr.w	#4,d1
		add.w	d1,$C(a1)
		bset	#1,$22(a1)
		move.w	#0,$12(a1)
		move.w	#1,$14(a1)
		tst.b	$27(a1)
		bne.s	loc_373F0
		move.b	#1,$27(a1)
		move.b	#$F,$1C(a1)
		move.b	#$7F,$2C(a1)
		move.b	#8,$2D(a1)
loc_373F0:
		rts	
;-------------------------------------------------------------------------------
Obj_0xB5_Ptr: 
		dc.l	Horizontal_Helix_Mappings 
		dc.w	$A3CD
		dc.b	4,4,$40,$0
;-------------------------------------------------------------------------------
Horizontal_Helix_Animate_Data: 
		dc.w	loc_37410-Horizontal_Helix_Animate_Data
		dc.w	loc_3741A-Horizontal_Helix_Animate_Data
		dc.w	loc_37422-Horizontal_Helix_Animate_Data
		dc.w	loc_3742A-Horizontal_Helix_Animate_Data
		dc.w	loc_37430-Horizontal_Helix_Animate_Data
		dc.w	loc_37438-Horizontal_Helix_Animate_Data
		dc.w	loc_3743E-Horizontal_Helix_Animate_Data
		dc.w	loc_37446-Horizontal_Helix_Animate_Data
		dc.w	loc_3744E-Horizontal_Helix_Animate_Data
		dc.w	loc_37458-Horizontal_Helix_Animate_Data
loc_37410:
		dc.b	7,0,1,2,3,4,5,$FD,1,$0
loc_3741A:
		dc.b	4,0,1,2,3,4,$FD,$2
loc_37422:
		dc.b	3,5,0,1,2,$FD,3,$0
loc_3742A:
		dc.b	2,3,4,5,$FD,$4
loc_37430:
		dc.b	1,0,1,2,3,4,5,$FF
loc_37438:
		dc.b	2,5,4,3,$FD,$6
loc_3743E:
		dc.b	3,2,1,0,5,$FD,7,$0
loc_37446:
		dc.b	4,4,3,2,1,0,$FD,$8
loc_3744E:
		dc.b	7,5,4,3,2,1,0,$FD,9,$0
loc_37458:
		dc.b	$7E,0,$FF,$0	
;-------------------------------------------------------------------------------	
Horizontal_Helix_Mappings: 
		dc.w	loc_37468-Horizontal_Helix_Mappings
		dc.w	loc_3748A-Horizontal_Helix_Mappings
		dc.w	loc_3749C-Horizontal_Helix_Mappings
		dc.w	loc_374AE-Horizontal_Helix_Mappings
		dc.w	loc_374C0-Horizontal_Helix_Mappings
		dc.w	loc_374D2-Horizontal_Helix_Mappings
loc_37468:
		dc.w	$4
		dc.l	$FC0C0000,$FFC0,$FC080004,$2FFE0
		dc.l	$FC080007,$30008,$FC0C000A,$50020
loc_3748A:
		dc.w	$2
		dc.l	$FC0C000E,$7FFD8,$FC0C0012,$90008
loc_3749C:
		dc.w	$2
		dc.l	$FC080016,$BFFE8,$FC040019,$C0008
loc_374AE:
		dc.w	$2
		dc.l	$FC04001B,$DFFF0,$FC04081B,$80D0000
loc_374C0:
		dc.w	$2
		dc.l	$FC040819,$80CFFE8,$FC080816,$80B0000
loc_374D2:
		dc.w	$2
		dc.l	$FC0C0812,$809FFD8,$FC0C080E,$8070008	
;===============================================================================
; Object 0xB5 - Horizontal Helix - Sky Fortress
; [ End ]
;===============================================================================