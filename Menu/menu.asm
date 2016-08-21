; ---------------------------------------------------------------------------
; Menu	screen
; ---------------------------------------------------------------------------
MenuScreen:				; XREF: GameModeArray
		move.b	#$E0,d0
		bsr.w	PlaySound_Special ; stop music
		bsr.w	ClearPLC
		bsr.w	Pal_FadeFrom
		move.b	#1,($FFFFFF95).w	;Add flag to the BG's deform.
		move	#$2700,sr
		lea	($C00004).l,a6
		move.w	#$8004,(a6)
		move.w	#$8230,(a6)
		move.w	#$8407,(a6)
		move.w	#$9001,(a6)
		move.w	#$9200,(a6)
		move.w	#$8B03,(a6)
		move.w	#$8720,(a6)
;		move.w #$8C82,(a6) ; change resolution
		clr.b	($FFFFF64E).w
		jsr	ClearScreen
		lea	($FFFFD000).w,a1
		moveq	#0,d0
		move.w	#$7FF,d1

Menu_ClrObjRam:
		move.l	d0,(a1)+
		dbf	d1,Menu_ClrObjRam ; fill object RAM ($D000-$EFFF) with	$0

		move.b	#0,($FFFFFE30).w ; clear lamppost counter
		move.w	#0,($FFFFFE08).w ; disable debug item placement	mode
		move.w	#0,($FFFFFFF0).w ; disable debug mode
		move.w	#0,($FFFFFFEA).w
		move.w	#0000,($FFFFFE10).w ; set level to	GHZ (00)
		move.w	#0,($FFFFF634).w ; disable pallet cycling
		bsr.w	LevelSizeLoad
		bsr.w	DeformBgLayer
		lea	($FFFFB000).w,a1
		lea	(Blk16_Menu).l,a0 ; load 16x16 mappings
		move.w	#0,d0
		bsr.w	EniDec
		lea	(Blk256_Menu).l,a0 ; load GHZ 256x256 mappings
		lea	($FF0000).l,a1
		bsr.w	KosDec
		bsr.w	LevelLayoutLoad
		bsr.w	Pal_FadeFrom
		move	#$2700,sr
		bsr.w	ClearScreen

		lea	($C00004).l,a6			; Setup VDP
		move.w	#$8004,(a6)
		move.w	#$8230,(a6)
		move.w	#$8407,(a6)
		move.w	#$9001,(a6)
		move.w	#$9200,(a6)
		move.w	#$8B03,(a6)
		move.w	#$8720,(a6)
		clr.b	($FFFFF64E).w
		jsr	ClearScreen
		move.l	#$74000002,($C00004).l
		lea	(Art_ASCII),a2
		move.w	#$5A,d0
		jsr	LoadUncArt
		move.l	#$40000003,d5
		lea	(MenuScreen_ASCII_Main),a1
		move.w	#$6580,d3
		jsr	LoadASCII
		move.w	#-$A,($FFFFF632).w
		move.w	($FFFFF60C).w,d0
		ori.b	#$40,d0
		move.w	d0,($C00004).l
		move.w	#0,($FFFFFB000+$80).w



		lea	($C00004).l,a5
		lea	($C00000).l,a6
		lea	($FFFFF708).w,a3
		lea	($FFFFA440).w,a4
		move.w	#$6000,d2
		bsr.w	LoadTilesFromStart2
		move.l	#$40000000,($C00004).l
		lea	(Nem_Menu).l,a0 ; load GHZ patterns
		bsr.w	NemDec
		moveq	#3,d0
		bsr.w	PalLoad1
		moveq	#$1C,d0		; load Menu screen pallet
		bsr.w	PalLoad1
		move.b	#$9D,d0		; play Menu screen music
		bsr.w	PlaySound_Special
		move.b	#0,($FFFFFFFA).w ; disable debug mode
		lea	($FFFFD080).w,a1
		jsr	DeleteObject2
		move.b  #$8E, ($FFFFD400).w ; Objeto de menu 
		move.b	#3,($FFFFD0DA).w
		move.b	#2,($FFFFD11A).w
		jsr	AniArt_Load
		jsr	ObjectsLoad
		bsr.w	DeformBgLayer
		jsr	BuildSprites
		moveq	#0,d0
		bsr.w	LoadPLC2
		move.w	#0,($FFFFFFE4).w
		move.w	#0,($FFFFFFE6).w
		move.w	($FFFFF60C).w,d0
		ori.b	#$40,d0
		move.w	d0,($C00004).l
		jsr	Pal_FadeTo
		add.w	#$50,($FFFFD008).w
