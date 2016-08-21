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
	dc.l Pal2_GHZ3
	dc.w $FB20
	dc.w $17
	dc.l Pal2_LZ3
	dc.w $FB20
	dc.w $17
	dc.l Pal2_MZ3
	dc.w $FB20
	dc.w $17
	dc.l Pal2_SLZ3
	dc.w $FB20
	dc.w $17
	dc.l Pal2_SYZ3
	dc.w $FB20
	dc.w $17
	dc.l Pal2_SBZ1
	dc.w $FB20
	dc.w $17
	dc.l Pal2_Special
	dc.w $FB00
	dc.w $1F
	dc.l Pal2_LZWater3
	dc.w $FB00
	dc.w $1F
	dc.l Pal2_SBZ3
	dc.w $FB20
	dc.w $17
	dc.l Pal2_SBZ3Water
	dc.w $FB00
	dc.w $1F
	dc.l Pal2_SBZ2
	dc.w $FB20
	dc.w $17
	dc.l Pal2_LZSonWater
	dc.w $FB00
	dc.w 7
	dc.l Pal2_SBZ3SonWat
	dc.w $FB00
	dc.w 7
	dc.l Pal2_SpeResult
	dc.w $FB00
	dc.w $1F
	dc.l Pal2_SpeContinue
	dc.w $FB00
	dc.w $F
	dc.l Pal2_Ending
	dc.w $FB00
	dc.w $1F
	dc.l Pal_ABZ3		; 14
	dc.w $FB20
	dc.w $17
	dc.l Menu_Palette; pallet address
	dc.w $FB00	; RAM address
	dc.w $1F	; (pallet length / 2) - 1
	dc.l Pal_Ray
	dc.w $FB00
	dc.w 7
	dc.l Pal_SonicHeat
	dc.w $FB00
	dc.w 7
	dc.l Pal_RayHeat
	dc.w $FB00
	dc.w 7