;=============================================================================== 
; Object 0x1F - Collapsing Platforms - Dust Hill / Oil Ocean ...
; [ Begin ]
;===============================================================================	
loc_E730:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_E73E(pc,d0),d1
		jmp	loc_E73E(pc,d1)
loc_E73E:
		dc.w	loc_E744-loc_E73E
		dc.w	loc_E7FE-loc_E73E
		dc.w	loc_E836-loc_E73E
loc_E744:
		addq.b	#2,$24(a0)
		move.l	#Collapsing_Platforms_Mappings_1F,4(a0) 
		move.w	#$42B8,2(a0)
		or.b	#4,1(a0)
		move.b	#4,$18(a0)
		move.b	#7,$38(a0)
		move.b	#$44,$19(a0)
		lea	(loc_E93F),a4
		btst	#0,$28(a0)
		beq.s	loc_E782
		lea	(loc_E947),a4
loc_E782:
		move.l	a4,$34(a0)
		cmp.b	#$A,($FFFFFE10).w
		bne.s	loc_E7AE
		move.l	#OOz_Collapsing_Platforms_Mappings,4(a0) 
		move.w	#$639D,2(a0)
		bsr	ModifySpriteAttr_2P	
		move.b	#$40,$19(a0)
		move.l	#OOz_Collapsing_Platforms_Data,$34(a0) 
loc_E7AE:
		cmp.b	#$B,($FFFFFE10).w
		bne.s	loc_E7D6
		move.l	#DHz_Collapsing_Platforms_Mappings,4(a0) 
		move.w	#$63F4,2(a0)
		bsr	ModifySpriteAttr_2P	
		move.b	#$20,$19(a0)
		move.l	#DHz_Collapsing_Platforms_Data,$34(a0) 
loc_E7D6:
		cmp.b	#$F,($FFFFFE10).w
		bne.s	loc_E7FE
		move.l	#NGHz_Collapsing_Platforms_Mappings,4(a0) 
		move.w	#$4000,2(a0)
		bsr	ModifySpriteAttr_2P	
		move.b	#$20,$19(a0)
		move.l	#loc_E95C,$34(a0)
loc_E7FE:
		tst.b	$3A(a0)
		beq.s	loc_E810
		tst.b	$38(a0)
		beq	loc_E88A
		subq.b	#1,$38(a0)
loc_E810:
		move.b	$22(a0),d0
		and.b	#$18,d0
		beq.s	loc_E820
		move.b	#1,$3A(a0)
loc_E820:
		moveq	#0,d1
		move.b	$19(a0),d1
		move.w	#$10,d3
		move.w	8(a0),d4
		bsr	loc_15C6A
		bra	MarkObjGone	
loc_E836:
		tst.b	$38(a0)
		beq.s	loc_E87A
		tst.b	$3A(a0)
		bne.s	loc_E84A
		subq.b	#1,$38(a0)
		bra	displaySprite	
loc_E84A:
		bsr	loc_E820
		subq.b	#1,$38(a0)
		bne.s	loc_E878
		lea	($FFFFB000).w,a1
		bsr.s	loc_E85E
		lea	($FFFFB040).w,a1
loc_E85E:
		btst	#3,$22(a1)
		beq.s	loc_E878
		bclr	#3,$22(a1)
		bclr	#5,$22(a1)
		move.b	#1,$1D(a1)
loc_E878:
		rts
loc_E87A:
		bsr	ObjectFall	
		tst.b	1(a0)
		bpl	deleteObject	
		bra	displaySprite	
loc_E88A:
		addq.b	#1,$1A(a0)
		bra.s	loc_E894
loc_E890:
		addq.b	#2,$1A(a0)
