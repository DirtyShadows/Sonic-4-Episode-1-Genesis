; ---------------------------------------------------------------------------
; Sonic 1 Sound Driver
; ---------------------------------------------------------------------------
		align $10
Go_SoundTypes:	dc.l SoundTypes		; XREF: Sound_Play
Go_SoundD0:	dc.l SoundD0Index	; XREF: Sound_D0toDF
Go_MusicIndex:	dc.l MusicIndex		; XREF: Sound_81to9F
Go_MusicIndex00:	dc.l MusicIndex00
;Go_MusicIndex7F:	dc.l MusicIndex7F
Go_MusicIndexFF:	dc.l MusicIndexFF
Go_MusicIndex_E5toFF:	dc.l MusicIndex_E5plus		; XREF: Sound_81to9F
Go_SoundIndex:	dc.l SoundIndex		; XREF: Sound_A0toCF
off_719A0:	dc.l byte_71A94		; XREF: Sound_81to9F
Go_PSGIndex:	dc.l PSG_Index		; XREF: sub_72926
;Go_PSGIndex2:	dc.l PSGNoisePointers		; XREF: sub_72926	
;Go_PSGIndex3:	dc.l PSGTonePointers
; ---------------------------------------------------------------------------
; PSG instruments used in music
; ---------------------------------------------------------------------------
PSG_Index:	dc.l PSG1, PSG2, PSG3
	dc.l PSG4, PSG5, PSG6
	dc.l PSG7, PSG8, PSG9
	dc.l PSG0A, PSG0B, PSG0C
	dc.l PSG0D
    dc.l S3PSG1, S3PSG2, S3PSG3
    dc.l S3PSG4, S3PSG5, S3PSG6
    dc.l S3PSG7, S3PSG8, S3PSG9
    dc.l S3PSGA, S3PSGB, S3PSGC
    dc.l S3PSGD, S3PSGE, S3PSGF
    dc.l S3PSG10
    dc.l S3PSG11, S3PSG12, S3PSG13
    dc.l S3PSG14, S3PSG15, S3PSG16
    dc.l S3PSG17, S3PSG18, S3PSG19
    dc.l S3PSG1A, S3PSG1B, S3PSG1C
    dc.l S3PSG1D, S3PSG1E, S3PSG1F
    dc.l S3PSG20
    dc.l S3PSG21, S3PSG22, S3PSG23
    dc.l S3PSG24, S3PSG25, S3PSG26
    dc.l S3PSG27, S3PSG28, S3PSG29
    dc.l S3PSG2A, S3PSG2B, S3PSG2C
    dc.l S3PSG2D, S3PSG2E, S3PSG2F
    dc.l S3PSG30
PSG1:		incbin	sound\psg1.bin
PSG2:		incbin	sound\psg2.bin
PSG3:		incbin	sound\psg3.bin
PSG4:		incbin	sound\psg4.bin
PSG6:		incbin	sound\psg6.bin
PSG5:		incbin	sound\psg5.bin
PSG7:dc.b   0                ;		dATA XREF: A6o
                		dc.b   0
                		dc.b   0
                		dc.b   0
                		dc.b   0
                		dc.b   0
                		dc.b   0
                		dc.b   0
                		dc.b   0
                		dc.b   0
                		dc.b   1
                		dc.b   1
                		dc.b   1
                		dc.b   1
                		dc.b   1
                		dc.b   1
                		dc.b   1
                		dc.b   1
                		dc.b   1
                		dc.b   1
                		dc.b   1
                		dc.b   1
                		dc.b   1
                		dc.b   1
                		dc.b   2
                		dc.b   2
                		dc.b   2
                		dc.b   2
                		dc.b   2
                		dc.b   2
                		dc.b   2
                		dc.b   2
                		dc.b   3
                		dc.b   3
                		dc.b   3
                		dc.b   3
                		dc.b   3
                		dc.b   3
                		dc.b   3
                		dc.b   3
                		dc.b   4
                		dc.b $80 ; Ç
						even
PSG8:		incbin	sound\psg8.bin
PSG9:		incbin	sound\psg9.bin
PSG0A:		incbin	"sound/PSG/PSG A (S2).bin"
PSG0B:		incbin	"sound/PSG/PSG B (S2).bin"
PSG0C:		incbin	"sound/PSG/PSG C (S2).bin"
PSG0D:		incbin	"sound/PSG/PSG D (S2).bin"
S3PSG1: incbin sound\S3psg\psg1.bin
	even
S3PSG2: incbin sound\S3psg\psg2.bin
	even
S3PSG3: incbin sound\S3psg\psg3.bin
	even
S3PSG4: incbin sound\S3psg\psg4.bin
	even
S3PSG5: incbin sound\S3psg\psg5.bin
	even
S3PSG6: incbin sound\S3psg\psg6.bin
	even
S3PSG7: incbin sound\S3psg\psg7.bin
	even
S3PSG8: incbin sound\S3psg\psg8.bin
	even
S3PSG9: incbin sound\S3psg\psg9.bin
	even
S3PSGA: incbin sound\S3psg\psga.bin
	even
S3PSGB: incbin sound\S3psg\psgb.bin
	even
S3PSGC: incbin sound\S3psg\psgc.bin
	even
S3PSGD: incbin sound\S3psg\psgd.bin
	even
S3PSGE: incbin sound\S3psg\psge.bin
	even
S3PSGF: incbin sound\S3psg\psgf.bin
	even
S3PSG10: incbin sound\S3psg\psg10.bin
	even
S3PSG11: incbin sound\S3psg\psg11.bin
	even
S3PSG12: incbin sound\S3psg\psg12.bin
	even
S3PSG13: incbin sound\S3psg\psg13.bin
	even
S3PSG14: incbin sound\S3psg\psg14.bin
	even
S3PSG15: incbin sound\S3psg\psg15.bin
	even
S3PSG16: incbin sound\S3psg\psg16.bin
	even
S3PSG17: incbin sound\S3psg\psg17.bin
	even
S3PSG18: incbin sound\S3psg\psg18.bin
	even
S3PSG19: incbin sound\S3psg\psg19.bin
	even
S3PSG1A: incbin sound\S3psg\psg1a.bin
	even
S3PSG1B: incbin sound\S3psg\psg1b.bin
	even
S3PSG1C: incbin sound\S3psg\psg1c.bin
	even
S3PSG1D: incbin sound\S3psg\psg1d.bin
	even
S3PSG1E: incbin sound\S3psg\psg1e.bin
	even
S3PSG1F: incbin sound\S3psg\psg1f.bin
	even
S3PSG20: incbin sound\S3psg\psg20.bin
	even
S3PSG21: incbin sound\S3psg\psg21.bin
	even
S3PSG22: incbin sound\S3psg\psg22.bin
	even
S3PSG23: incbin sound\S3psg\psg23.bin
	even
S3PSG24: incbin sound\S3psg\psg24.bin
	even
S3PSG25: incbin sound\S3psg\psg25.bin
	even
S3PSG26: incbin sound\S3psg\psg26.bin
	even
S3PSG27: incbin sound\S3psg\psg27.bin
	even
S3PSG28: incbin sound\S3psg\psg28.bin
	even
S3PSG29: incbin sound\S3psg\psg29.bin
	even
S3PSG2A: incbin sound\S3psg\psg2a.bin
	even
S3PSG2B: incbin sound\S3psg\psg2b.bin
	even
S3PSG2C: incbin sound\S3psg\psg2c.bin
	even
S3PSG2D: incbin sound\S3psg\psg2d.bin
	even
S3PSG2E: incbin sound\S3psg\psg2e.bin
	even
S3PSG2F: incbin sound\S3psg\psg2f.bin
	even
S3PSG30: incbin sound\S3psg\psg30.bin
	even


byte_71A94:	dc.b 7,	$72, $73, $26, $15, 8, $FF, 5
; ---------------------------------------------------------------------------
; Type of sound	being played ($90 = music; $70 = normal	sound effect)
; ---------------------------------------------------------------------------
SoundTypes:		dc.b $90, $90, $90, $90, $90, $90, $90,	$90, $90, $90, $90, $90, $90, $90, $90,	$90
				dc.b $90, $90, $90, $90, $90, $90, $90,	$90, $90, $90, $90, $90, $90, $90, $90,	$90
				dc.b $90, $90, $90, $90, $90, $90, $90,	$90, $90, $90, $90, $90, $90, $90, $90,	$90
				dc.b $90, $90, $90, $90, $90, $90, $90,	$90, $90, $90, $90, $90, $90, $90, $90,	$90
				dc.b $90, $90, $90, $90, $90, $90, $90,	$90, $90, $90, $90, $90, $90, $90, $90,	$90
				dc.b $90, $90, $90, $90, $90, $90, $90,	$90, $90, $90, $90, $90, $90, $90, $90,	$90
				dc.b $90, $90, $90, $90, $90, $90, $90,	$90, $90, $90, $90, $90, $90, $90, $90,	$90
				dc.b $90, $90, $90, $90, $90, $90, $90,	$90, $90, $90, $90, $90, $90, $90, $90,	$90
				dc.b $90, $90, $90, $90, $90, $90, $90,	$90, $90, $90, $90, $90, $90, $90, $90,	$90
				dc.b $90, $90, $90, $90, $90, $90, $90,	$90, $90, $90, $90, $90, $90, $90, $90,	$90
				dc.b $90, $90, $90, $90, $90, $90, $90,	$90, $90, $90, $90, $90, $90, $90, $90,	$90
				dc.b $90, $90, $90, $90, $90, $90, $90,	$90, $90, $90, $90, $90, $90, $90, $90,	$90
				dc.b $90, $90, $90, $90, $90, $90, $90,	$90, $90, $90, $90, $90, $90, $90, $90,	$90
				dc.b $90, $90, $90, $90, $90, $90, $90,	$90, $90, $90, $90, $90, $90, $90, $90,	$90
				dc.b $90, $90, $90, $90, $90, $90, $90,	$90, $90, $90, $90, $90, $90, $90, $90,	$90
				dc.b $90, $90, $90, $90, $90, $90, $90,	$90, $90, $90, $90, $90, $90, $90, $90, $90

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


sub_71B4C:				; XREF: loc_B10; PalToCRAM
;		move.w	#$100,($A11100).l ; stop the Z80
;		nop
;		nop
;		nop

;	@wait:  btst	#0,($A11100).l
;		bne.s	@wait
;
;		btst	#7,($A01FFD).l
;		beq.s	loc_71B82
;		move.w	#0,($A11100).l	; start	the Z80
;		nop
;		nop
;		nop
;		nop
;		nop
;		bra.s	UpdateMusic
;; ===========================================================================
;
;loc_71B82:
		lea	($FFF000).l,a6
		clr.b	$E(a6)
		tst.b	3(a6)		; is music paused?
		bne.w	loc_71E50	; if yes, branch
		subq.b	#1,1(a6)
		bne.s	loc_71B9E
		jsr	sub_7260C(pc)

loc_71B9E:
		move.b	4(a6),d0
		beq.s	loc_71BA8
		jsr	sub_72504(pc)

loc_71BA8:
		tst.b	$24(a6)
		beq.s	loc_71BB2
		jsr	sub_7267C(pc)

loc_71BB2:
		tst.w	$A(a6)		; is music or sound being played?
		beq.s	loc_71BBC	; if not, branch
		jsr	Sound_Play(pc)

loc_71BBC:
		cmpi.b	#$80,9(a6)
		beq.s	loc_71BC8
		jsr	Sound_ChkValue(pc)

loc_71BC8:
		tst.b	$2D(a6)
		beq.s	@cont
		subq.b	#1,$2D(a6)
 
@cont:
		lea	$40(a6),a5
		tst.b	(a5)
		bpl.s	loc_71BD4
		jsr	sub_71C4E(pc)

loc_71BD4:
		clr.b	8(a6)
		moveq	#5,d7

loc_71BDA:
		adda.w	#$30,a5
		tst.b	(a5)
		bpl.s	loc_71BE6
		jsr	sub_71CCA(pc)

loc_71BE6:
		dbf	d7,loc_71BDA

		moveq	#2,d7

loc_71BEC:
		adda.w	#$30,a5
		tst.b	(a5)
		bpl.s	loc_71BF8
		jsr	sub_72850(pc)

loc_71BF8:
		dbf	d7,loc_71BEC

		move.b	#$80,$E(a6)
		moveq	#2,d7

loc_71C04:
		adda.w	#$30,a5
		tst.b	(a5)
		bpl.s	loc_71C10
		jsr	sub_71CCA(pc)

loc_71C10:
		dbf	d7,loc_71C04

		moveq	#2,d7