Menu_Loop:
		move.b	#4,($FFFFF62A).w
		bsr.w	DelayProgram
		cmpi.b	#$20,($FFFFFF94).w
		bne.s	Menu_OtherMode
		jsr	ObjectsLoad
;		jsr	AniArt_Load
		bsr.w	DeformBgLayer
		jsr	BuildSprites
		bsr.w	RunPLC_RAM
;		addq.w	#8,($FFFFD008).w
		jmp	Menu_Loop

Menu_OtherMode:
		rts	
; ===========================================================================
MenuScreen_ASCII_Main:
		dc.b "                                        ",$FF
		dc.b "      - - - SONIC THE HEDGEHOG 4 - - -      ",$FF
		dc.b "                                        ",$FF
		dc.b "                                        ",$FF
		dc.b "                                        ",$FF
		dc.b "                                        ",$FF
		dc.b "     START GAME                         ",$FF
		dc.b "                                        ",$FF
		dc.b "                                        ",$FF
		dc.b "                                        ",$FF
		dc.b "     COMPETITION MODE                   ",$FF
		dc.b "                                        ",$FF
		dc.b "                                        ",$FF
		dc.b "                                        ",$FF
		dc.b "     OPTIONS                            ",$FF
		dc.b "                                        ",$FF
		dc.b "                                        ",$FF
		dc.b "                                        ",$FF
		dc.b "     MISCELLANEOUS                      ",$FF
		dc.b "                                        ",$FF
		dc.b "                                        ",$FF
		dc.b "                                        ",$FF
		dc.b "                                        ",$FF
		dc.b "                                        ",$FF
		dc.b "                                        ",$FF
		dc.b "                                        ",$FF
		dc.b "                         Romhack by TRG",$FF

		dc.b 0
		even

MenuScreen_ASCII_Main_Spa:
		dc.b $FF
		dc.b "      - - - SONIC THE HEDGEHOG 4 - - -  ",$FF
		dc.b "                                        ",$FF
		dc.b "                                        ",$FF
		dc.b "                                        ",$FF
		dc.b "                                        ",$FF
		dc.b "     COMENZAR JUEGO",$FF
		dc.b "                                        ",$FF
		dc.b "                                        ",$FF
		dc.b "                                        ",$FF
		dc.b "     MODO DE COMPETENCIAS",$FF
		dc.b "                                        ",$FF
		dc.b "                                        ",$FF
		dc.b "                                        ",$FF
		dc.b "     OPCIONES",$FF
		dc.b "                                        ",$FF
		dc.b "                                        ",$FF
		dc.b "                                        ",$FF
		dc.b "     MISCELANEO",$FF
		dc.b "                                        ",$FF
		dc.b "                                        ",$FF
		dc.b "                                        ",$FF
		dc.b "                                        ",$FF
		dc.b "                                        ",$FF
		dc.b "                                        ",$FF
		dc.b "                                        ",$FF
		dc.b "                         Romhack by TRG",$FF

		dc.b 0
		even

MenuScreen_ASCII_SelChar:
		dc.b "                                        ",$FF
		dc.b "      - - - SONIC THE HEDGEHOG 4 - - -",$FF
		dc.b "                                        ",$FF
		dc.b "                                        ",$FF
		dc.b "                                        ",$FF
		dc.b "                                        ",$FF
		dc.b "     SONIC THE HEDGEHOG                 ",$FF
		dc.b "                                        ",$FF
		dc.b "                                        ",$FF
		dc.b "                                        ",$FF
		dc.b "     METAL SONIC                        ",$FF
		dc.b "                                        ",$FF
		dc.b "                                        ",$FF
		dc.b "                                        ",$FF
		dc.b "                                        ",$FF
		dc.b "                                        ",$FF
		dc.b "                                        ",$FF
		dc.b "                                        ",$FF
		dc.b "                                        ",$FF
		dc.b "                                        ",$FF
		dc.b "                                        ",$FF
		dc.b "                                        ",$FF
		dc.b "                                        ",$FF
		dc.b "                                        ",$FF
		dc.b "                                        ",$FF
		dc.b "                                        ",$FF
		dc.b "                                        ",$FF

		dc.b 0
		even