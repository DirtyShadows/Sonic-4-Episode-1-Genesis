; ---------------------------------------------------------------------------
; Animation script - Sonic
; ---------------------------------------------------------------------------
		dc.w SonAni_Walk-SonicAniData	;0
		dc.w SonAni_Run-SonicAniData	;1
		dc.w SonAni_Roll-SonicAniData	;2
		dc.w SonAni_Roll2-SonicAniData	;3
		dc.w SonAni_Push-SonicAniData	;4
		dc.w SonAni_Wait-SonicAniData	;5
		dc.w SonAni_Balance-SonicAniData	;6
		dc.w SonAni_LookUp-SonicAniData	;7
		dc.w SonAni_Duck-SonicAniData	;8
		dc.w SonAni_Warp1-SonicAniData	;9
		dc.w SonAni_Warp2-SonicAniData	;A
		dc.w SonAni_Warp3-SonicAniData	;B
		dc.w SonAni_Warp4-SonicAniData	;C
		dc.w SonAni_Stop-SonicAniData	;D
		dc.w SonAni_Float1-SonicAniData	;E
		dc.w SonAni_Float2-SonicAniData	;F
		dc.w SonAni_Spring-SonicAniData	;10
		dc.w SonAni_LZHang-SonicAniData	;11
		dc.w SonAni_Leap1-SonicAniData	;12
		dc.w SonAni_Leap2-SonicAniData	;13
		dc.w SonAni_Surf-SonicAniData	;14
		dc.w SonAni_Bubble-SonicAniData	;15
		dc.w SonAni_Death1-SonicAniData	;16
		dc.w SonAni_Drown-SonicAniData	;17
		dc.w SonAni_Death2-SonicAniData	;18
		dc.w SonAni_Shrink-SonicAniData	;19
		dc.w SonAni_Hurt-SonicAniData	;1A
		dc.w SonAni_LZSlide-SonicAniData	;1B
		dc.w SonAni_Blank-SonicAniData	;1C
		dc.w SonAni_Float3-SonicAniData	;1D
		dc.w SonAni_Float4-SonicAniData	;1E
		dc.w SonAni_Warp1-SonicAniData	;1F
		dc.w SonAni_Spring2-SonicAniData	;20
		dc.w SonAni_Spring3-SonicAniData	;21
		dc.w SupSonAni_Transform-SonicAniData	;22
		dc.w SonAni_EndPose-SonicAniData	;23
SonAni_Walk:	dc.b  $FF,   7,	  8,   1,   2,	 3,   4,   5,	6, $FF
SonAni_Run:	dc.b  $FF, $21,	$22, $23, $24, $FF, $FF, $FF, $FF, $FF
SonAni_Roll:	dc.b  $FE, $96,	$97, $96, $98, $96, $99, $96, $9A, $FF
SonAni_Roll2:	dc.b  $FE, $96,	$97, $96, $98, $96, $99, $96, $9A, $FF
SonAni_Push:	dc.b  $FD, $B6,	$B7, $B8, $B9, $FF, $FF, $FF, $FF, $FF
SonAni_Wait:	dc.b	5, $BA,	$BA, $BA, $BA, $BA, $BA, $BA, $BA, $BA,	$BA, $BA, $BA, $BA, $BA, $BA, $BA, $BA,	$BA, $BA, $BA, $BA, $BA, $BA, $BA, $BA,	$BA, $BA, $BA, $BA, $BA, $BA
					; DATA XREF: ROM:00012AA6o
		dc.b  $BA, $BA,	$BA, $BA, $BA, $BA, $BA, $BA, $BA, $BA,	$BA, $BA, $BA, $BA, $BA, $BA, $BA, $BA,	$BA, $BB, $BC, $BC, $BD, $BD, $BE, $BE,	$BD, $BD, $BE, $BE, $BD, $BD
		dc.b  $BE, $BE,	$BD, $BD, $BE, $BE, $BD, $BD, $BE, $BE,	$BD, $BD, $BE, $BE, $BD, $BD, $BE, $BE,	$BD, $BD, $BE, $BE, $AD, $AD, $AD, $AD,	$AD, $AD, $AE, $AE, $AE, $AE
		dc.b  $AE, $AE,	$AF, $D9, $D9, $D9, $D9, $D9, $D9, $AF,	$AF, $FE, $35