loc_71C16:
		adda.w	#$30,a5
		tst.b	(a5)
		bpl.s	loc_71C22
		jsr	sub_72850(pc)

loc_71C22:
		dbf	d7,loc_71C16
		move.b	#$40,$E(a6)
		adda.w	#$30,a5
		tst.b	(a5)
		bpl.s	loc_71C38
		jsr	sub_71CCA(pc)

loc_71C38:
		adda.w	#$30,a5
		tst.b	(a5)
		bpl.s	loc_71C44
		jsr	sub_72850(pc)

loc_71C44:
;		move.w	#0,($A11100).l	; start	the Z80
		rts	
; End of function sub_71B4C


; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


sub_71C4E:				; XREF: sub_71B4C
		subq.b	#1,$E(a5)
		bne.s	locret_71CAA
		move.b	#$80,8(a6)
		movea.l	4(a5),a4

loc_71C5E:
		moveq	#0,d5
		move.b	(a4)+,d5
		cmpi.b	#-$20,d5
		bcs.s	loc_71C6E
		jsr	sub_72A5A(pc)
		bra.s	loc_71C5E
; ===========================================================================

loc_71C6E:
		tst.b	d5
		bpl.s	loc_71C84
		move.b	d5,$10(a5)
		move.b	(a4)+,d5
		bpl.s	loc_71C84
		subq.w	#1,a4
		move.b	$F(a5),$E(a5)
		bra.s	loc_71C88
; ===========================================================================

loc_71C84:
		jsr	sub_71D40(pc)

loc_71C88:
		move.l	a4,4(a5)
		btst	#2,(a5)
		bne.s	locret_71CAA
		moveq	#0,d0
		move.b	$10(a5),d0
		cmpi.b	#$80,d0
		beq.s	locret_71CAA
;		btst	#3,d0
;		bne.s	loc_71CAC
		stopZ80		;++
		move.b	d0,($A01FFF).l
		startZ80	;++

locret_71CAA:
		rts	
; ===========================================================================

;loc_71CAC:
;		subi.b	#$88,d0
;		move.b	byte_71CC4(pc,d0.w),d0
;		move.b	d0,($A000EA).l
;		move.b	#$83,($A01FFF).l
;		rts	
; End of function sub_71C4E

; ===========================================================================
;byte_71CC4:	dc.b $12, $15, $1C, $1D, $FF, $FF

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


sub_71CCA:				; XREF: sub_71B4C
		subq.b	#1,$E(a5)
		bne.s	loc_71CE0
		bclr	#4,(a5)
		jsr	sub_71CEC(pc)
		jsr	sub_71E18(pc)
		bra.w	loc_726E2
; ===========================================================================

loc_71CE0:
		jsr	sub_71D9E(pc)
		jsr	sub_71DC6(pc)
		bra.w	loc_71E24
; End of function sub_71CCA


; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


sub_71CEC:				; XREF: sub_71CCA
		movea.l	4(a5),a4
		bclr	#1,(a5)

loc_71CF4:
		moveq	#0,d5
		move.b	(a4)+,d5
		cmpi.b	#-$20,d5
		bcs.s	loc_71D04
		jsr	sub_72A5A(pc)
		bra.s	loc_71CF4
; ===========================================================================

loc_71D04:
		jsr	sub_726FE(pc)
		tst.b	d5
		bpl.s	loc_71D1A
		jsr	sub_71D22(pc)
		move.b	(a4)+,d5
		bpl.s	loc_71D1A
		subq.w	#1,a4
		bra.w	sub_71D60
; ===========================================================================

loc_71D1A:
		jsr	sub_71D40(pc)
		bra.w	sub_71D60
; End of function sub_71CEC


; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


sub_71D22:				; XREF: sub_71CEC
		subi.b	#$80,d5
		beq.s	loc_71D58
		add.b	8(a5),d5
		andi.w	#$7F,d5
		lsl.w	#1,d5
		lea	word_72790(pc),a0
		move.w	(a0,d5.w),d6
		move.w	d6,$10(a5)
		rts	

; End of function sub_71D22

;		subi.b	#$80,d5
;		beq.s	loc_71D58
;		add.b	8(a5),d5
;		andi.l	#$7F,d5
;		divu.w	#$C,d5	; new instruction
;		swap	d5	; new instruction
;		lsl.w	#1,d5
;		lea	word_72790,a0
;		move.w	(a0,d5.w),d6
;		swap	d5	; new instruction
;		andi.w	#7,d5	; new instruction
;		moveq	#$B,d0	; new instruction
;		lsl.w	d0,d5	; new instruction
;		or.w	d5,d6	; new instruction
;		move.w	d6,$10(a5)
;		rts	

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


sub_71D40:				; XREF: sub_71C4E; sub_71CEC; sub_72878
		move.b	d5,d0
		move.b	2(a5),d1

loc_71D46:
		subq.b	#1,d1
		beq.s	loc_71D4E
		add.b	d5,d0
		bra.s	loc_71D46
; ===========================================================================

loc_71D4E:
		move.b	d0,$F(a5)
		move.b	d0,$E(a5)
		rts	
; End of function sub_71D40

; ===========================================================================

loc_71D58:				; XREF: sub_71D22
		bset	#1,(a5)
		clr.w	$10(a5)

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


sub_71D60:				; XREF: sub_71CEC; sub_72878; sub_728AC
		move.l	a4,4(a5)
		move.b	$F(a5),$E(a5)
		btst	#4,(a5)
		bne.s	locret_71D9C
		move.b	$13(a5),$12(a5)
		clr.b	$C(a5)
		btst	#3,(a5)
		beq.s	locret_71D9C
		movea.l	$14(a5),a0
		move.b	(a0)+,$18(a5)
		move.b	(a0)+,$19(a5)
		move.b	(a0)+,$1A(a5)
		move.b	(a0)+,d0
		lsr.b	#1,d0
		move.b	d0,$1B(a5)
		clr.w	$1C(a5)

locret_71D9C:
		rts	
; End of function sub_71D60


; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


sub_71D9E:				; XREF: sub_71CCA; sub_72850
		tst.b	$12(a5)
		beq.s	locret_71DC4
		subq.b	#1,$12(a5)
		bne.s	locret_71DC4
		bset	#1,(a5)
		tst.b	1(a5)
		bmi.w	loc_71DBE
		jsr	sub_726FE(pc)
		addq.w	#4,sp
		rts	
; ===========================================================================

loc_71DBE:
		jsr	sub_729A0(pc)
		addq.w	#4,sp

locret_71DC4:
		rts	
; End of function sub_71D9E


; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


sub_71DC6:				; XREF: sub_71CCA; sub_72850
		addq.w	#4,sp
		btst	#3,(a5)
		beq.s	locret_71E16
		tst.b	$18(a5)
		beq.s	loc_71DDA
		subq.b	#1,$18(a5)
		rts	
; ===========================================================================

loc_71DDA:
		subq.b	#1,$19(a5)
		beq.s	loc_71DE2
		rts	
; ===========================================================================

loc_71DE2:
		movea.l	$14(a5),a0
		move.b	1(a0),$19(a5)
		tst.b	$1B(a5)
		bne.s	loc_71DFE
		move.b	3(a0),$1B(a5)
		neg.b	$1A(a5)
		rts	
; ===========================================================================

loc_71DFE:
		subq.b	#1,$1B(a5)
		move.b	$1A(a5),d6
		ext.w	d6
		add.w	$1C(a5),d6
		move.w	d6,$1C(a5)
		add.w	$10(a5),d6
		subq.w	#4,sp

locret_71E16:
		rts	
; End of function sub_71DC6


; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


sub_71E18:				; XREF: sub_71CCA
		btst	#1,(a5)
		bne.s	locret_71E48
		move.w	$10(a5),d6
		beq.s	loc_71E4A

loc_71E24:				; XREF: sub_71CCA
		move.b	$1E(a5),d0
		ext.w	d0
		add.w	d0,d6
		btst	#2,(a5)
		bne.s	locret_71E48
		move.w	d6,d1
		lsr.w	#8,d1
		move.b	#-$5C,d0
		jsr	sub_72722(pc)
		move.b	d6,d1
		move.b	#-$60,d0
		jsr	sub_72722(pc)

locret_71E48:
		rts	
; ===========================================================================

loc_71E4A:
		bset	#1,(a5)
		rts	
; End of function sub_71E18

; ===========================================================================

loc_71E50:				; XREF: sub_71B4C
		bmi.s	loc_71E94
		cmpi.b	#2,3(a6)
		beq.w	loc_71EFE
		move.b	#2,3(a6)
		moveq	#2,d3
		move.b	#-$4C,d0
		moveq	#0,d1

loc_71E6A:
		jsr	sub_7272E(pc)
		jsr	sub_72764(pc)
		addq.b	#1,d0
		dbf	d3,loc_71E6A

		moveq	#2,d3
		moveq	#$28,d0

loc_71E7C:
		move.b	d3,d1
		jsr	sub_7272E(pc)
		addq.b	#4,d1
		jsr	sub_7272E(pc)
		dbf	d3,loc_71E7C

		jsr	sub_729B6(pc)
		stopZ80		;++
		move.b	#$7F,($A01FFF).l	;++ pause DAC
		startZ80	;++
		bra.w	loc_71C44
; ===========================================================================

loc_71E94:				; XREF: loc_71E50
		clr.b	3(a6)
		moveq	#$30,d3
		lea	$40(a6),a5
		moveq	#6,d4

loc_71EA0:
		btst	#7,(a5)
		beq.s	loc_71EB8
		btst	#2,(a5)
		bne.s	loc_71EB8
		move.b	#-$4C,d0
		move.b	$A(a5),d1
		jsr	sub_72722(pc)

loc_71EB8:
		adda.w	d3,a5
		dbf	d4,loc_71EA0

		lea	$220(a6),a5
		moveq	#2,d4

loc_71EC4:
		btst	#7,(a5)
		beq.s	loc_71EDC
		btst	#2,(a5)
		bne.s	loc_71EDC
		move.b	#-$4C,d0
		move.b	$A(a5),d1
		jsr	sub_72722(pc)

loc_71EDC:
		adda.w	d3,a5
		dbf	d4,loc_71EC4

		lea	$340(a6),a5
		btst	#7,(a5)
		beq.s	@UnpauseDAC	;++
		btst	#2,(a5)
		bne.s	@UnpauseDAC	;++
		move.b	#-$4C,d0
		move.b	$A(a5),d1
		jsr	sub_72722(pc)

@UnpauseDAC:				;++
		stopZ80			;++
		move.b	#0,($A01FFF).l	;++ unpause DAC
		startZ80		;++

loc_71EFE:
		bra.w	loc_71C44

; ---------------------------------------------------------------------------
; Subroutine to	play a sound or	music track
; ---------------------------------------------------------------------------

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


Sound_Play:				; XREF: sub_71B4C
		movea.l	(Go_SoundTypes).l,a0
		lea	$A(a6),a1	; load music track number
		move.b	0(a6),d3
		moveq	#2,d4
		moveq	#0,d0			; Clownacy | Added as a replacement for the below andi.w
loc_71F12:
		move.b	(a1),d0		; move track number to d0
		move.b	d0,d1
		clr.b	(a1)+
		subi.b	#$81,d0
		bcs.s	loc_71F3E
		cmpi.b	#$80,9(a6)
		beq.s	loc_71F2C
		move.b	d1,$A(a6)
		bra.s	loc_71F3E
; ===========================================================================

loc_71F2C:
;		andi.w	#$7F,d0
		move.b	(a0,d0.w),d2
		cmp.b	d3,d2
		bcs.s	loc_71F3E
		move.b	d2,d3
		move.b	d1,9(a6)	; set music flag

loc_71F3E:
		dbf	d4,loc_71F12

		tst.b	d3
		bmi.s	locret_71F4A
		move.b	d3,0(a6)

locret_71F4A:
		rts	
; End of function Sound_Play


; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


Sound_ChkValue:				; XREF: sub_71B4C
		moveq	#0,d7
		move.b	9(a6),d7
;		beq.w	Sound_E4
;		bpl.s	locret_71F8C
		move.b	#$80,9(a6)	; reset	music flag

		cmpi.b  #$01,($FFFFFF7C).w
		beq.w	Sound_01to7F	; music	$01-$7F
		cmpi.b	#$9F,d7
		bls.w	Sound_81to9F	; music	$81-$9F
		cmpi.b	#$A0,d7
		bcs.w	locret_71F8C
		cmpi.b	#$CF,d7
		bls.w	Sound_A0toCF	; sound	$A0-$CF
		cmpi.b	#$D0,d7
		bcs.w	locret_71F8C
		cmpi.b	#$D1,d7
		bcs.w	Sound_D0toDF	; sound	$D0-$DF
		cmp.b	#$DF,d7
		bls		Sound_D1toDF
		cmpi.b	#$E4,d7
		bls.s	Sound_E0toE4	; sound	$E0-$E4
		cmpi.b	#$FF,d7
		bls.w	Sound_E5toFF

