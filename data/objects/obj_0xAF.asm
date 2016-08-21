;===============================================================================
; Object 0xAF - Metal Sonic - Death Egg
; [ Begin ]
;===============================================================================	
loc_3589E:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_358AC(pc,d0),d1
		jmp	loc_358AC(pc,d1)
loc_358AC:
		dc.w	loc_358CE-loc_358AC
		dc.w	loc_3591C-loc_358AC
		dc.w	loc_3594A-loc_358AC
		dc.w	loc_35986-loc_358AC
		dc.w	loc_359EA-loc_358AC
		dc.w	loc_35CAE-loc_358AC
		dc.w	loc_35CCE-loc_358AC
		dc.w	loc_35CE0-loc_358AC
		dc.w	loc_35CF6-loc_358AC
		dc.w	loc_35CF8-loc_358AC
		dc.w	loc_35D10-loc_358AC
		dc.w	loc_35D18-loc_358AC
		dc.w	loc_35D20-loc_358AC
		dc.w	loc_35D38-loc_358AC
		dc.w	loc_35D50-loc_358AC
		dc.w	loc_35D5E-loc_358AC
		dc.w	loc_35DAE-loc_358AC
loc_358CE:
		bsr	EnemySettings	
		move.b	#$1B,$16(a0)
		move.b	#$10,$17(a0)
		move.b	#0,$20(a0)
		move.b	#8,$21(a0)
		lea	(loc_35ED0),a2
		bsr	loc_32970
		move.b	#$C,$24(a1)
		lea	(loc_35ED4),a2
		bsr	loc_32970
		move.b	#$12,$24(a1)
		lea	(loc_35ED8),a2
		bsr	loc_32970
		move.b	#$18,$24(a1)
		rts
loc_3591C:
		move.w	($FFFFEE00).w,d0
		cmp.w	#$224,d0
		bcc.s	loc_3592A
		bra	loc_3A892
loc_3592A:
		addq.b	#2,$24(a0)
		move.w	#$80,$12(a0)
		move.w	#$224,d0
		move.w	d0,($FFFFEEC8).w
		move.w	d0,($FFFFEECA).w
		move.b	#9,($FFFFF7AA).w
		bra	loc_3A892
loc_3594A:
		jsr	ObjHitFloor	
		tst.w	d1
		bmi.s	loc_3596C
		bsr	loc_3A904
		moveq	#0,d0
		moveq	#0,d1
		move.w	$3E(a0),a1
		bsr	loc_32996
		bsr	loc_35E58
		bra	loc_3A892
loc_3596C:
		add.w	d1,$C(a0)
		move.w	#0,$12(a0)
		move.b	#$1A,$20(a0)
		bset	#1,$22(a0)
		bra	loc_35B00
loc_35986:
		bsr	loc_35DBC
		bsr	loc_35E2A
		subq.b	#1,$2A(a0)
		beq.s	loc_359B0
		jsr	ObjHitFloor	
		add.w	d1,$C(a0)
		lea	(Metal_Sonic_Animate_Data),a1 
		bsr	loc_32A78
		bsr	loc_35E58
		bra	loc_3A892
loc_359B0:
		addq.b	#2,$24(a0)
		moveq	#0,d0
		move.b	$2F(a0),d0
		and.b	#$F,d0
		move.b	loc_359DA(pc,d0),$25(a0)
		addq.b	#1,$2F(a0)
		clr.b	$2E(a0)
		move.w	$3C(a0),a1
		move.b	#$14,$24(a1)
		bra	loc_3A892
loc_359DA:
		dc.b	6,0,$10,6,6,$1E,0,$10,6,6,$10,6,0,6,$10,$1E
loc_359EA:
		bsr	loc_35DBC
		bsr	loc_35E2A
		moveq	#0,d0
		move.b	$25(a0),d0
		move.w	loc_35A1C(pc,d0),d1
		jsr	loc_35A1C(pc,d1)
		moveq	#0,d0
		moveq	#0,d1
		move.w	$3E(a0),a1
		bsr	loc_32996
		bsr	loc_35E58
		bsr	loc_32996
		bsr	loc_3A904
		bra	loc_3A892
