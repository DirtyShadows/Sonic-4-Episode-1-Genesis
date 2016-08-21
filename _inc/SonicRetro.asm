
SRScreen:
	jmp		RetroScreen

unk_3140:	incbin	SonicRetroPal.bin
		even


; ---------------------------------------------------------------------------

RetroScreen:				; DATA XREF: ROM:00000394o
		move.w	#0,($FFFFFF38).w
		move.b	#$E4,d0
		jsr	PlaySound_Special
		jsr	ClearPLC
		jsr	Pal_FadeFrom
;		jsr	VDP_ClrCRAM
		move	#$2700,sr
		lea	($FFFFD000).w,a1
		moveq	#0,d0
		move.w	#$7FF,d1

loc_6EA56:				; CODE XREF: ROM:0006EA5Cj
		move.l	#0,(a1)+
		dbf	d1,loc_6EA56
		move	#$2300,sr
		clr.w	($FFFFC800).w				;	clear the VDP buffer to prevent a minor bug that causes glitchy tiles
		move.l	#$FFFFC800,($FFFFC8FC).w	;	from the level select to appear on the Splash Screen star emblem
		move.l	#$40000000,($C00004).l
		lea	(unk_6F694).l,a0
		jsr	NemDec
		move.l	#$60400000,($C00004).l
		lea	(unk_701FA).l,a0
		jsr	NemDec
		move.l	#$6AE00000,($C00004).l
		lea	(unk_7074C).l,a0
		jsr	NemDec
		jsr	ClearScreen
		move	#$2300,sr
		moveq	#0,d0
		lea	(byte_6F46A).l,a1
		lsl.w	#3,d0
		adda.w	d0,a1
		movea.l	(a1)+,a2
		movea.w	(a1)+,a3
		adda.w	#$80,a3	; '€'
		move.w	(a1)+,d7

loc_6EABE:				; CODE XREF: ROM:0006EAC0j
		move.l	(a2)+,(a3)+
		dbf	d7,loc_6EABE
		lea	(unk_3140).l,a1		; Load palette
		lea	($FFFFFB80).w,a2
		move.b	#$40,d0
@loop:	move.l	(a1)+,(a2)+
		tst.w	d0
		beq.s	@endloop
		sub.w	#1,d0
		bra.s	@loop
@endloop:
		move.b	#$19,d0
		jsr	PlaySound
		bsr.w	sub_6EB68
;		move.w	#3,d0
;		jsr	PalLoad1
		move.b	#1,($FFFFD000).w
		move.b	#0,($FFFFD028).w
		move.b	#1,($FFFFD040).w
		move.b	#1,($FFFFD068).w
		move.b	#1,($FFFFD080).w
		move.b	#2,($FFFFD0A8).w
		jsr	loc_6F4F2
		jsr	BuildSprites
		jsr	Pal_FadeTo

loc_6EB04:				; CODE XREF: ROM:0006EB56j
		move.b	#$16,($FFFFF62A).w
		jsr	DelayProgram
		addq.w	#1,($FFFFFF38).w
		jsr	loc_6F4F2
		jsr	BuildSprites
		moveq	#0,d1
		move.b	#$50,d1	; 'P'
		cmpi.w	#$340,($FFFFFF38).w
		bge.s	loc_6EB5A
		moveq	#0,d1
		move.b	#$50,d1	; 'P'
		move.b	($FFFFF605).w,d0
		btst	#4,d0
		bne.w	loc_6EB5A
		btst	#5,d0
		bne.w	loc_6EB5A
		btst	#6,d0
		bne.w	loc_6EB5A
		btst	#7,d0
		bne.w	loc_6EB5A
		bra.w	loc_6EB04
; ---------------------------------------------------------------------------

loc_6EB5A:				; CODE XREF: ROM:0006EB2Aj
					; ROM:0006EB3Aj ...
		move.w	#0,($FFFFFF38).w
		jsr	SplashScreen2	; go to title screen
		rts

; =============== S U B	R O U T	I N E =======================================


sub_6EB68:				; CODE XREF: ROM:0006EACCp
		lea	(unk_6EBAA).l,a1
		lea	($C00000).l,a6
		move.l	#$40000003,d4
		moveq	#$1B,d1

loc_6EB7C:				; CODE XREF: sub_6EB68+22j
		move.l	d4,4(a6)
		bsr.w	sub_6EB90
		addi.l	#$800000,d4
		dbf	d1,loc_6EB7C
		rts
; End of function sub_6EB68


; =============== S U B	R O U T	I N E =======================================


sub_6EB90:				; CODE XREF: sub_6EB68+18p
		moveq	#$27,d2	; '''

loc_6EB92:				; CODE XREF: sub_6EB90+Cj
					; sub_6EB90+14j
		moveq	#0,d0
		move.w	(a1)+,d0
		bpl.s	loc_6EBA2
		move.w	#0,(a6)
		dbf	d2,loc_6EB92
		rts
; ---------------------------------------------------------------------------

loc_6EBA2:				; CODE XREF: sub_6EB90+6j
		move.w	d0,(a6)
		dbf	d2,loc_6EB92
		rts
; End of function sub_6EB90

; ---------------------------------------------------------------------------
unk_6EBAA:	incbin	AsciiMaybe.bin
		even