locret_71F8C:
		rts		
; ===========================================================================

Sound_E0toE4:				; XREF: Sound_ChkValue
		subi.b	#$E0,d7
		lsl.w	#2,d7
		jmp	Sound_ExIndex(pc,d7.w)
; ===========================================================================

Sound_ExIndex:
		bra.w	Sound_E0
; ===========================================================================
		bra.w	Sound_E1
; ===========================================================================
		bra.w	Sound_E2
; ===========================================================================
		bra.w	Sound_E3
; ===========================================================================
		bra.w	Sound_E4
; ===========================================================================
; ---------------------------------------------------------------------------
; Play "Say-gaa" PCM sound
; ---------------------------------------------------------------------------

Sound_E1:				; XREF: Sound_ExIndex
	stopZ80
	lea	(SegaPCM).l,a2			; Load the SEGA PCM sample into a2. It's important that we use a2 since a0 and a1 are going to be used up ahead when reading the joypad ports 
	move.l	#(SegaPCM_End-SegaPCM),d3	; Load the size of the SEGA PCM sample into d3 
	move.b	#$2A,($A04000).l		; $A04000 = $2A -> Write to DAC channel	  
PlaySega_Loop:	  
	move.b	(a2)+,($A04001).l		; Write the PCM data (contained in a2) to $A04001 (YM2612 register D0) 
	move.w	#$14,d0				; Write the pitch ($13 in this case) to d0 
	dbf	d0,*				; Decrement d0; jump to itself if not 0. (for pitch control, avoids playing the sample too fast)  
	sub.l	#1,d3				; Subtract 1 from the PCM sample size 
	beq.s	PlaySega_lecret			; If d3 = 0, we finished playing the PCM sample, so stop playing, leave this loop, and unfreeze the 68K 
	lea	($FFFFF604).w,a0			; address where JoyPad states are written 
	lea	($A10003).l,a1		; address where JoyPad states are read from 
	jsr	(Joypad_Read).w			; Read only the first joypad port. It's important that we do NOT do the two ports, we don't have the cycles for that 
	btst	#7,($FFFFF604).w			; Check for Start button 
	beq.s	PlaySega_Loop			; If start is pressed, stop playing, leave this loop, and unfreeze the 68K, otherwise, continue playing PCM sample 
	startZ80
PlaySega_lecret:

	addq.w	#4,sp	; Tamper return value so we don't return to caller
		rts
; ===========================================================================
; ---------------------------------------------------------------------------
; Play music track $E5-$FF
; ---------------------------------------------------------------------------

Sound_E5toFF:
;		jsr	PCMD_Stop
		cmpi.b	#$88,d7				; is "extra life" music played?
		bne.s	E5toFF_loc_72024	; if not, branch

		tst.b	$27(a6)
		bne.w	loc_721B6
		lea	$40(a6),a5
		moveq	#9,d0

E5toFF_loc_71FE6:
		bclr	#2,(a5)
		adda.w	#$30,a5
		dbf	d0,E5toFF_loc_71FE6

		lea	$220(a6),a5
		moveq	#5,d0

E5toFF_loc_71FF8:
		bclr	#7,(a5)
		adda.w	#$30,a5
		dbf	d0,E5toFF_loc_71FF8

		clr.b	0(a6)
		movea.l	a6,a0
		lea	$3A0(a6),a1
		move.w	#$87,d0

E5toFF_loc_72012:
		move.l	(a0)+,(a1)+
		dbf	d0,E5toFF_loc_72012

		move.b	#$80,$27(a6)
		clr.b	0(a6)
		bra.s	E5toFF_loc_7202C
; ===========================================================================

E5toFF_loc_72024:
		clr.b	$27(a6)
		clr.b	$26(a6)
 
E5toFF_loc_7202C:
		jsr	sub_725CA(pc)
		movea.l	(off_719A0).l,a4
		subi.b	#$E5,d7
		move.b	(a4,d7.w),$29(a6)
	;	movea.l	(Go_MusicIndex_E5toFF).l,a4
		movea.l	(Go_MusicIndexFF).l,a4
		jmp Music_Continue
; ===========================================================================
; ---------------------------------------------------------------------------
; Play music track $01-$7F
; ---------------------------------------------------------------------------

Sound_01to7F:
		subi.b	#$80,d7
;        cmpi.b	#$37,d7			; is "wave" music played?
 ;       beq.w	PlayMusicwave	; if yes, branch
        jmp Continue01to7F
        nop
; ---------------------------------------------------------------------------
;PlayMusicwave:
;		jsr Sound_E4_WaveExcept		; Stop music
;		jsr PCMDriverLoad
;		stopZ80						; Stop the Z80

;		move.b #1,($a00039).l	; turn the driver on

;Wave equ Music37		; Music37 in this case
;Wave_end equ Music38	; Music38 in this case

;		move.b #(((Wave+$34)&0xFF0000)>>16),($a0003c).l	; location - $__xxxx
;		move.b #(((Wave+$34)&0xFF00)>>8),($a0003b).l	; location - $xx__xx
;		move.b #((Wave+$34)&0xFF),($a0003a).l	; location - $xxxx__

;		move.b #(((Wave_end-Wave)&0xFF0000)>>16),($a0003f).l	; length - $__xxxx
;		move.b #(((Wave_end-Wave)&0xFF00)>>8),($a0003e).l	; length - $xx__xx
;		move.b #((Wave_end-Wave)&0xFF),($a0003d).l	; length - $xxxx__

;		move.b #0,($a00046).l	; sample rate (00=22050Hz, 05=16000Hz, 0C=11025Hz, 15=8000Hz)
;		move.b #$01,($a0004A).l	; looping flag ($00=no,$01=yes)
;		startZ80
;		clr.b	($FFFFFF7C).w
;		rts
; ---------------------------------------------------------------------------

Continue01to7F:
;		jsr	PCMD_Stop
		cmpi.b	#$88,d7					; is "extra life" music played?
		beq.s	Sound_01to7F_Cont2		; if yes, branch
		cmpi.b	#$88,d7					; is "extra life" music played?
		bne.s	Sound_01to7F_loc_72024	; if not, branch

Sound_01to7F_Cont2:
		tst.b	$27(a6)
		bne.w	loc_721B6
		lea	$40(a6),a5
		moveq	#9,d0

Sound_01to7F_loc_71FE6:
		bclr	#2,(a5)
		adda.w	#$30,a5
		dbf	d0,Sound_01to7F_loc_71FE6

		lea	$220(a6),a5
		moveq	#5,d0

Sound_01to7F_loc_71FF8:
		bclr	#7,(a5)
		adda.w	#$30,a5
		dbf	d0,Sound_01to7F_loc_71FF8

		clr.b	0(a6)
		movea.l	a6,a0
		lea	$3A0(a6),a1
		move.w	#$87,d0

Sound_01to7F_loc_72012:
		move.l	(a0)+,(a1)+
		dbf	d0,Sound_01to7F_loc_72012

		move.b	#$80,$27(a6)
		clr.b	0(a6)
		moveq	#5,d0
		bra.s	Sound_01to7F_loc_7202C
; ===========================================================================

Sound_01to7F_loc_72024:
		clr.b	$27(a6)
		clr.b	$26(a6)

Sound_01to7F_loc_7202C:
		jsr	sub_725CA(pc)
		movea.l	(off_719A0).l,a4
		subi.b	#$1,d7
		move.b	(a4,d7.w),$29(a6)
		movea.l	(Go_MusicIndex00).l,a4
		clr.b	($FFFFFF7C).w
		jmp Music_Continue
; ===========================================================================
; ---------------------------------------------------------------------------
; Play music track $81-$9F
; ---------------------------------------------------------------------------

Sound_81to9F:				; XREF: Sound_ChkValue
		cmpi.b	#$88,d7		; is "extra life" music	played?
		bne.s	loc_72024	; if not, branch
		tst.b	$27(a6)
		bne.w	loc_721B6
		lea	$40(a6),a5
		moveq	#9,d0

loc_71FE6:
		bclr	#2,(a5)
		adda.w	#$30,a5
		dbf	d0,loc_71FE6

		lea	$220(a6),a5
		moveq	#5,d0

loc_71FF8:
		bclr	#7,(a5)
		adda.w	#$30,a5
		dbf	d0,loc_71FF8
		clr.b	0(a6)
		movea.l	a6,a0
		lea	$3A0(a6),a1
		move.w	#$87,d0

loc_72012:
		move.l	(a0)+,(a1)+
		dbf	d0,loc_72012

		move.b	#$80,$27(a6)
		clr.b	0(a6)
		bra.s	loc_7202C
; ===========================================================================

loc_72024:
		clr.b	$27(a6)
		clr.b	$26(a6)

loc_7202C:
		jsr	sub_725CA(pc)
		movea.l	(off_719A0).l,a4
		subi.b	#$81,d7
		move.b	(a4,d7.w),$29(a6)
		movea.l	(Go_MusicIndex).l,a4
		
Music_Continue:
		lsl.w	#2,d7
		movea.l	(a4,d7.w),a4
		moveq	#0,d0
		move.w	(a4),d0
		add.l	a4,d0
		move.l	d0,$18(a6)
		move.b	5(a4),d0
		move.b	d0,$28(a6)
		tst.b	$2A(a6)
		beq.s	loc_72068
		move.b	$29(a6),d0

loc_72068:
		move.b	d0,2(a6)
		move.b	d0,1(a6)
		moveq	#0,d1
		movea.l	a4,a3
		addq.w	#6,a4
		moveq	#0,d7
		move.b	2(a3),d7
		beq.w	loc_72114
		subq.b	#1,d7
		move.b	#-$40,d1
		move.b	4(a3),d4
		moveq	#$30,d6
		move.b	#1,d5
		lea	$40(a6),a1
		lea	byte_721BA(pc),a2

loc_72098:
		bset	#7,(a1)
		move.b	(a2)+,1(a1)
		move.b	d4,2(a1)
		move.b	d6,$D(a1)
		move.b	d1,$A(a1)
		move.b	d5,$E(a1)
		moveq	#0,d0
		move.w	(a4)+,d0
		add.l	a3,d0
		move.l	d0,4(a1)
		move.w	(a4)+,8(a1)
		adda.w	d6,a1
		dbf	d7,loc_72098
		cmpi.b	#7,2(a3)
		bne.s	loc_720D8
		moveq	#$2B,d0
		moveq	#0,d1
		jsr	sub_7272E(pc)
		bra.w	loc_72114
; ===========================================================================

loc_720D8:
		moveq	#$28,d0
		moveq	#6,d1
		jsr	sub_7272E(pc)
		move.b	#$42,d0
		moveq	#$7F,d1
		jsr	sub_72764(pc)
		move.b	#$4A,d0
		moveq	#$7F,d1
		jsr	sub_72764(pc)
		move.b	#$46,d0
		moveq	#$7F,d1
		jsr	sub_72764(pc)
		move.b	#$4E,d0
		moveq	#$7F,d1
		jsr	sub_72764(pc)
		move.b	#-$4A,d0
		move.b	#-$40,d1
		jsr	sub_72764(pc)

loc_72114:
		moveq	#0,d7
		move.b	3(a3),d7
		beq.s	loc_72154
		subq.b	#1,d7
		lea	$190(a6),a1
		lea	byte_721C2(pc),a2

loc_72126:
		bset	#7,(a1)
		move.b	(a2)+,1(a1)
		move.b	d4,2(a1)
		move.b	d6,$D(a1)
		move.b	d5,$E(a1)
		moveq	#0,d0
		move.w	(a4)+,d0
		add.l	a3,d0
		move.l	d0,4(a1)
		move.w	(a4)+,8(a1)
		move.b	(a4)+,d0
		move.b	(a4)+,$B(a1)
		adda.w	d6,a1
		dbf	d7,loc_72126

loc_72154:
		lea	$220(a6),a1
		moveq	#5,d7

loc_7215A:
		tst.b	(a1)
		bpl.w	loc_7217C
		moveq	#0,d0
		move.b	1(a1),d0
		bmi.s	loc_7216E
		subq.b	#2,d0
		lsl.b	#2,d0
		bra.s	loc_72170
; ===========================================================================

loc_7216E:
		lsr.b	#3,d0

loc_72170:
		lea	dword_722CC(pc),a0
		movea.l	(a0,d0.w),a0
		bset	#2,(a0)