loc_E894:
		move.l	$34(a0),a4
		moveq	#0,d0
		move.b	$1A(a0),d0
		add.w	d0,d0
		move.l	4(a0),a3
		adda.w	0(a3,d0),a3
		move.w	(a3)+,d1
		subq.w	#1,d1
		bset	#5,1(a0)
		move.b	0(a0),d4
		move.b	1(a0),d5
		move.l	a0,a1
		bra.s	loc_E8C6
loc_E8BE:	
		bsr	SingleObjectLoad	
		bne.s	loc_E90C
		addq.w	#8,a3
loc_E8C6:
		move.b	#4,$24(a1)
		move.b	d4,0(a1)
		move.l	a3,4(a1)
		move.b	d5,1(a1)
		move.w	8(a0),8(a1)
		move.w	$C(a0),$C(a1)
		move.w	2(a0),2(a1)
		move.b	$18(a0),$18(a1)
		move.b	$19(a0),$19(a1)
		move.b	$16(a0),$16(a1)
		move.b	(a4)+,$38(a1)
		cmpa.l	a0,a1
		bcc.s	loc_E908
		bsr	display_A1_Sprite	
loc_E908:
		dbra	d1,loc_E8BE
loc_E90C:
		bsr	displaySprite	
		move.w	#$B9,d0
		jmp	Play_Sfx	
;-------------------------------------------------------------------------------
loc_E91A:
		dc.b	$1C,$18,$14,$10,$1A,$16,$12,$E,$A,6,$18,$14,$10,$C,8,$4
		dc.b	$16,$12,$E,$A,6,2,$14,$10,$C 
;-------------------------------------------------------------------------------
loc_E933:
		dc.b	$18,$1C,$20,$1E,$1A,$16,6,$E,$14,$12,$A,$2	
;------------------------------------------------------------------------------- 
loc_E93F:
		dc.b	$1E,$16,$E,6,$1A,$12,$A,$2
;-------------------------------------------------------------------------------
loc_E947:	
		dc.b	$16,$1E,$1A,$12,6,$E,$A,$2
;-------------------------------------------------------------------------------
OOz_Collapsing_Platforms_Data: 
		dc.b	$1A,$12,$A,2,$16,$E,$6
;-------------------------------------------------------------------------------
DHz_Collapsing_Platforms_Data: 
		dc.b	$1A,$16,$12,$E,$A,$2
;-------------------------------------------------------------------------------
loc_E95C:
		dc.b	$16,$1A,$18,$12,6,$E,$A,$2
;-------------------------------------------------------------------------------	
loc_E964:
		dc.b	$20,$20,$20,$20,$20,$20,$20,$20,$21,$21,$22,$22,$23,$23,$24,$24
		dc.b	$25,$25,$26,$26,$27,$27,$28,$28,$29,$29,$2A,$2A,$2B,$2B,$2C,$2C
		dc.b	$2D,$2D,$2E,$2E,$2F,$2F,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30
;-------------------------------------------------------------------------------
Collapsing_Platforms_Mappings_1A: 
		dc.w	loc_E99C-Collapsing_Platforms_Mappings_1A
		dc.w	loc_EA1E-Collapsing_Platforms_Mappings_1A
		dc.w	loc_EAA0-Collapsing_Platforms_Mappings_1A
		dc.w	loc_EB6A-Collapsing_Platforms_Mappings_1A
loc_E99C:
		dc.w	$10
		dc.l	$C80E0057,$2B0010,$D00D0063,$31FFF0
		dc.l	$E00D006B,$350010,$E00D0073,$39FFF0
		dc.l	$D806007B,$3DFFE0,$D8060081,$40FFD0
		dc.l	$F00D0087,$430010,$F00D008F,$47FFF0
		dc.l	$F0050097,$4BFFE0,$F005009B,$4DFFD0
		dc.l	$D009F,$4F0010,$500A7,$530000
		dc.l	$D00AB,$55FFE0,$500B3,$59FFD0
		dc.l	$100D00AB,$550010,$100500B7,$5B0000