loc_35A1C:
		dc.w	loc_35A48-loc_35A1C
		dc.w	loc_35A70-loc_35A1C
		dc.w	loc_35AA0-loc_35A1C
		dc.w	loc_35B34-loc_35A1C
		dc.w	loc_35B46-loc_35A1C
		dc.w	loc_35B66-loc_35A1C
		dc.w	loc_35B8A-loc_35A1C
		dc.w	loc_35BB8-loc_35A1C
		dc.w	loc_35B34-loc_35A1C
		dc.w	loc_35B46-loc_35A1C
		dc.w	loc_35BCC-loc_35A1C
		dc.w	loc_35BF0-loc_35A1C
		dc.w	loc_35C16-loc_35A1C
		dc.w	loc_35C4A-loc_35A1C
		dc.w	loc_35BB8-loc_35A1C
		dc.w	loc_35B34-loc_35A1C
		dc.w	loc_35B46-loc_35A1C
		dc.w	loc_35BCC-loc_35A1C
		dc.w	loc_35BF0-loc_35A1C
		dc.w	loc_35C66-loc_35A1C
		dc.w	loc_35C4A-loc_35A1C
		dc.w	loc_35BB8-loc_35A1C
loc_35A48:
		addq.b	#2,$25(a0)
		move.b	#3,$1A(a0)
		move.b	#2,$2C(a0)
loc_35A58:	
		move.b	#$20,$2A(a0)
		move.w	$3E(a0),a1
		move.b	#$E,$24(a1)
		move.b	#1,$1C(a1)
		rts
loc_35A70:
		subq.b	#1,$2A(a0)
		bmi.s	loc_35A78
		rts
loc_35A78:
		addq.b	#2,$25(a0)
		move.b	#$40,$2A(a0)
		move.b	#1,$1C(a0)
		move.w	#$800,d0
		bsr	loc_35E6E
		move.w	$3E(a0),a1
		move.b	#2,$1C(a1)
		moveq	#$FFFFFFBE,d0
		bra	loc_3A8B0
loc_35AA0:
		subq.b	#1,$2A(a0)
		bmi.s	loc_35AEC
		cmp.b	#$20,$2A(a0)
		bne.s	loc_35ABE
		move.b	#2,$1C(a0)
		move.w	$3E(a0),a1
		move.b	#$10,$24(a1)
loc_35ABE:
		bsr	loc_35E80
		lea	(Metal_Sonic_Animate_Data),a1 
		bsr	loc_32A78
		cmp.b	#2,$1C(a0)
		bne.s	loc_35AEA
		cmp.b	#2,$1B(a0)
		bne.s	loc_35AEA
		cmp.b	#3,$1E(a0)
		bne.s	loc_35AEA
		bchg	#0,1(a0)
loc_35AEA:
		rts
loc_35AEC:
		subq.b	#1,$2C(a0)
		beq.s	loc_35B00
		move.b	#2,$25(a0)
		clr.w	$10(a0)
		bra	loc_35A58
loc_35B00:
		move.b	#6,$24(a0)
		move.b	#0,$1C(a0)
		move.b	#$64,$2A(a0)
		clr.w	$10(a0)
		move.w	$3E(a0),a1
		move.b	#$10,$24(a1)
		move.w	$3C(a0),a1
		move.b	#$16,$24(a1)
		moveq	#$FFFFFFB0,d0
		bsr	loc_3A8B0
		bra	loc_3A892
loc_35B34:
		addq.b	#2,$25(a0)
		move.b	#3,$1A(a0)
		move.b	#3,$1C(a0)
		rts
loc_35B46:
		lea	(Metal_Sonic_Animate_Data),a1 
		bsr	loc_32A78
		bne.s	loc_35B54
		rts