byte_6F46A:	incbin	SRMappings.bin
		even
; ---------------------------------------------------------------------------

loc_6F4F2:				; CODE XREF: ROM:0006EAF4p
					; ROM:0006EB12p
		lea	($FFFFD000).w,a0
		moveq	#$7F,d7	; ''
		moveq	#0,d0

loc_6F4FA:				; CODE XREF: ROM:loc_6F50Ej
		move.b	(a0),d0
		beq.s	loc_6F50A
		add.w	d0,d0
		add.w	d0,d0
		movea.l	off_6F514-4(pc,d0.w),a1
		jsr	(a1)
		moveq	#0,d0

loc_6F50A:				; CODE XREF: ROM:0006F4FCj
		lea	$40(a0),a0

loc_6F50E:
		dbf	d7,loc_6F4FA
		rts
; ---------------------------------------------------------------------------
off_6F514:	dc.l loc_6F518		; DATA XREF: ROM:0006F502t
; ---------------------------------------------------------------------------

loc_6F518:				; DATA XREF: ROM:off_6F514o
		moveq	#0,d0
		move.b	$28(a0),d0
		add.w	d0,d0
		add.w	d0,d0
		jmp	loc_6F528(pc,d0.w)
; ---------------------------------------------------------------------------
		rts
; ---------------------------------------------------------------------------

loc_6F528:				; CODE XREF: ROM:0006F522j
		bra.w	loc_6F534
; ---------------------------------------------------------------------------
		bra.w	loc_6F576
; ---------------------------------------------------------------------------
		bra.w	loc_6F5E6
; ---------------------------------------------------------------------------

loc_6F534:				; CODE XREF: ROM:loc_6F528j
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	off_6F542(pc,d0.w),d1
		jmp	off_6F542(pc,d1.w)
; ---------------------------------------------------------------------------
off_6F542:	dc.w loc_6F546-off_6F542 ; DATA	XREF: ROM:0006F53Ar
					; ROM:off_6F542o ...
		dc.w loc_6F570-off_6F542
; ---------------------------------------------------------------------------

loc_6F546:				; DATA XREF: ROM:off_6F542o
		addq.b	#2,$24(a0)
		move.w	#$193,8(a0)
		move.w	#$102,$A(a0)
		move.l	#byte_6F63A,4(a0)
		move.w	#$2102,2(a0)
		move.b	#0,1(a0)
		move.w	#$200,priority(a0)

loc_6F570:				; DATA XREF: ROM:0006F544o
		jmp	DisplaySprite
; ---------------------------------------------------------------------------

loc_6F576:				; CODE XREF: ROM:0006F52Cj
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	off_6F584(pc,d0.w),d1
		jmp	off_6F584(pc,d1.w)
; ---------------------------------------------------------------------------
off_6F584:	dc.w loc_6F588-off_6F584 ; DATA	XREF: ROM:0006F57Cr
					; ROM:off_6F584o ...
		dc.w loc_6F5B2-off_6F584
; ---------------------------------------------------------------------------

loc_6F588:				; DATA XREF: ROM:off_6F584o
		addq.b	#2,$24(a0)
		move.w	#$191,8(a0)
		move.w	#$E2,$A(a0) ; 'â'
		move.l	#byte_6F67A,4(a0)
		move.w	#$4157,2(a0)
		move.b	#0,1(a0)
		move.w	#$180,priority(a0)

loc_6F5B2:				; DATA XREF: ROM:0006F586o
		addq.b	#1,$31(a0)
		cmpi.b	#$B,$31(a0)
		blt.w	loc_6F5DA
		move.b	#0,$31(a0)
		addq.b	#1,$30(a0)
		cmpi.b	#2,$30(a0)
		bne.w	loc_6F5DA
		move.b	#0,$30(a0)

loc_6F5DA:				; CODE XREF: ROM:0006F5BCj
					; ROM:0006F5D0j
		move.b	$30(a0),$1A(a0)
		jmp	DisplaySprite
; ---------------------------------------------------------------------------

loc_6F5E6:				; CODE XREF: ROM:0006F530j
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	off_6F5F4(pc,d0.w),d1
		jmp	off_6F5F4(pc,d1.w)
; ---------------------------------------------------------------------------
off_6F5F4:	dc.w loc_6F5F8-off_6F5F4 ; DATA	XREF: ROM:0006F5ECr
					; ROM:off_6F5F4o ...
		dc.w loc_6F622-off_6F5F4
; ---------------------------------------------------------------------------

loc_6F5F8:				; DATA XREF: ROM:off_6F5F4o
		addq.b	#2,$24(a0)
		move.w	#$124,8(a0)
		move.w	#$FF,$A(a0)
		move.l	#byte_6F628,4(a0)
		move.w	#0,2(a0)
		move.b	#0,1(a0)
		move.b	#0,priority(a0)

loc_6F622:				; DATA XREF: ROM:0006F5F6o
		jmp	DisplaySprite
; ---------------------------------------------------------------------------
byte_6F628:	include		map1.asm
byte_6F63A:	include		map2.asm
byte_6F67A:	include		map3.asm
unk_6F694:	incbin	SRBack.bin
		even
unk_701FA:	incbin	masteremerald.bin
		even
unk_7074C:	incbin SonicOnRetro.bin
		even