SonAni_Balance:	dc.b	7, $A4,	$A5, $A6, $FF ;	DATA XREF: ROM:00012AA6o
SonAni_LookUp:	dc.b	5, $C3,	$C4, $FE,   1 ;	DATA XREF: ROM:00012AA6o
SonAni_Duck:	dc.b	5, $9B,	$9C, $FE,   1 ;	DATA XREF: ROM:00012AA6o
SonAni_Warp1:	dc.b	0, $86,	$87, $86, $88, $86, $89, $86, $8A, $86,	$8B, $FF
SonAni_Warp2:	dc.b	9, $BA,	$C5, $C6, $C6, $C6, $C6, $C6, $C6, $C7,	$C7, $C7, $C7, $C7, $C7, $C7, $C7, $C7,	$C7, $C7, $C7, $FD,   0
SonAni_Warp3:	dc.b   1,  $BB,$FD,  0
SonAni_Warp4:	dc.b   5, $A1,	$A2, $A3, $FF
SonAni_Stop:	dc.b	3, $9D,	$9E, $9F, $A0, $FD,   0	; DATA XREF: ROM:00012AA6o
SonAni_Float1:	dc.b	7, $C8,	$FF	; DATA XREF: ROM:00012AA6o
SonAni_Float2:	dc.b	7, $C8,	$C9, $CA, $CB, $CC, $CD, $CE, $CF, $FF
SonAni_Spring:	dc.b  $2F, $8E,	$FD,   0 ; DATA	XREF: ROM:00012AA6o
;SonAni_Spring:	dc.b $2F, $40, $FD, 0
SonAni_LZHang:	dc.b	1, $AA,	$AB, $FF ; DATA	XREF: ROM:00012AA6o
SonAni_Leap1:	dc.b   $F, $43,	$43, $43, $FE,	 1 ; DATA XREF:	ROM:00012AA6o
SonAni_Leap2:	dc.b $F, $43, $44, $FE,	1, 0
SonAni_Surf:	dc.b $3F, $49, $FF, 0
SonAni_Bubble:		dc.b   $B, $AC,	$AC,   3,   4, $FD,   0	; DATA XREF: ROM:00012AA6o
SonAni_Death1:	dc.b  $20, $A8,	$FF	; DATA XREF: ROM:00012AA6o
SonAni_Drown:	dc.b  $20, $A9,	$FF	; DATA XREF: ROM:00012AA6o
SonAni_Death2:	dc.b  $20, $A7,	$FF	; DATA XREF: ROM:00012AA6o

SonAni_Shrink:	 dc.b	9, $D7,	$D8, $FF ; DATA	XREF: ROM:00012AA6o
SonAni_Hurt:	dc.b  $40, $8D,	$FF	; DATA XREF: ROM:00012AA6o
SonAni_LZSlide:	dc.b	9, $8C,	$8D, $FF ; DATA	XREF: ROM:00012AA6o
					; ROM:00012C70t
SonAni_Blank:	dc.b $77, 0, $FD, 0
SonAni_Float3:	dc.b  $13, $D0,	$D1, $FF ; DATA	XREF: ROM:00012AA6o
					; ROM:00012C74t
SonAni_Float4:	dc.b	3, $CF,	$C8, $C9, $CA, $CB, $FE,   4 ; DATA XREF: ROM:00012AA6o
SonAni_Spin_Dash:	dc.b 0, $58, $59, $58, $5A, $58, $5B, $58, $5C, $58, $5D, $FF
SonAni_Spring2:	dc.b 1, $5E, $60, $FD, $21,  0
SonAni_Spring3:	dc.b 1, $5E, $60, $FD, $20,  0
SonAni_EndPose:	dc.b 7, $B0,	$B2, $B2, $B2, $B2, $B2, $B2, $B1, $B2,	$B3, $B2, $FE,	 4
		align 2