loc_35B54:
		addq.b	#2,$25(a0)
		move.b	#$20,$2A(a0)
		move.b	#4,$1C(a0)
		rts
loc_35B66:
		subq.b	#1,$2A(a0)
		bmi.s	loc_35B78
		lea	(Metal_Sonic_Animate_Data),a1 
		bsr	loc_32A78
		rts
loc_35B78:
		addq.b	#2,$25(a0)
		move.b	#$40,$2A(a0)
		move.w	#$800,d0
		bra	loc_35E6E
loc_35B8A:
		subq.b	#1,$2A(a0)
		bmi.s	loc_35B9E
		bsr	loc_35E80
		lea	(Metal_Sonic_Animate_Data),a1 
		bra	loc_32A78
loc_35B9E:
		addq.b	#2,$25(a0)
		move.b	#5,$1C(a0)
		bchg	#0,1(a0)
		clr.w	$10(a0)
		clr.w	$12(a0)
		rts
loc_35BB8:
		lea	(Metal_Sonic_Animate_Data),a1 
		bsr	loc_32A78
		bne	loc_35BC8
		rts
loc_35BC8:
		bra	loc_35B00
loc_35BCC:
		subq.b	#1,$2A(a0)
		bmi.s	loc_35BDE
		lea	(Metal_Sonic_Animate_Data),a1 
		bsr	loc_32A78
		rts
loc_35BDE:
		addq.b	#2,$25(a0)
		move.b	#$40,$2A(a0)
		move.w	#$400,d0
		bra	loc_35E6E
loc_35BF0:
		subq.b	#1,$2A(a0)
		cmp.b	#$3C,$2A(a0)
		bne.s	loc_35C00
		bsr	loc_35C0A
loc_35C00:
		lea	(Metal_Sonic_Animate_Data),a1 
		bra	loc_32A78
loc_35C0A:
		addq.b	#2,$25(a0)
		move.w	#$FA00,$12(a0)
		rts
loc_35C16:
		subq.b	#1,$2A(a0)
		bmi	loc_35B9E
		jsr	ObjHitFloor	
		tst.w	d1
		bpl.s	loc_35C2C
		bsr	loc_35C3C
loc_35C2C:
		add.w	#$38,$12(a0)
		lea	(Metal_Sonic_Animate_Data),a1 
		bra	loc_32A78
loc_35C3C:
		addq.b	#2,$25(a0)
		add.w	d1,$C(a0)
		clr.w	$12(a0)
		rts
loc_35C4A:
		subq.b	#1,$2A(a0)
		bmi	loc_35B9E
		jsr	ObjHitFloor	
		add.w	d1,$C(a0)
		lea	(Metal_Sonic_Animate_Data),a1 
		bra	loc_32A78
loc_35C66:
		subq.b	#1,$2A(a0)
		bmi	loc_35B9E
		tst.b	$2E(a0)
		bne.s	loc_35C82
		tst.w	$12(a0)
		bmi.s	loc_35C82
		st	$2E(a0)
		bsr	loc_35E90
loc_35C82:
		jsr	ObjHitFloor	
		tst.w	d1
		bpl.s	loc_35C90
		bsr	loc_35CA0
loc_35C90:
		add.w	#$38,$12(a0)
		lea	(Metal_Sonic_Animate_Data),a1 
		bra	loc_32A78
loc_35CA0:
		addq.b	#2,$25(a0)
		add.w	d1,$C(a0)
		clr.w	$12(a0)
		rts
loc_35CAE:
		clr.b	$20(a0)
		subq.w	#1,$32(a0)
		bmi.s	loc_35CC0
		bsr	loc_3A8EC
		bra	loc_3A892
loc_35CC0:
		move.w	#$1000,($FFFFEECA).w
		addq.b	#2,($FFFFEEDF).w
		bra	loc_3A898
loc_35CCE:
		bsr	EnemySettings	
		move.b	#8,$19(a0)
		move.b	#0,$20(a0)
		rts
