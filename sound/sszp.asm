; =============================================================================================
; Project Name:		Stardust_Speedway_Present
; Created:		2nd January 2014
; ---------------------------------------------------------------------------------------------
; ASM'd using S1SMPS2ASM version 1.1 by Marc Gordon (AKA Cinossu)
; =============================================================================================

Stardust_Speedway_Present_Header:
	smpsHeaderVoice	Stardust_Speedway_Present_Voices
	smpsHeaderChan	$06,	$03
	smpsHeaderTempo	$01,	$05

	smpsHeaderDAC	Stardust_Speedway_Present_DAC
	smpsHeaderFM	Stardust_Speedway_Present_FM1,	smpsPitch00,	$0C
	smpsHeaderFM	Stardust_Speedway_Present_FM2,	smpsPitch00,	$0F
	smpsHeaderFM	Stardust_Speedway_Present_FM3,	smpsPitch00,	$0F
	smpsHeaderFM	Stardust_Speedway_Present_FM4,	smpsPitch00,	$14
	smpsHeaderFM	Stardust_Speedway_Present_FM5,	smpsPitch00,	$14
	smpsHeaderPSG	Stardust_Speedway_Present_PSG1,	smpsPitch03lo,	$04,	$00
	smpsHeaderPSG	Stardust_Speedway_Present_PSG2,	smpsPitch03lo,	$04,	$00
	smpsHeaderPSG	Stardust_Speedway_Present_PSG3,	smpsPitch03lo,	$03,	$00

; FM1 Data
Stardust_Speedway_Present_FM1:
	smpsCall	Stardust_Speedway_Present_Call01
	smpsCall	Stardust_Speedway_Present_Call02
	smpsCall	Stardust_Speedway_Present_Call03
	smpsCall	Stardust_Speedway_Present_Call02
	smpsCall	Stardust_Speedway_Present_Call03
	smpsCall	Stardust_Speedway_Present_Call02
	smpsAlterVol	$F4
	smpsPan		panRight,	$00
	smpsCall	Stardust_Speedway_Present_Call04
	smpsCall	Stardust_Speedway_Present_Call05
	smpsAlterVol	$0C
	smpsPan		panCentre,	$00
	smpsCall	Stardust_Speedway_Present_Call06
	smpsCall	Stardust_Speedway_Present_Call07
	smpsCall	Stardust_Speedway_Present_Call06
	smpsCall	Stardust_Speedway_Present_Call07
	smpsCall	Stardust_Speedway_Present_Call06
	smpsCall	Stardust_Speedway_Present_Call07
	smpsCall	Stardust_Speedway_Present_Call06
	smpsCall	Stardust_Speedway_Present_Call07
	smpsCall	Stardust_Speedway_Present_Call06
	smpsCall	Stardust_Speedway_Present_Call07
	smpsCall	Stardust_Speedway_Present_Call06
	smpsCall	Stardust_Speedway_Present_Call07
	smpsAlterVol	$F4
	smpsPan		panRight,	$00
	smpsCall	Stardust_Speedway_Present_Call04
	smpsCall	Stardust_Speedway_Present_Call04
	smpsCall	Stardust_Speedway_Present_Call04
	smpsCall	Stardust_Speedway_Present_Call05
	smpsAlterVol	$0C
	smpsPan		panCentre,	$00
	smpsCall	Stardust_Speedway_Present_Call06
	smpsCall	Stardust_Speedway_Present_Call07
	smpsCall	Stardust_Speedway_Present_Call06
	smpsCall	Stardust_Speedway_Present_Call07
	smpsCall	Stardust_Speedway_Present_Call06
	smpsCall	Stardust_Speedway_Present_Call07
	smpsCall	Stardust_Speedway_Present_Call06
	smpsCall	Stardust_Speedway_Present_Call07
	smpsCall	Stardust_Speedway_Present_Call08
	smpsCall	Stardust_Speedway_Present_Call09
	smpsCall	Stardust_Speedway_Present_Call08
	smpsCall	Stardust_Speedway_Present_Call09
	smpsCall	Stardust_Speedway_Present_Call08
	smpsCall	Stardust_Speedway_Present_Call09
	smpsCall	Stardust_Speedway_Present_Call08
	smpsCall	Stardust_Speedway_Present_Call09
	smpsCall	Stardust_Speedway_Present_Call06
	smpsCall	Stardust_Speedway_Present_Call07
	smpsCall	Stardust_Speedway_Present_Call06
	smpsCall	Stardust_Speedway_Present_Call07
	smpsCall	Stardust_Speedway_Present_Call06
	smpsCall	Stardust_Speedway_Present_Call07
	smpsCall	Stardust_Speedway_Present_Call06
	smpsCall	Stardust_Speedway_Present_Call07
	smpsCall	Stardust_Speedway_Present_Call08
	smpsCall	Stardust_Speedway_Present_Call09
	smpsCall	Stardust_Speedway_Present_Call08
	smpsCall	Stardust_Speedway_Present_Call09
	smpsCall	Stardust_Speedway_Present_Call08
	smpsCall	Stardust_Speedway_Present_Call09
	smpsCall	Stardust_Speedway_Present_Call08
	smpsCall	Stardust_Speedway_Present_Call0A
	smpsCall	Stardust_Speedway_Present_Call0B
	smpsJump	Stardust_Speedway_Present_FM1

Stardust_Speedway_Present_Call0B:
	dc.b		smpsNoAttack,	$60
	smpsReturn

; FM2 Data
Stardust_Speedway_Present_FM2:
	smpsPan		panCentre,	$00
	smpsAlterVol	$F6
	smpsCall	Stardust_Speedway_Present_Call0C
	smpsCall	Stardust_Speedway_Present_Call0D
	smpsCall	Stardust_Speedway_Present_Call0E
	smpsCall	Stardust_Speedway_Present_Call0F
	smpsCall	Stardust_Speedway_Present_Call10
	smpsCall	Stardust_Speedway_Present_Call11
	smpsCall	Stardust_Speedway_Present_Call12
	smpsPan		panLeft,	$00
	smpsAlterVol	$0A
	smpsCall	Stardust_Speedway_Present_Call13
	smpsCall	Stardust_Speedway_Present_Call14
	smpsCall	Stardust_Speedway_Present_Call15
	smpsCall	Stardust_Speedway_Present_Call16
	smpsPan		panCentre,	$00
	smpsAlterVol	$F6
	smpsCall	Stardust_Speedway_Present_Call17
	smpsCall	Stardust_Speedway_Present_Call18
	smpsCall	Stardust_Speedway_Present_Call19
	smpsCall	Stardust_Speedway_Present_Call1A
	smpsCall	Stardust_Speedway_Present_Call1B
	smpsPan		panLeft,	$00
	smpsAlterVol	$0A
	smpsCall	Stardust_Speedway_Present_Call14
	smpsCall	Stardust_Speedway_Present_Call15
	smpsCall	Stardust_Speedway_Present_Call16
	smpsCall	Stardust_Speedway_Present_Call1C
	smpsPan		panCentre,	$00
	smpsCall	Stardust_Speedway_Present_Call1D
	smpsCall	Stardust_Speedway_Present_Call1E
	smpsCall	Stardust_Speedway_Present_Call1F
	smpsPan		panLeft,	$00
	smpsCall	Stardust_Speedway_Present_Call20
	smpsCall	Stardust_Speedway_Present_Call21
	smpsCall	Stardust_Speedway_Present_Call22
	smpsCall	Stardust_Speedway_Present_Call23
	smpsCall	Stardust_Speedway_Present_Call24
	smpsCall	Stardust_Speedway_Present_Call21
	smpsCall	Stardust_Speedway_Present_Call22
	smpsCall	Stardust_Speedway_Present_Call23
	smpsCall	Stardust_Speedway_Present_Call25
	smpsCall	Stardust_Speedway_Present_Call1C
	smpsCall	Stardust_Speedway_Present_Call26
	smpsCall	Stardust_Speedway_Present_Call27
	smpsCall	Stardust_Speedway_Present_Call28
	smpsCall	Stardust_Speedway_Present_Call29
	smpsCall	Stardust_Speedway_Present_Call2A
	smpsCall	Stardust_Speedway_Present_Call27
	smpsCall	Stardust_Speedway_Present_Call2B
	smpsCall	Stardust_Speedway_Present_Call21
	smpsCall	Stardust_Speedway_Present_Call22
	smpsCall	Stardust_Speedway_Present_Call23
	smpsCall	Stardust_Speedway_Present_Call2C
	smpsCall	Stardust_Speedway_Present_Call21
	smpsCall	Stardust_Speedway_Present_Call22
	smpsCall	Stardust_Speedway_Present_Call23
	smpsCall	Stardust_Speedway_Present_Call25
	smpsCall	Stardust_Speedway_Present_Call1C
	smpsCall	Stardust_Speedway_Present_Call26
	smpsCall	Stardust_Speedway_Present_Call27
	smpsCall	Stardust_Speedway_Present_Call28
	smpsCall	Stardust_Speedway_Present_Call2D
	smpsCall	Stardust_Speedway_Present_Call2A
	smpsCall	Stardust_Speedway_Present_Call27
	smpsCall	Stardust_Speedway_Present_Call1C
	smpsCall	Stardust_Speedway_Present_Call1C
	smpsJump	Stardust_Speedway_Present_FM2

; FM3 Data
Stardust_Speedway_Present_FM3:
	smpsPan		panCentre,	$00
	smpsAlterVol	$F6
	smpsCall	Stardust_Speedway_Present_Call2E
	smpsCall	Stardust_Speedway_Present_Call2F
	smpsCall	Stardust_Speedway_Present_Call30
	smpsCall	Stardust_Speedway_Present_Call31
	smpsCall	Stardust_Speedway_Present_Call30
	smpsCall	Stardust_Speedway_Present_Call32
	smpsCall	Stardust_Speedway_Present_Call30
	smpsPan		panRight,	$00
	smpsAlterVol	$0A
	smpsCall	Stardust_Speedway_Present_Call33
	smpsCall	Stardust_Speedway_Present_Call34
	smpsCall	Stardust_Speedway_Present_Call35
	smpsCall	Stardust_Speedway_Present_Call36
	smpsPan		panCentre,	$00
	smpsAlterVol	$F6
	smpsCall	Stardust_Speedway_Present_Call37
	smpsCall	Stardust_Speedway_Present_Call38
	smpsCall	Stardust_Speedway_Present_Call39
	smpsCall	Stardust_Speedway_Present_Call3A
	smpsCall	Stardust_Speedway_Present_Call3B
	smpsPan		panRight,	$00
	smpsAlterVol	$0A
	smpsCall	Stardust_Speedway_Present_Call34
	smpsCall	Stardust_Speedway_Present_Call35
	smpsCall	Stardust_Speedway_Present_Call36
	smpsCall	Stardust_Speedway_Present_Call30
	smpsPan		panCentre,	$00
	smpsCall	Stardust_Speedway_Present_Call3C
	smpsCall	Stardust_Speedway_Present_Call3D
	smpsCall	Stardust_Speedway_Present_Call3E
	smpsPan		panRight,	$00
	smpsCall	Stardust_Speedway_Present_Call3F
	smpsCall	Stardust_Speedway_Present_Call40
	smpsCall	Stardust_Speedway_Present_Call41
	smpsCall	Stardust_Speedway_Present_Call42
	smpsCall	Stardust_Speedway_Present_Call43
	smpsCall	Stardust_Speedway_Present_Call40
	smpsCall	Stardust_Speedway_Present_Call41
	smpsCall	Stardust_Speedway_Present_Call42
	smpsCall	Stardust_Speedway_Present_Call44
	smpsCall	Stardust_Speedway_Present_Call30
	smpsCall	Stardust_Speedway_Present_Call45
	smpsCall	Stardust_Speedway_Present_Call46
	smpsCall	Stardust_Speedway_Present_Call47
	smpsCall	Stardust_Speedway_Present_Call48
	smpsCall	Stardust_Speedway_Present_Call49
	smpsCall	Stardust_Speedway_Present_Call46
	smpsCall	Stardust_Speedway_Present_Call4A
	smpsCall	Stardust_Speedway_Present_Call40
	smpsCall	Stardust_Speedway_Present_Call41
	smpsCall	Stardust_Speedway_Present_Call42
	smpsCall	Stardust_Speedway_Present_Call4B
	smpsCall	Stardust_Speedway_Present_Call40
	smpsCall	Stardust_Speedway_Present_Call41
	smpsCall	Stardust_Speedway_Present_Call42
	smpsCall	Stardust_Speedway_Present_Call44
	smpsCall	Stardust_Speedway_Present_Call30
	smpsCall	Stardust_Speedway_Present_Call45
	smpsCall	Stardust_Speedway_Present_Call46
	smpsCall	Stardust_Speedway_Present_Call47
	smpsCall	Stardust_Speedway_Present_Call4C
	smpsCall	Stardust_Speedway_Present_Call49
	smpsCall	Stardust_Speedway_Present_Call46
	smpsCall	Stardust_Speedway_Present_Call30
	smpsCall	Stardust_Speedway_Present_Call30
	smpsJump	Stardust_Speedway_Present_FM3