loc_EA1E:
		dc.w	$10
		dc.l	$C80E0057,$2B0010,$D00D0063,$31FFF0
		dc.l	$E00D006B,$350010,$E00D0073,$39FFF0
		dc.l	$D806007B,$3DFFE0,$D80600BB,$5DFFD0
		dc.l	$F00D0087,$430010,$F00D008F,$47FFF0
		dc.l	$F0050097,$4BFFE0,$F00500C1,$60FFD0
		dc.l	$D009F,$4F0010,$500A7,$530000
		dc.l	$D00AB,$55FFE0,$500B7,$5BFFD0
		dc.l	$100D00AB,$550010,$100500B7,$5B0000
loc_EAA0:
		dc.w	$19
		dc.l	$C806005D,$2E0020,$C8060057,$2B0010
		dc.l	$D0050067,$330000,$D0050063,$31FFF0
		dc.l	$E005006F,$370020,$E005006B,$350010
		dc.l	$E0050077,$3B0000,$E0050073,$39FFF0
		dc.l	$D806007B,$3DFFE0,$D8060081,$40FFD0
		dc.l	$F005008B,$450020,$F0050087,$430010
		dc.l	$F0050093,$490000,$F005008F,$47FFF0
		dc.l	$F0050097,$4BFFE0,$F005009B,$4DFFD0
		dc.l	$5008B,$450020,$5008B,$450010
		dc.l	$500A7,$530000,$500AB,$55FFF0
		dc.l	$500AB,$55FFE0,$500B3,$59FFD0
		dc.l	$100500AB,$550020,$100500AB,$550010
		dc.l	$100500B7,$5B0000
loc_EB6A:
		dc.w	$19
		dc.l	$C806005D,$2E0020,$C8060057,$2B0010
		dc.l	$D0050067,$330000,$D0050063,$31FFF0
		dc.l	$E005006F,$370020,$E005006B,$350010
		dc.l	$E0050077,$3B0000,$E0050073,$39FFF0
		dc.l	$D806007B,$3DFFE0,$D80600BB,$5DFFD0
		dc.l	$F005008B,$450020,$F0050087,$430010
		dc.l	$F0050093,$490000,$F005008F,$47FFF0
		dc.l	$F0050097,$4BFFE0,$F00500C1,$60FFD0
		dc.l	$5008B,$450020,$5008B,$450010
		dc.l	$500A7,$530000,$500AB,$55FFF0
		dc.l	$500AB,$55FFE0,$500B7,$5BFFD0
		dc.l	$100500AB,$550020,$100500AB,$550010
		dc.l	$100500B7,$5B0000
;-------------------------------------------------------------------------------
Collapsing_Platforms_Mappings_1F: 
		dc.w	loc_EC3C-Collapsing_Platforms_Mappings_1F
		dc.w	loc_EC5E-Collapsing_Platforms_Mappings_1F
		dc.w	loc_ECA0-Collapsing_Platforms_Mappings_1F
		dc.w	loc_ECC2-Collapsing_Platforms_Mappings_1F
loc_EC3C:
		dc.w	$4
		dc.l	$F80D0000,$FFE0,$80D0000,$FFE0
		dc.l	$F80D0000,0,$80D0000,$0
loc_EC5E:
		dc.w	$8
		dc.l	$F8050000,$FFE0,$F8050000,$FFF0
		dc.l	$F8050000,0,$F8050000,$10
		dc.l	$8050000,$FFE0,$8050000,$FFF0
		dc.l	$8050000,0,$8050000,$10
loc_ECA0:
		dc.w	$4
		dc.l	$F80D0000,$FFE0,$80D0008,$4FFE0
		dc.l	$F80D0000,0,$80D0008,$40000
loc_ECC2:
		dc.w	$8
		dc.l	$F8050000,$FFE0,$F8050004,$2FFF0
		dc.l	$F8050000,0,$F8050004,$20010
		dc.l	$8050008,$4FFE0,$805000C,$6FFF0
		dc.l	$8050008,$40000,$805000C,$60010	
