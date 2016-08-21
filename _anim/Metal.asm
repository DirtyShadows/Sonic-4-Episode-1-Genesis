; ---------------------------------------------------------------------------
; Animation script - Sonic
; ---------------------------------------------------------------------------
		dc.w MSonAni_Walk-SonicAniData
		dc.w MSonAni_Run-SonicAniData
		dc.w MSonAni_Roll-SonicAniData
		dc.w MSonAni_Roll2-SonicAniData
		dc.w MSonAni_Push-SonicAniData
		dc.w MSonAni_Wait-SonicAniData
		dc.w MSonAni_Balance-SonicAniData
		dc.w MSonAni_LookUp-SonicAniData
		dc.w MSonAni_Duck-SonicAniData
		dc.w MSonAni_Warp1-SonicAniData
		dc.w MSonAni_Warp2-SonicAniData
		dc.w MSonAni_Warp3-SonicAniData
		dc.w MSonAni_Warp4-SonicAniData
		dc.w MSonAni_Stop-SonicAniData
		dc.w MSonAni_Float1-SonicAniData
		dc.w MSonAni_Float2-SonicAniData
		dc.w MSonAni_Spring-SonicAniData
		dc.w MSonAni_LZHang-SonicAniData
		dc.w MSonAni_Leap1-SonicAniData
		dc.w MSonAni_Leap2-SonicAniData
		dc.w MSonAni_Surf-SonicAniData
		dc.w MSonAni_Bubble-SonicAniData
		dc.w MSonAni_Death1-SonicAniData
		dc.w MSonAni_Drown-SonicAniData
		dc.w MSonAni_Death2-SonicAniData
		dc.w MSonAni_Shrink-SonicAniData
		dc.w MSonAni_Hurt-SonicAniData
		dc.w MSonAni_LZSlide-SonicAniData
		dc.w MSonAni_Blank-SonicAniData
		dc.w MSonAni_Float3-SonicAniData
		dc.w MSonAni_Float4-SonicAniData
		dc.w MSonAni_Warp1-SonicAniData	;1F
		dc.w MSonAni_Spring2-SonicAniData	;20
		dc.w MSonAni_Spring3-SonicAniData	;21
		dc.w SupSonAni_Transform-SuperSonicAniData
MSonAni_Walk:	dc.b  $FF,   7,	  8,   1,   2,	 3,   4,   5,	6, $FF
MSonAni_Run:	dc.b  $FF, $21,	$22, $23, $24, $FF, $FF, $FF, $FF, $FF
MSonAni_Roll:	dc.b  $FE, $96,	$97, $96, $98, $96, $99, $96, $9A, $FF
MSonAni_Roll2:	dc.b  $FE, $96,	$97, $96, $98, $96, $99, $96, $9A, $FF
MSonAni_Push:	dc.b  $FD, $B6,	$B7, $B8, $B9, $FF, $FF, $FF, $FF, $FF
MSonAni_Wait:	dc.b	5, $BA,	$BA, $BA, $BA, $BA, $BA, $BA, $BA, $BA,	$BA, $BA, $BA, $BA, $BA, $BA, $BA, $BA,	$BA, $BA, $BA, $BA, $BA, $BA, $BA, $BA,	$BA, $BA, $BA, $BA, $BA, $BA
					; DATA XREF: ROM:00012AA6o
		dc.b  $BA, $BA,	$BA, $BA, $BA, $BA, $BA, $BA, $BA, $BA,	$BA, $BA, $BA, $BA, $BA, $BA, $BA, $BA,	$BA, $BB, $BC, $BC, $BD, $BD, $BE, $BE,	$BD, $BD, $BE, $BE, $BD, $BD
		dc.b  $BE, $BE,	$BD, $BD, $BE, $BE, $BD, $BD, $BE, $BE,	$BD, $BD, $BE, $BE, $BD, $BD, $BE, $BE,	$BD, $BD, $BE, $BE, $AD, $AD, $AD, $AD,	$AD, $AD, $AE, $AE, $AE, $AE
		dc.b  $AE, $AE,	$AF, $D9, $D9, $D9, $D9, $D9, $D9, $AF,	$AF, $FE, $35