; FM4 Data
Stardust_Speedway_Present_FM4:
	smpsPan		panLeft,	$00
	smpsCall	Stardust_Speedway_Present_Call4D
	smpsCall	Stardust_Speedway_Present_Call4E
	smpsCall	Stardust_Speedway_Present_Call4D
	smpsCall	Stardust_Speedway_Present_Call4E
	smpsCall	Stardust_Speedway_Present_Call4D
	smpsCall	Stardust_Speedway_Present_Call4E
	smpsCall	Stardust_Speedway_Present_Call4F
	smpsCall	Stardust_Speedway_Present_Call50
	smpsCall	Stardust_Speedway_Present_Call50
	smpsCall	Stardust_Speedway_Present_Call50
	smpsCall	Stardust_Speedway_Present_Call50
	smpsAlterVol	$F1
	smpsCall	Stardust_Speedway_Present_Call51
	smpsAlterVol	$0F
	smpsPan		panCentre,	$00
	smpsCall	Stardust_Speedway_Present_Call52
	smpsCall	Stardust_Speedway_Present_Call53
	smpsCall	Stardust_Speedway_Present_Call54
	smpsCall	Stardust_Speedway_Present_Call55
	smpsCall	Stardust_Speedway_Present_Call4F
	smpsCall	Stardust_Speedway_Present_Call50
	smpsCall	Stardust_Speedway_Present_Call50
	smpsCall	Stardust_Speedway_Present_Call50
	smpsPan		panLeft,	$00
	smpsCall	Stardust_Speedway_Present_Call56
	smpsCall	Stardust_Speedway_Present_Call57
	smpsCall	Stardust_Speedway_Present_Call58
	smpsCall	Stardust_Speedway_Present_Call50
	smpsPan		panCentre,	$00
	smpsCall	Stardust_Speedway_Present_Call59
	smpsCall	Stardust_Speedway_Present_Call5A
	smpsCall	Stardust_Speedway_Present_Call5B
	smpsCall	Stardust_Speedway_Present_Call5C
	smpsCall	Stardust_Speedway_Present_Call5D
	smpsCall	Stardust_Speedway_Present_Call5A
	smpsCall	Stardust_Speedway_Present_Call5B
	smpsCall	Stardust_Speedway_Present_Call5C
	smpsPan		panLeft,	$00
	smpsAlterVol	$EC
	smpsCall	Stardust_Speedway_Present_Call5E
	smpsCall	Stardust_Speedway_Present_Call5F
	smpsCall	Stardust_Speedway_Present_Call60
	smpsCall	Stardust_Speedway_Present_Call61
	smpsCall	Stardust_Speedway_Present_Call62
	smpsCall	Stardust_Speedway_Present_Call63
	smpsCall	Stardust_Speedway_Present_Call60
	smpsCall	Stardust_Speedway_Present_Call61
	smpsAlterVol	$14
	smpsPan		panCentre,	$00
	smpsCall	Stardust_Speedway_Present_Call5D
	smpsCall	Stardust_Speedway_Present_Call5A
	smpsCall	Stardust_Speedway_Present_Call5B
	smpsCall	Stardust_Speedway_Present_Call5C
	smpsCall	Stardust_Speedway_Present_Call5D
	smpsCall	Stardust_Speedway_Present_Call5A
	smpsCall	Stardust_Speedway_Present_Call5B
	smpsCall	Stardust_Speedway_Present_Call5C
	smpsAlterVol	$EC
	smpsPan		panLeft,	$00
	smpsCall	Stardust_Speedway_Present_Call5E
	smpsCall	Stardust_Speedway_Present_Call5F
	smpsCall	Stardust_Speedway_Present_Call60
	smpsCall	Stardust_Speedway_Present_Call61
	smpsCall	Stardust_Speedway_Present_Call62
	smpsCall	Stardust_Speedway_Present_Call5F
	smpsCall	Stardust_Speedway_Present_Call60
	smpsCall	Stardust_Speedway_Present_Call64
	smpsCall	Stardust_Speedway_Present_Call50
	smpsAlterVol	$14
	smpsJump	Stardust_Speedway_Present_FM4

; FM5 Data
Stardust_Speedway_Present_FM5:
	smpsPan		panRight,	$00
	smpsCall	Stardust_Speedway_Present_Call65
	smpsCall	Stardust_Speedway_Present_Call66
	smpsCall	Stardust_Speedway_Present_Call65
	smpsCall	Stardust_Speedway_Present_Call66
	smpsCall	Stardust_Speedway_Present_Call65
	smpsCall	Stardust_Speedway_Present_Call66
	smpsCall	Stardust_Speedway_Present_Call67
	smpsCall	Stardust_Speedway_Present_Call68
	smpsCall	Stardust_Speedway_Present_Call68
	smpsCall	Stardust_Speedway_Present_Call68
	smpsCall	Stardust_Speedway_Present_Call68
	smpsAlterVol	$F1
	smpsCall	Stardust_Speedway_Present_Call69
	smpsAlterVol	$0F
	smpsAlterVol	$04
	smpsCall	Stardust_Speedway_Present_Call6A
	smpsCall	Stardust_Speedway_Present_Call6B
	smpsCall	Stardust_Speedway_Present_Call6C
	smpsCall	Stardust_Speedway_Present_Call6D
	smpsCall	Stardust_Speedway_Present_Call6E
	smpsCall	Stardust_Speedway_Present_Call68
	smpsCall	Stardust_Speedway_Present_Call68
	smpsCall	Stardust_Speedway_Present_Call68
	smpsPan		panLeft,	$00
	smpsAlterVol	$FC
	smpsCall	Stardust_Speedway_Present_Call6F
	smpsCall	Stardust_Speedway_Present_Call70
	smpsCall	Stardust_Speedway_Present_Call71
	smpsCall	Stardust_Speedway_Present_Call68
	smpsPan		panRight,	$00
	smpsAlterVol	$04
	smpsCall	Stardust_Speedway_Present_Call72
	smpsCall	Stardust_Speedway_Present_Call73
	smpsCall	Stardust_Speedway_Present_Call74
	smpsCall	Stardust_Speedway_Present_Call75
	smpsCall	Stardust_Speedway_Present_Call76
	smpsCall	Stardust_Speedway_Present_Call73
	smpsCall	Stardust_Speedway_Present_Call74
	smpsCall	Stardust_Speedway_Present_Call75
	smpsCall	Stardust_Speedway_Present_Call77
	smpsCall	Stardust_Speedway_Present_Call78
	smpsCall	Stardust_Speedway_Present_Call79
	smpsCall	Stardust_Speedway_Present_Call7A
	smpsCall	Stardust_Speedway_Present_Call7B
	smpsCall	Stardust_Speedway_Present_Call7C
	smpsCall	Stardust_Speedway_Present_Call79
	smpsCall	Stardust_Speedway_Present_Call7A
	smpsAlterVol	$14
	smpsAlterVol	$04
	smpsCall	Stardust_Speedway_Present_Call7D
	smpsCall	Stardust_Speedway_Present_Call73
	smpsCall	Stardust_Speedway_Present_Call74
	smpsCall	Stardust_Speedway_Present_Call75
	smpsCall	Stardust_Speedway_Present_Call76
	smpsCall	Stardust_Speedway_Present_Call73
	smpsCall	Stardust_Speedway_Present_Call74
	smpsCall	Stardust_Speedway_Present_Call75
	smpsCall	Stardust_Speedway_Present_Call77
	smpsCall	Stardust_Speedway_Present_Call78
	smpsCall	Stardust_Speedway_Present_Call79
	smpsCall	Stardust_Speedway_Present_Call7A
	smpsCall	Stardust_Speedway_Present_Call7B
	smpsCall	Stardust_Speedway_Present_Call78
	smpsCall	Stardust_Speedway_Present_Call79
	smpsCall	Stardust_Speedway_Present_Call7E
	smpsCall	Stardust_Speedway_Present_Call68
	smpsAlterVol	$14
	smpsJump	Stardust_Speedway_Present_FM5

; PSG1 Data
Stardust_Speedway_Present_PSG1:
	smpsCall	Stardust_Speedway_Present_Call7F
	smpsCall	Stardust_Speedway_Present_Call80
	smpsCall	Stardust_Speedway_Present_Call7F
	smpsCall	Stardust_Speedway_Present_Call80
	smpsCall	Stardust_Speedway_Present_Call7F
	smpsCall	Stardust_Speedway_Present_Call81
	smpsCall	Stardust_Speedway_Present_Call82
	smpsCall	Stardust_Speedway_Present_Call83
	smpsCall	Stardust_Speedway_Present_Call84
	smpsCall	Stardust_Speedway_Present_Call80
	smpsCall	Stardust_Speedway_Present_Call85
	smpsCall	Stardust_Speedway_Present_Call86
	smpsCall	Stardust_Speedway_Present_Call7F
	smpsCall	Stardust_Speedway_Present_Call80
	smpsCall	Stardust_Speedway_Present_Call7F
	smpsCall	Stardust_Speedway_Present_Call80
	smpsCall	Stardust_Speedway_Present_Call7F
	smpsCall	Stardust_Speedway_Present_Call80
	smpsCall	Stardust_Speedway_Present_Call7F
	smpsCall	Stardust_Speedway_Present_Call80
	smpsAlterVol	$01
	smpsCall	Stardust_Speedway_Present_Call87
	smpsCall	Stardust_Speedway_Present_Call88
	smpsCall	Stardust_Speedway_Present_Call89
	smpsAlterVol	$FF
	smpsCall	Stardust_Speedway_Present_Call82
	smpsCall	Stardust_Speedway_Present_Call84
	smpsCall	Stardust_Speedway_Present_Call80
	smpsCall	Stardust_Speedway_Present_Call7F
	smpsCall	Stardust_Speedway_Present_Call8A
	smpsCall	Stardust_Speedway_Present_Call7F
	smpsCall	Stardust_Speedway_Present_Call80
	smpsCall	Stardust_Speedway_Present_Call7F
	smpsCall	Stardust_Speedway_Present_Call81
	smpsCall	Stardust_Speedway_Present_Call8B
	smpsCall	Stardust_Speedway_Present_Call8C
	smpsCall	Stardust_Speedway_Present_Call8B
	smpsCall	Stardust_Speedway_Present_Call8C
	smpsCall	Stardust_Speedway_Present_Call8B
	smpsCall	Stardust_Speedway_Present_Call8C
	smpsCall	Stardust_Speedway_Present_Call8B
	smpsCall	Stardust_Speedway_Present_Call8C
	smpsCall	Stardust_Speedway_Present_Call84
	smpsCall	Stardust_Speedway_Present_Call80
	smpsCall	Stardust_Speedway_Present_Call7F
	smpsCall	Stardust_Speedway_Present_Call80
	smpsCall	Stardust_Speedway_Present_Call7F
	smpsCall	Stardust_Speedway_Present_Call80
	smpsCall	Stardust_Speedway_Present_Call7F
	smpsCall	Stardust_Speedway_Present_Call80
	smpsCall	Stardust_Speedway_Present_Call8B
	smpsCall	Stardust_Speedway_Present_Call8C
	smpsCall	Stardust_Speedway_Present_Call8B
	smpsCall	Stardust_Speedway_Present_Call8C
	smpsCall	Stardust_Speedway_Present_Call8B
	smpsCall	Stardust_Speedway_Present_Call8C
	smpsCall	Stardust_Speedway_Present_Call8B
	smpsCall	Stardust_Speedway_Present_Call8D
	smpsCall	Stardust_Speedway_Present_Call83
	smpsJump	Stardust_Speedway_Present_PSG1

