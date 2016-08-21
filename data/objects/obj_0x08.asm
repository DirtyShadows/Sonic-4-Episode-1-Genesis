;===============================================================================
; Object 0x08 - Sonic / Tails - Dust / Water Splash
; [ Begin ]
;===============================================================================	
loc_19BDA:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_19BE8(pc,d0),d1
		jmp	loc_19BE8(pc,d1)
loc_19BE8:
		dc.w	loc_19BF0-loc_19BE8
		dc.w	loc_19C3C-loc_19BE8
		dc.w	loc_19CEC-loc_19BE8
		dc.w	loc_19CF0-loc_19BE8
loc_19BF0:
		addq.b	#2,$24(a0)
		move.l	#Dust_Water_Splash_Mappings,4(a0) 
		or.b	#4,1(a0)
		move.b	#1,$18(a0)
		move.b	#$10,$19(a0)
		move.w	#$49C,2(a0)
		move.w	#$B000,$3E(a0)
		move.w	#$9380,$3C(a0)
		cmpa.w	#$B400,a0
		beq.s	loc_19C38
		move.w	#$48C,2(a0)
		move.w	#$B040,$3E(a0)
		move.w	#$9180,$3C(a0)
loc_19C38:
		bsr	ModifySpriteAttr_2P	
loc_19C3C:
		move.w	$3E(a0),a2
		moveq	#0,d0
		move.b	$1C(a0),d0
		add.w	d0,d0
		move.w	loc_19C50(pc,d0),d1
		jmp	loc_19C50(pc,d1)
loc_19C50:
		dc.w	loc_19CCE-loc_19C50
		dc.w	loc_19C58-loc_19C50
		dc.w	loc_19C78-loc_19C50
		dc.w	loc_19CC6-loc_19C50
loc_19C58:
		move.w	($FFFFF646).w,$C(a0)
		tst.b	$1D(a0)
		bne.s	loc_19CCE
		move.w	8(a2),8(a0)
		move.b	#0,$22(a0)
		and.w	#$7FFF,2(a0)
		bra.s	loc_19CCE
loc_19C78:
		cmp.b	#$C,$28(a2)
		bcs.s	loc_19CE4
		cmp.b	#4,$24(a2)
		bcc.s	loc_19CE4
		tst.b	$39(a2)
		beq.s	loc_19CE4
		move.w	8(a2),8(a0)
		move.w	$C(a2),$C(a0)
		move.b	$22(a2),$22(a0)
		tst.b	$3F(a0)
		beq.s	loc_19CAC
		sub.w	#4,$C(a0)
loc_19CAC:
		tst.b	$1D(a0)
		bne.s	loc_19CCE
		and.w	#$7FFF,2(a0)
		tst.w	2(a2)
		bpl.s	loc_19CCE
		or.w	#$8000,2(a0)
		bra.s	loc_19CCE
loc_19CC6:
		cmp.b	#$C,$28(a2)
		bcs.s	loc_19CE4
loc_19CCE:
		lea	(Dust_Water_Splash_AnimateData),a1 
		jsr	animateSprite	
		bsr	loc_19D8A
		jmp	displaySprite	
loc_19CE4:
		move.b	#0,$1C(a0)
		rts
loc_19CEC:
		bra	deleteObject	
loc_19CF0:
		move.w	$3E(a0),a2
		cmp.b	#$D,$1C(a2)
		beq.s	loc_19D0A
		move.b	#2,$24(a0)
		move.b	#0,$32(a0)
		rts
loc_19D0A:
		subq.b	#1,$32(a0)
		bpl.s	loc_19D86
		move.b	#3,$32(a0)
		bsr	SingleObjectLoad	
		bne.s	loc_19D86
		move.b	0(a0),0(a1)
		move.w	8(a2),8(a1)
		move.w	$C(a2),$C(a1)
		add.w	#$10,$C(a1)
		tst.b	$3F(a0)
		beq.s	loc_19D40
		sub.w	#4,$C(a1)
loc_19D40:
		move.b	#0,$22(a1)
		move.b	#3,$1C(a1)
		addq.b	#2,$24(a1)
		move.l	4(a0),4(a1)
		move.b	1(a0),1(a1)
		move.b	#1,$18(a1)
		move.b	#4,$19(a1)
		move.w	2(a0),2(a1)
		move.w	$3E(a0),$3E(a1)
		and.w	#$7FFF,2(a1)
		tst.w	2(a2)
		bpl.s	loc_19D86
		or.w	#$8000,2(a1)