loc_7217C:
		adda.w	d6,a1
		dbf	d7,loc_7215A

		tst.w	$340(a6)
		bpl.s	loc_7218E
		bset	#2,$100(a6)

loc_7218E:
		tst.w	$370(a6)
		bpl.s	loc_7219A
		bset	#2,$1F0(a6)

loc_7219A:
		lea	$70(a6),a5
		moveq	#5,d4

loc_721A0:
		jsr	sub_726FE(pc)
		adda.w	d6,a5
		dbf	d4,loc_721A0
		moveq	#2,d4

loc_721AC:
		jsr	sub_729A0(pc)
		adda.w	d6,a5
		dbf	d4,loc_721AC

loc_721B6:
		addq.w	#4,sp
		rts	
; ===========================================================================
byte_721BA:	dc.b 6,	0, 1, 2, 4, 5, 6, 0
		even
byte_721C2:	dc.b $80, $A0, $C0, 0
		even
; ===========================================================================
; ---------------------------------------------------------------------------
; Play normal sound effect
; ---------------------------------------------------------------------------

Sound_D1toDF:
		tst.b	$27(a6)
		bne.w	loc_722C6
		tst.b	4(a6)
		bne.w	loc_722C6
		tst.b	$24(a6)
		bne.w	loc_722C6
		clr.b	$2E(a6)
		cmp.b	#$D1,d7		; is this the spindash sound?
		bne.s	@cont3	; if not, branch
		move.w	d0,-(sp)
		move.b	$2F(a6),d0	; store extra frequency
		tst.b	$2D(a6)	; is the spindash timer active?
		bne.s	@cont1		; if it is, branch
		move.b	#-1,d0		; otherwise, reset frequency (becomes 0 on next line)
		
@cont1:
		addq.b	#1,d0
		cmp.b	#$F,d0		; has the limit been reached?
		bcc.s	@cont2		; if it has, branch
		move.b	d0,$2F(a6)	; otherwise, set new frequency
		
@cont2:
		move.b	#1,$2E(a6)	; set flag
		move.b	#60,$2D(a6)	; set timer
		move.w	(sp)+,d0
		
@cont3:
		movea.l	(Go_SoundIndex).l,a0
		sub.b	#$A1,d7
		bra	SoundEffects_Common

Sound_A0toCF:				; XREF: Sound_ChkValue
		tst.b	$27(a6)
		bne.w	loc_722C6
		tst.b	4(a6)
		bne.w	loc_722C6
		tst.b	$24(a6)
		bne.w	loc_722C6
		clr.b	$2E(a6)
		cmpi.b	#$B5,d7		; is ring sound	effect played?
		bne.s	Sound_notB5	; if not, branch
		tst.b	$2B(a6)
		bne.s	loc_721EE
		move.b	#$CE,d7		; play ring sound in left speaker

loc_721EE:
		bchg	#0,$2B(a6)	; change speaker

Sound_notB5:
		cmpi.b	#$A7,d7		; is "pushing" sound played?
		bne.s	Sound_notA7	; if not, branch
		tst.b	$2C(a6)
		bne.w	locret_722C4
		move.b	#$80,$2C(a6)

Sound_notA7:
		movea.l	(Go_SoundIndex).l,a0
		subi.b	#$A0,d7
SoundEffects_Common:
		lsl.w	#2,d7
		movea.l	(a0,d7.w),a3
		movea.l	a3,a1
		moveq	#0,d1
		move.w	(a1)+,d1
		add.l	a3,d1
		move.b	(a1)+,d5
		moveq	#0,d7		; Clownacy | Fixes that bug.
		move.b	(a1)+,d7
		subq.b	#1,d7
		moveq	#$30,d6

loc_72228:
		moveq	#0,d3
		move.b	1(a1),d3
		move.b	d3,d4
		bmi.s	loc_72244
		subq.w	#2,d3
		lsl.w	#2,d3
		lea	dword_722CC(pc),a5
		movea.l	(a5,d3.w),a5
		bset	#2,(a5)
		bra.s	loc_7226E
; ===========================================================================

loc_72244:
		lsr.w	#3,d3
		lea	dword_722CC(pc),a5
		movea.l	(a5,d3.w),a5
		bset	#2,(a5)
		cmpi.b	#$C0,d4
		bne.s	loc_7226E
		move.b	d4,d0
		ori.b	#$1F,d0
		move.b	d0,($C00011).l
		bchg	#5,d0
		move.b	d0,($C00011).l

loc_7226E:
		lea	dword_722EC(pc),a5
		movea.l	(a5,d3.w),a5
		;movea.l	dword_722EC(pc,d3.w),a5
		movea.l	a5,a2
		moveq	#$B,d0

loc_72276:
		clr.l	(a2)+
		dbf	d0,loc_72276

		move.w	(a1)+,(a5)
		move.b	d5,2(a5)
		moveq	#0,d0
		move.w	(a1)+,d0
		add.l	a3,d0
		move.l	d0,4(a5)
		move.w	(a1)+,8(a5)
		tst.b	$2E(a6)	; is the spindash sound playing?
		beq.s	@cont		; if not, branch
		move.w	d0,-(sp)
		move.b	$2F(a6),d0
		add.b	d0,8(a5)
		move.w	(sp)+,d0
		
@cont:
		move.b	#1,$E(a5)
		move.b	d6,$D(a5)
		tst.b	d4
		bmi.s	loc_722A8
		move.b	#$C0,$A(a5)
		move.l	d1,$20(a5)

loc_722A8:
		dbf	d7,loc_72228

		tst.b	$250(a6)
		bpl.s	loc_722B8
		bset	#2,$340(a6)

loc_722B8:
		tst.b	$310(a6)
		bpl.s	locret_722C4
		bset	#2,$370(a6)

locret_722C4:
		rts	
; ===========================================================================

loc_722C6:
		clr.b	0(a6)
		rts	
; ===========================================================================
dword_722CC:	dc.l $FFF0D0
		dc.l 0
		dc.l $FFF100
		dc.l $FFF130
		dc.l $FFF190
		dc.l $FFF1C0
		dc.l $FFF1F0
		dc.l $FFF1F0
dword_722EC:	dc.l $FFF220
		dc.l 0
		dc.l $FFF250
		dc.l $FFF280
		dc.l $FFF2B0
		dc.l $FFF2E0
		dc.l $FFF310
		dc.l $FFF310
; ===========================================================================
; ---------------------------------------------------------------------------
; Play GHZ waterfall sound
; ---------------------------------------------------------------------------

Sound_D0toDF:				; XREF: Sound_ChkValue
		tst.b	$27(a6)
		bne.w	locret_723C6
		tst.b	4(a6)
		bne.w	locret_723C6
		tst.b	$24(a6)
		bne.w	locret_723C6
		movea.l	(Go_SoundD0).l,a0
		subi.b	#$D0,d7
		lsl.w	#2,d7
		movea.l	(a0,d7.w),a3
		movea.l	a3,a1
		moveq	#0,d0
		move.w	(a1)+,d0
		add.l	a3,d0
		move.l	d0,$20(a6)
		move.b	(a1)+,d5
		move.b	(a1)+,d7
		subq.b	#1,d7
		moveq	#$30,d6

loc_72348:
		move.b	1(a1),d4
		bmi.s	loc_7235A
		bset	#2,$100(a6)
		lea	$340(a6),a5
		bra.s	loc_72364
; ===========================================================================

loc_7235A:
		bset	#2,$1F0(a6)
		lea	$370(a6),a5

loc_72364:
		movea.l	a5,a2
		moveq	#$B,d0

loc_72368:
		clr.l	(a2)+
		dbf	d0,loc_72368

		move.w	(a1)+,(a5)
		move.b	d5,2(a5)
		moveq	#0,d0
		move.w	(a1)+,d0
		add.l	a3,d0
		move.l	d0,4(a5)
		move.w	(a1)+,8(a5)
		move.b	#1,$E(a5)
		move.b	d6,$D(a5)
		tst.b	d4
		bmi.s	loc_72396
		move.b	#$C0,$A(a5)

loc_72396:
		dbf	d7,loc_72348

		tst.b	$250(a6)
		bpl.s	loc_723A6
		bset	#2,$340(a6)

loc_723A6:
		tst.b	$310(a6)
		bpl.s	locret_723C6
		bset	#2,$370(a6)
		ori.b	#$1F,d4
		move.b	d4,($C00011).l
		bchg	#5,d4
		move.b	d4,($C00011).l

locret_723C6:
		rts	
; End of function Sound_ChkValue

; ===========================================================================
		dc.l $FFF100
		dc.l $FFF1F0
		dc.l $FFF250
		dc.l $FFF310
		dc.l $FFF340
		dc.l $FFF370

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


Snd_FadeOut1:				; XREF: Sound_E0
		clr.b	0(a6)
		lea	$220(a6),a5
		moveq	#5,d7

loc_723EA:
		tst.b	(a5)
		bpl.w	loc_72472
		bclr	#7,(a5)
		moveq	#0,d3
		move.b	1(a5),d3
		bmi.s	loc_7243C
		jsr	sub_726FE(pc)
		cmpi.b	#4,d3
		bne.s	loc_72416
		tst.b	$340(a6)
		bpl.s	loc_72416
		movea.l	a5,a3
		lea	$340(a6),a5
		movea.l	$20(a6),a1
		bra.s	loc_72428
; ===========================================================================

loc_72416:
		subq.b	#2,d3
		lsl.b	#2,d3
		lea	dword_722CC(pc),a0
		movea.l	a5,a3
		movea.l	(a0,d3.w),a5
		movea.l	$18(a6),a1

loc_72428:
		bclr	#2,(a5)
		bset	#1,(a5)
		move.b	$B(a5),d0
		jsr	sub_72C4E(pc)
		movea.l	a3,a5
		bra.s	loc_72472
; ===========================================================================

loc_7243C:
		jsr	sub_729A0(pc)
		lea	$370(a6),a0
		cmpi.b	#$E0,d3
		beq.s	loc_7245A
		cmpi.b	#$C0,d3
		beq.s	loc_7245A
		lsr.b	#3,d3
		lea	dword_722CC(pc),a0
		movea.l	(a0,d3.w),a0

loc_7245A:
		bclr	#2,(a0)
		bset	#1,(a0)
		cmpi.b	#$E0,1(a0)
		bne.s	loc_72472
		move.b	$1F(a0),($C00011).l

loc_72472:
		adda.w	#$30,a5
		dbf	d7,loc_723EA

		rts	
; End of function Snd_FadeOut1


; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


Snd_FadeOut2:				; XREF: Sound_E0
		lea	$340(a6),a5
		tst.b	(a5)
		bpl.s	loc_724AE
		bclr	#7,(a5)
		btst	#2,(a5)
		bne.s	loc_724AE
		jsr	loc_7270A(pc)
		lea	$100(a6),a5
		bclr	#2,(a5)
		bset	#1,(a5)
		tst.b	(a5)
		bpl.s	loc_724AE
		movea.l	$18(a6),a1
		move.b	$B(a5),d0
		jsr	sub_72C4E(pc)

loc_724AE:
		lea	$370(a6),a5
		tst.b	(a5)
		bpl.s	locret_724E4
		bclr	#7,(a5)
		btst	#2,(a5)
		bne.s	locret_724E4
		jsr	loc_729A6(pc)
		lea	$1F0(a6),a5
		bclr	#2,(a5)
		bset	#1,(a5)
		tst.b	(a5)
		bpl.s	locret_724E4
		cmpi.b	#-$20,1(a5)
		bne.s	locret_724E4
		move.b	$1F(a5),($C00011).l

locret_724E4:
		rts	
; End of function Snd_FadeOut2

; ===========================================================================
; ---------------------------------------------------------------------------
; Fade out music
; ---------------------------------------------------------------------------

Sound_E0:				; XREF: Sound_ExIndex
		jsr	Snd_FadeOut1(pc)
		jsr	Snd_FadeOut2(pc)
		move.b	#3,6(a6)
		move.b	#$28,4(a6)
		clr.b	$40(a6)
		clr.b	$2A(a6)
		rts	

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


sub_72504:				; XREF: sub_71B4C
		move.b	6(a6),d0
		beq.s	loc_72510
		subq.b	#1,6(a6)
		rts	
; ===========================================================================

loc_72510:
		subq.b	#1,4(a6)
		beq.w	Sound_E4
		move.b	#3,6(a6)
		lea	$70(a6),a5
		moveq	#5,d7

loc_72524:
		tst.b	(a5)
		bpl.s	loc_72538
		addq.b	#1,9(a5)
		bpl.s	loc_72534
		bclr	#7,(a5)
		bra.s	loc_72538