; PSG2 Data
Stardust_Speedway_Present_PSG2:
	smpsCall	Stardust_Speedway_Present_Call8E
	smpsCall	Stardust_Speedway_Present_Call8F
	smpsCall	Stardust_Speedway_Present_Call8E
	smpsCall	Stardust_Speedway_Present_Call8F
	smpsCall	Stardust_Speedway_Present_Call8E
	smpsCall	Stardust_Speedway_Present_Call90
	smpsCall	Stardust_Speedway_Present_Call91
	smpsCall	Stardust_Speedway_Present_Call92
	smpsCall	Stardust_Speedway_Present_Call93
	smpsCall	Stardust_Speedway_Present_Call8F
	smpsCall	Stardust_Speedway_Present_Call94
	smpsCall	Stardust_Speedway_Present_Call95
	smpsCall	Stardust_Speedway_Present_Call8E
	smpsCall	Stardust_Speedway_Present_Call8F
	smpsCall	Stardust_Speedway_Present_Call8E
	smpsCall	Stardust_Speedway_Present_Call8F
	smpsCall	Stardust_Speedway_Present_Call8E
	smpsCall	Stardust_Speedway_Present_Call8F
	smpsCall	Stardust_Speedway_Present_Call8E
	smpsCall	Stardust_Speedway_Present_Call8F
	dc.b		nRst,	$06
	smpsAlterVol	$03
	smpsCall	Stardust_Speedway_Present_Call87
	smpsCall	Stardust_Speedway_Present_Call88
	smpsCall	Stardust_Speedway_Present_Call89
	smpsCall	Stardust_Speedway_Present_Call96
	smpsAlterVol	$FD
	smpsCall	Stardust_Speedway_Present_Call93
	smpsCall	Stardust_Speedway_Present_Call8F
	smpsCall	Stardust_Speedway_Present_Call8E
	smpsCall	Stardust_Speedway_Present_Call97
	smpsCall	Stardust_Speedway_Present_Call8E
	smpsCall	Stardust_Speedway_Present_Call8F
	smpsCall	Stardust_Speedway_Present_Call8E
	smpsCall	Stardust_Speedway_Present_Call90
	smpsCall	Stardust_Speedway_Present_Call98
	smpsCall	Stardust_Speedway_Present_Call99
	smpsCall	Stardust_Speedway_Present_Call98
	smpsCall	Stardust_Speedway_Present_Call99
	smpsCall	Stardust_Speedway_Present_Call98
	smpsCall	Stardust_Speedway_Present_Call99
	smpsCall	Stardust_Speedway_Present_Call98
	smpsCall	Stardust_Speedway_Present_Call99
	smpsCall	Stardust_Speedway_Present_Call93
	smpsCall	Stardust_Speedway_Present_Call8F
	smpsCall	Stardust_Speedway_Present_Call8E
	smpsCall	Stardust_Speedway_Present_Call8F
	smpsCall	Stardust_Speedway_Present_Call8E
	smpsCall	Stardust_Speedway_Present_Call8F
	smpsCall	Stardust_Speedway_Present_Call8E
	smpsCall	Stardust_Speedway_Present_Call8F
	smpsCall	Stardust_Speedway_Present_Call98
	smpsCall	Stardust_Speedway_Present_Call99
	smpsCall	Stardust_Speedway_Present_Call98
	smpsCall	Stardust_Speedway_Present_Call99
	smpsCall	Stardust_Speedway_Present_Call98
	smpsCall	Stardust_Speedway_Present_Call99
	smpsCall	Stardust_Speedway_Present_Call98
	smpsCall	Stardust_Speedway_Present_Call9A
	smpsCall	Stardust_Speedway_Present_Call92
	smpsJump	Stardust_Speedway_Present_PSG2

; PSG3 Data
Stardust_Speedway_Present_PSG3:
	smpsPSGform	$E7
	smpsCall	Stardust_Speedway_Present_Call9B
	smpsCall	Stardust_Speedway_Present_Call9B
	smpsCall	Stardust_Speedway_Present_Call9B
	smpsCall	Stardust_Speedway_Present_Call9B
	smpsCall	Stardust_Speedway_Present_Call9B
	smpsCall	Stardust_Speedway_Present_Call9B
	smpsCall	Stardust_Speedway_Present_Call9C
	smpsCall	Stardust_Speedway_Present_Call9D
	smpsCall	Stardust_Speedway_Present_Call9B
	smpsCall	Stardust_Speedway_Present_Call9B
	smpsCall	Stardust_Speedway_Present_Call9B
	smpsCall	Stardust_Speedway_Present_Call9B
	smpsCall	Stardust_Speedway_Present_Call9B
	smpsCall	Stardust_Speedway_Present_Call9B
	smpsCall	Stardust_Speedway_Present_Call9B
	smpsCall	Stardust_Speedway_Present_Call9B
	smpsCall	Stardust_Speedway_Present_Call9B
	smpsCall	Stardust_Speedway_Present_Call9B
	smpsCall	Stardust_Speedway_Present_Call9B
	smpsCall	Stardust_Speedway_Present_Call9B
	smpsCall	Stardust_Speedway_Present_Call9C
	smpsCall	Stardust_Speedway_Present_Call9C
	smpsCall	Stardust_Speedway_Present_Call9C
	smpsCall	Stardust_Speedway_Present_Call9D
	smpsCall	Stardust_Speedway_Present_Call9B
	smpsCall	Stardust_Speedway_Present_Call9B
	smpsCall	Stardust_Speedway_Present_Call9B
	smpsCall	Stardust_Speedway_Present_Call9B
	smpsCall	Stardust_Speedway_Present_Call9B
	smpsCall	Stardust_Speedway_Present_Call9B
	smpsCall	Stardust_Speedway_Present_Call9B
	smpsCall	Stardust_Speedway_Present_Call9B
	smpsCall	Stardust_Speedway_Present_Call9B
	smpsCall	Stardust_Speedway_Present_Call9B
	smpsCall	Stardust_Speedway_Present_Call9B
	smpsCall	Stardust_Speedway_Present_Call9B
	smpsCall	Stardust_Speedway_Present_Call9B
	smpsCall	Stardust_Speedway_Present_Call9B
	smpsCall	Stardust_Speedway_Present_Call9B
	smpsCall	Stardust_Speedway_Present_Call9B
	smpsCall	Stardust_Speedway_Present_Call9B
	smpsCall	Stardust_Speedway_Present_Call9B
	smpsCall	Stardust_Speedway_Present_Call9B
	smpsCall	Stardust_Speedway_Present_Call9E
	smpsCall	Stardust_Speedway_Present_Call9B
	smpsCall	Stardust_Speedway_Present_Call9B
	smpsCall	Stardust_Speedway_Present_Call9B
	smpsCall	Stardust_Speedway_Present_Call9E
	smpsCall	Stardust_Speedway_Present_Call9B
	smpsCall	Stardust_Speedway_Present_Call9B
	smpsCall	Stardust_Speedway_Present_Call9B
	smpsCall	Stardust_Speedway_Present_Call9B
	smpsCall	Stardust_Speedway_Present_Call9B
	smpsCall	Stardust_Speedway_Present_Call9B
	smpsCall	Stardust_Speedway_Present_Call9B
	smpsCall	Stardust_Speedway_Present_Call9B
	smpsCall	Stardust_Speedway_Present_Call9B
	smpsJump	Stardust_Speedway_Present_PSG3

; DAC Data
Stardust_Speedway_Present_DAC:
	smpsCall	Stardust_Speedway_Present_Call9F
	smpsCall	Stardust_Speedway_Present_Call9F
	smpsCall	Stardust_Speedway_Present_Call9F
	smpsCall	Stardust_Speedway_Present_Call9F
	smpsCall	Stardust_Speedway_Present_Call9F
	smpsCall	Stardust_Speedway_Present_Call9F
	smpsCall	Stardust_Speedway_Present_CallA0
	smpsCall	Stardust_Speedway_Present_CallA1
	smpsCall	Stardust_Speedway_Present_Call9F
	smpsCall	Stardust_Speedway_Present_Call9F
	smpsCall	Stardust_Speedway_Present_Call9F
	smpsCall	Stardust_Speedway_Present_Call9F
	smpsCall	Stardust_Speedway_Present_Call9F
	smpsCall	Stardust_Speedway_Present_Call9F
	smpsCall	Stardust_Speedway_Present_Call9F
	smpsCall	Stardust_Speedway_Present_Call9F
	smpsCall	Stardust_Speedway_Present_Call9F
	smpsCall	Stardust_Speedway_Present_Call9F
	smpsCall	Stardust_Speedway_Present_Call9F
	smpsCall	Stardust_Speedway_Present_Call9F
	smpsCall	Stardust_Speedway_Present_CallA0
	smpsCall	Stardust_Speedway_Present_CallA0
	smpsCall	Stardust_Speedway_Present_CallA0
	smpsCall	Stardust_Speedway_Present_CallA2
	smpsCall	Stardust_Speedway_Present_Call9F
	smpsCall	Stardust_Speedway_Present_Call9F
	smpsCall	Stardust_Speedway_Present_Call9F
	smpsCall	Stardust_Speedway_Present_CallA3
	smpsCall	Stardust_Speedway_Present_Call9F
	smpsCall	Stardust_Speedway_Present_Call9F
	smpsCall	Stardust_Speedway_Present_CallA4
	smpsCall	Stardust_Speedway_Present_CallA3
	smpsCall	Stardust_Speedway_Present_Call9F
	smpsCall	Stardust_Speedway_Present_CallA5
	smpsCall	Stardust_Speedway_Present_Call9F
	smpsCall	Stardust_Speedway_Present_CallA3
	smpsCall	Stardust_Speedway_Present_Call9F
	smpsCall	Stardust_Speedway_Present_Call9F
	smpsCall	Stardust_Speedway_Present_Call9F
	smpsCall	Stardust_Speedway_Present_Call9F
	smpsCall	Stardust_Speedway_Present_Call9F
	smpsCall	Stardust_Speedway_Present_Call9F
	smpsCall	Stardust_Speedway_Present_Call9F
	smpsCall	Stardust_Speedway_Present_CallA6
	smpsCall	Stardust_Speedway_Present_Call9F
	smpsCall	Stardust_Speedway_Present_Call9F
	smpsCall	Stardust_Speedway_Present_CallA4
	smpsCall	Stardust_Speedway_Present_CallA6
	smpsCall	Stardust_Speedway_Present_Call9F
	smpsCall	Stardust_Speedway_Present_Call9F
	smpsCall	Stardust_Speedway_Present_Call9F
	smpsCall	Stardust_Speedway_Present_CallA3
	smpsCall	Stardust_Speedway_Present_Call9F
	smpsCall	Stardust_Speedway_Present_Call9F
	smpsCall	Stardust_Speedway_Present_Call9F
	smpsCall	Stardust_Speedway_Present_CallA7
	smpsCall	Stardust_Speedway_Present_CallA8
	smpsJump	Stardust_Speedway_Present_DAC

Stardust_Speedway_Present_Call01:
	smpsFMvoice	$00
	dc.b		nA1,	$0C,	nRst,	nA1,	$10,	nRst,	$04,	nA1
	dc.b		nA1,	$0C,	nB1,	nC2,	nG1
	smpsReturn

Stardust_Speedway_Present_Call02:
	dc.b		nD1,	$0C,	nRst,	nD1,	$10,	nRst,	$04,	nD1
	dc.b		nD1,	$0C,	nE1,	nFs1,	nG1
	smpsReturn

Stardust_Speedway_Present_Call03:
	dc.b		nA1,	$0C,	nRst,	nA1,	$10,	nRst,	$04,	nA1
	dc.b		nA1,	$0C,	nB1,	nC2,	nG1
	smpsReturn

Stardust_Speedway_Present_Call04:
	smpsCall	Stardust_Speedway_Present_CallA9
	smpsLoop	$00,	$02,	Stardust_Speedway_Present_Call04
	smpsReturn

Stardust_Speedway_Present_CallA9:
	smpsFMvoice	$08
	dc.b		nA4,	$01,	nRst,	$05,	nA4,	$06,	nA4,	$01
	dc.b		nRst,	$05,	nA4,	$06,	nA4,	$01,	nRst,	$05
	dc.b		nA4,	$01,	nRst,	$05,	nA4,	$01,	nRst,	$05
	dc.b		nA4,	$06
	smpsReturn

Stardust_Speedway_Present_Call05:
	dc.b		nA4,	$01,	nRst,	$05,	nRst,	$5A
	smpsReturn

Stardust_Speedway_Present_Call06:
	smpsFMvoice	$00
	dc.b		nA1,	$08,	nA2,	$04,	nA1,	$08,	nRst,	$04
	dc.b		nB1,	$06,	nRst,	nB1,	$0C,	nC2,	$06,	nRst
	dc.b		nC2,	$0C,	nE2,	$04,	nRst,	$08,	nE2,	$0C
	smpsReturn

Stardust_Speedway_Present_Call07:
	dc.b		nD1,	$06,	nRst,	nD1,	$0C,	nE1,	$06,	nRst
	dc.b		nE1,	$0C,	nFs1,	$06,	nRst,	nFs1,	$0C,	nG1
	dc.b		nG1
	smpsReturn

Stardust_Speedway_Present_Call08:
	dc.b		nD1,	$06,	nRst,	nD1,	$08,	nRst,	$04,	nD1
	dc.b		$06,	nRst,	nD1,	$0C,	nE1,	$06,	nRst,	nE1
	dc.b		$08,	nRst,	$04,	nE1,	$08,	nE2,	$04,	nG1
	dc.b		$08,	nE1,	$04
	smpsReturn

Stardust_Speedway_Present_Call09:
	dc.b		nA1,	$06,	nRst,	nA1,	$0C,	nB1,	$04,	nRst
	dc.b		$08,	nB1,	$0C,	nC2,	$06,	nRst,	nC2,	$0C
	dc.b		$08,	nA1,	$04,	nEb1,	$0C
	smpsReturn

Stardust_Speedway_Present_Call0A:
	dc.b		nF1,	$32,	nRst,	$2E
	smpsReturn

Stardust_Speedway_Present_Call0C:
	smpsFMvoice	$01
	dc.b		nBb6,	$02,	nB6,	$2E,	nRst,	$08,	nA6,	$04
	dc.b		nB6,	$08,	nA6,	$04,	nE6,	$08,	nG5,	$04
	dc.b		nB5,	$08,	nRst,	$04
	smpsReturn

Stardust_Speedway_Present_Call0D:
	dc.b		smpsNoAttack,	$02,	nC6,	nB5,	$08,	nBb5,	nC6,	$06
	dc.b		nRst,	nB3,	$04,	nC4,	$08,	nRst,	$04,	nC4
	dc.b		$08,	nRst,	$04,	nB3,	$08,	nC5,	$04,	nFs4
	dc.b		nE4,	nA3,	nBb5,	$08,	nAb5,	$04
	smpsReturn