loc_35CE0:
		move.w	$2C(a0),a1
		bsr	loc_329DC
		lea	(Metal_Sonic_Animate_Data_1),a1 
		bsr	loc_32A78
		bra	loc_3A892
loc_35CF6:
		rts
loc_35CF8:
		bsr	EnemySettings	
		move.b	#8,$19(a0)
		move.b	#$B,$1A(a0)
		move.b	#3,$18(a0)
		rts
loc_35D10:
		move.b	#0,$20(a0)
		rts
loc_35D18:
		move.b	#$98,$20(a0)	
		rts
loc_35D20:
		bsr	EnemySettings	
		move.b	#4,$1A(a0)
		move.w	#$2C0,8(a0)
		move.w	#$139,$C(a0)
		rts
loc_35D38:
		move.w	$2C(a0),a1
		bclr	#1,$22(a1)
		bne.s	loc_35D48
		bra	loc_3A892
loc_35D48:
		addq.b	#2,$24(a0)
		bra	loc_3A892
loc_35D50:
		lea	(Metal_Sonic_Animate_Data_2),a1 
		bsr	loc_3A8BC
		bra	loc_3A892
loc_35D5E:
		move.w	$2C(a0),a1
		lea	($FFFFB000).w,a2
		btst	#2,$22(a1)
		bne.s	loc_35DA0
		move.b	#2,$1C(a0)
		cmp.b	#4,$24(a2)
		bne.s	loc_35D86
		move.b	#3,$1C(a0)
		bra	loc_35D92
loc_35D86:
		tst.b	$20(a1)
		bne.s	loc_35D92
		move.b	#4,$1C(a0)
loc_35D92:
		lea	(Metal_Sonic_Animate_Data_2),a1 
		bsr	loc_3A8BC
		bra	loc_3A892
loc_35DA0:
		addq.b	#2,$24(a0)
		move.b	#1,$1C(a0)
		bra	loc_3A892
loc_35DAE:
		lea	(Metal_Sonic_Animate_Data_2),a1 
		bsr	loc_3A8BC
		bra	loc_3A8A4
loc_35DBC:
		tst.b	$21(a0)
		beq.s	loc_35DFE
		tst.b	$20(a0)
		bne.s	loc_35DFC
		tst.b	$30(a0)
		bne.s	loc_35DDE
		move.b	#$20,$30(a0)
		move.w	#$AC,d0
		jsr	Play_Sfx	
loc_35DDE:
		lea	($FFFFFB22).w,a1
		moveq	#0,d0
		tst.w	(a1)
		bne.s	loc_35DEC
		move.w	#$EEE,d0
loc_35DEC:
		move.w	d0,(a1)
		subq.b	#1,$30(a0)
		bne.s	loc_35DFC
		clr.w	($FFFFFB22).w
		bsr	loc_35E32
loc_35DFC:
		rts
loc_35DFE:
		moveq	#$64,d0
		bsr	add_Points	
		move.w	#$FF,$32(a0)
		move.b	#$A,$24(a0)
		clr.b	$20(a0)
		bset	#2,$22(a0)
		move.w	$3C(a0),a1
		bsr	loc_3A8AA
		move.w	$3E(a0),a1
		bra	loc_3A8AA
loc_35E2A:
		tst.b	$20(a0)
		beq	Null_Sub_01	
loc_35E32:
		move.b	$1A(a0),d0
		cmp.b	#6,d0
		beq.s	loc_35E50
		cmp.b	#7,d0
		beq.s	loc_35E50
		cmp.b	#8,d0
		beq.s	loc_35E50
		move.b	#$1A,$20(a0)
		rts
loc_35E50:
		move.b	#$9A,$20(a0)
		rts
loc_35E58:
		moveq	#$C,d0
		moveq	#$FFFFFFF4,d1
		btst	#0,1(a0)
		beq.s	loc_35E66
		neg.w	d0
loc_35E66:
		move.w	$3C(a0),a1
		bra	loc_32996