; ===========================================================================

loc_72534:
		jsr	sub_72CB4(pc)

loc_72538:
		adda.w	#$30,a5
		dbf	d7,loc_72524

		moveq	#2,d7

loc_72542:
		tst.b	(a5)
		bpl.s	loc_72560
		addq.b	#1,9(a5)
		cmpi.b	#$10,9(a5)
		bcs.s	loc_72558
		bclr	#7,(a5)
		bra.s	loc_72560
; ===========================================================================

loc_72558:
		move.b	9(a5),d6
		jsr	sub_7296A(pc)

loc_72560:
		adda.w	#$30,a5
		dbf	d7,loc_72542

		rts	
; End of function sub_72504


; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


sub_7256A:				; XREF: Sound_E4; sub_725CA
		moveq	#2,d3
		moveq	#$28,d0

loc_7256E:
		move.b	d3,d1
		jsr	sub_7272E(pc)
		addq.b	#4,d1
		jsr	sub_7272E(pc)
		dbf	d3,loc_7256E

		moveq	#$40,d0
		moveq	#$7F,d1
		moveq	#2,d4

loc_72584:
		moveq	#3,d3

loc_72586:
		jsr	sub_7272E(pc)
		jsr	sub_72764(pc)
		addq.w	#4,d0
		dbf	d3,loc_72586

		subi.b	#$F,d0
		dbf	d4,loc_72584

		rts	
; End of function sub_7256A

; ===========================================================================
; ---------------------------------------------------------------------------
; Stop music
; ---------------------------------------------------------------------------

Sound_E4:				; XREF: Sound_ChkValue; Sound_ExIndex; sub_72504
		moveq	#$2B,d0
		move.b	#$80,d1
		jsr	sub_7272E(pc)
		moveq	#$27,d0
		moveq	#0,d1
		jsr	sub_7272E(pc)
		movea.l	a6,a0
		move.w	#$E3,d0

loc_725B6:
		clr.l	(a0)+
		dbf	d0,loc_725B6

		move.b	#$80,9(a6)	; set music to $80 (silence)
		jsr	sub_7256A(pc)
		bra.w	sub_729B6

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


sub_725CA:				; XREF: Sound_ChkValue
		movea.l	a6,a0
		move.b	0(a6),d1
		move.b	$27(a6),d2
		move.b	$2A(a6),d3
		move.b	$26(a6),d4
		move.w	$A(a6),d5
		move.w	#$87,d0

loc_725E4:
		clr.l	(a0)+
		dbf	d0,loc_725E4

		move.b	d1,0(a6)
		move.b	d2,$27(a6)
		move.b	d3,$2A(a6)
		move.b	d4,$26(a6)
		move.w	d5,$A(a6)
		move.b	#$80,9(a6)
		jsr	sub_7256A(pc)
		bra.w	sub_729B6
; End of function sub_725CA


; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


sub_7260C:				; XREF: sub_71B4C
		move.b	2(a6),1(a6)
		lea	$4E(a6),a0
		moveq	#$30,d0
		moveq	#9,d1

loc_7261A:
		addq.b	#1,(a0)
		adda.w	d0,a0
		dbf	d1,loc_7261A

		rts	
; End of function sub_7260C

; ===========================================================================
; ---------------------------------------------------------------------------
; Speed	up music
; ---------------------------------------------------------------------------

Sound_E2:				; XREF: Sound_ExIndex
		tst.b	$27(a6)
		bne.s	loc_7263E
		move.b	$29(a6),2(a6)
		move.b	$29(a6),1(a6)
		move.b	#$80,$2A(a6)
		rts	
; ===========================================================================

loc_7263E:
		move.b	$3C9(a6),$3A2(a6)
		move.b	$3C9(a6),$3A1(a6)
		move.b	#$80,$3CA(a6)
		rts	
; ===========================================================================
; ---------------------------------------------------------------------------
; Change music back to normal speed
; ---------------------------------------------------------------------------

Sound_E3:				; XREF: Sound_ExIndex
		tst.b	$27(a6)
		bne.s	loc_7266A
		move.b	$28(a6),2(a6)
		move.b	$28(a6),1(a6)
		clr.b	$2A(a6)
		rts	
; ===========================================================================

loc_7266A:
		move.b	$3C8(a6),$3A2(a6)
		move.b	$3C8(a6),$3A1(a6)
		clr.b	$3CA(a6)
		rts	

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


sub_7267C:				; XREF: sub_71B4C
		tst.b	$25(a6)
		beq.s	loc_72688
		subq.b	#1,$25(a6)
		rts	
; ===========================================================================

loc_72688:
		tst.b	$26(a6)
		beq.s	loc_726D6
		subq.b	#1,$26(a6)
		move.b	#2,$25(a6)
		lea	$70(a6),a5
		moveq	#5,d7

loc_7269E:
		tst.b	(a5)
		bpl.s	loc_726AA
		subq.b	#1,9(a5)
		jsr	sub_72CB4(pc)

loc_726AA:
		adda.w	#$30,a5
		dbf	d7,loc_7269E
		moveq	#2,d7

loc_726B4:
		tst.b	(a5)
		bpl.s	loc_726CC
		subq.b	#1,9(a5)
		move.b	9(a5),d6
		cmpi.b	#$10,d6
		bcs.s	loc_726C8
		moveq	#$F,d6

loc_726C8:
		jsr	sub_7296A(pc)

loc_726CC:
		adda.w	#$30,a5
		dbf	d7,loc_726B4
		rts	
; ===========================================================================

loc_726D6:
		bclr	#2,$40(a6)
		clr.b	$24(a6)
		tst.b	$40(a6)					; is the DAC channel running?
		bpl.s	Resume_NoDAC				; if not, branch
		moveq	#$FFFFFFB6,d0				; prepare FM channel 3/6 L/R/AMS/FMS address
		move.b	$4A(a6),d1				; load DAC channel's L/R/AMS/FMS value
		jsr	sub_72764(pc)				; write to FM 6
 
Resume_NoDAC:
		rts
; End of function sub_7267C

; ===========================================================================

loc_726E2:				; XREF: sub_71CCA
		btst	#1,(a5)
		bne.s	locret_726FC
		btst	#2,(a5)
		bne.s	locret_726FC
		moveq	#$28,d0
		move.b	1(a5),d1
		ori.b	#-$10,d1
		bra.w	sub_7272E
; ===========================================================================

locret_726FC:
		rts	

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


sub_726FE:				; XREF: sub_71CEC; sub_71D9E; Sound_ChkValue; Snd_FadeOut1
		btst	#4,(a5)
		bne.s	locret_72714
		btst	#2,(a5)
		bne.s	locret_72714

loc_7270A:				; XREF: Snd_FadeOut2
		moveq	#$28,d0
		move.b	1(a5),d1
		bra.w	sub_7272E
; ===========================================================================

locret_72714:
		rts	
; End of function sub_726FE

; ===========================================================================

loc_72716:				; XREF: sub_72A5A
		btst	#2,(a5)
		bne.s	locret_72720
		bra.w	sub_72722
; ===========================================================================

locret_72720:
		rts	

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


sub_72722:				; XREF: sub_71E18; sub_72C4E; sub_72CB4
		btst	#2,1(a5)
		bne.s	loc_7275A
		add.b	1(a5),d0
; End of function sub_72722


; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


sub_7272E:				; XREF: loc_71E6A
		stopZ80
		waitYM
		move.b	d0,($A04000).l
		waitYM
		move.b	d1,($A04001).l
		waitYM
		move.b	#$2A,($A04000).l
		startZ80
		rts
; End of function sub_7272E

; ===========================================================================

loc_7275A:				; XREF: sub_72722
		move.b	1(a5),d2
		bclr	#2,d2
		add.b	d2,d0

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


sub_72764:				; XREF: loc_71E6A; Sound_ChkValue; sub_7256A; sub_72764
		stopZ80
		waitYM
		move.b	d0,($A04002).l
		waitYM
		move.b	d1,($A04003).l
		waitYM
		move.b	#$2A,($A04000).l
		startZ80
		rts	
; End of function sub_72764

; ===========================================================================
word_72790:	dc.w $25E, $284, $2AB, $2D3, $2FE, $32D, $35C, $38F, $3C5
		dc.w $3FF, $43C, $47C, $A5E, $A84, $AAB, $AD3, $AFE, $B2D
		dc.w $B5C, $B8F, $BC5, $BFF, $C3C, $C7C, $125E,	$1284
		dc.w $12AB, $12D3, $12FE, $132D, $135C,	$138F, $13C5, $13FF
		dc.w $143C, $147C, $1A5E, $1A84, $1AAB,	$1AD3, $1AFE, $1B2D
		dc.w $1B5C, $1B8F, $1BC5, $1BFF, $1C3C,	$1C7C, $225E, $2284
		dc.w $22AB, $22D3, $22FE, $232D, $235C,	$238F, $23C5, $23FF
		dc.w $243C, $247C, $2A5E, $2A84, $2AAB,	$2AD3, $2AFE, $2B2D
		dc.w $2B5C, $2B8F, $2BC5, $2BFF, $2C3C,	$2C7C, $325E, $3284
		dc.w $32AB, $32D3, $32FE, $332D, $335C,	$338F, $33C5, $33FF
		dc.w $343C, $347C, $3A5E, $3A84, $3AAB,	$3AD3, $3AFE, $3B2D
		dc.w $3B5C, $3B8F, $3BC5, $3BFF, $3C3C,	$3C7C

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


sub_72850:				; XREF: sub_71B4C
		subq.b	#1,$E(a5)
		bne.s	loc_72866
		bclr	#4,(a5)
		jsr	sub_72878(pc)
		jsr	sub_728DC(pc)
		bra.w	loc_7292E
; ===========================================================================

loc_72866:
		jsr	sub_71D9E(pc)
		jsr	sub_72926(pc)
		jsr	sub_71DC6(pc)
		jsr	sub_728E2(pc)
		rts	
; End of function sub_72850


; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


sub_72878:				; XREF: sub_72850
		bclr	#1,(a5)
		movea.l	4(a5),a4

loc_72880:
		moveq	#0,d5
		move.b	(a4)+,d5
		cmpi.b	#$E0,d5
		bcs.s	loc_72890
		jsr	sub_72A5A(pc)
		bra.s	loc_72880
; ===========================================================================

loc_72890:
		tst.b	d5
		bpl.s	loc_728A4
		jsr	sub_728AC(pc)
		move.b	(a4)+,d5
		tst.b	d5
		bpl.s	loc_728A4
		subq.w	#1,a4
		bra.w	sub_71D60
; ===========================================================================

loc_728A4:
		jsr	sub_71D40(pc)
		bra.w	sub_71D60
; End of function sub_72878


; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


sub_728AC:				; XREF: sub_72878
		subi.b	#$81,d5
		bcs.s	loc_728CA
		add.b	8(a5),d5
		andi.w	#$7F,d5
		lsl.w	#1,d5
		lea	word_729CE(pc),a0
		move.w	(a0,d5.w),$10(a5)
		bra.w	sub_71D60
; ===========================================================================

loc_728CA:
		bset	#1,(a5)
		move.w	#-1,$10(a5)
		jsr	sub_71D60(pc)
		bra.w	sub_729A0
; End of function sub_728AC


; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


sub_728DC:				; XREF: sub_72850
		move.w	$10(a5),d6
		bmi.s	loc_72920
; End of function sub_728DC


; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


sub_728E2:				; XREF: sub_72850
		move.b	$1E(a5),d0
		ext.w	d0
		add.w	d0,d6
		btst	#2,(a5)
		bne.s	locret_7291E
		btst	#1,(a5)
		bne.s	locret_7291E
		move.b	1(a5),d0
		cmpi.b	#$E0,d0
		bne.s	loc_72904
		move.b	#$C0,d0

loc_72904:
		move.w	d6,d1
		andi.b	#$F,d1
		or.b	d1,d0
		lsr.w	#4,d6
		andi.b	#$3F,d6
		move.b	d0,($C00011).l
		move.b	d6,($C00011).l

locret_7291E:
		rts	
; End of function sub_728E2

; ===========================================================================

loc_72920:				; XREF: sub_728DC
		bset	#1,(a5)
		rts	

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


sub_72926:				; XREF: sub_72850
		tst.b	$B(a5)
		beq.w	locret_7298A