Stardust_Speedway_Present_Call0E:
	dc.b		nA5,	$08,	nC6,	$04,	nD6,	$08,	nE6,	$04
	dc.b		nG6,	nRst,	$08,	nE6,	nD6,	$04,	nD6,	nC6
	dc.b		nA5,	nD6,	$08,	nC6,	$04,	nA5,	$08,	nG5
	dc.b		$04,	nA5,	$08,	nG5,	$04
	smpsReturn

Stardust_Speedway_Present_Call0F:
	dc.b		nA5,	$0C,	nA5,	nA5,	nE5,	$08,	nD5,	$04
	dc.b		nE5,	nRst,	$08,	nG3,	nA3,	$04,	nE4,	$08
	dc.b		nRst,	$04,	nE4,	$08,	nRst,	$04
	smpsReturn

Stardust_Speedway_Present_Call10:
	dc.b		nA4,	$04,	nRst,	nE4,	nRst,	$08,	nG4,	$04
	dc.b		nRst,	$08,	nA4,	$06,	nRst,	$02,	nC5,	$06
	dc.b		nRst,	$02,	nD5,	$06,	nRst,	$02,	nE5,	$08
	dc.b		nG5,	$06,	nRst,	$0A,	nA5,	$06,	nRst,	$02
	dc.b		nG5,	$06,	nRst,	$02
	smpsReturn

Stardust_Speedway_Present_Call11:
	dc.b		nA5,	$04,	nBb5,	nB5,	$0C,	nRst,	$04,	nA5
	dc.b		nBb5,	nB5,	$0C,	nRst,	$04,	nA5,	$08,	nG5
	dc.b		$04,	nE5,	$08,	nEb5,	$04,	nD5,	nRst,	nA5
	dc.b		nC5,	$08,	nRst,	$04
	smpsReturn

Stardust_Speedway_Present_Call12:
	dc.b		nA4,	$08,	nRst,	$58
	smpsReturn

Stardust_Speedway_Present_Call13:
	smpsFMvoice	$03
	dc.b		nC6,	$01,	smpsNoAttack,	nCs6,	smpsNoAttack,	nD6,	smpsNoAttack,	nEb6
	dc.b		smpsNoAttack,	nE6,	$0B,	nRst,	$51
	smpsReturn

Stardust_Speedway_Present_Call14:
	smpsFMvoice	$03
	dc.b		nEb5,	$08,	nE5,	$04,	nEb5,	$08,	nE5,	$04
	dc.b		nC5,	$08,	nA4,	$04,	nRst,	$08,	nC5,	$04
	dc.b		nRst,	$20,	nA4,	$04,	nC5,	$08,	nD5,	$04
	smpsReturn

Stardust_Speedway_Present_Call15:
	dc.b		nEb5,	$08,	nE5,	$04,	nA5,	$08,	nE5,	$04
	dc.b		nEb5,	$08,	nD5,	$04,	nC5,	$08,	nA4,	$04
	dc.b		nC5,	$08,	nD5,	$04,	nRst,	$08,	nE5,	$04
	dc.b		nRst,	$08,	nG5,	$04,	nA5,	$08,	nC6,	$04
	smpsReturn

Stardust_Speedway_Present_Call16:
	dc.b		nB2,	$01,	nC3,	nD3,	nE3,	nF3,	nG3,	nA3
	dc.b		nB3,	nC4,	nD4,	nE4,	nF4,	nG4,	nA4,	nB4
	dc.b		nC5,	nD5,	nE5,	nF5,	nG5,	nA5,	nB5,	nC6
	dc.b		nD6,	nE6,	$14,	nRst,	$04,	nD6,	nRst,	$08
	dc.b		nC6,	nA5,	$06,	nRst,	$16
	smpsReturn

Stardust_Speedway_Present_Call17:
	dc.b		smpsNoAttack,	$08
	smpsFMvoice	$01
	dc.b		nFs4,	$04,	nE4,	$08,	nFs4,	$04,	nC4,	$08
	dc.b		nA3,	$04,	$0C,	nC4,	$08,	nRst,	$0C,	nA4
	dc.b		$04,	nA5,	$08,	nRst,	$10
	smpsReturn

Stardust_Speedway_Present_Call18:
	dc.b		nA5,	$08,	nRst,	$04,	nA4,	$08,	nRst,	$04
	dc.b		nA4,	$08,	nG4,	$04,	nA4,	$08,	nRst,	$04
	dc.b		nC5,	$08,	nRst,	$04,	nD5,	$08,	nRst,	$04
	dc.b		nA5,	$06,	nRst,	$02,	nC5,	$04,	nA4,	$08
	dc.b		nC5,	$04
	smpsReturn

Stardust_Speedway_Present_Call19:
	dc.b		smpsNoAttack,	$04,	nRst,	nA4,	nFs4,	$08,	nC5,	$04
	dc.b		nD5,	$02,	nEb5,	$06,	nD5,	$04,	nC5,	$0C
	dc.b		nD5,	$08,	nRst,	$04,	nA5,	$08,	nRst,	$04
	dc.b		nFs4,	$08,	nFs5,	$04,	nG5,	$08,	nA5,	$04
	smpsReturn

Stardust_Speedway_Present_Call1A:
	dc.b		nRst,	$08,	nC6,	$04,	nA5,	$08,	$04,	nD6
	dc.b		$08,	$04,	nC6,	$08,	nD6,	$06,	nRst,	nG6
	dc.b		$04,	$08,	nG3,	$04,	nA3,	$08,	nRst,	$04
	dc.b		nD4,	$08,	nA5,	$04
	smpsReturn

Stardust_Speedway_Present_Call1B:
	dc.b		nA5,	$08,	nC5,	$04,	nA4,	$08,	nG4,	$04
	dc.b		nEb4,	$08,	nD4,	$04,	nC4,	$08,	nA3,	$04
	dc.b		$08,	nRst,	$28
	smpsReturn

Stardust_Speedway_Present_Call1C:
	dc.b		smpsNoAttack,	$60
	smpsReturn

Stardust_Speedway_Present_Call1D:
	smpsFMvoice	$06
	dc.b		nBb4,	$06,	$03,	nRst,	$09,	nA4,	$06,	nRst
	dc.b		$0C,	nEb4,	$06,	nG4,	$03,	nRst,	$0F,	nF4
	dc.b		$06,	nRst,	nEb4,	$04,	nRst,	$14
	smpsReturn

Stardust_Speedway_Present_Call1E:
	dc.b		nEb5,	$06,	nEb5,	nRst,	nD5,	$03,	nRst,	$1B
	dc.b		nD5,	$09,	nRst,	$0F,	nEb5,	$09,	nRst,	$0F
	smpsReturn

Stardust_Speedway_Present_Call1F:
	dc.b		nBb4,	$06,	$03,	nRst,	$09,	nA4,	$06,	nRst
	dc.b		$0C,	nEb4,	$06,	nG4,	$03,	nRst,	$0F,	nF4
	dc.b		$06,	nRst,	nEb4,	$03,	nE4,	$0C,	nRst,	$09
	smpsReturn

Stardust_Speedway_Present_Call20:
	smpsFMvoice	$03
	dc.b		nC6,	$01,	smpsNoAttack,	nCs6,	smpsNoAttack,	nD6,	smpsNoAttack,	nEb6
	dc.b		smpsNoAttack,	nE6,	$0B,	nRst,	$39,	nE2,	$01,	nF2
	dc.b		nG2,	nA2,	nB2,	nC3,	nD3,	nE3,	nF3,	nG3
	dc.b		nA3,	nB3,	nC4,	nD4,	nE4,	nF4,	nG4,	nA4
	dc.b		nB4,	nC5,	nD5,	nE5,	nF5,	nG5
	smpsReturn

Stardust_Speedway_Present_Call21:
	dc.b		nA5,	$08,	nRst,	$10,	nG5,	$08,	nRst,	$10
	dc.b		nE5,	$08,	nRst,	$10,	nEb5,	$08,	nRst,	$10
	smpsReturn

Stardust_Speedway_Present_Call22:
	dc.b		nD5,	$08,	nC5,	$04,	nD5,	$08,	nC5,	$06
	dc.b		nRst,	$2E,	nG4,	$08,	nA4,	$04,	nG4,	$08
	dc.b		nA4,	$04
	smpsReturn

Stardust_Speedway_Present_Call23:
	dc.b		nC5,	$08,	nA4,	$04,	nG4,	$08,	nA4,	$06
	dc.b		nRst,	$46
	smpsReturn

Stardust_Speedway_Present_Call24:
	dc.b		nEb4,	$08,	nRst,	$10,	nD4,	$08,	nRst,	$10
	dc.b		nC4,	$08,	nD4,	$04,	nC4,	$08,	nA3,	$06
	dc.b		nRst,	$0A,	nC4,	$01,	nD4,	nE4,	nF4,	nG4
	dc.b		nA4,	nB4,	nC4,	nD4,	nE5,	nF5,	nG5
	smpsReturn

Stardust_Speedway_Present_Call25:
	dc.b		nEb4,	$08,	nRst,	$10,	nD4,	$08,	nRst,	$10
	dc.b		nC4,	$08,	nD4,	$04,	nC4,	$08,	nA3,	$06
	dc.b		nRst,	$16
	smpsReturn

Stardust_Speedway_Present_Call26:
	dc.b		smpsNoAttack,	$30
	smpsFMvoice	$03
	dc.b		nG4,	$08,	nA4,	$04,	nG4,	$08,	nA4,	$04
	dc.b		nC5,	$08,	nA4,	$04,	nG4,	$08,	nA4,	$04
	smpsReturn

Stardust_Speedway_Present_Call27:
	dc.b		nRst,	$60
	smpsReturn

Stardust_Speedway_Present_Call28:
	dc.b		smpsNoAttack,	$0C
	smpsFMvoice	$03
	dc.b		nC6,	$04,	nRst,	$08,	nA5,	$10,	nRst,	$08
	dc.b		nEb5,	nD5,	$04,	nC5,	$08,	nRst,	$04,	nD5
	dc.b		$08,	nRst,	$04,	nC5,	$08,	nA4,	$04
	smpsReturn

Stardust_Speedway_Present_Call29:
	dc.b		nRst,	$08,	nC5,	$04,	nD5,	$08,	nE4,	$04
	dc.b		nG4,	$08,	nA5,	$04,	nD6,	$06,	nRst,	$36
	smpsReturn

Stardust_Speedway_Present_Call2A:
	dc.b		smpsNoAttack,	$30,	nG4,	$08,	nA4,	$04,	nC5,	$08
	dc.b		nD5,	$04,	nE5,	$08,	nG5,	$04,	nA5,	$08
	dc.b		nC6,	$04
	smpsReturn

Stardust_Speedway_Present_Call2B:
	dc.b		smpsNoAttack,	$48
	smpsFMvoice	$03
	dc.b		nE2,	$01,	nF2,	nG2,	nA2,	nB2,	nC3,	nD3
	dc.b		nE3,	nF3,	nG3,	nA3,	nB3,	nC4,	nD4,	nE4
	dc.b		nF4,	nG4,	nA4,	nB4,	nC5,	nD5,	nE5,	nF5
	dc.b		nG5
	smpsReturn

Stardust_Speedway_Present_Call2C:
	dc.b		nEb4,	$08,	nRst,	$10,	nD4,	$08,	nRst,	$10
	dc.b		nC4,	$08,	nD4,	$04,	nC4,	$08,	nA3,	$06
	dc.b		nRst,	$0A,	nC4,	$01,	nD4,	nE4,	nF4,	nG4
	dc.b		nA4,	nB4,	nC5,	nD5,	nE5,	nF5,	nG5
	smpsReturn

Stardust_Speedway_Present_Call2D:
	dc.b		nRst,	$08,	nC5,	$04,	nD5,	$08,	nE5,	$04
	dc.b		nG5,	$08,	nA5,	$04,	nD6,	$06,	nRst,	$36
	smpsReturn

Stardust_Speedway_Present_Call2E:
	smpsFMvoice	$01
	dc.b		nBb5,	$02,	nB5,	$2E,	nRst,	$18,	nC6,	$08
	dc.b		nRst,	$10
	smpsReturn

Stardust_Speedway_Present_Call2F:
	dc.b		smpsNoAttack,	$02,	nA5,	nD6,	$08,	nCs6,	nA5,	$06
	dc.b		nRst,	$0A,	nE4,	$08,	nRst,	$04,	nE4,	$08
	dc.b		nRst,	$04,	nC4,	$08,	nRst,	$0C,	nB5,	$04
	dc.b		nRst,	$0C
	smpsReturn

Stardust_Speedway_Present_Call30:
	dc.b		smpsNoAttack,	$60
	smpsReturn

Stardust_Speedway_Present_Call31:
	smpsFMvoice	$01
	dc.b		nF5,	$02,	nFs5,	$0A,	nF5,	$02,	nFs5,	$0A
	dc.b		nF5,	$02,	nFs5,	$0A,	nRst,	$24,	nC4,	$08
	dc.b		nRst,	$04,	nC4,	$08,	nRst,	$04
	smpsReturn

Stardust_Speedway_Present_Call32:
	smpsFMvoice	$01
	dc.b		nD6,	$14,	nRst,	$04,	nD6,	$14,	nRst,	$24
	dc.b		nD5,	$0C,	nRst,	$04
	smpsReturn