loc_19D86:
		bsr.s	loc_19D8A
		rts
loc_19D8A:
		moveq	#0,d0
		move.b	$1A(a0),d0
		cmp.b	$30(a0),d0
		beq.s	loc_19DDC
		move.b	d0,$30(a0)
		lea	(Dust_Water_Splash_Dyn_Script),a2 
		add.w	d0,d0
		adda.w	0(a2,d0),a2
		move.w	(a2)+,d5
		subq.w	#1,d5
		bmi.s	loc_19DDC
		move.w	$3C(a0),d4
loc_19DB0:	
		moveq	#0,d1
		move.w	(a2)+,d1
		move.w	d1,d3
		lsr.w	#8,d3
		and.w	#$F0,d3
		add.w	#$10,d3
		and.w	#$FFF,d1
		lsl.l	#5,d1
		add.l	#Water_Splash_Dust_Spr,d1 
		move.w	d4,d2
		add.w	d3,d4
		add.w	d3,d4
		jsr	dMA_68KtoVRAM	
		dbra	d5,loc_19DB0
loc_19DDC:
		rts	
Dust_Water_Splash_AnimateData: 
		dc.w	loc_19DE6-Dust_Water_Splash_AnimateData
		dc.w	loc_19DE9-Dust_Water_Splash_AnimateData
		dc.w	loc_19DF5-Dust_Water_Splash_AnimateData
		dc.w	loc_19DFE-Dust_Water_Splash_AnimateData
loc_19DE6:
		dc.b	$1F,0,$FF
loc_19DE9:
		dc.b	3,1,2,3,4,5,6,7,8,9,$FD,$0
loc_19DF5:
		dc.b	1,$A,$B,$C,$D,$E,$F,$10,$FF
loc_19DFE:
		dc.b	3,$11,$12,$13,$14,$FC
Dust_Water_Splash_Mappings: 
		dc.w	loc_19E30-Dust_Water_Splash_Mappings
		dc.w	loc_19E32-Dust_Water_Splash_Mappings
		dc.w	loc_19E3C-Dust_Water_Splash_Mappings
		dc.w	loc_19E46-Dust_Water_Splash_Mappings
		dc.w	loc_19E50-Dust_Water_Splash_Mappings
		dc.w	loc_19E5A-Dust_Water_Splash_Mappings
		dc.w	loc_19E64-Dust_Water_Splash_Mappings
		dc.w	loc_19E6E-Dust_Water_Splash_Mappings
		dc.w	loc_19E78-Dust_Water_Splash_Mappings
		dc.w	loc_19E82-Dust_Water_Splash_Mappings
		dc.w	loc_19E8C-Dust_Water_Splash_Mappings
		dc.w	loc_19E96-Dust_Water_Splash_Mappings
		dc.w	loc_19EA0-Dust_Water_Splash_Mappings
		dc.w	loc_19EAA-Dust_Water_Splash_Mappings
		dc.w	loc_19EBC-Dust_Water_Splash_Mappings
		dc.w	loc_19ECE-Dust_Water_Splash_Mappings
		dc.w	loc_19EE0-Dust_Water_Splash_Mappings
		dc.w	loc_19EF2-Dust_Water_Splash_Mappings
		dc.w	loc_19EFC-Dust_Water_Splash_Mappings
		dc.w	loc_19F06-Dust_Water_Splash_Mappings
		dc.w	loc_19F10-Dust_Water_Splash_Mappings
		dc.w	loc_19E30-Dust_Water_Splash_Mappings
loc_19E30:
		dc.w	$0
loc_19E32:
		dc.w	$1
		dc.l	$F20D0000,$FFF0
loc_19E3C:
		dc.w	$1
		dc.l	$E20F0000,$FFF0
loc_19E46:
		dc.w	$1
		dc.l	$E20F0000,$FFF0
loc_19E50:
		dc.w	$1
		dc.l	$E20F0000,$FFF0
loc_19E5A:
		dc.w	$1
		dc.l	$E20F0000,$FFF0
loc_19E64:
		dc.w	$1
		dc.l	$E20F0000,$FFF0
loc_19E6E:
		dc.w	$1
		dc.l	$F20D0000,$FFF0
loc_19E78:
		dc.w	$1
		dc.l	$F20D0000,$FFF0
loc_19E82:
		dc.w	$1
		dc.l	$F20D0000,$FFF0