loc_35E6E:
		tst.b	$2D(a0)
		bne.s	loc_35E76
		neg.w	d0
loc_35E76:
		not.b	$2D(a0)
		move.w	d0,$10(a0)
		rts
loc_35E80:
		moveq	#$20,d0
		tst.w	$10(a0)
		bmi.s	loc_35E8A
		neg.w	d0
loc_35E8A:
		add.w	d0,$10(a0)
		rts
loc_35E90:
		move.b	#$4A,d2
		moveq	#7,d6
		lea	(loc_35EA0),a2
		bra	Enemy_Weapon	
;-------------------------------------------------------------------------------	
loc_35EA0:
		dc.b	0,$E8,0,$FD,$F,0,$F0,$F0,$FE,$FE,$10,0,$E8,0,$FD,$0
		dc.b	$11,0,$F0,$10,$FE,2,$12,0,0,$18,0,3,$13,0,$10,$10
		dc.b	2,2,$14,0,$18,0,3,0,$15,0,$10,$F0,2,$FE,$16,$0	
;-------------------------------------------------------------------------------
loc_35ED0:
		dc.w	$3E,$AF48
loc_35ED4:
		dc.w	$3C,$AF48
loc_35ED8:
		dc.w	$3A,$AFA4	
;-------------------------------------------------------------------------------	
Obj_0xAF_Ptr: 
		dc.l	Metal_Sonic_Mappings	
		dc.w	$2380
		dc.b	4,4,$10,$1A
;-------------------------------------------------------------------------------	
Obj_0xAF_01_Ptr: 
		dc.l	Robotnik_Window_Mappings	
		dc.w	$378
		dc.b	4,6,$10,$0
;------------------------------------------------------------------------------- 
Metal_Sonic_Animate_Data: 
		dc.w	loc_35EFC-Metal_Sonic_Animate_Data
		dc.w	loc_35F02-Metal_Sonic_Animate_Data
		dc.w	loc_35F06-Metal_Sonic_Animate_Data
		dc.w	loc_35F0C-Metal_Sonic_Animate_Data
		dc.w	loc_35F22-Metal_Sonic_Animate_Data
		dc.w	loc_35F28-Metal_Sonic_Animate_Data
loc_35EFC:
		dc.b	2,0,1,2,$FF,$0
loc_35F02:
		dc.b	$45,3,$FD,$0
loc_35F06:
		dc.b	3,4,5,4,3,$FC
loc_35F0C:
		dc.b	3,3,3,6,6,6,7,7,7,8,8,8,6,6,7,$7
		dc.b	8,8,6,7,8,$FC
loc_35F22:
		dc.b	2,6,7,8,$FF,$0
loc_35F28:
		dc.b	3,8,7,6,8,8,7,7,6,6,8,8,8,7,7,$7
		dc.b	6,6,6,3,3,$FC	
;------------------------------------------------------------------------------- 
Metal_Sonic_Animate_Data_1: 
		dc.w	loc_35F44-Metal_Sonic_Animate_Data_1
		dc.w	loc_35F48-Metal_Sonic_Animate_Data_1
		dc.w	loc_35F4C-Metal_Sonic_Animate_Data_1
loc_35F44:
		dc.b	1,$B,$C,$FF
loc_35F48:
		dc.b	1,$D,$E,$FF
loc_35F4C:
		dc.b	1,9,$A,$FF
;-------------------------------------------------------------------------------	
Metal_Sonic_Animate_Data_2: 
		dc.w	loc_35F5A-Metal_Sonic_Animate_Data_2
		dc.w	loc_35F62-Metal_Sonic_Animate_Data_2
		dc.w	loc_35F6A-Metal_Sonic_Animate_Data_2
		dc.w	loc_35F6E-Metal_Sonic_Animate_Data_2
		dc.w	loc_35F72-Metal_Sonic_Animate_Data_2
loc_35F5A:
		dc.b	3,4,3,2,1,0,$FC,$0