Stardust_Speedway_Present_Call33:
	smpsFMvoice	$03
	dc.b		nC5,	$01,	smpsNoAttack,	nCs5,	smpsNoAttack,	nD5,	smpsNoAttack,	nEb5
	dc.b		smpsNoAttack,	nE5,	$0B,	nRst,	$51
	smpsReturn

Stardust_Speedway_Present_Call34:
	smpsFMvoice	$03
	dc.b		nEb4,	$08,	nE4,	$04,	nEb4,	$08,	nE4,	$04
	dc.b		nC4,	$08,	nA3,	$04,	nRst,	$08,	nC4,	$04
	dc.b		nRst,	$20,	nA3,	$04,	nC4,	$08,	nD4,	$04
	smpsReturn

Stardust_Speedway_Present_Call35:
	dc.b		nEb4,	$08,	nE4,	$04,	nA4,	$08,	nE4,	$04
	dc.b		nEb4,	$08,	nD4,	$04,	nC4,	$08,	nA3,	$04
	dc.b		nC4,	$08,	nD4,	$04,	nRst,	$08,	nE4,	$04
	dc.b		nRst,	$08,	nG4,	$04,	nA4,	$08,	nC5,	$04
	smpsReturn

Stardust_Speedway_Present_Call36:
	dc.b		nB1,	$01,	nC2,	nD2,	nE2,	nF2,	nG2,	nA2
	dc.b		nB2,	nC3,	nD3,	nE3,	nF3,	nG3,	nA3,	nB3
	dc.b		nC4,	nD4,	nE4,	nF4,	nG4,	nA4,	nB4,	nC5
	dc.b		nD5,	nE5,	$14,	nRst,	$04,	nD5,	nRst,	$08
	dc.b		nC5,	nA4,	$06,	nRst,	$16
	smpsReturn

Stardust_Speedway_Present_Call37:
	dc.b		smpsNoAttack,	$08
	smpsFMvoice	$01
	dc.b		nD4,	$04,	nRst,	$08,	nD4,	$04,	nG3,	$08
	dc.b		nRst,	$04,	nD4,	$0C,	nRst,	$30
	smpsReturn

Stardust_Speedway_Present_Call38:
	dc.b		smpsNoAttack,	$48,	nD5,	$02,	nEb5,	$06,	nRst,	$10
	smpsReturn

Stardust_Speedway_Present_Call39:
	dc.b		smpsNoAttack,	$18,	nA5,	$08,	nRst,	$04,	nA5,	$08
	dc.b		nRst,	$04,	nA5,	$08,	nRst,	$04,	nC5,	$08
	dc.b		nRst,	$1C
	smpsReturn

Stardust_Speedway_Present_Call3A:
	dc.b		smpsNoAttack,	$30,	nE6,	$08,	nRst,	$28
	smpsReturn

Stardust_Speedway_Present_Call3B:
	dc.b		nA3,	$08,	nRst,	$58
	smpsReturn

Stardust_Speedway_Present_Call3C:
	smpsFMvoice	$06
	dc.b		nG4,	$06,	$03,	nRst,	$09,	nF4,	$06,	nRst
	dc.b		$0C,	nC4,	$06,	nE4,	$03,	nRst,	$0F,	nC4
	dc.b		$06,	nRst,	$09,	nE4,	$0C,	nRst,	$09
	smpsReturn

Stardust_Speedway_Present_Call3D:
	dc.b		nC5,	$06,	nC5,	nRst,	nBb4,	$03,	nRst,	$1B
	dc.b		nBb4,	$09,	nRst,	$0F,	nB4,	$09,	nRst,	$0F
	smpsReturn

Stardust_Speedway_Present_Call3E:
	dc.b		nE5,	$09,	nRst,	nF4,	$06,	nRst,	$0C,	nC4
	dc.b		$06,	nE4,	$03,	nRst,	$0F,	nC4,	$06,	nRst
	dc.b		$1E
	smpsReturn

Stardust_Speedway_Present_Call3F:
	smpsFMvoice	$03
	dc.b		nC5,	$01,	smpsNoAttack,	nCs5,	smpsNoAttack,	nD5,	smpsNoAttack,	nEb5
	dc.b		smpsNoAttack,	nE5,	$0B,	nRst,	$39,	nE1,	$01,	nF1
	dc.b		nG1,	nA1,	nB1,	nC2,	nD2,	nE2,	nF2,	nG2
	dc.b		nA2,	nB2,	nC3,	nD3,	nE3,	nF3,	nG3,	nA3
	dc.b		nB3,	nC4,	nD4,	nE4,	nF4,	nG4
	smpsReturn

Stardust_Speedway_Present_Call40:
	dc.b		nA4,	$08,	nRst,	$10,	nG4,	$08,	nRst,	$10
	dc.b		nE4,	$08,	nRst,	$10,	nEb4,	$08,	nRst,	$10
	smpsReturn

Stardust_Speedway_Present_Call41:
	dc.b		nD4,	$08,	nC4,	$04,	nD4,	$08,	nC4,	$06
	dc.b		nRst,	$2E,	nG3,	$08,	nA3,	$04,	nG3,	$08
	dc.b		nA3,	$04
	smpsReturn

Stardust_Speedway_Present_Call42:
	dc.b		nC4,	$08,	nA3,	$04,	nG3,	$08,	nA3,	$06
	dc.b		nRst,	$46
	smpsReturn

Stardust_Speedway_Present_Call43:
	dc.b		nEb3,	$08,	nRst,	$10,	nD3,	$08,	nRst,	$10
	dc.b		nC3,	$08,	nD3,	$04,	nC3,	$08,	nA2,	$06
	dc.b		nRst,	$0A,	nC3,	$01,	nD3,	nE3,	nF3,	nG3
	dc.b		nA3,	nB3,	nC5,	nD5,	nE4,	nF4,	nG4
	smpsReturn

Stardust_Speedway_Present_Call44:
	dc.b		nEb3,	$08,	nRst,	$10,	nD3,	$08,	nRst,	$10
	dc.b		nC3,	$08,	nD3,	$04,	nC3,	$08,	nA2,	$06
	dc.b		nRst,	$16
	smpsReturn

Stardust_Speedway_Present_Call45:
	dc.b		smpsNoAttack,	$30
	smpsFMvoice	$03
	dc.b		nG3,	$08,	nA3,	$04,	nG3,	$08,	nA3,	$04
	dc.b		nC4,	$08,	nA3,	$04,	nG3,	$08,	nA3,	$04
	smpsReturn

Stardust_Speedway_Present_Call46:
	dc.b		nRst,	$60
	smpsReturn

Stardust_Speedway_Present_Call47:
	dc.b		smpsNoAttack,	$0C
	smpsFMvoice	$03
	dc.b		nC5,	$04,	nRst,	$08,	nA4,	$10,	nRst,	$08
	dc.b		nEb4,	nD4,	$04,	nC4,	$08,	nRst,	$04,	nD4
	dc.b		$08,	nRst,	$04,	nC4,	$08,	nA3,	$04
	smpsReturn

Stardust_Speedway_Present_Call48:
	dc.b		nRst,	$08,	nC4,	$04,	nD4,	$08,	nE5,	$04
	dc.b		nG5,	$08,	nA4,	$04,	nD5,	$06,	nRst,	$36
	smpsReturn

Stardust_Speedway_Present_Call49:
	dc.b		smpsNoAttack,	$30,	nG3,	$08,	nA3,	$04,	nC4,	$08
	dc.b		nD4,	$04,	nE4,	$08,	nG4,	$04,	nA4,	$08
	dc.b		nC5,	$04
	smpsReturn

Stardust_Speedway_Present_Call4A:
	dc.b		smpsNoAttack,	$48
	smpsFMvoice	$03
	dc.b		nE1,	$01,	nF1,	nG1,	nA1,	nB1,	nC2,	nD2
	dc.b		nE2,	nF2,	nG2,	nA2,	nB2,	nC3,	nD3,	nE3
	dc.b		nF3,	nG3,	nA3,	nB3,	nC4,	nD4,	nE4,	nF4
	dc.b		nG4
	smpsReturn

Stardust_Speedway_Present_Call4B:
	dc.b		nEb3,	$08,	nRst,	$10,	nD3,	$08,	nRst,	$10
	dc.b		nC3,	$08,	nD3,	$04,	nC3,	$08,	nA2,	$06
	dc.b		nRst,	$0A,	nC3,	$01,	nD3,	nE3,	nF3,	nG3
	dc.b		nA3,	nB3,	nC4,	nD4,	nE4,	nF4,	nG4
	smpsReturn

Stardust_Speedway_Present_Call4C:
	dc.b		nRst,	$08,	nC4,	$04,	nD4,	$08,	nE4,	$04
	dc.b		nG4,	$08,	nA4,	$04,	nD5,	$06,	nRst,	$36
	smpsReturn

Stardust_Speedway_Present_Call4D:
	dc.b		nRst,	$0C
	smpsFMvoice	$02
	dc.b		nG5,	$04,	nRst,	$10,	nG5,	$04,	nRst,	$0C
	dc.b		nG5,	$10,	nRst,	$04,	nG5,	$0C,	nRst,	$04
	dc.b		nG5,	$0C
	smpsReturn

Stardust_Speedway_Present_Call4E:
	dc.b		nRst,	$0C,	nE5,	$04,	nRst,	$10,	nE5,	$04
	dc.b		nRst,	$0C,	nE5,	$10,	nRst,	$04,	nE5,	$0C
	dc.b		nRst,	$04,	nE5,	$0C
	smpsReturn

Stardust_Speedway_Present_Call4F:
	dc.b		nRst,	$60
	smpsReturn

Stardust_Speedway_Present_Call50:
	dc.b		smpsNoAttack,	$60
	smpsReturn

Stardust_Speedway_Present_Call51:
	smpsFMvoice	$04
	dc.b		nG3,	$06,	nA3,	$12,	nC4,	$17,	nRst,	$01
	dc.b		nD4,	$06,	nEb4,	nD4,	$0C,	nC4,	$07,	nD4
	dc.b		$11
	smpsReturn

Stardust_Speedway_Present_Call52:
	smpsFMvoice	$05
	dc.b		nA2,	$06,	nRst,	$02,	nA2,	$04,	nA3,	nRst
	dc.b		$08,	nA3,	$06,	nRst,	$02,	nG3,	$04,	nFs3
	dc.b		$06,	nRst,	$02,	nG3,	nAb3,	nA3,	$06,	nRst
	dc.b		nC4,	nRst,	nA3,	nRst,	$02,	nEb3,	$04,	nD3
	dc.b		$06,	nRst,	$02,	nC3,	$04
	smpsReturn

Stardust_Speedway_Present_Call53:
	dc.b		nD2,	$06,	nRst,	$02,	nD2,	$04,	nD3,	nRst
	dc.b		$08,	nEb3,	$04,	nRst,	nD3,	nC3,	$06,	nRst
	dc.b		$02,	nA2,	$04,	nD3,	$06,	nRst,	$02,	nA3
	dc.b		$04,	nFs3,	$06,	nRst,	$02,	nC3,	$04,	nFs3
	dc.b		$06,	nRst,	$02,	nFs3,	$04,	nG3,	$06,	nRst
	dc.b		$02,	nAb3,	$04
	smpsReturn

Stardust_Speedway_Present_Call54:
	dc.b		nA2,	$06,	nRst,	$02,	nA2,	$04,	nA3,	nRst
	dc.b		$08,	nA3,	$06,	nRst,	$02,	nG3,	$04,	nA3
	dc.b		$06,	nRst,	$02,	nG3,	$04,	nC4,	$06,	nRst
	dc.b		$02,	nA3,	$04,	nG3,	$06,	nRst,	$02,	nA3
	dc.b		$04,	nE3,	$06,	nRst,	$02,	nEb3,	$04,	nD3
	dc.b		$06,	nRst,	$02,	nC3,	$04
	smpsReturn

Stardust_Speedway_Present_Call55:
	dc.b		nD2,	$06,	nRst,	$02,	nD2,	$04,	nD3,	nRst
	dc.b		$08,	nD3,	$06,	nRst,	$02,	nD3,	$04,	nC3
	dc.b		$06,	nRst,	$02,	nA2,	$04,	nD3,	$06,	nRst
	dc.b		$02,	nG3,	$04,	nFs3,	$06,	nRst,	$02,	nG3
	dc.b		$04,	nA3,	$06,	nRst,	$02,	nG3,	$04,	nFs3
	dc.b		$06,	nRst,	$02,	nG3,	$04
	smpsReturn

Stardust_Speedway_Present_Call56:
	dc.b		smpsNoAttack,	$06
	smpsFMvoice	$06
	dc.b		nBb4,	nBb4,	$03,	nRst,	$09,	nA4,	$06,	nRst
	dc.b		$0C,	nEb4,	$06,	nG4,	$03,	nRst,	$0F,	nF4
	dc.b		$06,	nRst,	nEb4,	$04,	nRst,	$0E
	smpsReturn

Stardust_Speedway_Present_Call57:
	dc.b		smpsNoAttack,	$06,	nEb5,	nEb5,	nRst,	nD5,	$03,	nRst
	dc.b		$1B,	nD5,	$09,	nRst,	$0F,	nEb5,	$09,	nRst
	smpsReturn

