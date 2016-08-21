; ---------------------------------------------------------------------------
; Animation script - Super Sonic
; ---------------------------------------------------------------------------
		dc.w SupSonAni_Walk-SuperSonicAniData ;00
		dc.w SupSonAni_Run-SuperSonicAniData ;01
		dc.w SonAni_Roll-SuperSonicAniData ;02
		dc.w SonAni_Roll2-SuperSonicAniData ;03
		dc.w SonAni_Push-SuperSonicAniData ;04
		dc.w SupSonAni_Wait-SuperSonicAniData ;05
		dc.w SupSonAni_Balance-SuperSonicAniData ;06
		dc.w SonAni_LookUp-SuperSonicAniData ;07
		dc.w SupSonAni_Duck-SuperSonicAniData ;08
		dc.w SonAni_Warp1-SuperSonicAniData ;09
		dc.w SonAni_Warp2-SuperSonicAniData ;0A
		dc.w SonAni_Warp3-SuperSonicAniData ;0B
		dc.w SonAni_Warp4-SuperSonicAniData ;0C
		dc.w SonAni_Stop-SuperSonicAniData ;0D
		dc.w SonAni_Float1-SuperSonicAniData ;0E
		dc.w SonAni_Float2-SuperSonicAniData ;0F
		dc.w SonAni_Spring-SuperSonicAniData ;10
		dc.w SonAni_LZHang-SuperSonicAniData ;11
		dc.w SonAni_Leap1-SuperSonicAniData ;12
		dc.w SonAni_Leap2-SuperSonicAniData ;13
		dc.w SonAni_Surf-SuperSonicAniData ;14
		dc.w SonAni_Bubble-SuperSonicAniData ;15
		dc.w SonAni_Death1-SuperSonicAniData ;16
		dc.w SonAni_Drown-SuperSonicAniData ;17
		dc.w SonAni_Death2-SuperSonicAniData ;18
		dc.w SonAni_Shrink-SuperSonicAniData ;19
		dc.w SonAni_Hurt-SuperSonicAniData ;1A
		dc.w SonAni_LZSlide-SuperSonicAniData ;1B
		dc.w SonAni_Blank-SuperSonicAniData ;1C
		dc.w SonAni_Float3-SuperSonicAniData ;1D
		dc.w SonAni_Float4-SuperSonicAniData ;1E
		dc.w SonAni_Spindash-SuperSonicAniData	;1F
		dc.w SonAni_SuperPeelout-SuperSonicAniData ;20
		dc.w SupSonAni_SuperPeelout-SuperSonicAniData ;21
		dc.w SupSonAni_Transform-SuperSonicAniData	; 22

SupSonAni_Walk:	dc.b $FF, 8, 9,	$A, $B,	6, 7, $FF
SupSonAni_Run:	dc.b $FF, $1E, $1E, $1E, $1E, $1F, $1F, $1F, $1F, $FF, $FF,	$FF
SupSonAni_Wait:	dc.b 0, $5E, $5E, $5E, $5E, $5E, $5E, $5E, $5E, $5F, $5F, $5F, $5F, $5F, $5F, $5F, $5F, $60, $60, $60, $60, $60, $60, $60, $60, $5F, $5F, $5F, $5F, $5F, $5F, $5F, $5F, $FF
SupSonAni_Balance:	dc.b   9, $3A, $3B, $62, $3B, $63, $64, $65, $64,$FF
SupSonAni_SuperPeelout:	dc.b 0, $61, $FE, 1, 0
SupSonAni_Duck:	dc.b $3F, $61, $FF, 0
SupSonAni_Transform:	dc.b   2,$66,$66,$67,$67,$68,$69,$6A,$69,$6A,$69,$6A,$69,$6A,$FD,  0
		even