loc_35F62:
		dc.b	3,0,1,2,3,4,$FA,$0
loc_35F6A:
		dc.b	3,5,5,$FF
loc_35F6E:
		dc.b	3,5,6,$FF
loc_35F72:
		dc.b	3,7,7,$FF	
;-------------------------------------------------------------------------------
Metal_Sonic_Mappings: 
		dc.w	loc_35FA4-Metal_Sonic_Mappings
		dc.w	loc_35FCE-Metal_Sonic_Mappings
		dc.w	loc_35FF8-Metal_Sonic_Mappings
		dc.w	loc_36022-Metal_Sonic_Mappings
		dc.w	loc_36044-Metal_Sonic_Mappings
		dc.w	loc_36066-Metal_Sonic_Mappings
		dc.w	loc_36088-Metal_Sonic_Mappings
		dc.w	loc_360AA-Metal_Sonic_Mappings
		dc.w	loc_360CC-Metal_Sonic_Mappings
		dc.w	loc_360EE-Metal_Sonic_Mappings
		dc.w	loc_36100-Metal_Sonic_Mappings
		dc.w	loc_36112-Metal_Sonic_Mappings
		dc.w	loc_36124-Metal_Sonic_Mappings
		dc.w	loc_36136-Metal_Sonic_Mappings
		dc.w	loc_36140-Metal_Sonic_Mappings
		dc.w	loc_3614A-Metal_Sonic_Mappings
		dc.w	loc_36154-Metal_Sonic_Mappings
		dc.w	loc_3615E-Metal_Sonic_Mappings
		dc.w	loc_36168-Metal_Sonic_Mappings
		dc.w	loc_36172-Metal_Sonic_Mappings
		dc.w	loc_3617C-Metal_Sonic_Mappings
		dc.w	loc_36186-Metal_Sonic_Mappings
		dc.w	loc_36190-Metal_Sonic_Mappings
loc_35FA4:
		dc.w	$5
		dc.l	$E4090000,$FFF3,$F40F0006,$3FFEF
		dc.l	$140C0016,$BFFEC,$E404006F,$37FFF4
		dc.l	$E4070071,$380004
loc_35FCE:
		dc.w	$5
		dc.l	$E4090000,$FFF3,$F40F0006,$3FFEF
		dc.l	$140C0016,$BFFEC,$E4040079,$3CFFF4
		dc.l	$E407007B,$3D0004
loc_35FF8:
		dc.w	$5
		dc.l	$E4090000,$FFF3,$F40F0006,$3FFEF
		dc.l	$140C0016,$BFFEC,$E4040083,$41FFF4
		dc.l	$E4070085,$420004
loc_36022:
		dc.w	$4
		dc.l	$E40F001A,$DFFEC,$E403002A,$15000C
		dc.l	$40E002E,$17FFF4,$1400003A,$1DFFEC
loc_36044:
		dc.w	$4
		dc.l	$E40E003B,$1DFFF0,$4010047,$23FFE8
		dc.l	$FC0F0049,$24FFF0,$FC030059,$2C0010
loc_36066:
		dc.w	$4
		dc.l	$E406005D,$2EFFF0,$E406085D,$82E0000
		dc.l	$FC0B0063,$31FFE8,$FC0B0863,$8310000
loc_36088:
		dc.w	$4
		dc.l	$EE0A008D,$46FFE8,$EE0A0096,$4B0000
		dc.l	$60A1896,$184BFFE8,$60A188D,$18460000
loc_360AA:
		dc.w	$4
		dc.l	$EE0A009F,$4FFFE8,$EE0A00A8,$540000
		dc.l	$60A18A8,$1854FFE8,$60A189F,$184F0000
loc_360CC:
		dc.w	$4
		dc.l	$EE0A00B1,$58FFE8,$EE0A00BA,$5D0000
		dc.l	$60A18BA,$185DFFE8,$60A18B1,$18580000
loc_360EE:
		dc.w	$2
		dc.l	$40000C3,$61000E,$140800CB,$650012