Stardust_Speedway_Present_Call58:
	dc.b		smpsNoAttack,	$06,	nBb4,	nBb4,	$03,	nRst,	$09,	nA4
	dc.b		$06,	nRst,	$0C,	nEb4,	$06,	nG4,	$03,	nRst
	dc.b		$0F,	nF4,	$06,	nRst,	nEb4,	$03,	nE4,	$0C
	dc.b		nRst,	$03
	smpsReturn

Stardust_Speedway_Present_Call59:
	smpsFMvoice	$05
	dc.b		nA2,	$06,	nRst,	$02,	nA2,	$04,	nA3,	nRst
	dc.b		$10,	nG3,	$04,	nA3,	$06,	nRst,	nA3,	nRst
	dc.b		nC4,	nRst,	nA3,	nRst,	$02,	nEb3,	$04,	nD3
	dc.b		$06,	nRst,	$02,	nC3,	$04
	smpsReturn

Stardust_Speedway_Present_Call5A:
	dc.b		nD3,	$06,	nRst,	$02,	nD3,	$04,	nD2,	$06
	dc.b		nRst,	$0E,	nD3,	$04,	nC3,	$06,	nRst,	$02
	dc.b		nG2,	$04,	nD3,	nRst,	$08,	nFs2,	$06,	nRst
	dc.b		$02,	nC3,	$04,	nRst,	$08,	nA2,	$04,	nD3
	dc.b		$06,	nRst,	$02,	nD3,	$04
	smpsReturn

Stardust_Speedway_Present_Call5B:
	dc.b		nA2,	$06,	nRst,	$02,	nA2,	$04,	nA3,	nRst
	dc.b		$08,	nA3,	$06,	nRst,	$02,	nG3,	$04,	nA3
	dc.b		$06,	nRst,	$02,	nG3,	$04,	nC4,	$06,	nRst
	dc.b		$02,	nA3,	$04,	nG3,	$06,	nRst,	$02,	nA3
	dc.b		$04,	$06,	nRst,	$02,	nEb3,	$04,	nD3,	$06
	dc.b		nRst,	$02,	nC3,	$04
	smpsReturn

Stardust_Speedway_Present_Call5C:
	dc.b		nEb3,	$06,	nRst,	$02,	nD2,	$04,	nD3,	$06
	dc.b		nRst,	nD2,	nRst,	$02,	nD3,	$04,	nC3,	$06
	dc.b		nRst,	$02,	nD2,	$04,	nD3,	$06,	nRst,	$02
	dc.b		nD3,	$04,	nC3,	$06,	nRst,	$02,	nFs2,	$04
	dc.b		nC3,	$06,	nRst,	$02,	nD3,	$04,	nG2,	$06
	dc.b		nRst,	$02,	nA2,	$04
	smpsReturn

Stardust_Speedway_Present_Call5D:
	smpsFMvoice	$05
	dc.b		nA2,	$06,	nRst,	$02,	nA2,	$04,	nA3,	nRst
	dc.b		$10,	nG3,	$04,	nA3,	$06,	nRst,	nA3,	nRst
	dc.b		nC4,	nRst,	nA3,	nRst,	$02,	nEb3,	$04,	nD3
	dc.b		$06,	nRst,	$02,	nC3,	$04
	smpsReturn

Stardust_Speedway_Present_Call5E:
	dc.b		nRst,	$18
	smpsFMvoice	$07
	dc.b		nE5,	$0C,	nD5,	nC5,	$14,	nB4,	$10,	nG4
	dc.b		$0C
	smpsReturn

Stardust_Speedway_Present_Call5F:
	dc.b		nG4,	$0C,	nA4,	$04,	nA4,	nA3,	nA4,	$18
	dc.b		nRst,	$30
	smpsReturn

Stardust_Speedway_Present_Call60:
	dc.b		smpsNoAttack,	$18,	nE5,	$0C,	nF5,	nE5,	$14,	nD5
	dc.b		$10,	nC5,	$0C
	smpsReturn

Stardust_Speedway_Present_Call61:
	dc.b		nC5,	$0C,	nB4,	$08,	nA4,	$1C,	nRst,	$30
	smpsReturn

Stardust_Speedway_Present_Call62:
	dc.b		smpsNoAttack,	$18,	nE5,	$0C,	nD5,	nC5,	$14,	nB4
	dc.b		$10,	nG4,	$0C
	smpsReturn

Stardust_Speedway_Present_Call63:
	dc.b		nB3,	$0C,	nC4,	$04,	nC4,	nC4,	nC4,	$18
	dc.b		nRst,	$30
	smpsReturn

Stardust_Speedway_Present_Call64:
	dc.b		nC5,	$2A,	smpsNoAttack,	nB4,	$01,	smpsNoAttack,	nA4,	smpsNoAttack
	dc.b		nG4,	smpsNoAttack,	nF4,	smpsNoAttack,	nE4,	smpsNoAttack,	nD4,	nRst
	dc.b		$30
	smpsReturn

Stardust_Speedway_Present_Call65:
	dc.b		nRst,	$0C
	smpsFMvoice	$02
	dc.b		nE5,	$04,	nRst,	$10,	nE5,	$04,	nRst,	$0C
	dc.b		nE5,	$10,	nRst,	$04,	nE5,	$0C,	nRst,	$04
	dc.b		nE5,	$0C
	smpsReturn

Stardust_Speedway_Present_Call66:
	dc.b		nRst,	$0C,	nC5,	$04,	nRst,	$10,	nC5,	$04
	dc.b		nRst,	$0C,	nC5,	$10,	nRst,	$04,	nC5,	$0C
	dc.b		nRst,	$04,	nC5,	$0C
	smpsReturn

Stardust_Speedway_Present_Call67:
	dc.b		nRst,	$60
	smpsReturn

Stardust_Speedway_Present_Call68:
	dc.b		smpsNoAttack,	$60
	smpsReturn

Stardust_Speedway_Present_Call69:
	smpsFMvoice	$04
	dc.b		nG3,	$06,	nA3,	$12,	nC4,	$17,	nRst,	$01
	dc.b		nD4,	$06,	nEb4,	nD4,	$0C,	nC4,	$07,	nD4
	dc.b		$11
	smpsReturn

Stardust_Speedway_Present_Call6A:
	dc.b		nRst,	$03
	smpsFMvoice	$05
	dc.b		nA2,	$06,	nRst,	$02,	nA2,	$04,	nA3,	nRst
	dc.b		$08,	nA3,	$06,	nRst,	$02,	nG3,	$04,	nFs3
	dc.b		$06,	nRst,	$02,	nG3,	nAb3,	nA3,	$06,	nRst
	dc.b		nC4,	nRst,	nA3,	nRst,	$02,	nEb3,	$04,	nD3
	dc.b		$06,	nRst,	$02,	nC3,	$01
	smpsReturn

Stardust_Speedway_Present_Call6B:
	dc.b		smpsNoAttack,	$03,	nD2,	$06,	nRst,	$02,	nD2,	$04
	dc.b		nD3,	nRst,	$08,	nEb3,	$04,	nRst,	nD3,	nC3
	dc.b		$06,	nRst,	$02,	nA2,	$04,	nD3,	$06,	nRst
	dc.b		$02,	nA3,	$04,	nFs3,	$06,	nRst,	$02,	nC3
	dc.b		$04,	nFs3,	$06,	nRst,	$02,	nFs3,	$04,	nG3
	dc.b		$06,	nRst,	$02,	nAb3,	$01
	smpsReturn

Stardust_Speedway_Present_Call6C:
	dc.b		smpsNoAttack,	$03,	nA2,	$06,	nRst,	$02,	nA2,	$04
	dc.b		nA3,	nRst,	$08,	nA3,	$06,	nRst,	$02,	nG3
	dc.b		$04,	nA3,	$06,	nRst,	$02,	nG3,	$04,	nC4
	dc.b		$06,	nRst,	$02,	nA3,	$04,	nG3,	$06,	nRst
	dc.b		$02,	nA3,	$04,	nE3,	$06,	nRst,	$02,	nEb3
	dc.b		$04,	nD3,	$06,	nRst,	$02,	nC3,	$01
	smpsReturn

Stardust_Speedway_Present_Call6D:
	dc.b		smpsNoAttack,	$03,	nD2,	$06,	nRst,	$02,	nD2,	$04
	dc.b		nD3,	nRst,	$08,	nD3,	$06,	nRst,	$02,	nD3
	dc.b		$04,	nC3,	$06,	nRst,	$02,	nA2,	$04,	nD3
	dc.b		$06,	nRst,	$02,	nG3,	$04,	nFs3,	$06,	nRst
	dc.b		$02,	nG3,	$04,	nA3,	$06,	nRst,	$02,	nG3
	dc.b		$04,	nFs3,	$06,	nRst,	$02,	nG3,	$01
	smpsReturn

Stardust_Speedway_Present_Call6E:
	dc.b		smpsNoAttack,	$03,	nRst,	$5D
	smpsReturn

Stardust_Speedway_Present_Call6F:
	dc.b		smpsNoAttack,	$06
	smpsFMvoice	$06
	dc.b		nG4,	nG4,	$03,	nRst,	$09,	nF4,	$06,	nRst
	dc.b		$0C,	nC4,	$06,	nE4,	$03,	nRst,	$0F,	nC4
	dc.b		$06,	nRst,	$09,	nE4,	$0C,	nRst,	$03
	smpsReturn

Stardust_Speedway_Present_Call70:
	dc.b		smpsNoAttack,	$06,	nC5,	nC5,	nRst,	nBb4,	$03,	nRst
	dc.b		$1B,	nBb4,	$09,	nRst,	$0F,	nB4,	$09,	nRst
	smpsReturn

Stardust_Speedway_Present_Call71:
	dc.b		smpsNoAttack,	$06,	nE5,	$09,	nRst,	nF4,	$06,	nRst
	dc.b		$0C,	nC4,	$06,	nE4,	$03,	nRst,	$0F,	nC4
	dc.b		$06,	nRst,	$18
	smpsReturn

Stardust_Speedway_Present_Call72:
	dc.b		smpsNoAttack,	$03
	smpsFMvoice	$05
	dc.b		nA2,	$06,	nRst,	$02,	nA2,	$04,	nA3,	nRst
	dc.b		$10,	nG3,	$04,	nA3,	$06,	nRst,	nA3,	nRst
	dc.b		nC4,	nRst,	nA3,	nRst,	$02,	nEb3,	$04,	nD3
	dc.b		$06,	nRst,	$02,	nC3,	$01
	smpsReturn

Stardust_Speedway_Present_Call73:
	dc.b		smpsNoAttack,	$03,	nD3,	$06,	nRst,	$02,	nD3,	$04
	dc.b		nD2,	$06,	nRst,	$0E,	nD3,	$04,	nC3,	$06
	dc.b		nRst,	$02,	nG2,	$04,	nD3,	nRst,	$08,	nFs2
	dc.b		$06,	nRst,	$02,	nC3,	$04,	nRst,	$08,	nA2
	dc.b		$04,	nD3,	$06,	nRst,	$02,	nD3,	$01
	smpsReturn

Stardust_Speedway_Present_Call74:
	dc.b		smpsNoAttack,	$03,	nA2,	$06,	nRst,	$02,	nA2,	$04
	dc.b		nA3,	nRst,	$08,	nA3,	$06,	nRst,	$02,	nG3
	dc.b		$04,	nA3,	$06,	nRst,	$02,	nG3,	$04,	nC4
	dc.b		$06,	nRst,	$02,	nA3,	$04,	nG3,	$06,	nRst
	dc.b		$02,	nA3,	$04,	$06,	nRst,	$02,	nEb3,	$04
	dc.b		nD3,	$06,	nRst,	$02,	nC3,	$01
	smpsReturn

Stardust_Speedway_Present_Call75:
	dc.b		smpsNoAttack,	$03,	nEb3,	$06,	nRst,	$02,	nD2,	$04
	dc.b		nD3,	$06,	nRst,	nD2,	nRst,	$02,	nD3,	$04
	dc.b		nC3,	$06,	nRst,	$02,	nD2,	$04,	nD3,	$06
	dc.b		nRst,	$02,	nD3,	$04,	nC3,	$06,	nRst,	$02
	dc.b		nFs2,	$04,	nC3,	$06,	nRst,	$02,	nD3,	$04
	dc.b		nG2,	$06,	nRst,	$02,	nA2,	$01
	smpsReturn

Stardust_Speedway_Present_Call76:
	dc.b		smpsNoAttack,	$03,	nA2,	$06,	nRst,	$02,	nA2,	$04
	dc.b		nA3,	nRst,	$10,	nG3,	$04,	nA3,	$06,	nRst
	dc.b		nA3,	nRst,	nC4,	nRst,	nA3,	nRst,	$02,	nEb3
	dc.b		$04,	nD3,	$06,	nRst,	$02,	nC3,	$01
	smpsReturn

Stardust_Speedway_Present_Call77:
	dc.b		smpsNoAttack,	$03,	nRst,	$15
	smpsAlterVol	$FC
	smpsAlterVol	$EC
	smpsFMvoice	$07
	dc.b		nG4,	$0C,	nF4,	nE4,	$14,	nD4,	$10,	nB3
	dc.b		$0C
	smpsReturn