loc_7292E:				; XREF: sub_72850
		move.b	9(a5),d6
		moveq	#0,d0
		move.b	$B(a5),d0
		beq.s	sub_7296A
		movea.l	(Go_PSGIndex).l,a0
		subq.w	#1,d0
		lsl.w	#2,d0
		movea.l	(a0,d0.w),a0
		move.b	$C(a5),d0
		move.b	(a0,d0.w),d0
		addq.b	#1,$C(a5)
		btst	#7,d0
		beq.s	loc_72960
		cmpi.b	#$80,d0
		beq.s	loc_7299A

loc_72960:
		add.w	d0,d6
		cmpi.b	#$10,d6
		bcs.s	sub_7296A
		moveq	#$F,d6
; End of function sub_72926


; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


sub_7296A:				; XREF: sub_72504; sub_7267C; sub_72926
		btst	#1,(a5)
		bne.s	locret_7298A
		btst	#2,(a5)
		bne.s	locret_7298A
		btst	#4,(a5)
		bne.s	loc_7298C

loc_7297C:
		or.b	1(a5),d6
		addi.b	#$10,d6
		move.b	d6,($C00011).l

locret_7298A:
		rts	
; ===========================================================================

loc_7298C:
		tst.b	$13(a5)
		beq.s	loc_7297C
		tst.b	$12(a5)
		bne.s	loc_7297C
		rts	
; End of function sub_7296A

; ===========================================================================

loc_7299A:				; XREF: sub_72926
		subq.b	#1,$C(a5)
		rts	

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


sub_729A0:				; XREF: sub_71D9E; Sound_ChkValue; Snd_FadeOut1; sub_728AC
		btst	#2,(a5)
		bne.s	locret_729B4

loc_729A6:				; XREF: Snd_FadeOut2
		move.b	1(a5),d0
		ori.b	#$1F,d0
		move.b	d0,($C00011).l

locret_729B4:
		rts	
; End of function sub_729A0


; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


sub_729B6:				; XREF: loc_71E7C
		lea	($C00011).l,a0
		move.b	#$9F,(a0)
		move.b	#$BF,(a0)
		move.b	#$DF,(a0)
		move.b	#$FF,(a0)
		rts	
; End of function sub_729B6

; ===========================================================================
word_729CE:	dc.w $356, $326, $2F9, $2CE, $2A5, $280, $25C, $23A, $21A
		dc.w $1FB, $1DF, $1C4, $1AB, $193, $17D, $167, $153, $140
		dc.w $12E, $11D, $10D, $FE, $EF, $E2, $D6, $C9,	$BE, $B4
		dc.w $A9, $A0, $97, $8F, $87, $7F, $78,	$71, $6B, $65
		dc.w $5F, $5A, $55, $50, $4B, $47, $43,	$40, $3C, $39
		dc.w $36, $33, $30, $2D, $2B, $28, $26,	$24, $22, $20
		dc.w $1F, $1D, $1B, $1A, $18, $17, $16,	$15, $13, $12
		dc.w $11, 0

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


sub_72A5A:				; XREF: sub_71C4E; sub_71CEC; sub_72878
		subi.w	#$E0,d5
		lsl.w	#2,d5
		jmp	loc_72A64(pc,d5.w)
; End of function sub_72A5A

; ===========================================================================

loc_72A64:
		bra.w	loc_72ACC
; ===========================================================================
		bra.w	loc_72AEC
; ===========================================================================
		bra.w	loc_72AF2
; ===========================================================================
		bra.w	loc_72AF8
; ===========================================================================
		bra.w	loc_72B14
; ===========================================================================
		bra.w	loc_72B9E
; ===========================================================================
		bra.w	loc_72BA4
; ===========================================================================
		bra.w	loc_72BAE
; ===========================================================================
		bra.w	loc_72BB4
; ===========================================================================
		bra.w	loc_72BBE
; ===========================================================================
		bra.w	loc_72BC6
; ===========================================================================
		bra.w	loc_72BD0
; ===========================================================================
		bra.w	loc_72BE6
; ===========================================================================
		bra.w	loc_72BEE
; ===========================================================================
		bra.w	loc_72BF4
; ===========================================================================
		bra.w	loc_72C26
; ===========================================================================
		bra.w	loc_72D30
; ===========================================================================
		bra.w	loc_72D52
; ===========================================================================
		bra.w	loc_72D58
; ===========================================================================
		bra.w	loc_72E06
; ===========================================================================
		bra.w	loc_72E20
; ===========================================================================
		bra.w	loc_72E26
; ===========================================================================
		bra.w	loc_72E2C
; ===========================================================================
		bra.w	loc_72E38
; ===========================================================================
		bra.w	loc_72E52
; ===========================================================================
		bra.w	loc_72E64
; ===========================================================================

loc_72ACC:				; XREF: loc_72A64
		move.b	(a4)+,d1
		tst.b	1(a5)
		bmi.s	locret_72AEA
		move.b	$A(a5),d0
		andi.b	#$37,d0
		or.b	d0,d1
		move.b	d1,$A(a5)
		move.b	#$B4,d0
		bra.w	loc_72716
; ===========================================================================

locret_72AEA:
		rts	
; ===========================================================================

loc_72AEC:				; XREF: loc_72A64
		move.b	(a4)+,$1E(a5)
		rts	
; ===========================================================================

loc_72AF2:				; XREF: loc_72A64
		move.b	(a4)+,7(a6)
		rts	
; ===========================================================================

loc_72AF8:				; XREF: loc_72A64
		moveq	#0,d0
		move.b	$D(a5),d0
		movea.l	(a5,d0.w),a4
		move.l	#0,(a5,d0.w)
		addq.w	#2,a4
		addq.b	#4,d0
		move.b	d0,$D(a5)
		rts	
; ===========================================================================

loc_72B14:				; XREF: loc_72A64
		movea.l	a6,a0
		lea	$3A0(a6),a1
		move.w	#$87,d0

loc_72B1E:
		move.l	(a1)+,(a0)+
		dbf	d0,loc_72B1E

		bset	#2,$40(a6)
		movea.l	a5,a3
		move.b	#$28,d6
		sub.b	$26(a6),d6
		moveq	#5,d7
		lea	$70(a6),a5

loc_72B3A:
		btst	#7,(a5)
		beq.s	loc_72B5C
		bset	#1,(a5)
		add.b	d6,9(a5)
		btst	#2,(a5)
		bne.s	loc_72B5C
		moveq	#0,d0
		move.b	$B(a5),d0
		movea.l	$18(a6),a1
		jsr	sub_72C4E(pc)

loc_72B5C:
		adda.w	#$30,a5
		dbf	d7,loc_72B3A

		moveq	#2,d7

loc_72B66:
		btst	#7,(a5)
		beq.s	loc_72B78
		bset	#1,(a5)
		jsr	sub_729A0(pc)
		add.b	d6,9(a5)

loc_72B78:
		adda.w	#$30,a5
		dbf	d7,loc_72B66
		movea.l	a3,a5
		tst.b	$40(a6)	; is the DAC channel running?
		bmi.s	@DAC				; if not, branch

		moveq	#$2B,d0				; DAC enable/disable register
		moveq	#0,d1				; Disable DAC
		jsr	sub_7272E(pc)
@DAC:
		move.b	#$80,$24(a6)
		move.b	#$28,$26(a6)
		clr.b	$27(a6)
		move.w	#0,($A11100).l
		addq.w	#8,sp
		rts	
; ===========================================================================

loc_72B9E:				; XREF: loc_72A64
		move.b	(a4)+,2(a5)
		rts	
; ===========================================================================

loc_72BA4:				; XREF: loc_72A64
		move.b	(a4)+,d0
		add.b	d0,9(a5)
		bra.w	sub_72CB4
; ===========================================================================

loc_72BAE:				; XREF: loc_72A64
		bset	#4,(a5)
		rts	
; ===========================================================================

loc_72BB4:				; XREF: loc_72A64
		move.b	(a4),$12(a5)
		move.b	(a4)+,$13(a5)
		rts	
; ===========================================================================

loc_72BBE:				; XREF: loc_72A64
		move.b	(a4)+,d0
		add.b	d0,8(a5)
		rts	
; ===========================================================================

loc_72BC6:				; XREF: loc_72A64
		move.b	(a4),2(a6)
		move.b	(a4)+,1(a6)
		rts	
; ===========================================================================

loc_72BD0:				; XREF: loc_72A64
		lea	$40(a6),a0
		move.b	(a4)+,d0
		moveq	#$30,d1
		moveq	#9,d2

loc_72BDA:
		move.b	d0,2(a0)
		adda.w	d1,a0
		dbf	d2,loc_72BDA

		rts	
; ===========================================================================

loc_72BE6:				; XREF: loc_72A64
		move.b	(a4)+,d0
		add.b	d0,9(a5)
		rts	
; ===========================================================================

loc_72BEE:				; XREF: loc_72A64
		clr.b	$2C(a6)
		rts	
; ===========================================================================

loc_72BF4:				; XREF: loc_72A64
		bclr	#7,(a5)
		bclr	#4,(a5)
		jsr	sub_726FE(pc)
		tst.b	$250(a6)
		bmi.s	loc_72C22
		movea.l	a5,a3
		lea	$100(a6),a5
		movea.l	$18(a6),a1
		bclr	#2,(a5)
		bset	#1,(a5)
		move.b	$B(a5),d0
		jsr	sub_72C4E(pc)
		movea.l	a3,a5

loc_72C22:
		addq.w	#8,sp
		rts	
; ===========================================================================

loc_72C26:				; XREF: loc_72A64
		moveq	#0,d0
		move.b	(a4)+,d0		; Get new voice
		move.b	d0,$B(a5)	; Store it
		tst.b	1(a5)	; Is this a PSG track?
		bmi.s	locret_72CAA		; Return if yes
		btst	#2,(a5) ; Is SFX overriding this track?
		bne.w	locret_72CAA		; Return if yes
		movea.l	$18(a6),a1	; Music voice pointer
		tst.b	$E(a6)	; Are we updating a music track?
		beq.s	sub_72C4E		; If yes, branch
		movea.l	$20(a5),a1	; SFX track voice pointer
		tst.b	$E(a6)	; Are we updating a SFX track?
		bmi.s	sub_72C4E		; If yes, branch
		movea.l	$20(a6),a1 ; Special SFX voice pointer

		
; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


sub_72C4E:				; XREF: Snd_FadeOut1; et al
		subq.w	#1,d0
		bmi.s	loc_72C5C
		move.w	#$19,d1

loc_72C56:
		adda.w	d1,a1
		dbf	d0,loc_72C56

loc_72C5C:
		move.b	(a1)+,d1
		move.b	d1,$1F(a5)
		move.b	d1,d4
		move.b	#$B0,d0
		jsr	sub_72722(pc)
		lea	byte_72D18(pc),a2
		moveq	#$13,d3

loc_72C72:
		move.b	(a2)+,d0
		move.b	(a1)+,d1
		jsr	sub_72722(pc)
		dbf	d3,loc_72C72
		moveq	#3,d5
		andi.w	#7,d4
		move.b	byte_72CAC(pc,d4.w),d4
		move.b	9(a5),d3

loc_72C8C:
		move.b	(a2)+,d0
		move.b	(a1)+,d1
		lsr.b	#1,d4
		bcc.s	loc_72C96
		add.b	d3,d1

loc_72C96:
		jsr	sub_72722(pc)
		dbf	d5,loc_72C8C
		move.b	#$B4,d0
		move.b	$A(a5),d1
		jsr	sub_72722(pc)

locret_72CAA:
		rts	
; End of function sub_72C4E

; ===========================================================================
byte_72CAC:	dc.b 8,	8, 8, 8, $A, $E, $E, $F

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


sub_72CB4:				; XREF: sub_72504; sub_7267C; loc_72BA4
		btst	#2,(a5)
		bne.s	locret_72D16
		moveq	#0,d0
		move.b	$B(a5),d0
		movea.l	$18(a6),a1
		tst.b	$E(a6)
		beq.s	loc_72CD8
		movea.l	$20(a5),a1 ; was a6 but was changed to a5 to upload the correct voice
		tst.b	$E(a6)
		bmi.s	loc_72CD8
		movea.l	$20(a6),a1

loc_72CD8:
		subq.w	#1,d0
		bmi.s	loc_72CE6
		move.w	#$19,d1

loc_72CE0:
		adda.w	d1,a1
		dbf	d0,loc_72CE0

loc_72CE6:
		adda.w	#$15,a1
		lea	byte_72D2C(pc),a2
		move.b	$1F(a5),d0
		andi.w	#7,d0
		move.b	byte_72CAC(pc,d0.w),d4
		move.b	9(a5),d3
		bmi.s	locret_72D16
		moveq	#3,d5

loc_72D02:
		move.b	(a2)+,d0
		move.b	(a1)+,d1
		lsr.b	#1,d4
		bcc.s	loc_72D12
		add.b	d3,d1
		bcs.s	loc_72D12
		jsr	sub_72722(pc)