loc_36100:
		dc.w	$2
		dc.l	$40800C4,$62000E,$140800CE,$670012
loc_36112:
		dc.w	$2
		dc.l	$1C0000C7,$63FFF4,$1C0000C7,$63FFFC
loc_36124:
		dc.w	$2
		dc.l	$1C0200C8,$64FFF4,$1C0200C8,$64FFFC
loc_36136:
		dc.w	$1
		dc.l	$140800CB,$650012
loc_36140:
		dc.w	$1
		dc.l	$140800CE,$670012
loc_3614A:
		dc.w	$1
		dc.l	$F80100D1,$68FFFC
loc_36154:
		dc.w	$1
		dc.l	$F80500D3,$69FFF8
loc_3615E:
		dc.w	$1
		dc.l	$FC0400D7,$6BFFF8
loc_36168:
		dc.w	$1
		dc.l	$F80510D3,$1069FFF8
loc_36172:
		dc.w	$1
		dc.l	$F80110D1,$1068FFFC
loc_3617C:
		dc.w	$1
		dc.l	$F80518D3,$1869FFF8
loc_36186:
		dc.w	$1
		dc.l	$FC0408D7,$86BFFF8
loc_36190:
		dc.w	$1
		dc.l	$F80508D3,$869FFF8	
;-------------------------------------------------------------------------------
Robotnik_Window_Mappings: 
		dc.w	loc_361AA-Robotnik_Window_Mappings
		dc.w	loc_361D4-Robotnik_Window_Mappings
		dc.w	loc_361FE-Robotnik_Window_Mappings
		dc.w	loc_36228-Robotnik_Window_Mappings
		dc.w	loc_36262-Robotnik_Window_Mappings
		dc.w	loc_3629C-Robotnik_Window_Mappings
		dc.w	loc_362B6-Robotnik_Window_Mappings
		dc.w	loc_362D0-Robotnik_Window_Mappings
loc_361AA:
		dc.w	$5
		dc.l	$F4062000,$2000FFF0,$F4062800,$28000000
		dc.l	$4042006,$2003FFF0,$4042006,$20030000
		dc.l	$F80D0190,$C8FFF0
loc_361D4:
		dc.w	$5
		dc.l	$F4062000,$2000FFF0,$F4062800,$28000000
		dc.l	$42006,$2003FFF0,$42006,$20030000
		dc.l	$F80D0190,$C8FFF0
loc_361FE:
		dc.w	$5
		dc.l	$F4062000,$2000FFF0,$F4062800,$28000000
		dc.l	$FC042006,$2003FFF0,$FC042006,$20030000
		dc.l	$F80D0190,$C8FFF0
loc_36228:
		dc.w	$7
		dc.l	$F4062000,$2000FFF0,$F4062800,$28000000
		dc.l	$F8042006,$2003FFF0,$F8042006,$20030000
		dc.l	$42006,$2003FFF0,$42006,$20030000
		dc.l	$F80D0190,$C8FFF0
loc_36262:
		dc.w	$7
		dc.l	$F4062000,$2000FFF0,$F4062800,$28000000
		dc.l	$F4042006,$2003FFF0,$F4042006,$20030000
		dc.l	$FC042006,$2003FFF0,$FC042006,$20030000
		dc.l	$F80D0190,$C8FFF0
loc_3629C:
		dc.w	$3
		dc.l	$F4062000,$2000FFF0,$F4062800,$28000000
		dc.l	$F80D0190,$C8FFF0
loc_362B6:
		dc.w	$3
		dc.l	$F4062000,$2000FFF0,$F4062800,$28000000
		dc.l	$F90D0190,$C8FFF0
loc_362D0:
		dc.w	$3
		dc.l	$F4062000,$2000FFF0,$F4062800,$28000000
		dc.l	$F80D0198,$CCFFF0	
;===============================================================================
; Object 0xAF - Metal Sonic - Death Egg
; [ End ]
;===============================================================================