Stardust_Speedway_Present_Call78:
	dc.b		nB3,	$0C,	nC4,	$04,	nC4,	nC4,	nC4,	$18
	dc.b		nRst,	$30
	smpsReturn

Stardust_Speedway_Present_Call79:
	dc.b		smpsNoAttack,	$18,	nG4,	$0C,	nA4,	nG4,	$14,	nF4
	dc.b		$10,	nE4,	$0C
	smpsReturn

Stardust_Speedway_Present_Call7A:
	dc.b		nE4,	$0C,	nD4,	$08,	nC4,	$1C,	nRst,	$30
	smpsReturn

Stardust_Speedway_Present_Call7B:
	dc.b		smpsNoAttack,	$18,	nG4,	$0C,	nF4,	nE4,	$14,	nD4
	dc.b		$10,	nB3,	$0C
	smpsReturn

Stardust_Speedway_Present_Call7C:
	dc.b		nG4,	$0C,	nA4,	$04,	nA4,	nA3,	nA4,	$18
	dc.b		nRst,	$30
	smpsReturn

Stardust_Speedway_Present_Call7D:
	dc.b		nRst,	$03
	smpsFMvoice	$05
	dc.b		nA2,	$06,	nRst,	$02,	nA2,	$04,	nA3,	nRst
	dc.b		$10,	nG3,	$04,	nA3,	$06,	nRst,	nA3,	nRst
	dc.b		nC4,	nRst,	nA3,	nRst,	$02,	nEb3,	$04,	nD3
	dc.b		$06,	nRst,	$02,	nC3,	$01
	smpsReturn

Stardust_Speedway_Present_Call7E:
	dc.b		nF4,	$2A,	smpsNoAttack,	nE4,	$01,	smpsNoAttack,	nD4,	smpsNoAttack
	dc.b		nC4,	smpsNoAttack,	nB3,	smpsNoAttack,	nA3,	smpsNoAttack,	nG3,	nRst
	dc.b		$30
	smpsReturn

Stardust_Speedway_Present_Call7F:
	dc.b		nRst,	$0C
	smpsPSGvoice	$00
	dc.b		nG4,	$04,	nRst,	$10,	nG4,	$04,	nRst,	$0C
	dc.b		nG4,	$10,	nRst,	$04,	nG4,	$0C,	nRst,	$04
	dc.b		nG4,	$0C
	smpsReturn

Stardust_Speedway_Present_Call80:
	dc.b		nRst,	$0C,	nE4,	$04,	nRst,	$10,	nE4,	$04
	dc.b		nRst,	$0C,	nE4,	$10,	nRst,	$04,	nE4,	$0C
	dc.b		nRst,	$04,	nE4,	$0C
	smpsReturn

Stardust_Speedway_Present_Call81:
	dc.b		nRst,	$0C,	nE4,	$04,	nRst,	$10,	nE4,	$04
	dc.b		nRst,	$0C,	nE4,	$10,	nRst,	$04,	nE4,	$0C
	dc.b		nRst,	$04,	nC4,	$0C
	smpsReturn

Stardust_Speedway_Present_Call82:
	dc.b		nRst,	$60
	smpsReturn

Stardust_Speedway_Present_Call83:
	dc.b		smpsNoAttack,	$60
	smpsReturn

Stardust_Speedway_Present_Call84:
	dc.b		smpsNoAttack,	$0C
	smpsPSGvoice	$00
	dc.b		nG4,	$04,	nRst,	$10,	nG4,	$04,	nRst,	$0C
	dc.b		nG4,	$10,	nRst,	$04,	nG4,	$0C,	nRst,	$04
	dc.b		nG4,	$0C
	smpsReturn

Stardust_Speedway_Present_Call85:
	dc.b		nRst,	$0C,	nE4,	$04,	nRst,	$10,	nE4,	$04
	dc.b		nRst,	$0C,	nG4,	$10,	nRst,	$04,	nG4,	$0C
	dc.b		nRst,	$04,	nG4,	$0C
	smpsReturn

Stardust_Speedway_Present_Call86:
	dc.b		nRst,	$0C,	nE4,	$04,	nRst,	$10,	nE4,	$04
	dc.b		nRst,	$0C,	nC4,	$10,	nRst,	$04,	nC4,	$0C
	dc.b		nRst,	$04,	nE4,	$0C
	smpsReturn

Stardust_Speedway_Present_Call87:
	dc.b		nG5,	$02
	smpsAlterNote	$FF
	dc.b		smpsNoAttack,	nG5
	smpsAlterNote	$FE
	dc.b		smpsNoAttack,	nG5
	smpsAlterNote	$FD
	dc.b		smpsNoAttack,	nG5
	smpsAlterNote	$FC
	dc.b		smpsNoAttack,	nG5
	smpsAlterNote	$FB
	dc.b		smpsNoAttack,	nG5
	smpsAlterNote	$FA
	dc.b		smpsNoAttack,	nG5
	smpsAlterNote	$F9
	dc.b		smpsNoAttack,	nG5
	smpsAlterNote	$F8
	dc.b		smpsNoAttack,	nG5
	smpsAlterNote	$F7
	dc.b		smpsNoAttack,	nG5
	smpsAlterNote	$F6
	dc.b		smpsNoAttack,	nG5
	smpsAlterNote	$F5
	dc.b		smpsNoAttack,	nG5
	smpsAlterNote	$F4
	dc.b		smpsNoAttack,	nG5
	smpsAlterNote	$F3
	dc.b		smpsNoAttack,	nG5
	smpsAlterNote	$F2
	dc.b		smpsNoAttack,	nG5
	smpsAlterNote	$F1
	dc.b		smpsNoAttack,	nG5
	smpsAlterNote	$F0
	dc.b		smpsNoAttack,	nG5,	$28
	smpsAlterNote	$00
	dc.b		$02
	smpsAlterNote	$FF
	dc.b		smpsNoAttack,	nG5
	smpsAlterNote	$FE
	dc.b		smpsNoAttack,	nG5
	smpsAlterNote	$FD
	dc.b		smpsNoAttack,	nG5
	smpsAlterNote	$FC
	dc.b		smpsNoAttack,	nG5
	smpsAlterNote	$FB
	dc.b		smpsNoAttack,	nG5
	smpsAlterNote	$00
	dc.b		nG5
	smpsAlterNote	$FF
	dc.b		smpsNoAttack,	nG5
	smpsAlterNote	$FE
	dc.b		smpsNoAttack,	nG5
	smpsAlterNote	$FD
	dc.b		smpsNoAttack,	nG5
	smpsAlterNote	$FC
	dc.b		smpsNoAttack,	nG5
	smpsAlterNote	$FB
	dc.b		smpsNoAttack,	nG5
	smpsReturn

Stardust_Speedway_Present_Call88:
	smpsAlterNote	$00
	dc.b		nG5,	$02
	smpsAlterNote	$FF
	dc.b		smpsNoAttack,	nG5
	smpsAlterNote	$FE
	dc.b		smpsNoAttack,	nG5
	smpsAlterNote	$FD
	dc.b		smpsNoAttack,	nG5
	smpsAlterNote	$FC
	dc.b		smpsNoAttack,	nG5
	smpsAlterNote	$FB
	dc.b		smpsNoAttack,	nG5
	smpsAlterNote	$FA
	dc.b		smpsNoAttack,	nG5
	smpsAlterNote	$F9
	dc.b		smpsNoAttack,	nG5
	smpsAlterNote	$F8
	dc.b		smpsNoAttack,	nG5
	smpsAlterNote	$F7
	dc.b		smpsNoAttack,	nG5
	smpsAlterNote	$F6
	dc.b		smpsNoAttack,	nG5
	smpsAlterNote	$F5
	dc.b		smpsNoAttack,	nG5
	smpsAlterNote	$F4
	dc.b		smpsNoAttack,	nG5
	smpsAlterNote	$F3
	dc.b		smpsNoAttack,	nG5
	smpsAlterNote	$F2
	dc.b		smpsNoAttack,	nG5
	smpsAlterNote	$F1
	dc.b		smpsNoAttack,	nG5
	smpsAlterNote	$F0
	dc.b		smpsNoAttack,	nG5,	$28
	smpsAlterNote	$00
	dc.b		nAb5,	$02
	smpsAlterNote	$FF
	dc.b		smpsNoAttack,	nAb5
	smpsAlterNote	$FE
	dc.b		smpsNoAttack,	nAb5
	smpsAlterNote	$FD
	dc.b		smpsNoAttack,	nAb5
	smpsAlterNote	$FC
	dc.b		smpsNoAttack,	nAb5
	smpsAlterNote	$FB
	dc.b		smpsNoAttack,	nAb5
	smpsAlterNote	$FA
	dc.b		smpsNoAttack,	nAb5
	smpsAlterNote	$F9
	dc.b		smpsNoAttack,	nAb5
	smpsAlterNote	$F8
	dc.b		smpsNoAttack,	nAb5,	$08
	smpsReturn

Stardust_Speedway_Present_Call89:
	smpsAlterNote	$00
	dc.b		nAb5,	$02
	smpsAlterNote	$FF
	dc.b		smpsNoAttack,	nAb5
	smpsAlterNote	$FE
	dc.b		smpsNoAttack,	nAb5
	smpsAlterNote	$FD
	dc.b		smpsNoAttack,	nAb5
	smpsAlterNote	$FC
	dc.b		smpsNoAttack,	nAb5
	smpsAlterNote	$FB
	dc.b		smpsNoAttack,	nAb5
	smpsAlterNote	$FA
	dc.b		smpsNoAttack,	nAb5
	smpsAlterNote	$F9
	dc.b		smpsNoAttack,	nAb5
	smpsAlterNote	$F8
	dc.b		smpsNoAttack,	nAb5,	$08
	smpsAlterNote	$00
	dc.b		$02
	smpsAlterNote	$FF
	dc.b		smpsNoAttack,	nAb5
	smpsAlterNote	$FE
	dc.b		smpsNoAttack,	nAb5
	smpsAlterNote	$FD
	dc.b		smpsNoAttack,	nAb5
	smpsAlterNote	$FC
	dc.b		smpsNoAttack,	nAb5
	smpsAlterNote	$FB
	dc.b		smpsNoAttack,	nAb5
	smpsAlterNote	$FA
	dc.b		smpsNoAttack,	nAb5
	smpsAlterNote	$F9
	dc.b		smpsNoAttack,	nAb5
	smpsAlterNote	$F8
	dc.b		smpsNoAttack,	nAb5,	$08
	smpsAlterNote	$00
	dc.b		$02
	smpsAlterNote	$FF
	dc.b		smpsNoAttack,	nAb5
	smpsAlterNote	$FE
	dc.b		smpsNoAttack,	nAb5
	smpsAlterNote	$FD
	dc.b		smpsNoAttack,	nAb5
	smpsAlterNote	$FC
	dc.b		smpsNoAttack,	nAb5
	smpsAlterNote	$FB
	dc.b		smpsNoAttack,	nAb5
	smpsAlterNote	$FA
	dc.b		smpsNoAttack,	nAb5
	smpsAlterNote	$F9
	dc.b		smpsNoAttack,	nAb5
	smpsAlterNote	$F8
	dc.b		smpsNoAttack,	nAb5,	$08
	smpsAlterNote	$00
	dc.b		$02
	smpsAlterNote	$FF
	dc.b		smpsNoAttack,	nAb5
	smpsAlterNote	$FE
	dc.b		smpsNoAttack,	nAb5
	smpsAlterNote	$FD
	dc.b		smpsNoAttack,	nAb5
	smpsAlterNote	$FC
	dc.b		smpsNoAttack,	nAb5
	smpsAlterNote	$FB
	dc.b		smpsNoAttack,	nAb5
	smpsAlterNote	$FA
	dc.b		smpsNoAttack,	nAb5
	smpsAlterNote	$F9
	dc.b		smpsNoAttack,	nAb5
	smpsAlterNote	$F8
	dc.b		smpsNoAttack,	nAb5,	$08
	smpsAlterNote	$00
	smpsReturn

Stardust_Speedway_Present_Call8A:
	dc.b		nRst,	$0C,	nC4,	$04,	nRst,	$10,	nE4,	$04
	dc.b		nRst,	$0C,	nE4,	$10,	nRst,	$04,	nE4,	$0C
	dc.b		nRst,	$04,	nC4,	$0C
	smpsReturn

Stardust_Speedway_Present_Call8B:
	smpsPSGvoice	$00
	dc.b		nC4,	$2C,	nRst,	$04,	nD4,	$2C,	nRst,	$04
	smpsReturn

Stardust_Speedway_Present_Call8C:
	dc.b		nE4,	$5C,	nRst,	$04
	smpsReturn

Stardust_Speedway_Present_Call8D:
	dc.b		nE4,	$60
	smpsReturn

Stardust_Speedway_Present_Call8E:
	dc.b		nRst,	$0C
	smpsPSGvoice	$00
	dc.b		nE4,	$04,	nRst,	$10,	nE4,	$04,	nRst,	$0C
	dc.b		nE4,	$10,	nRst,	$04,	nE4,	$0C,	nRst,	$04
	dc.b		nE4,	$0C
	smpsReturn