MSonAni_Balance:	dc.b	7, $A4,	$A5, $A6, $FF ;	DATA XREF: ROM:00012AA6o
MSonAni_LookUp:	dc.b	5, $C3,	$C4, $FE,   1 ;	DATA XREF: ROM:00012AA6o
MSonAni_Duck:	dc.b	5, $9B,	$9C, $FE,   1 ;	DATA XREF: ROM:00012AA6o
MSonAni_Warp1:	dc.b	0, $86,	$87, $86, $88, $86, $89, $86, $8A, $86,	$8B, $FF
MSonAni_Warp2:	dc.b	9, $BA,	$C5, $C6, $C6, $C6, $C6, $C6, $C6, $C7,	$C7, $C7, $C7, $C7, $C7, $C7, $C7, $C7,	$C7, $C7, $C7, $FD,   0
MSonAni_Warp3:	dc.b $3F, $35, $FF, 0
MSonAni_Warp4:	dc.b $3F, $36, $FF, 0
MSonAni_Stop:	dc.b	3, $9D,	$9E, $9F, $A0, $FD,   0	; DATA XREF: ROM:00012AA6o
MSonAni_Float1:	dc.b	7, $C8,	$FF	; DATA XREF: ROM:00012AA6o
MSonAni_Float2:	dc.b	7, $C8,	$C9, $CA, $CB, $CC, $CD, $CE, $CF, $FF
MSonAni_Spring:	dc.b  $2F, $8E,	$FD,   0 ; DATA	XREF: ROM:00012AA6o
;MSonAni_Spring:	dc.b $2F, $40, $FD, 0
MSonAni_LZHang:	dc.b	1, $AA,	$AB, $FF ; DATA	XREF: ROM:00012AA6o
MSonAni_Leap1:	dc.b   $F, $43,	$43, $43, $FE,	 1 ; DATA XREF:	ROM:00012AA6o
MSonAni_Leap2:	dc.b $F, $43, $44, $FE,	1, 0
MSonAni_Surf:	dc.b $3F, $49, $FF, 0
MSonAni_Bubble:		dc.b   $B, $AC,	$AC,   3,   4, $FD,   0	; DATA XREF: ROM:00012AA6o
MSonAni_Death1:	dc.b  $20, $A8,	$FF	; DATA XREF: ROM:00012AA6o
MSonAni_Drown:	dc.b  $20, $A9,	$FF	; DATA XREF: ROM:00012AA6o
MSonAni_Death2:	dc.b  $20, $A7,	$FF	; DATA XREF: ROM:00012AA6o

MSonAni_Shrink:	 dc.b	9, $D7,	$D8, $FF ; DATA	XREF: ROM:00012AA6o
MSonAni_Hurt:	dc.b  $40, $8D,	$FF	; DATA XREF: ROM:00012AA6o
MSonAni_LZSlide:	dc.b	9, $8C,	$8D, $FF ; DATA	XREF: ROM:00012AA6o
					; ROM:00012C70t
MSonAni_Blank:	dc.b $77, 0, $FD, 0
MSonAni_Float3:	dc.b  $13, $D0,	$D1, $FF ; DATA	XREF: ROM:00012AA6o
					; ROM:00012C74t
MSonAni_Float4:	dc.b	3, $CF,	$C8, $C9, $CA, $CB, $FE,   4 ; DATA XREF: ROM:00012AA6o
MSonAni_Spin_Dash:	dc.b 0, $58, $59, $58, $5A, $58, $5B, $58, $5C, $58, $5D, $FF
MSonAni_Spring2:	dc.b 1, $5E, $60, $FD, $21,  0
MSonAni_Spring3:	dc.b 1, $5E, $60, $FD, $20,  0
		align 2