loc_19E8C:
		dc.w	$1
		dc.l	$40D0000,$FFE0
loc_19E96:
		dc.w	$1
		dc.l	$40D0000,$FFE0
loc_19EA0:
		dc.w	$1
		dc.l	$40D0000,$FFE0
loc_19EAA:
		dc.w	$2
		dc.l	$F4010000,$FFE8,$40D0002,$1FFE0
loc_19EBC:
		dc.w	$2
		dc.l	$F4050000,$FFE8,$40D0004,$2FFE0
loc_19ECE:
		dc.w	$2
		dc.l	$F4090000,$FFE0,$40D0006,$3FFE0
loc_19EE0:
		dc.w	$2
		dc.l	$F4090000,$FFE0,$40D0006,$3FFE0
loc_19EF2:
		dc.w	$1
		dc.l	$F8050000,$FFF8
loc_19EFC:
		dc.w	$1
		dc.l	$F8050004,$2FFF8
loc_19F06:
		dc.w	$1
		dc.l	$F8050008,$4FFF8
loc_19F10:
		dc.w	$1
		dc.l	$F805000C,$6FFF8
Dust_Water_Splash_Dyn_Script: 
		dc.w	loc_19F46-Dust_Water_Splash_Dyn_Script
		dc.w	loc_19F48-Dust_Water_Splash_Dyn_Script
		dc.w	loc_19F4C-Dust_Water_Splash_Dyn_Script
		dc.w	loc_19F50-Dust_Water_Splash_Dyn_Script
		dc.w	loc_19F54-Dust_Water_Splash_Dyn_Script
		dc.w	loc_19F58-Dust_Water_Splash_Dyn_Script
		dc.w	loc_19F5C-Dust_Water_Splash_Dyn_Script
		dc.w	loc_19F60-Dust_Water_Splash_Dyn_Script
		dc.w	loc_19F64-Dust_Water_Splash_Dyn_Script
		dc.w	loc_19F68-Dust_Water_Splash_Dyn_Script
		dc.w	loc_19F6C-Dust_Water_Splash_Dyn_Script
		dc.w	loc_19F70-Dust_Water_Splash_Dyn_Script
		dc.w	loc_19F74-Dust_Water_Splash_Dyn_Script
		dc.w	loc_19F78-Dust_Water_Splash_Dyn_Script
		dc.w	loc_19F7E-Dust_Water_Splash_Dyn_Script
		dc.w	loc_19F84-Dust_Water_Splash_Dyn_Script
		dc.w	loc_19F8A-Dust_Water_Splash_Dyn_Script
		dc.w	loc_19F90-Dust_Water_Splash_Dyn_Script
		dc.w	loc_19F90-Dust_Water_Splash_Dyn_Script
		dc.w	loc_19F90-Dust_Water_Splash_Dyn_Script
		dc.w	loc_19F90-Dust_Water_Splash_Dyn_Script
		dc.w	loc_19F92-Dust_Water_Splash_Dyn_Script
loc_19F46:
		dc.w	$0
loc_19F48:
		dc.w	$1
		dc.w	$7000
loc_19F4C:
		dc.w	$1
		dc.w	$F008
loc_19F50:
		dc.w	$1
		dc.w	$F018
loc_19F54:
		dc.w	$1
		dc.w	$F028
loc_19F58:
		dc.w	$1
		dc.w	$F038
loc_19F5C:
		dc.w	$1
		dc.w	$F048
loc_19F60:
		dc.w	$1
		dc.w	$7058
loc_19F64:
		dc.w	$1
		dc.w	$7060
loc_19F68:
		dc.w	$1
		dc.w	$7068
loc_19F6C:
		dc.w	$1
		dc.w	$7070
loc_19F70:
		dc.w	$1
		dc.w	$7078
loc_19F74:
		dc.w	$1
		dc.w	$7080
loc_19F78:
		dc.w	$2
		dc.w	$1088,$708A
loc_19F7E:
		dc.w	$2
		dc.w	$3092,$7096
loc_19F84:
		dc.w	$2
		dc.w	$509E,$70A4
loc_19F8A:
		dc.w	$2
		dc.w	$50AC,$70B2
loc_19F90:
		dc.w	$0
loc_19F92:
		dc.w	$1
		dc.w	$F0BA	
;===============================================================================
; Object 0x08 - Sonic / Tails - Dust / Water Splash
; [ End ]
;===============================================================================