Stardust_Speedway_Present_Call8F:
	dc.b		nRst,	$0C,	nC4,	$04,	nRst,	$10,	nC4,	$04
	dc.b		nRst,	$0C,	nC4,	$10,	nRst,	$04,	nC4,	$0C
	dc.b		nRst,	$04,	nC4,	$0C
	smpsReturn

Stardust_Speedway_Present_Call90:
	dc.b		nRst,	$0C,	nC4,	$04,	nRst,	$10,	nC4,	$04
	dc.b		nRst,	$0C,	nC4,	$10,	nRst,	$04,	nC4,	$0C
	dc.b		nRst,	$04,	nE4,	$0C
	smpsReturn

Stardust_Speedway_Present_Call91:
	dc.b		nRst,	$60
	smpsReturn

Stardust_Speedway_Present_Call92:
	dc.b		smpsNoAttack,	$60
	smpsReturn

Stardust_Speedway_Present_Call93:
	dc.b		smpsNoAttack,	$0C
	smpsPSGvoice	$00
	dc.b		nE4,	$04,	nRst,	$10,	nE4,	$04,	nRst,	$0C
	dc.b		nE4,	$10,	nRst,	$04,	nE4,	$0C,	nRst,	$04
	dc.b		nE4,	$0C
	smpsReturn

Stardust_Speedway_Present_Call94:
	dc.b		nRst,	$0C,	nG4,	$04,	nRst,	$10,	nG4,	$04
	dc.b		nRst,	$0C,	nE4,	$10,	nRst,	$04,	nE4,	$0C
	dc.b		nRst,	$04,	nE4,	$0C
	smpsReturn

Stardust_Speedway_Present_Call95:
	dc.b		nRst,	$0C,	nC4,	$04,	nRst,	$10,	nC4,	$04
	dc.b		nRst,	$0C,	nE4,	$10,	nRst,	$04,	nE4,	$0C
	dc.b		nRst,	$04,	nC4,	$0C
	smpsReturn
	dc.b		nRst,	$06,	nG5,	$02,	smpsNoAttack,	nG5,	smpsNoAttack,	nG5
	dc.b		smpsNoAttack,	nG5,	smpsNoAttack,	nG5,	smpsNoAttack,	nG5,	smpsNoAttack,	nG5
	dc.b		smpsNoAttack,	nG5,	smpsNoAttack,	nG5,	smpsNoAttack,	nG5,	smpsNoAttack,	nG5
	dc.b		smpsNoAttack,	nG5,	smpsNoAttack,	nG5,	smpsNoAttack,	nG5,	smpsNoAttack,	nG5
	dc.b		smpsNoAttack,	nG5,	smpsNoAttack,	nG5,	$28,	$02,	smpsNoAttack,	nG5
	dc.b		smpsNoAttack,	nG5,	smpsNoAttack,	nG5,	smpsNoAttack,	nG5,	smpsNoAttack,	nG5
	dc.b		nG5,	smpsNoAttack,	nG5,	smpsNoAttack,	nG5
	smpsReturn
	dc.b		smpsNoAttack,	nG5,	$02,	smpsNoAttack,	$04,	$02,	smpsNoAttack,	nG5
	dc.b		smpsNoAttack,	nG5,	smpsNoAttack,	nG5,	smpsNoAttack,	nG5,	smpsNoAttack,	nG5
	dc.b		smpsNoAttack,	nG5,	smpsNoAttack,	nG5,	smpsNoAttack,	nG5,	smpsNoAttack,	nG5
	dc.b		smpsNoAttack,	nG5,	smpsNoAttack,	nG5,	smpsNoAttack,	nG5,	smpsNoAttack,	nG5
	dc.b		smpsNoAttack,	nG5,	smpsNoAttack,	nG5,	smpsNoAttack,	nG5,	$28,	nAb5
	dc.b		$03,	smpsNoAttack,	$02,	smpsNoAttack,	nAb5,	smpsNoAttack,	nAb5,	smpsNoAttack
	dc.b		nAb5,	smpsNoAttack,	nAb5,	smpsNoAttack,	nAb5,	smpsNoAttack,	nAb5,	smpsNoAttack
	dc.b		nAb5,	$01
	smpsReturn
	dc.b		smpsNoAttack,	$06,	nAb5,	$03,	smpsNoAttack,	$02,	smpsNoAttack,	nAb5
	dc.b		smpsNoAttack,	nAb5,	smpsNoAttack,	nAb5,	smpsNoAttack,	nAb5,	smpsNoAttack,	nAb5
	dc.b		smpsNoAttack,	nAb5,	smpsNoAttack,	nAb5,	$07,	$03,	smpsNoAttack,	$02
	dc.b		smpsNoAttack,	nAb5,	smpsNoAttack,	nAb5,	smpsNoAttack,	nAb5,	smpsNoAttack,	nAb5
	dc.b		smpsNoAttack,	nAb5,	smpsNoAttack,	nAb5,	smpsNoAttack,	nAb5,	$07,	$03
	dc.b		smpsNoAttack,	$02,	smpsNoAttack,	nAb5,	smpsNoAttack,	nAb5,	smpsNoAttack,	nAb5
	dc.b		smpsNoAttack,	nAb5,	smpsNoAttack,	nAb5,	smpsNoAttack,	nAb5,	smpsNoAttack,	nAb5
	dc.b		$07,	$03,	smpsNoAttack,	$02,	smpsNoAttack,	nAb5,	smpsNoAttack,	nAb5
	dc.b		smpsNoAttack,	nAb5,	smpsNoAttack,	nAb5,	smpsNoAttack,	nAb5,	smpsNoAttack,	nAb5
	dc.b		smpsNoAttack,	nAb5,	$01
	smpsReturn

Stardust_Speedway_Present_Call96:
	dc.b		nRst,	$5A
	smpsReturn

Stardust_Speedway_Present_Call97:
	dc.b		nRst,	$0C,	nE4,	$04,	nRst,	$10,	nC4,	$04
	dc.b		nRst,	$0C,	nC4,	$10,	nRst,	$04,	nC4,	$0C
	dc.b		nRst,	$04,	nE4,	$0C
	smpsReturn

Stardust_Speedway_Present_Call98:
	smpsPSGvoice	$00
	dc.b		nA3,	$2C,	nRst,	$04,	nB3,	$2C,	nRst,	$04
	smpsReturn

Stardust_Speedway_Present_Call99:
	dc.b		nC4,	$5C,	nRst,	$04
	smpsReturn

Stardust_Speedway_Present_Call9A:
	dc.b		nC4,	$60
	smpsReturn

Stardust_Speedway_Present_Call9B:
	smpsPSGvoice	$02
	dc.b		nCs0,	$08,	$04
	smpsPSGvoice	$01
	dc.b		$0C
	smpsPSGvoice	$02
	dc.b		$08,	$04
	smpsPSGvoice	$01
	dc.b		$0C
	smpsPSGvoice	$02
	dc.b		$08,	$04
	smpsPSGvoice	$01
	dc.b		$0C
	smpsPSGvoice	$02
	dc.b		$08,	$04
	smpsPSGvoice	$01
	dc.b		$0C
	smpsReturn

Stardust_Speedway_Present_Call9C:
	smpsPSGvoice	$02
	dc.b		nCs0,	$06,	nCs0,	nCs0,	nCs0,	nCs0,	nCs0
	smpsPSGvoice	$01
	dc.b		nCs0
	smpsPSGvoice	$02
	dc.b		nCs0,	nCs0,	nCs0,	nCs0,	nCs0,	nCs0,	nCs0,	nCs0
	dc.b		nCs0
	smpsReturn

Stardust_Speedway_Present_Call9D:
	smpsPSGvoice	$02
	dc.b		nCs0,	$06,	nRst,	$5A
	smpsReturn

Stardust_Speedway_Present_Call9E:
	smpsPSGvoice	$02
	dc.b		nCs0,	$08,	$04
	smpsPSGvoice	$01
	dc.b		$0C
	smpsPSGvoice	$02
	dc.b		$08,	$04
	smpsPSGvoice	$01
	dc.b		$08
	smpsPSGvoice	$02
	dc.b		$04,	$08,	$04
	smpsPSGvoice	$01
	dc.b		$0C
	smpsPSGvoice	$02
	dc.b		$08,	$04
	smpsPSGvoice	$01
	dc.b		$0C
	smpsReturn

Stardust_Speedway_Present_Call9F:
	dc.b		dModLooseKick,	$18,	dSAVSnare2,	dModLooseKick,	$08,	dSAVSnare2,	$0C,	dModLooseKick
	dc.b		$04,	dSAVSnare2,	$0C,	dModLooseKick,	$08,	dSAVSnare2,	$04
	smpsReturn

Stardust_Speedway_Present_CallA0:
	dc.b		dModLooseKick,	$12,	$06,	dSAVSnare2,	$0C,	dModLooseKick,	$18,	$06
	dc.b		dModLooseKick,	dSAVSnare2,	dModLooseKick,	$12
	smpsReturn

Stardust_Speedway_Present_CallA1:
	dc.b		dModLooseKick,	$32,	nRst,	$2E
	smpsReturn

Stardust_Speedway_Present_CallA2:
	dc.b		dModLooseKick,	$60
	smpsReturn

Stardust_Speedway_Present_CallA3:
	dc.b		dModLooseKick,	$18,	dSAVSnare2,	$14,	dSAVSnare2,	$04,	dModLooseKick,	$08
	dc.b		dSAVSnare2,	$0C,	dModLooseKick,	$04,	dSAVSnare2,	$0C,	$08,	dSAVSnare2
	dc.b		$04
	smpsReturn

Stardust_Speedway_Present_CallA4:
	dc.b		dModLooseKick,	$18,	dSAVSnare2,	$14,	dSAVSnare2,	$04,	dModLooseKick,	$08
	dc.b		dSAVSnare2,	$0C,	dModLooseKick,	$04,	dSAVSnare2,	$08,	dSAVSnare2,	$04
	dc.b		dModLooseKick,	$08,	dSAVSnare2,	$04
	smpsReturn

Stardust_Speedway_Present_CallA5:
	dc.b		dModLooseKick,	$18,	dSAVSnare2,	dModLooseKick,	$08,	dSAVSnare2,	$0C,	dModLooseKick
	dc.b		$04,	dSAVSnare2,	$0C,	dModLooseKick,	$08,	dSAVSnare2,	$04
	smpsReturn

Stardust_Speedway_Present_CallA6:
	dc.b		dModLooseKick,	$18,	dSAVSnare2,	dModLooseKick,	$08,	dSAVSnare2,	$0C,	dModLooseKick
	dc.b		$04,	dSAVSnare2,	$0C,	$08,	dSAVSnare2,	$04
	smpsReturn

Stardust_Speedway_Present_CallA7:
	dc.b		nRst,	$60
	smpsReturn

Stardust_Speedway_Present_CallA8:
	dc.b		nRst,	$60
	smpsReturn

Stardust_Speedway_Present_Voices:
	dc.b		$3A,$61,$3C,$14,$31,$9C,$DB,$9C,$DA,$04,$09,$04,$03,$03,$01,$03
	dc.b		$00,$1F,$0F,$0F,$AF,$21,$47,$31,$80;			Voice 00
	dc.b		$1C,$EF,$31,$31,$31,$9F,$DB,$9E,$5E,$0F,$07,$06,$06,$08,$0A,$0B
	dc.b		$00,$8A,$86,$F6,$F7,$28,$12,$2A,$12;			Voice 01
	dc.b		$07,$34,$74,$32,$71,$1F,$1F,$1F,$1F,$0A,$0A,$05,$03,$00,$00,$00
	dc.b		$00,$3F,$3F,$2F,$2F,$8A,$8A,$8A,$8A;			Voice 02
	dc.b		$3A,$01,$07,$01,$01,$8E,$8E,$8D,$53,$0E,$0E,$0E,$03,$00,$00,$00
	dc.b		$00,$1F,$FF,$1F,$0F,$18,$28,$27,$80;			Voice 03
	dc.b		$3A,$31,$32,$31,$31,$50,$10,$0E,$52,$04,$1F,$1F,$1F,$00,$00,$00
	dc.b		$00,$48,$08,$08,$09,$1C,$45,$30,$0C;			Voice 04
	dc.b		$01,$75,$75,$71,$31,$D5,$55,$96,$94,$02,$0B,$05,$0D,$0A,$0A,$0F
	dc.b		$06,$FF,$2F,$3F,$6F,$25,$2B,$0F,$80;			Voice 05
	dc.b		$19,$37,$32,$31,$31,$5F,$5F,$5F,$5F,$0B,$07,$07,$0D,$06,$05,$05
	dc.b		$05,$2F,$5F,$5F,$1F,$2D,$23,$31,$00;			Voice 06
	dc.b		$3A,$61,$0C,$33,$01,$5F,$5F,$5F,$5F,$04,$09,$04,$0A,$00,$01,$03
	dc.b		$04,$17,$17,$17,$57,$25,$2F,$25,$12;			Voice 07
	dc.b		$04,$0A,$2D,$EA,$17,$1F,$1F,$1F,$1F,$1F,$1F,$1A,$1F,$0A,$0D,$0A
	dc.b		$0D,$59,$0A,$2A,$0A,$00,$1D,$0F,$1D;			Voice 08
	even