;-------------------------------------------------------------------------------	
loc_ED04:
		dc.b	$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10
;-------------------------------------------------------------------------------	
loc_ED14:
		dc.b	$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10
		dc.b	$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10
		dc.b	$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10
;-------------------------------------------------------------------------------	
HPz_Collapsing_Platforms_Mappings: 
		dc.w	loc_ED4A-HPz_Collapsing_Platforms_Mappings
		dc.w	loc_ED8C-HPz_Collapsing_Platforms_Mappings
		dc.w	loc_ED8C-HPz_Collapsing_Platforms_Mappings
loc_ED4A:
		dc.w	$8
		dc.l	$F00D0000,$FFD0,$D0008,$4FFD0
		dc.l	$F0050004,$2FFF0,$F0050804,$8020000
		dc.l	$5000C,$6FFF0,$5080C,$8060000
		dc.l	$F00D0800,$8000010,$D0808,$8040010
loc_ED8C:
		dc.w	$C
		dc.l	$F0050000,$FFD0,$F0050004,$2FFE0
		dc.l	$F0050004,$2FFF0,$F0050804,$8020000
		dc.l	$F0050804,$8020010,$F0050800,$8000020
		dc.l	$50008,$4FFD0,$5000C,$6FFE0
		dc.l	$5000C,$6FFF0,$5080C,$8060000
		dc.l	$5080C,$8060010,$50808,$8040020	
;-------------------------------------------------------------------------------	
OOz_Collapsing_Platforms_Mappings: 
		dc.w	loc_EDF4-OOz_Collapsing_Platforms_Mappings
		dc.w	loc_EDF4-OOz_Collapsing_Platforms_Mappings
		dc.w	loc_EDF4-OOz_Collapsing_Platforms_Mappings
loc_EDF4:
		dc.w	$7
		dc.l	$F00F0810,$808FFC0,$F00F0810,$808FFE0
		dc.l	$F00F0810,$8080000,$F00F0800,$8000020
		dc.l	$100D0820,$810FFC0,$100D0820,$810FFE0
		dc.l	$100D0820,$8100000
;-------------------------------------------------------------------------------	
DHz_Collapsing_Platforms_Mappings: 
		dc.w	loc_EE32-DHz_Collapsing_Platforms_Mappings
		dc.w	loc_EE54-DHz_Collapsing_Platforms_Mappings
loc_EE32:
		dc.w	$4
		dc.l	$F00D0000,$FFE0,$F00D0800,$8000000
		dc.l	$90008,$4FFF0,$B000E,$70008
loc_EE54:
		dc.w	$6
		dc.l	$F0050000,$FFE0,$F0050004,$2FFF0
		dc.l	$F0050804,$8020000,$F0050800,$8000010
		dc.l	$90008,$4FFF0,$B000E,$70008
;-------------------------------------------------------------------------------	
NGHz_Collapsing_Platforms_Mappings: 
		dc.w	loc_EE8A-NGHz_Collapsing_Platforms_Mappings
		dc.w	loc_EEAC-NGHz_Collapsing_Platforms_Mappings
loc_EE8A:
		dc.w	$4
		dc.l	$F00D0055,$2AFFE0,$F00D0855,$82A0000
		dc.l	$D00A3,$51FFE0,$D08A3,$8510000
loc_EEAC:
		dc.w	$8
		dc.l	$F0050055,$2AFFE0,$F0050059,$2CFFF0
		dc.l	$F0050859,$82C0000,$F0050855,$82A0010
		dc.l	$500A3,$51FFE0,$500A7,$53FFF0
		dc.l	$508A7,$8530000,$508A3,$8510010	
;=============================================================================== 
; Object 0x1F - Collapsing Platforms - Dust Hill / Oil Ocean ...
; [ End ]
;===============================================================================	