loc_72D12:
		dbf	d5,loc_72D02

locret_72D16:
		rts	
; End of function sub_72CB4

; ===========================================================================
byte_72D18:	dc.b $30, $38, $34, $3C, $50, $58, $54,	$5C, $60, $68
		dc.b $64, $6C, $70, $78, $74, $7C, $80,	$88, $84, $8C
byte_72D2C:	dc.b $40, $48, $44, $4C
; ===========================================================================

loc_72D30:				; XREF: loc_72A64
		bset	#3,(a5)
		move.l	a4,$14(a5)
		move.b	(a4)+,$18(a5)
		move.b	(a4)+,$19(a5)
		move.b	(a4)+,$1A(a5)
		move.b	(a4)+,d0
		lsr.b	#1,d0
		move.b	d0,$1B(a5)
		clr.w	$1C(a5)
		rts	
; ===========================================================================

loc_72D52:				; XREF: loc_72A64
		bset	#3,(a5)
		rts	
; ===========================================================================

loc_72D58:				; XREF: loc_72A64
		bclr	#7,(a5)
		bclr	#4,(a5)
		tst.b	1(a5)
		bmi.s	loc_72D74
		tst.b	8(a6)
		bmi.w	loc_72E02
		jsr	sub_726FE(pc)
		bra.s	loc_72D78
; ===========================================================================

loc_72D74:
		jsr	sub_729A0(pc)

loc_72D78:
		tst.b	$E(a6)
		bpl.w	loc_72E02
		clr.b	0(a6)
		moveq	#0,d0
		move.b	1(a5),d0
		bmi.s	loc_72DCC
		lea	dword_722CC(pc),a0
		movea.l	a5,a3
		cmpi.b	#4,d0
		bne.s	loc_72DA8
		tst.b	$340(a6)
		bpl.s	loc_72DA8
		lea	$340(a6),a5
		movea.l	$20(a6),a1
		bra.s	loc_72DB8
; ===========================================================================

loc_72DA8:
		subq.b	#2,d0
		lsl.b	#2,d0
		movea.l	(a0,d0.w),a5
		tst.b	(a5)
		bpl.s	loc_72DC8
		movea.l	$18(a6),a1

loc_72DB8:
		bclr	#2,(a5)
		bset	#1,(a5)
		move.b	$B(a5),d0
		jsr	sub_72C4E(pc)

loc_72DC8:
		movea.l	a3,a5
		bra.s	loc_72E02
; ===========================================================================

loc_72DCC:
		lea	$370(a6),a0
		tst.b	(a0)
		bpl.s	loc_72DE0
		cmpi.b	#$E0,d0
		beq.s	loc_72DEA
		cmpi.b	#$C0,d0
		beq.s	loc_72DEA

loc_72DE0:
		lea	dword_722CC(pc),a0
		lsr.b	#3,d0
		movea.l	(a0,d0.w),a0

loc_72DEA:
		bclr	#2,(a0)
		bset	#1,(a0)
		cmpi.b	#$E0,1(a0)
		bne.s	loc_72E02
		move.b	$1F(a0),($C00011).l

loc_72E02:
		addq.w	#8,sp
		rts	
; ===========================================================================

loc_72E06:				; XREF: loc_72A64
		move.b	#$E0,1(a5)
		move.b	(a4)+,$1F(a5)
		btst	#2,(a5)
		bne.s	locret_72E1E
		move.b	-1(a4),($C00011).l

locret_72E1E:
		rts	
; ===========================================================================

loc_72E20:				; XREF: loc_72A64
		bclr	#3,(a5)
		rts	
; ===========================================================================

loc_72E26:				; XREF: loc_72A64
			tst.b	1(a5)		; Is this a PSG track?
			bpl.s	@ret2				; Return if not
			move.b	(a4)+,$B(a5)
@ret2		rts	
; ===========================================================================

loc_72E2C:				; XREF: loc_72A64
		move.b	(a4)+,d0
		lsl.w	#8,d0
		move.b	(a4)+,d0
		adda.w	d0,a4
		subq.w	#1,a4
		rts	
; ===========================================================================

loc_72E38:				; XREF: loc_72A64
		moveq	#0,d0
		move.b	(a4)+,d0
		move.b	(a4)+,d1
		tst.b	$24(a5,d0.w)
		bne.s	loc_72E48
		move.b	d1,$24(a5,d0.w)

loc_72E48:
		subq.b	#1,$24(a5,d0.w)
		bne.s	loc_72E2C
		addq.w	#2,a4
		rts	
; ===========================================================================

loc_72E52:				; XREF: loc_72A64
		moveq	#0,d0
		move.b	$D(a5),d0
		subq.b	#4,d0
		move.l	a4,(a5,d0.w)
		move.b	d0,$D(a5)
		bra.s	loc_72E2C
; ===========================================================================

loc_72E64:				; XREF: loc_72A64
		move.b	#$88,d0
		move.b	#$F,d1
		jsr	sub_7272E(pc)
		move.b	#$8C,d0
		move.b	#$F,d1
		bra.w	sub_7272E
; ===========================================================================		
	include	'MegaPCM.asm'
	include	'#macros\_s1smps2asm_inc.asm'
; ---------------------------------------------------------------------------
; Music	Pointers
; ---------------------------------------------------------------------------
MusicIndex:	dc.l Music81, Music82
		dc.l Music83, Music84
		dc.l Music85, Music86
		dc.l Music87, Music88
		dc.l Music89, Music8A
		dc.l Music8B, Music8C
		dc.l Music8D, Music8E
		dc.l Music8F, Music90
		dc.l Music91, Music92
		dc.l Music93, Music94
		dc.l Music95, Music96
		dc.l Music97, Music98
		dc.l Music99, Music9A
		dc.l Music9B, Music9C
		dc.l Music9D, Music9E
		dc.l Music9F
MusicIndex00:
		dc.l	Music01
		dc.l	Music02
		dc.l	Music03
		dc.l	Music04
		dc.l	Music05
		dc.l	Music06
		dc.l	Music07
		dc.l	Music08
		dc.l	Music09
		dc.l	Music0A
		dc.l	Music0B
		dc.l	Music0C
		dc.l	Music0D
		dc.l	Music0E
		dc.l	Music0F
		dc.l	Music10
		dc.l	Music11
		dc.l	Music12
		dc.l	Music13
		dc.l	Music14
		dc.l	Music15
		dc.l	Music16
		dc.l	Music17
		dc.l	Music18
		dc.l	Music19
		dc.l	Music1A
		dc.l	Music1B
		dc.l	Music1C
		dc.l	Music1D
		dc.l	Music1E
		dc.l Music1F, Music20
		dc.l Music21, Music22
		dc.l Music23, Music24
		dc.l Music25, Music26
		dc.l Music27, Music28
		dc.l Music29, Music2A
		dc.l Music2B, Music2C
		dc.l Music2D, Music2E
		dc.l Music2F, Music30
		dc.l Music31, Music32
		dc.l Music33, Music34
		dc.l Music35, Music36
		dc.l Music37, Music38
		dc.l Music39, Music3A
		dc.l Music3B, Music3C
		dc.l Music3D, Music3E
		dc.l Music3F, Music40
		dc.l Music41, Music42
		dc.l Music43, Music44
		dc.l Music45, Music46
		dc.l Music47, Music48
		dc.l Music49, Music4A
		dc.l Music4B, Music4C
		dc.l Music4D, Music4E
		dc.l Music4F, Music50
		dc.l Music51, Music52
		dc.l Music53, Music54
		dc.l Music55, Music56
		dc.l Music57, Music58
		dc.l Music59, Music5A
		dc.l Music5B, Music5C
		dc.l Music5D, Music5E
		dc.l Music5F, Music60
		dc.l Music61, Music62
		dc.l Music63, Music64
		dc.l	Music65
		dc.l	Music66
		dc.l	Music67
		dc.l	Music68
		dc.l	Music69
		dc.l	Music6A
		dc.l	Music6B
		dc.l	Music6C
		dc.l	Music6D
		dc.l	Music6E
		dc.l	Music6F
		dc.l	Music70
		dc.l	Music71
		dc.l	Music72
		dc.l	Music73
		dc.l	Music74
		dc.l	Music75
		dc.l	Music76
		dc.l	Music77
		dc.l	Music78
		dc.l	Music79
		dc.l	Music7A
		dc.l	Music7B
		dc.l	Music7C
		dc.l	Music7D
		dc.l	Music7E
		dc.l	Music7F
MusicIndexFF:
		dc.l	MusicE5
		dc.l	MusicE6
		dc.l	MusicE7
		dc.l	MusicE8
		dc.l	MusicE9
		dc.l	MusicEA
		dc.l	MusicEB
		dc.l	MusicEC
		dc.l	MusicED
		dc.l	MusicEE
		dc.l	MusicEF
		dc.l	MusicF0
		dc.l	MusicF1
		dc.l	MusicF2
		dc.l	MusicF3
		dc.l	MusicF4
		dc.l	MusicF5
		dc.l	MusicF6
		dc.l	MusicF7
		dc.l	MusicF8
		dc.l	MusicF9
		dc.l	MusicFA
		dc.l	MusicFB
		dc.l	MusicFC
		dc.l	MusicFD
		dc.l	MusicFE
		dc.l	MusicFF

	
Music01:	incbin	sound\music01.bin
		even
Music02:	incbin	sound\music02.bin
		even
Music03:	incbin	sound\music03.bin
		even
Music04:	incbin	"sound\18 Battle Fortress.bin"
		even
Music05:	include	sound\music05.asm
		even
Music06:	incbin	sound\music06.bin
		even
Music07:	incbin 	"sound\(SSRG REQUESTED02) - Sonic Advance 2 Leaf Forest Beta.bin"
		even
Music08:	incbin	sound\music08.bin
		even
Music09:	incbin	sound\ristarclear.bin
		even
Music0A:	incbin	sound\staffcreditsunfinished.bin
		even
Music0B:	include sound\BossS1MSv2.asm
		even
Music0C:	incbin	"sound\ZeroX3v2.bin"
		even
Music0D:
Music0E:	incbin	sound\music0E.bin
		even
Music0F:
Music10:
Music11:
Music12:
Music13:
Music14:	incbin	sound\music14.bin
		even
Music15:	incbin	sound\music15.bin
		even
Music16:	incbin	sound\music16.bin
		even
Music17:	incbin	sound\music17.bin
		even
Music18:	incbin	sound\music18.bin
		even
Music19:	incbin	sound\music19.bin
		even
Music1A:	incbin	sound\music1A.bin
		even
Music1B:	incbin	sound\music1B.bin
		even
Music1C:	incbin	sound\music1C.bin
		even
Music1D:	incbin	sound\music1D.bin
		even
Music1E:	incbin	sound\music1E.bin
		even
Music1F:	incbin	sound\music1F.bin
		even
Music20:	incbin	"sound\Twinkle.bin"
		even
Music21:	incbin	"sound\Sonic 3K - Time-Game Over.bin"
		even
Music22:	incbin	"sound\Sonic 3K - Continue.bin"
		even
Music23:	include	"sound\LevelOutro.asm"
		even
Music24:	incbin	"sound\Sonic 3K - Extra Life S3.bin"
		even
Music25:	incbin	"sound\Sonic 3K - Extra Life S&K.bin"
		even
Music26:	incbin	"sound\Sonic 3K - Emerald.bin"
		even
Music27:	incbin	"sound\Sonic 3K - Invincibility S3.bin"
		even
Music28:	include	"sound\LBZ1.asm"
		even
Music29:	include	"sound\Competition Menu.asm"
		even
Music2A:	include	"sound\cszact2a.asm"
		even
Music2B:	incbin	"sound\Sonic 3K - Menu S3.bin"
		even
Music2C:	incbin	"sound\Sonic 3K - Final Boss.bin"
		even
Music2D:	incbin	"sound\Sonic 3K - Presented By Sega S3.bin"
		even
Music2E:	incbin	"sound\Sonic 3K - Presented By Sega S&K.bin"
		even
Music2F:	incbin	"sound\Sonic 3D - Ending Sequence.bin"
		even
Music30:	incbin	sound\music30.bin
		even
Music31:	incbin	sound\music31.bin
		even
Music32:	include	sound\Cnz1s1.asm
		even
Music33:	include	sound\ValleyBell.asm
		even
Music34:	incbin	"sound\S2GGBoss.bin"
		even
Music35:	include	"sound\prc83.asm"
		even
Music36:	include	"sound\BossS4s1.asm"
		even
Music37:	include "sound\atdawn.asm"
		even
