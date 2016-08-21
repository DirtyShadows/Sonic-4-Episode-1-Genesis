; ---------------------------------------------------------------------------
; Pallet pointers
; ---------------------------------------------------------------------------
	dc.l Pal_SegaBG		; pallet address
	dc.w $FB00		; RAM address
	dc.w $1F		; (pallet length / 2) - 1
	dc.l Pal_Title
	dc.w $FB00
	dc.w $1F
	dc.l Pal_LevelSel
	dc.w $FB00
	dc.w $1F
	dc.l Pal_Sonic
	dc.w $FB00
	dc.w 7
	dc.l Pal_GHZ1
	dc.w $FB20
	dc.w $17
	dc.l Pal_LZ1
	dc.w $FB20
	dc.w $17
	dc.l Pal_MZ1
	dc.w $FB20
	dc.w $17
	dc.l Pal_SLZ1
	dc.w $FB20
	dc.w $17
	dc.l Pal_SYZ1
	dc.w $FB20
	dc.w $17
	dc.l Pal_SBZ1
	dc.w $FB20
	dc.w $17
	dc.l Pal_Special
	dc.w $FB00
	dc.w $1F
	dc.l Pal_LZWater1
	dc.w $FB00
	dc.w $1F
	dc.l Pal_SBZ3
	dc.w $FB20
	dc.w $17
	dc.l Pal_SBZ3Water
	dc.w $FB00
	dc.w $1F
	dc.l Pal_SBZ2
	dc.w $FB20
	dc.w $17
	dc.l Pal_LZSonWater
	dc.w $FB00
	dc.w 7
	dc.l Pal_SBZ3SonWat
	dc.w $FB00
	dc.w 7
	dc.l Pal_SpeResult
	dc.w $FB00
	dc.w $1F
	dc.l Pal_SpeContinue
	dc.w $FB00
	dc.w $F
	dc.l Pal_Ending
	dc.w $FB00
	dc.w $1F
	dc.l Pal_Menu	; pallet address
	dc.w $FB00	; RAM address
	dc.w $1F	; (pallet length / 2) - 1
	dc.l Pal_SegaBG2		; pallet address
	dc.w $FB00		; RAM address
	dc.w $1F		; (pallet length / 2) - 1
	dc.l Pal_Tails
	dc.w $FB00
	dc.w 7
	dc.l Pal_LZTailsWater
	dc.w $FB00
	dc.w 7
	dc.l Pal_SBZ3TailsWat
	dc.w $FB00
	dc.w 7