Music38:	include	"sound\mmz3.asm"
		even
Music39:	include	"sound\sszp.asm"
		even
Music3A:	include	"sound\Cinossu.asm"
		even
Music3B:
Music3C:
Music3D:
Music3E:
Music3F:

Music40:
Music41:
Music42:
Music43:
Music44:
Music45:
Music46:
Music47:
Music48:
Music49:
Music4A:
Music4B:
Music4C:
Music4D:
Music4E:
Music4F:	include	sound\sharrierv2.asm
		even
Music50:
Music51:
Music52:
Music53:
Music54:
Music55:	incbin	sound\music55.bin
		even
Music56:	incbin	sound\music56.bin
		even
Music57:	incbin	sound\music57.bin
		even
Music58:	incbin	sound\music58.bin
		even
Music59:	incbin	sound\music59.bin
		even
Music5A:	incbin	sound\music5A.bin
		even
Music5B:	incbin	sound\music5B.bin
		even
Music5C:	incbin	sound\music5C.bin
		even
Music5D:	incbin	sound\music5D.bin
		even
Music5E:	incbin	sound\music5E.bin
		even
Music5F:	incbin	sound\music5F.bin
		even
Music60:	incbin	sound\music60.bin
		even
Music61:	incbin	sound\music61.bin
		even
Music62:	incbin	sound\music62.bin
		even
Music63:	incbin	sound\music63.bin
		even
Music64:	incbin	sound\music64.bin
		even
Music65:	incbin	sound\music65.bin
		even
Music66:	incbin	sound\music66.bin
		even
Music67:	incbin	sound\music67.bin
		even
Music68:	incbin	sound\music68.bin
		even
Music69:	incbin	sound\music69.bin
		even
Music6A:	incbin	sound\music6A.bin
		even
Music6B:	incbin	sound\music6B.bin
		even
Music6C:	incbin	sound\music6C.bin
		even
Music6D:	incbin	sound\music6D.bin
		even
Music6E:	incbin	sound\music6E.bin
		even
Music6F:	incbin	sound\music6F.bin
		even
Music70:	incbin	sound\music70.bin
		even
Music71:	incbin	sound\music71.bin
		even
Music72:	incbin	sound\music72.bin
		even
Music73:	incbin	sound\music73.bin
		even
Music74:	incbin	sound\music74.bin
		even
Music75:	incbin	sound\music75.bin
		even
Music76:	incbin	sound\music76.bin
		even
Music77:	incbin	sound\music77.bin
		even
Music78:	incbin	sound\music78.bin
		even
Music79:	incbin	sound\music79.bin
		even
Music7A:	incbin	sound\music7A.bin
		even
Music7B:	incbin	sound\music7B.bin
		even
Music7C:	incbin	sound\music7C.bin
		even
Music7D:	incbin	sound\music7D.bin
		even
Music7E:	incbin	sound\music7E.bin
		even
Music7F:	incbin	sound\music7F.bin
		even
Music81:	include	sound\music81.asm
		even
Music82:	include	sound\shzact3v2.asm
		even
Music83:	include	sound\White_Park_Act_3.asm
		even
Music84:	incbin	sound\music84.bin
		even
Music85:	incbin	sound\music85.bin
		even
Music86:	incbin	sound\music86.bin
		even
Music87:	include	sound\music87.asm
		even
Music88:	include	sound\music88.asm
		even
Music89:	incbin	sound\music89.bin
		even
Music8A:	include	sound\music8A.asm
		even
Music8B:	incbin	sound\music8B.bin
		even
Music8C:	incbin	sound\music8C.bin
		even
Music8D:	include	sound\fzboss.asm
		even
Music8E:;	incbin	sound\music8E.bin
		;even
Music8F:	include	sound\music8F.asm
		even
Music90:	incbin	sound\music90.bin
		even
Music91:	incbin	sound\music91.bin
		even
Music92:	include	sound\countdown.asm
		even
Music93:	incbin	sound\Emerald.bin
		even
Music94:	incbin	sound\music94.bin
		even
Music95:	incbin	sound\music95.bin
		even
Music96:	include	sound\supersonic.asm
		even
Music97:	incbin	sound\music97.bin
		even
Music98:	incbin	sound\music98.bin
		even
Music99:	incbin	sound\music99.bin
		even
Music9A:	incbin	sound\music9A.bin
		even
Music9B:	incbin	sound\music9B.bin
		even
Music9C:	include	"sound\music9C.asm"
		even
Music9D:	incbin	sound\music9D.bin
		even
Music9E:	incbin	sound\music9E.bin
		even
Music9F:	include	sound\music9F.asm
		even

MusicIndex_E5plus:	
        dc.l MusicE5, MusicE6
		dc.l MusicE7, MusicE8
		dc.l MusicE9, MusicEA
		dc.l MusicEB, MusicEC
		dc.l MusicED, MusicEE
		dc.l MusicEF, MusicF0
		dc.l MusicF1, MusicF2
		dc.l MusicF3, MusicF4
        dc.l MusicF5, MusicF6
		dc.l MusicF7, MusicF8
		dc.l MusicF9, MusicFA
		dc.l MusicFB, MusicFC
		dc.l MusicFD, MusicFE
		dc.l MusicFF

MusicE5:	include	"sound\shzact2.asm"
		even
MusicE6:	include	"sound\Casino Street Zone - Act 2 (Final).asm"
		even
MusicE7:	include	"sound\csz3.asm"
		even
MusicE8:	incbin	sound\musicE8.bin
		even
MusicE9:	incbin	sound\musicE9.bin
		even
MusicEA:	incbin	sound\musicEA.bin
		even
MusicEB:	incbin	sound\musicEB.bin
		even
MusicEC:	include	sound\Orange.asm
		even
MusicED:	incbin	sound\musicED.bin
		even
MusicEE:	incbin	sound\musicEE.bin
		even
MusicEF:	include	sound\bosspinch.asm
		even
MusicF0:	include	sound\musicF0.asm
		even
MusicF1:	include	sound\musicF1.asm
		even
MusicF2:	include	sound\musicF2.asm
		even
MusicF3:	include	sound\musicF3.asm
		even
MusicF4:	include	sound\musicF4.asm
		even
MusicF5:	include	sound\musicF5.asm
		even
MusicF6:	incbin	sound\musicF6.bin
		even
MusicF7:	include	sound\musicF7.asm
		even
MusicF8:	include	sound\musicF8.asm
		even
MusicF9:	include	sound\musicF9.asm
		even
MusicFA:	include	sound\musicFA.asm
		even
MusicFB:	incbin	sound\SylvaniaCastleact3v3.bin
		even
MusicFC:	incbin	sound\musicFC.bin
		even
MusicFD:	incbin	sound\Sonic_4_Episode_II_vs_Metal_Sonic.bin
		even
MusicFE:	include	sound\SBBossv2.asm
		even
MusicFF:	include	"sound\b.asm"
		even
; ---------------------------------------------------------------------------
; Sound	effect pointers
; ---------------------------------------------------------------------------
SoundIndex:	dc.l SoundA0, SoundA1, SoundA2
		dc.l SoundA3, SoundA4, SoundA5
		dc.l SoundA6, SoundA7, SoundA8
		dc.l SoundA9, SoundAA, SoundAB
		dc.l SoundAC, SoundAD, SoundAE
		dc.l SoundAF, SoundB0, SoundB1
		dc.l SoundB2, SoundB3, SoundB4
		dc.l SoundB5, SoundB6, SoundB7
		dc.l SoundB8, SoundB9, SoundBA
		dc.l SoundBB, SoundBC, SoundBD
		dc.l SoundBE, SoundBF, SoundC0
		dc.l SoundC1, SoundC2, SoundC3
		dc.l SoundC4, SoundC5, SoundC6
		dc.l SoundC7, SoundC8, SoundC9
		dc.l SoundCA, SoundCB, SoundCC
		dc.l SoundCD, SoundCE, SoundCF
		dc.l SoundD1, SoundD2
		dc.l SoundD3, SoundD4
		dc.l SoundD5, SoundD6
		dc.l SoundD7, SoundD8
		dc.l SoundD9, SoundDA
		dc.l SoundDB, SoundDC
		dc.l SoundDD, SoundDE, SoundDF, SoundFB
SoundD0Index:	dc.l SoundD0
SoundA0:	if ChaotixJumpSND == 1	
		incbin	sound\soundA0.bin
		even
		else
		include	"sound\60.asm"
		even
		endif
SoundA1:	incbin	sound\soundA1.bin
		even
SoundA2:	incbin	sound\soundA2.bin
		even
SoundA3:	incbin	sound\soundA3.bin
		even
SoundA4:	if ChaotixSkidSND == 1
		incbin	sound\soundA4_2.bin
		even
		else
		incbin	sound\soundA4.bin
		even
		endif
SoundA5:	incbin	sound\soundA5.bin
		even
SoundA6:	incbin	sound\soundA6.bin
		even
SoundA7:	incbin	sound\soundA7.bin
		even
SoundA8:	incbin	sound\soundA8.bin
		even
SoundA9:	incbin	sound\soundA9.bin
		even
SoundAA:	incbin	"sound\SoundAA.bin"
		even
SoundAB:	incbin	sound\soundAB.bin
		even
SoundAC:	incbin	sound\soundAC.bin
		even
SoundAD:	incbin	sound\soundAD.bin
		even
SoundAE:	incbin	sound\soundAE.bin
		even
SoundAF:	incbin	sound\soundAF.bin
		even
SoundB0:	incbin	sound\soundB0.bin
		even
SoundB1:	incbin	sound\soundB1.bin
		even
SoundB2:	include	sound\sound32.asm
		even
SoundB3:	incbin	sound\soundB3.bin
		even
SoundB4:	incbin	sound\soundB4.bin
		even
SoundB5:	incbin	sound\soundB5.bin
		even
SoundB6:	incbin	sound\soundB6.bin
		even
SoundB7:	incbin	sound\soundB7.bin
		even
SoundB8:	incbin	sound\soundB8.bin
		even
SoundB9:	incbin	sound\soundB9.bin
		even
SoundBA:	incbin	sound\soundBA.bin
		even
SoundBB:	incbin	sound\soundBB.bin
		even
SoundBC:	incbin	sound\soundBC.bin
		even
SoundBD:	include	"sound\5F.asm"
		even
SoundBE:	incbin	sound\soundBE.bin
		even
SoundBF:	incbin	sound\soundBF.bin
		even
SoundC0:	incbin	sound\soundC0.bin
		even
SoundC1:	incbin	sound\soundC1.bin
		even
SoundC2:	incbin	sound\soundC2.bin
		even
SoundC3:	incbin	sound\soundC3.bin
		even
SoundC4:	include	sound\B4.asm
		even
SoundC5:	incbin	sound\soundC5.bin
		even
SoundC6:	incbin	sound\soundC6.bin
		even
SoundC7:	incbin	sound\soundC7.bin
		even
SoundC8:	incbin	sound\soundC8.bin
		even
SoundC9:	incbin	sound\soundC9.bin
		even
SoundCA:	incbin	sound\soundCA.bin
		even
SoundCB:	include	sound\59.asm
		even
SoundCC:	include	sound\B1.asm
		even
SoundCD:	incbin	sound\soundCD.bin
		even
SoundCE:	incbin	sound\soundCE.bin
		even
SoundCF:	incbin	sound\soundCF.bin
		even
SoundD0:	incbin	sound\soundD0.bin
		even
SoundD1:	include	sound\sound60.asm
		even
SoundD2:	incbin	sound\soundED.bin
		even
SoundD3:	include	"sound\A7.asm"
		even
SoundD4:	include	"sound\AD.asm"
		even
SoundD5:	include	"sound\SndBD - ChainStomp.asm"
		even
SoundD6:	incbin	"sound\soundCB.bin"
		even
SoundD7:	include	"sound\A4.asm"
		even
SoundD8:	incbin	sound\soundD8.bin
		even
SoundD9:	incbin	sound\soundD9.bin
		even
SoundDA:	incbin	sound\soundDA.bin
		even
SoundDB:	incbin	sound\soundDB.bin
		even
SoundDC:	incbin	sound\soundDC.bin
		even
SoundDD:	incbin	sound\soundDD.bin
		even
SoundDE:	incbin	sound\soundDE.bin
		even
SoundDF:	include	sound\sound5F.asm
		even
SoundFB:	incbin	sound\soundCC.bin
		even
SegaPCM:        if SegaSoundGF64 == 1
        	incbin	sound\commercial.bin
		even
        else
        	incbin	sound\segapcm.bin
        endif
SegaPCM_end:	even
;		align $8000

;		even
