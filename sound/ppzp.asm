; =============================================================================================
; Project Name:		Palmtree_Panic_Zone_Present
; Created:		2nd January 2014
; ---------------------------------------------------------------------------------------------
; ASM'd using S1SMPS2ASM version 1.1 by Marc Gordon (AKA Cinossu)
; =============================================================================================

Palmtree_Panic_Zone_Present_Header:
	smpsHeaderVoice	Palmtree_Panic_Zone_Present_Voices
	smpsHeaderChan	$06,	$03
	smpsHeaderTempo	$01,	$05

	smpsHeaderDAC	Palmtree_Panic_Zone_Present_DAC
	smpsHeaderFM	Palmtree_Panic_Zone_Present_FM1,	smpsPitch00,	$0A
	smpsHeaderFM	Palmtree_Panic_Zone_Present_FM2,	smpsPitch00,	$0D
	smpsHeaderFM	Palmtree_Panic_Zone_Present_FM3,	smpsPitch00,	$0C
	smpsHeaderFM	Palmtree_Panic_Zone_Present_FM4,	smpsPitch00,	$0F
	smpsHeaderFM	Palmtree_Panic_Zone_Present_FM5,	smpsPitch00,	$12
	smpsHeaderPSG	Palmtree_Panic_Zone_Present_PSG1,	smpsPitch03lo,	$05,	$00
	smpsHeaderPSG	Palmtree_Panic_Zone_Present_PSG2,	smpsPitch03lo,	$05,	$00
	smpsHeaderPSG	Palmtree_Panic_Zone_Present_PSG3,	smpsPitch03lo,	$03,	$00

; FM1 Data
Palmtree_Panic_Zone_Present_FM1:
	smpsPan		panLeft,	$00
	smpsAlterVol	$FB
	smpsCall	Palmtree_Panic_Zone_Present_Call01
	smpsPan		panCentre,	$00
	smpsAlterVol	$05
Palmtree_Panic_Zone_Present_Jump01:
	smpsCall	Palmtree_Panic_Zone_Present_Call02
	smpsCall	Palmtree_Panic_Zone_Present_Call03
	smpsCall	Palmtree_Panic_Zone_Present_Call04
	smpsCall	Palmtree_Panic_Zone_Present_Call03
	smpsCall	Palmtree_Panic_Zone_Present_Call04
	smpsCall	Palmtree_Panic_Zone_Present_Call03
	smpsCall	Palmtree_Panic_Zone_Present_Call04
	smpsCall	Palmtree_Panic_Zone_Present_Call05
	smpsCall	Palmtree_Panic_Zone_Present_Call04
	smpsCall	Palmtree_Panic_Zone_Present_Call03
	smpsCall	Palmtree_Panic_Zone_Present_Call04
	smpsCall	Palmtree_Panic_Zone_Present_Call03
	smpsCall	Palmtree_Panic_Zone_Present_Call04
	smpsCall	Palmtree_Panic_Zone_Present_Call03
	smpsCall	Palmtree_Panic_Zone_Present_Call04
	smpsCall	Palmtree_Panic_Zone_Present_Call05
	smpsCall	Palmtree_Panic_Zone_Present_Call06
	smpsCall	Palmtree_Panic_Zone_Present_Call07
	smpsCall	Palmtree_Panic_Zone_Present_Call06
	smpsCall	Palmtree_Panic_Zone_Present_Call07
	smpsCall	Palmtree_Panic_Zone_Present_Call04
	smpsCall	Palmtree_Panic_Zone_Present_Call03
	smpsCall	Palmtree_Panic_Zone_Present_Call04
	smpsCall	Palmtree_Panic_Zone_Present_Call05
	smpsAlterVol	$FB
	smpsPan		panLeft,	$00
	smpsCall	Palmtree_Panic_Zone_Present_Call01
	smpsCall	Palmtree_Panic_Zone_Present_Call01
	smpsCall	Palmtree_Panic_Zone_Present_Call01
	smpsCall	Palmtree_Panic_Zone_Present_Call01
	smpsCall	Palmtree_Panic_Zone_Present_Call01
	smpsCall	Palmtree_Panic_Zone_Present_Call01
	smpsCall	Palmtree_Panic_Zone_Present_Call01
	smpsCall	Palmtree_Panic_Zone_Present_Call01
	smpsAlterVol	$05
	smpsPan		panCentre,	$00
	smpsCall	Palmtree_Panic_Zone_Present_Call04
	smpsCall	Palmtree_Panic_Zone_Present_Call03
	smpsCall	Palmtree_Panic_Zone_Present_Call04
	smpsCall	Palmtree_Panic_Zone_Present_Call03
	smpsCall	Palmtree_Panic_Zone_Present_Call04
	smpsCall	Palmtree_Panic_Zone_Present_Call03
	smpsCall	Palmtree_Panic_Zone_Present_Call04
	smpsCall	Palmtree_Panic_Zone_Present_Call05
	smpsCall	Palmtree_Panic_Zone_Present_Call04
	smpsCall	Palmtree_Panic_Zone_Present_Call03
	smpsCall	Palmtree_Panic_Zone_Present_Call04
	smpsCall	Palmtree_Panic_Zone_Present_Call03
	smpsCall	Palmtree_Panic_Zone_Present_Call04
	smpsCall	Palmtree_Panic_Zone_Present_Call03
	smpsCall	Palmtree_Panic_Zone_Present_Call04
	smpsCall	Palmtree_Panic_Zone_Present_Call05
	smpsCall	Palmtree_Panic_Zone_Present_Call06
	smpsCall	Palmtree_Panic_Zone_Present_Call07
	smpsCall	Palmtree_Panic_Zone_Present_Call06
	smpsCall	Palmtree_Panic_Zone_Present_Call07
	smpsCall	Palmtree_Panic_Zone_Present_Call04
	smpsCall	Palmtree_Panic_Zone_Present_Call03
	smpsCall	Palmtree_Panic_Zone_Present_Call04
	smpsCall	Palmtree_Panic_Zone_Present_Call05
	smpsJump	Palmtree_Panic_Zone_Present_Jump01

; FM2 Data
Palmtree_Panic_Zone_Present_FM2:
	smpsModSet	$12,	$01,	$05,	$04
	smpsCall	Palmtree_Panic_Zone_Present_Call08
Palmtree_Panic_Zone_Present_Jump02:
	smpsCall	Palmtree_Panic_Zone_Present_Call08
	smpsCall	Palmtree_Panic_Zone_Present_Call08
	smpsCall	Palmtree_Panic_Zone_Present_Call08
	smpsCall	Palmtree_Panic_Zone_Present_Call08
	smpsCall	Palmtree_Panic_Zone_Present_Call08
	smpsCall	Palmtree_Panic_Zone_Present_Call08
	smpsCall	Palmtree_Panic_Zone_Present_Call08
	smpsCall	Palmtree_Panic_Zone_Present_Call08
	smpsCall	Palmtree_Panic_Zone_Present_Call09
	smpsCall	Palmtree_Panic_Zone_Present_Call0A
	smpsCall	Palmtree_Panic_Zone_Present_Call0B
	smpsCall	Palmtree_Panic_Zone_Present_Call0C
	smpsCall	Palmtree_Panic_Zone_Present_Call0D
	smpsCall	Palmtree_Panic_Zone_Present_Call0E
	smpsCall	Palmtree_Panic_Zone_Present_Call0F
	smpsCall	Palmtree_Panic_Zone_Present_Call10
	smpsCall	Palmtree_Panic_Zone_Present_Call11
	smpsCall	Palmtree_Panic_Zone_Present_Call12
	smpsCall	Palmtree_Panic_Zone_Present_Call13
	smpsCall	Palmtree_Panic_Zone_Present_Call14
	smpsCall	Palmtree_Panic_Zone_Present_Call15
	smpsCall	Palmtree_Panic_Zone_Present_Call16
	smpsCall	Palmtree_Panic_Zone_Present_Call17
	smpsCall	Palmtree_Panic_Zone_Present_Call18
	smpsCall	Palmtree_Panic_Zone_Present_Call08
	smpsCall	Palmtree_Panic_Zone_Present_Call08
	smpsCall	Palmtree_Panic_Zone_Present_Call08
	smpsCall	Palmtree_Panic_Zone_Present_Call08
	smpsCall	Palmtree_Panic_Zone_Present_Call08
	smpsCall	Palmtree_Panic_Zone_Present_Call08
	smpsCall	Palmtree_Panic_Zone_Present_Call08
	smpsAlterVol	$FB
	smpsCall	Palmtree_Panic_Zone_Present_Call19
	smpsCall	Palmtree_Panic_Zone_Present_Call1A
	smpsCall	Palmtree_Panic_Zone_Present_Call1B
	smpsCall	Palmtree_Panic_Zone_Present_Call1C
	smpsCall	Palmtree_Panic_Zone_Present_Call1C
	smpsCall	Palmtree_Panic_Zone_Present_Call1D
	smpsCall	Palmtree_Panic_Zone_Present_Call1E
	smpsCall	Palmtree_Panic_Zone_Present_Call1F
	smpsAlterVol	$05
	smpsCall	Palmtree_Panic_Zone_Present_Call20
	smpsCall	Palmtree_Panic_Zone_Present_Call21
	smpsCall	Palmtree_Panic_Zone_Present_Call22
	smpsCall	Palmtree_Panic_Zone_Present_Call0B
	smpsCall	Palmtree_Panic_Zone_Present_Call0C
	smpsCall	Palmtree_Panic_Zone_Present_Call0D
	smpsCall	Palmtree_Panic_Zone_Present_Call0E
	smpsCall	Palmtree_Panic_Zone_Present_Call0F
	smpsCall	Palmtree_Panic_Zone_Present_Call10
	smpsCall	Palmtree_Panic_Zone_Present_Call23
	smpsCall	Palmtree_Panic_Zone_Present_Call24
	smpsCall	Palmtree_Panic_Zone_Present_Call13
	smpsCall	Palmtree_Panic_Zone_Present_Call25
	smpsCall	Palmtree_Panic_Zone_Present_Call15
	smpsCall	Palmtree_Panic_Zone_Present_Call26
	smpsCall	Palmtree_Panic_Zone_Present_Call17
	smpsCall	Palmtree_Panic_Zone_Present_Call18
	smpsJump	Palmtree_Panic_Zone_Present_Jump02

; FM3 Data
Palmtree_Panic_Zone_Present_FM3:
	smpsCall	Palmtree_Panic_Zone_Present_Call27
Palmtree_Panic_Zone_Present_Jump03:
	smpsCall	Palmtree_Panic_Zone_Present_Call28
	smpsCall	Palmtree_Panic_Zone_Present_Call28
	smpsCall	Palmtree_Panic_Zone_Present_Call28
	smpsCall	Palmtree_Panic_Zone_Present_Call28
	smpsCall	Palmtree_Panic_Zone_Present_Call28
	smpsCall	Palmtree_Panic_Zone_Present_Call28
	smpsCall	Palmtree_Panic_Zone_Present_Call28
	smpsCall	Palmtree_Panic_Zone_Present_Call29
	smpsCall	Palmtree_Panic_Zone_Present_Call28
	smpsCall	Palmtree_Panic_Zone_Present_Call28
	smpsCall	Palmtree_Panic_Zone_Present_Call28
	smpsCall	Palmtree_Panic_Zone_Present_Call28
	smpsCall	Palmtree_Panic_Zone_Present_Call28
	smpsCall	Palmtree_Panic_Zone_Present_Call28
	smpsCall	Palmtree_Panic_Zone_Present_Call28
	smpsCall	Palmtree_Panic_Zone_Present_Call2A
	smpsCall	Palmtree_Panic_Zone_Present_Call2B
	smpsCall	Palmtree_Panic_Zone_Present_Call2B
	smpsCall	Palmtree_Panic_Zone_Present_Call2B
	smpsCall	Palmtree_Panic_Zone_Present_Call2B
	smpsCall	Palmtree_Panic_Zone_Present_Call28
	smpsCall	Palmtree_Panic_Zone_Present_Call28
	smpsCall	Palmtree_Panic_Zone_Present_Call28
	smpsAlterVol	$0A
	smpsCall	Palmtree_Panic_Zone_Present_Call2C
	smpsCall	Palmtree_Panic_Zone_Present_Call2D
	smpsCall	Palmtree_Panic_Zone_Present_Call2E
	smpsCall	Palmtree_Panic_Zone_Present_Call2F
	smpsCall	Palmtree_Panic_Zone_Present_Call2E
	smpsCall	Palmtree_Panic_Zone_Present_Call2F
	smpsCall	Palmtree_Panic_Zone_Present_Call2E
	smpsCall	Palmtree_Panic_Zone_Present_Call2F
	smpsCall	Palmtree_Panic_Zone_Present_Call30
	smpsAlterVol	$F6
	smpsCall	Palmtree_Panic_Zone_Present_Call28
	smpsCall	Palmtree_Panic_Zone_Present_Call28
	smpsCall	Palmtree_Panic_Zone_Present_Call28
	smpsCall	Palmtree_Panic_Zone_Present_Call28
	smpsCall	Palmtree_Panic_Zone_Present_Call28
	smpsCall	Palmtree_Panic_Zone_Present_Call28
	smpsCall	Palmtree_Panic_Zone_Present_Call28
	smpsCall	Palmtree_Panic_Zone_Present_Call31
	smpsCall	Palmtree_Panic_Zone_Present_Call32
	smpsCall	Palmtree_Panic_Zone_Present_Call28
	smpsCall	Palmtree_Panic_Zone_Present_Call28
	smpsCall	Palmtree_Panic_Zone_Present_Call28
	smpsCall	Palmtree_Panic_Zone_Present_Call28
	smpsCall	Palmtree_Panic_Zone_Present_Call28
	smpsCall	Palmtree_Panic_Zone_Present_Call28
	smpsCall	Palmtree_Panic_Zone_Present_Call33
	smpsCall	Palmtree_Panic_Zone_Present_Call2B
	smpsCall	Palmtree_Panic_Zone_Present_Call2B
	smpsCall	Palmtree_Panic_Zone_Present_Call2B
	smpsCall	Palmtree_Panic_Zone_Present_Call2B
	smpsCall	Palmtree_Panic_Zone_Present_Call28
	smpsCall	Palmtree_Panic_Zone_Present_Call28
	smpsCall	Palmtree_Panic_Zone_Present_Call28
	smpsCall	Palmtree_Panic_Zone_Present_Call2C
	smpsJump	Palmtree_Panic_Zone_Present_Jump03

; FM4 Data
Palmtree_Panic_Zone_Present_FM4:
	smpsCall	Palmtree_Panic_Zone_Present_Call34
Palmtree_Panic_Zone_Present_Jump04:
	smpsCall	Palmtree_Panic_Zone_Present_Call35
	smpsCall	Palmtree_Panic_Zone_Present_Call36
	smpsCall	Palmtree_Panic_Zone_Present_Call36
	smpsCall	Palmtree_Panic_Zone_Present_Call36
	smpsCall	Palmtree_Panic_Zone_Present_Call36
	smpsCall	Palmtree_Panic_Zone_Present_Call36
	smpsCall	Palmtree_Panic_Zone_Present_Call36
	smpsCall	Palmtree_Panic_Zone_Present_Call37
	smpsCall	Palmtree_Panic_Zone_Present_Call36
	smpsCall	Palmtree_Panic_Zone_Present_Call36
	smpsCall	Palmtree_Panic_Zone_Present_Call36
	smpsCall	Palmtree_Panic_Zone_Present_Call36
	smpsCall	Palmtree_Panic_Zone_Present_Call36
	smpsCall	Palmtree_Panic_Zone_Present_Call36
	smpsCall	Palmtree_Panic_Zone_Present_Call36
	smpsCall	Palmtree_Panic_Zone_Present_Call38
	smpsCall	Palmtree_Panic_Zone_Present_Call39
	smpsCall	Palmtree_Panic_Zone_Present_Call39
	smpsCall	Palmtree_Panic_Zone_Present_Call39
	smpsCall	Palmtree_Panic_Zone_Present_Call39
	smpsCall	Palmtree_Panic_Zone_Present_Call36
	smpsCall	Palmtree_Panic_Zone_Present_Call36
	smpsCall	Palmtree_Panic_Zone_Present_Call36
	smpsCall	Palmtree_Panic_Zone_Present_Call3A
	smpsCall	Palmtree_Panic_Zone_Present_Call3B
	smpsCall	Palmtree_Panic_Zone_Present_Call34
	smpsCall	Palmtree_Panic_Zone_Present_Call34
	smpsCall	Palmtree_Panic_Zone_Present_Call34
	smpsCall	Palmtree_Panic_Zone_Present_Call34
	smpsCall	Palmtree_Panic_Zone_Present_Call34
	smpsCall	Palmtree_Panic_Zone_Present_Call34
	smpsCall	Palmtree_Panic_Zone_Present_Call34
	smpsCall	Palmtree_Panic_Zone_Present_Call36
	smpsCall	Palmtree_Panic_Zone_Present_Call36
	smpsCall	Palmtree_Panic_Zone_Present_Call36
	smpsCall	Palmtree_Panic_Zone_Present_Call36
	smpsCall	Palmtree_Panic_Zone_Present_Call36
	smpsCall	Palmtree_Panic_Zone_Present_Call36
	smpsCall	Palmtree_Panic_Zone_Present_Call36
	smpsCall	Palmtree_Panic_Zone_Present_Call3C
	smpsCall	Palmtree_Panic_Zone_Present_Call3D
	smpsCall	Palmtree_Panic_Zone_Present_Call36
	smpsCall	Palmtree_Panic_Zone_Present_Call36
	smpsCall	Palmtree_Panic_Zone_Present_Call36
	smpsCall	Palmtree_Panic_Zone_Present_Call36
	smpsCall	Palmtree_Panic_Zone_Present_Call36
	smpsCall	Palmtree_Panic_Zone_Present_Call36
	smpsCall	Palmtree_Panic_Zone_Present_Call3E
	smpsCall	Palmtree_Panic_Zone_Present_Call39
	smpsCall	Palmtree_Panic_Zone_Present_Call39
	smpsCall	Palmtree_Panic_Zone_Present_Call39
	smpsCall	Palmtree_Panic_Zone_Present_Call39
	smpsCall	Palmtree_Panic_Zone_Present_Call36
	smpsCall	Palmtree_Panic_Zone_Present_Call36
	smpsCall	Palmtree_Panic_Zone_Present_Call36
	smpsCall	Palmtree_Panic_Zone_Present_Call3A
	smpsJump	Palmtree_Panic_Zone_Present_Jump04

; FM5 Data
Palmtree_Panic_Zone_Present_FM5:
	smpsCall	Palmtree_Panic_Zone_Present_Call3F
Palmtree_Panic_Zone_Present_Jump05:
	smpsCall	Palmtree_Panic_Zone_Present_Call40
	smpsCall	Palmtree_Panic_Zone_Present_Call40
	smpsCall	Palmtree_Panic_Zone_Present_Call41
	smpsCall	Palmtree_Panic_Zone_Present_Call41
	smpsCall	Palmtree_Panic_Zone_Present_Call40
	smpsCall	Palmtree_Panic_Zone_Present_Call41
	smpsCall	Palmtree_Panic_Zone_Present_Call41
	smpsCall	Palmtree_Panic_Zone_Present_Call42
	smpsCall	Palmtree_Panic_Zone_Present_Call40
	smpsCall	Palmtree_Panic_Zone_Present_Call40
	smpsCall	Palmtree_Panic_Zone_Present_Call41
	smpsCall	Palmtree_Panic_Zone_Present_Call41
	smpsCall	Palmtree_Panic_Zone_Present_Call40
	smpsCall	Palmtree_Panic_Zone_Present_Call41
	smpsCall	Palmtree_Panic_Zone_Present_Call41
	smpsCall	Palmtree_Panic_Zone_Present_Call42
	smpsCall	Palmtree_Panic_Zone_Present_Call43
	smpsCall	Palmtree_Panic_Zone_Present_Call43
	smpsCall	Palmtree_Panic_Zone_Present_Call44
	smpsCall	Palmtree_Panic_Zone_Present_Call44
	smpsCall	Palmtree_Panic_Zone_Present_Call40
	smpsCall	Palmtree_Panic_Zone_Present_Call41
	smpsCall	Palmtree_Panic_Zone_Present_Call41
	smpsCall	Palmtree_Panic_Zone_Present_Call42
	smpsCall	Palmtree_Panic_Zone_Present_Call45
	smpsCall	Palmtree_Panic_Zone_Present_Call3F
	smpsCall	Palmtree_Panic_Zone_Present_Call3F
	smpsCall	Palmtree_Panic_Zone_Present_Call3F
	smpsCall	Palmtree_Panic_Zone_Present_Call3F
	smpsCall	Palmtree_Panic_Zone_Present_Call3F
	smpsCall	Palmtree_Panic_Zone_Present_Call3F
	smpsCall	Palmtree_Panic_Zone_Present_Call3F
	smpsCall	Palmtree_Panic_Zone_Present_Call40
	smpsCall	Palmtree_Panic_Zone_Present_Call40
	smpsCall	Palmtree_Panic_Zone_Present_Call41
	smpsCall	Palmtree_Panic_Zone_Present_Call41
	smpsCall	Palmtree_Panic_Zone_Present_Call40
	smpsCall	Palmtree_Panic_Zone_Present_Call41
	smpsCall	Palmtree_Panic_Zone_Present_Call41
	smpsCall	Palmtree_Panic_Zone_Present_Call42
	smpsCall	Palmtree_Panic_Zone_Present_Call40
	smpsCall	Palmtree_Panic_Zone_Present_Call40
	smpsCall	Palmtree_Panic_Zone_Present_Call41
	smpsCall	Palmtree_Panic_Zone_Present_Call41
	smpsCall	Palmtree_Panic_Zone_Present_Call40
	smpsCall	Palmtree_Panic_Zone_Present_Call41
	smpsCall	Palmtree_Panic_Zone_Present_Call41
	smpsCall	Palmtree_Panic_Zone_Present_Call42
	smpsCall	Palmtree_Panic_Zone_Present_Call43
	smpsCall	Palmtree_Panic_Zone_Present_Call43
	smpsCall	Palmtree_Panic_Zone_Present_Call44
	smpsCall	Palmtree_Panic_Zone_Present_Call44
	smpsCall	Palmtree_Panic_Zone_Present_Call40
	smpsCall	Palmtree_Panic_Zone_Present_Call41
	smpsCall	Palmtree_Panic_Zone_Present_Call41
	smpsCall	Palmtree_Panic_Zone_Present_Call42
	smpsJump	Palmtree_Panic_Zone_Present_Jump05

; PSG1 Data
Palmtree_Panic_Zone_Present_PSG1:
	smpsCall	Palmtree_Panic_Zone_Present_Call46
Palmtree_Panic_Zone_Present_Jump06:
	smpsCall	Palmtree_Panic_Zone_Present_Call47
	smpsCall	Palmtree_Panic_Zone_Present_Call48
	smpsCall	Palmtree_Panic_Zone_Present_Call48
	smpsCall	Palmtree_Panic_Zone_Present_Call48
	smpsCall	Palmtree_Panic_Zone_Present_Call48
	smpsCall	Palmtree_Panic_Zone_Present_Call48
	smpsCall	Palmtree_Panic_Zone_Present_Call48
	smpsCall	Palmtree_Panic_Zone_Present_Call49
	smpsCall	Palmtree_Panic_Zone_Present_Call48
	smpsCall	Palmtree_Panic_Zone_Present_Call48
	smpsCall	Palmtree_Panic_Zone_Present_Call48
	smpsCall	Palmtree_Panic_Zone_Present_Call48
	smpsCall	Palmtree_Panic_Zone_Present_Call48
	smpsCall	Palmtree_Panic_Zone_Present_Call48
	smpsCall	Palmtree_Panic_Zone_Present_Call48
	smpsCall	Palmtree_Panic_Zone_Present_Call49
	smpsCall	Palmtree_Panic_Zone_Present_Call4A
	smpsCall	Palmtree_Panic_Zone_Present_Call4A
	smpsCall	Palmtree_Panic_Zone_Present_Call4A
	smpsCall	Palmtree_Panic_Zone_Present_Call4A
	smpsCall	Palmtree_Panic_Zone_Present_Call48
	smpsCall	Palmtree_Panic_Zone_Present_Call48
	smpsCall	Palmtree_Panic_Zone_Present_Call48
	smpsCall	Palmtree_Panic_Zone_Present_Call49
	smpsCall	Palmtree_Panic_Zone_Present_Call46
	smpsCall	Palmtree_Panic_Zone_Present_Call46
	smpsCall	Palmtree_Panic_Zone_Present_Call46
	smpsCall	Palmtree_Panic_Zone_Present_Call46
	smpsCall	Palmtree_Panic_Zone_Present_Call46
	smpsCall	Palmtree_Panic_Zone_Present_Call46
	smpsCall	Palmtree_Panic_Zone_Present_Call46
	smpsCall	Palmtree_Panic_Zone_Present_Call46
	smpsCall	Palmtree_Panic_Zone_Present_Call48
	smpsCall	Palmtree_Panic_Zone_Present_Call48
	smpsCall	Palmtree_Panic_Zone_Present_Call48
	smpsCall	Palmtree_Panic_Zone_Present_Call48
	smpsCall	Palmtree_Panic_Zone_Present_Call48
	smpsCall	Palmtree_Panic_Zone_Present_Call48
	smpsCall	Palmtree_Panic_Zone_Present_Call48
	smpsCall	Palmtree_Panic_Zone_Present_Call49
	smpsCall	Palmtree_Panic_Zone_Present_Call48
	smpsCall	Palmtree_Panic_Zone_Present_Call48
	smpsCall	Palmtree_Panic_Zone_Present_Call48
	smpsCall	Palmtree_Panic_Zone_Present_Call48
	smpsCall	Palmtree_Panic_Zone_Present_Call48
	smpsCall	Palmtree_Panic_Zone_Present_Call48
	smpsCall	Palmtree_Panic_Zone_Present_Call48
	smpsCall	Palmtree_Panic_Zone_Present_Call49
	smpsCall	Palmtree_Panic_Zone_Present_Call4A
	smpsCall	Palmtree_Panic_Zone_Present_Call4A
	smpsCall	Palmtree_Panic_Zone_Present_Call4A
	smpsCall	Palmtree_Panic_Zone_Present_Call4A
	smpsCall	Palmtree_Panic_Zone_Present_Call48
	smpsCall	Palmtree_Panic_Zone_Present_Call48
	smpsCall	Palmtree_Panic_Zone_Present_Call48
	smpsCall	Palmtree_Panic_Zone_Present_Call49
	smpsJump	Palmtree_Panic_Zone_Present_Jump06

; PSG2 Data
Palmtree_Panic_Zone_Present_PSG2:
	smpsCall	Palmtree_Panic_Zone_Present_Call4B
Palmtree_Panic_Zone_Present_Jump07:
	smpsCall	Palmtree_Panic_Zone_Present_Call4C
	smpsCall	Palmtree_Panic_Zone_Present_Call4D
	smpsCall	Palmtree_Panic_Zone_Present_Call4D
	smpsCall	Palmtree_Panic_Zone_Present_Call4D
	smpsCall	Palmtree_Panic_Zone_Present_Call4D
	smpsCall	Palmtree_Panic_Zone_Present_Call4D
	smpsCall	Palmtree_Panic_Zone_Present_Call4D
	smpsCall	Palmtree_Panic_Zone_Present_Call4E
	smpsCall	Palmtree_Panic_Zone_Present_Call4D
	smpsCall	Palmtree_Panic_Zone_Present_Call4D
	smpsCall	Palmtree_Panic_Zone_Present_Call4D
	smpsCall	Palmtree_Panic_Zone_Present_Call4D
	smpsCall	Palmtree_Panic_Zone_Present_Call4D
	smpsCall	Palmtree_Panic_Zone_Present_Call4D
	smpsCall	Palmtree_Panic_Zone_Present_Call4D
	smpsCall	Palmtree_Panic_Zone_Present_Call4E
	smpsCall	Palmtree_Panic_Zone_Present_Call4F
	smpsCall	Palmtree_Panic_Zone_Present_Call4F
	smpsCall	Palmtree_Panic_Zone_Present_Call4F
	smpsCall	Palmtree_Panic_Zone_Present_Call4F
	smpsCall	Palmtree_Panic_Zone_Present_Call4D
	smpsCall	Palmtree_Panic_Zone_Present_Call4D
	smpsCall	Palmtree_Panic_Zone_Present_Call4D
	smpsCall	Palmtree_Panic_Zone_Present_Call4E
	smpsCall	Palmtree_Panic_Zone_Present_Call4B
	smpsCall	Palmtree_Panic_Zone_Present_Call4B
	smpsCall	Palmtree_Panic_Zone_Present_Call4B
	smpsCall	Palmtree_Panic_Zone_Present_Call4B
	smpsCall	Palmtree_Panic_Zone_Present_Call4B
	smpsCall	Palmtree_Panic_Zone_Present_Call4B
	smpsCall	Palmtree_Panic_Zone_Present_Call4B
	smpsCall	Palmtree_Panic_Zone_Present_Call4B
	smpsCall	Palmtree_Panic_Zone_Present_Call4D
	smpsCall	Palmtree_Panic_Zone_Present_Call4D
	smpsCall	Palmtree_Panic_Zone_Present_Call4D
	smpsCall	Palmtree_Panic_Zone_Present_Call4D
	smpsCall	Palmtree_Panic_Zone_Present_Call4D
	smpsCall	Palmtree_Panic_Zone_Present_Call4D
	smpsCall	Palmtree_Panic_Zone_Present_Call4D
	smpsCall	Palmtree_Panic_Zone_Present_Call4E
	smpsCall	Palmtree_Panic_Zone_Present_Call4D
	smpsCall	Palmtree_Panic_Zone_Present_Call4D
	smpsCall	Palmtree_Panic_Zone_Present_Call4D
	smpsCall	Palmtree_Panic_Zone_Present_Call4D
	smpsCall	Palmtree_Panic_Zone_Present_Call4D
	smpsCall	Palmtree_Panic_Zone_Present_Call4D
	smpsCall	Palmtree_Panic_Zone_Present_Call4D
	smpsCall	Palmtree_Panic_Zone_Present_Call4E
	smpsCall	Palmtree_Panic_Zone_Present_Call4F
	smpsCall	Palmtree_Panic_Zone_Present_Call4F
	smpsCall	Palmtree_Panic_Zone_Present_Call4F
	smpsCall	Palmtree_Panic_Zone_Present_Call4F
	smpsCall	Palmtree_Panic_Zone_Present_Call4D
	smpsCall	Palmtree_Panic_Zone_Present_Call4D
	smpsCall	Palmtree_Panic_Zone_Present_Call4D
	smpsCall	Palmtree_Panic_Zone_Present_Call4E
	smpsJump	Palmtree_Panic_Zone_Present_Jump07

; PSG3 Data
Palmtree_Panic_Zone_Present_PSG3:
	smpsPSGform	$E7
	smpsCall	Palmtree_Panic_Zone_Present_Call50
Palmtree_Panic_Zone_Present_Jump08:
	smpsCall	Palmtree_Panic_Zone_Present_Call51
	smpsCall	Palmtree_Panic_Zone_Present_Call52
	smpsCall	Palmtree_Panic_Zone_Present_Call53
	smpsCall	Palmtree_Panic_Zone_Present_Call54
	smpsCall	Palmtree_Panic_Zone_Present_Call51
	smpsCall	Palmtree_Panic_Zone_Present_Call55
	smpsCall	Palmtree_Panic_Zone_Present_Call56
	smpsCall	Palmtree_Panic_Zone_Present_Call57
	smpsCall	Palmtree_Panic_Zone_Present_Call58
	smpsCall	Palmtree_Panic_Zone_Present_Call55
	smpsCall	Palmtree_Panic_Zone_Present_Call56
	smpsCall	Palmtree_Panic_Zone_Present_Call59
	smpsCall	Palmtree_Panic_Zone_Present_Call51
	smpsCall	Palmtree_Panic_Zone_Present_Call5A
	smpsCall	Palmtree_Panic_Zone_Present_Call5B
	smpsCall	Palmtree_Panic_Zone_Present_Call5C
	smpsCall	Palmtree_Panic_Zone_Present_Call58
	smpsCall	Palmtree_Panic_Zone_Present_Call55
	smpsCall	Palmtree_Panic_Zone_Present_Call5D
	smpsCall	Palmtree_Panic_Zone_Present_Call54
	smpsCall	Palmtree_Panic_Zone_Present_Call58
	smpsCall	Palmtree_Panic_Zone_Present_Call55
	smpsCall	Palmtree_Panic_Zone_Present_Call53
	smpsCall	Palmtree_Panic_Zone_Present_Call5E
	smpsCall	Palmtree_Panic_Zone_Present_Call5F
	smpsCall	Palmtree_Panic_Zone_Present_Call5F
	smpsCall	Palmtree_Panic_Zone_Present_Call60
	smpsCall	Palmtree_Panic_Zone_Present_Call61
	smpsCall	Palmtree_Panic_Zone_Present_Call62
	smpsCall	Palmtree_Panic_Zone_Present_Call63
	smpsCall	Palmtree_Panic_Zone_Present_Call64
	smpsCall	Palmtree_Panic_Zone_Present_Call65
	smpsCall	Palmtree_Panic_Zone_Present_Call66
	smpsCall	Palmtree_Panic_Zone_Present_Call67
	smpsCall	Palmtree_Panic_Zone_Present_Call68
	smpsCall	Palmtree_Panic_Zone_Present_Call69
	smpsCall	Palmtree_Panic_Zone_Present_Call6A
	smpsCall	Palmtree_Panic_Zone_Present_Call6B
	smpsCall	Palmtree_Panic_Zone_Present_Call5D
	smpsCall	Palmtree_Panic_Zone_Present_Call5C
	smpsCall	Palmtree_Panic_Zone_Present_Call6C
	smpsCall	Palmtree_Panic_Zone_Present_Call5A
	smpsCall	Palmtree_Panic_Zone_Present_Call6D
	smpsCall	Palmtree_Panic_Zone_Present_Call6E
	smpsCall	Palmtree_Panic_Zone_Present_Call51
	smpsCall	Palmtree_Panic_Zone_Present_Call52
	smpsCall	Palmtree_Panic_Zone_Present_Call56
	smpsCall	Palmtree_Panic_Zone_Present_Call57
	smpsCall	Palmtree_Panic_Zone_Present_Call66
	smpsCall	Palmtree_Panic_Zone_Present_Call67
	smpsCall	Palmtree_Panic_Zone_Present_Call6F
	smpsCall	Palmtree_Panic_Zone_Present_Call70
	smpsCall	Palmtree_Panic_Zone_Present_Call71
	smpsCall	Palmtree_Panic_Zone_Present_Call5A
	smpsCall	Palmtree_Panic_Zone_Present_Call72
	smpsCall	Palmtree_Panic_Zone_Present_Call5E
	smpsJump	Palmtree_Panic_Zone_Present_Jump08

; DAC Data
Palmtree_Panic_Zone_Present_DAC:
	smpsCall	Palmtree_Panic_Zone_Present_Call73
Palmtree_Panic_Zone_Present_Jump09:
	smpsCall	Palmtree_Panic_Zone_Present_Call74
	smpsCall	Palmtree_Panic_Zone_Present_Call75
	smpsCall	Palmtree_Panic_Zone_Present_Call75
	smpsCall	Palmtree_Panic_Zone_Present_Call76
	smpsCall	Palmtree_Panic_Zone_Present_Call74
	smpsCall	Palmtree_Panic_Zone_Present_Call77
	smpsCall	Palmtree_Panic_Zone_Present_Call77
	smpsCall	Palmtree_Panic_Zone_Present_Call78
	smpsCall	Palmtree_Panic_Zone_Present_Call79
	smpsCall	Palmtree_Panic_Zone_Present_Call77
	smpsCall	Palmtree_Panic_Zone_Present_Call77
	smpsCall	Palmtree_Panic_Zone_Present_Call7A
	smpsCall	Palmtree_Panic_Zone_Present_Call74
	smpsCall	Palmtree_Panic_Zone_Present_Call7B
	smpsCall	Palmtree_Panic_Zone_Present_Call7B
	smpsCall	Palmtree_Panic_Zone_Present_Call7C
	smpsCall	Palmtree_Panic_Zone_Present_Call79
	smpsCall	Palmtree_Panic_Zone_Present_Call77
	smpsCall	Palmtree_Panic_Zone_Present_Call74
	smpsCall	Palmtree_Panic_Zone_Present_Call76
	smpsCall	Palmtree_Panic_Zone_Present_Call77
	smpsCall	Palmtree_Panic_Zone_Present_Call77
	smpsCall	Palmtree_Panic_Zone_Present_Call75
	smpsCall	Palmtree_Panic_Zone_Present_Call7D
	smpsCall	Palmtree_Panic_Zone_Present_Call7E
	smpsCall	Palmtree_Panic_Zone_Present_Call7F
	smpsCall	Palmtree_Panic_Zone_Present_Call80
	smpsCall	Palmtree_Panic_Zone_Present_Call81
	smpsCall	Palmtree_Panic_Zone_Present_Call82
	smpsCall	Palmtree_Panic_Zone_Present_Call83
	smpsCall	Palmtree_Panic_Zone_Present_Call84
	smpsCall	Palmtree_Panic_Zone_Present_Call85
	smpsCall	Palmtree_Panic_Zone_Present_Call86
	smpsCall	Palmtree_Panic_Zone_Present_Call77
	smpsCall	Palmtree_Panic_Zone_Present_Call74
	smpsCall	Palmtree_Panic_Zone_Present_Call87
	smpsCall	Palmtree_Panic_Zone_Present_Call7B
	smpsCall	Palmtree_Panic_Zone_Present_Call74
	smpsCall	Palmtree_Panic_Zone_Present_Call74
	smpsCall	Palmtree_Panic_Zone_Present_Call88
	smpsCall	Palmtree_Panic_Zone_Present_Call89
	smpsCall	Palmtree_Panic_Zone_Present_Call8A
	smpsCall	Palmtree_Panic_Zone_Present_Call8B
	smpsCall	Palmtree_Panic_Zone_Present_Call8C
	smpsCall	Palmtree_Panic_Zone_Present_Call8D
	smpsCall	Palmtree_Panic_Zone_Present_Call8E
	smpsCall	Palmtree_Panic_Zone_Present_Call8F
	smpsCall	Palmtree_Panic_Zone_Present_Call90
	smpsCall	Palmtree_Panic_Zone_Present_Call89
	smpsCall	Palmtree_Panic_Zone_Present_Call8A
	smpsCall	Palmtree_Panic_Zone_Present_Call8B
	smpsCall	Palmtree_Panic_Zone_Present_Call8C
	smpsCall	Palmtree_Panic_Zone_Present_Call8D
	smpsCall	Palmtree_Panic_Zone_Present_Call8E
	smpsCall	Palmtree_Panic_Zone_Present_Call8F
	smpsCall	Palmtree_Panic_Zone_Present_Call7D
	smpsJump	Palmtree_Panic_Zone_Present_Jump09

Palmtree_Panic_Zone_Present_Call01:
	smpsFMvoice	$00
	dc.b		nG4,	$05,	nRst,	$01,	nG4,	nRst,	$05,	nG4
	dc.b		$01,	nRst,	$05,	nG4,	$06,	nG4,	nG4,	$01
	dc.b		nRst,	$05,	nG4,	$01,	nRst,	$05,	nG4,	nRst
	dc.b		$01,	nG4,	$05,	nRst,	$01,	nG4,	nRst,	$05
	dc.b		nG4,	$01,	nRst,	$05,	nG4,	nRst,	$01,	nG4
	dc.b		$05,	nRst,	$01,	nG4,	nRst,	$05,	nG4,	$01
	dc.b		nRst,	$05,	nG4,	nRst,	$01
	smpsReturn

Palmtree_Panic_Zone_Present_Call02:
	smpsFMvoice	$02
	dc.b		nC2,	$12,	nE2,	nG2,	$0C,	nRst,	$06,	nG1
	dc.b		$0C,	$05,	nRst,	$01,	nA1,	$0C,	nB1,	$09
	dc.b		nRst,	$03
	smpsReturn

Palmtree_Panic_Zone_Present_Call03:
	dc.b		nC2,	$12,	nE2,	nG2,	$0C,	nRst,	$06,	nG1
	dc.b		$0C,	$05,	nRst,	$01,	nA1,	$0C,	nG1
	smpsReturn

Palmtree_Panic_Zone_Present_Call04:
	smpsFMvoice	$02
	dc.b		nC2,	$12,	nE2,	nG2,	$0C,	nRst,	$06,	nG1
	dc.b		$0C,	$05,	nRst,	$01,	nA1,	$0C,	nB1,	$09
	dc.b		nRst,	$03
	smpsReturn

Palmtree_Panic_Zone_Present_Call05:
	dc.b		nC2,	$12,	nE2,	nG2,	$0C,	nC2,	$12,	nRst
	dc.b		$1E
	smpsReturn

Palmtree_Panic_Zone_Present_Call06:
	dc.b		nF2,	$12,	nA2,	nC3,	$0C,	nRst,	$06,	nC2
	dc.b		$0C,	$05,	nRst,	$01,	nD2,	$0C,	nE2,	$09
	dc.b		nRst,	$03
	smpsReturn

Palmtree_Panic_Zone_Present_Call07:
	dc.b		nF2,	$12,	nA2,	nC3,	$0C,	nRst,	$06,	nC2
	dc.b		$0C,	$05,	nRst,	$01,	nD2,	$0C,	nC2
	smpsReturn
	dc.b		smpsNoAttack,	$60
	smpsReturn

Palmtree_Panic_Zone_Present_Call08:
	dc.b		smpsNoAttack,	$60
	smpsReturn

Palmtree_Panic_Zone_Present_Call09:
	dc.b		smpsNoAttack,	$0C
	smpsFMvoice	$06
	dc.b		nFs5,	$03,	smpsNoAttack,	nG5,	$51
	smpsReturn

Palmtree_Panic_Zone_Present_Call0A:
	dc.b		smpsNoAttack,	$06,	nF5,	nRst,	nF5,	nRst,	nE5,	nRst
	dc.b		nE5,	nRst,	nC5,	nRst,	nC5,	nRst,	nD5,	nC5
	dc.b		nRst
	smpsReturn

Palmtree_Panic_Zone_Present_Call0B:
	dc.b		nC5,	$06,	nRst,	nG4,	nRst,	nG4,	$2A,	nRst
	dc.b		$0C,	nA4,	$06,	nRst,	nG4
	smpsReturn

Palmtree_Panic_Zone_Present_Call0C:
	dc.b		smpsNoAttack,	$42,	nRst,	$0C,	nD5,	$06,	nE5,	nF5
	smpsReturn

Palmtree_Panic_Zone_Present_Call0D:
	dc.b		nG5,	$4E,	nF5,	$06,	nE5,	nF5
	smpsReturn

Palmtree_Panic_Zone_Present_Call0E:
	dc.b		nE5,	$06,	nC5,	nRst,	nC5,	nRst,	nC5,	nRst
	dc.b		nC5,	nD5,	nRst,	nB4,	nRst,	nB4,	$0C,	nG4
	dc.b		$06,	nRst
	smpsReturn

Palmtree_Panic_Zone_Present_Call0F:
	dc.b		nC5,	$30,	nRst,	$06,	nC5,	nRst,	nC5,	nRst
	dc.b		nC5,	nD5,	nRst
	smpsReturn

Palmtree_Panic_Zone_Present_Call10:
	dc.b		nC5,	$3C,	nRst,	$24
	smpsReturn

Palmtree_Panic_Zone_Present_Call11:
	dc.b		nB5,	$03,	nC6,	$33,	nRst,	$06,	nBb5,	nA5
	dc.b		nRst,	nBb5,	nRst,	nA5
	smpsReturn

Palmtree_Panic_Zone_Present_Call12:
	dc.b		nRst,	$06,	nF5,	nRst,	nF5,	$08,	nRst,	$0A
	dc.b		nG5,	$06,	nF5,	nG5,	$09,	nRst,	$03,	nE5
	dc.b		$06,	nRst,	nC5,	nRst,	nC5,	nRst
	smpsReturn

Palmtree_Panic_Zone_Present_Call13:
	dc.b		nF5,	$30,	nRst,	$06,	nF5,	nRst,	nF5,	nRst
	dc.b		nF5,	nE5,	nRst
	smpsReturn

Palmtree_Panic_Zone_Present_Call14:
	dc.b		nF5,	$42,	nRst,	$0C,	nA5,	$06,	nRst,	nBb5
	dc.b		$05,	nRst,	$01
	smpsReturn

Palmtree_Panic_Zone_Present_Call15:
	dc.b		nFs5,	$03,	smpsNoAttack,	nG5,	$5D
	smpsReturn

Palmtree_Panic_Zone_Present_Call16:
	dc.b		smpsNoAttack,	$36,	nF5,	$06,	nE5,	nF5,	nE5,	nF5
	dc.b		nE5,	nF5
	smpsReturn

Palmtree_Panic_Zone_Present_Call17:
	dc.b		nE5,	$06,	nC5,	nRst,	nC5,	nRst,	nG4,	nRst
	dc.b		nG4,	nRst,	nG4,	nA4,	nRst,	nG4,	nRst,	nB4
	dc.b		nRst
	smpsReturn

Palmtree_Panic_Zone_Present_Call18:
	dc.b		nC5,	$36,	nRst,	$2A
	smpsReturn

Palmtree_Panic_Zone_Present_Call19:
	dc.b		smpsNoAttack,	$36
	smpsFMvoice	$08
	dc.b		nG3,	$05,	nRst,	$01,	nA3,	$05,	nRst,	$01
	dc.b		nB3,	$05,	nRst,	$01,	nC4,	$05,	nRst,	$01
	dc.b		nD4,	$05,	nRst,	$01,	nE4,	$05,	nRst,	$01
	dc.b		nF4,	$05,	nRst,	$01
	smpsReturn

Palmtree_Panic_Zone_Present_Call1A:
	dc.b		nF4,	$05,	smpsNoAttack,	nFs4,	$01,	smpsNoAttack,	nG4,	$0B
	dc.b		nRst,	$01,	nG4,	$1E,	nRst,	$09,	nG4,	$03
	dc.b		smpsNoAttack,	nAb4,	$01,	smpsNoAttack,	nA4,	$05,	nF4,	nRst
	dc.b		$01,	nE4,	$06,	nF4,	nE4,	nD4,	$05,	nRst
	dc.b		$01
	smpsReturn

Palmtree_Panic_Zone_Present_Call1B:
	dc.b		nC4,	$05,	nRst,	$01,	nG3,	$05,	nRst,	$07
	dc.b		nG3,	$14,	smpsNoAttack,	nFs3,	$01,	smpsNoAttack,	nF3,	smpsNoAttack
	dc.b		nE3,	smpsNoAttack,	nEb3,	nRst,	$36
	smpsReturn

Palmtree_Panic_Zone_Present_Call1C:
	dc.b		smpsNoAttack,	$0C,	nG3,	$05,	nRst,	$01,	nC4,	$05
	dc.b		nRst,	$01,	nG3,	$05,	nRst,	$01,	nC4,	$05
	dc.b		nRst,	$01,	nG3,	$05,	nRst,	$01,	nC4,	$05
	dc.b		nRst,	$07,	nB3,	$05,	nRst,	$07,	nB3,	$0C
	dc.b		$05,	nRst,	$01,	nB3,	$05,	nRst,	$01,	nB3
	dc.b		$05,	nRst,	$01
	smpsReturn

Palmtree_Panic_Zone_Present_Call1D:
	dc.b		smpsNoAttack,	$0C,	nC5,	$05,	nRst,	$01,	nC5,	$05
	dc.b		nRst,	$01,	nC5,	$05,	nRst,	$04,	nC5,	$05
	dc.b		nRst,	$04,	nC5,	$05,	nRst,	$07,	nB4,	$05
	dc.b		nRst,	$07,	nB4,	$05,	nRst,	$01,	nC5,	$04
	dc.b		nB4,	nA4,	nG4,	$05,	nRst,	$01,	nA4,	$05
	dc.b		nRst,	$01
	smpsReturn

Palmtree_Panic_Zone_Present_Call1E:
	dc.b		nG4,	$05,	nRst,	$01,	nE4,	$05,	nRst,	$01
	dc.b		nF4,	$06,	nE4,	$05,	nRst,	$01,	nD4,	$05
	dc.b		nRst,	$01,	nE4,	$05,	nRst,	$01,	nD4,	$05
	dc.b		nRst,	$01,	nC4,	$05,	nRst,	$03,	nD4,	$05
	dc.b		nRst,	$01,	nG3,	$05,	nRst,	nG3,	$17,	smpsNoAttack
	dc.b		nFs3,	$01,	smpsNoAttack,	nF3,	smpsNoAttack,	nE3,	smpsNoAttack,	nEb3
	dc.b		nRst,	$03
	smpsReturn

Palmtree_Panic_Zone_Present_Call1F:
	dc.b		smpsNoAttack,	$0C,	nG3,	$03,	nRst,	nA3,	nRst,	nB3
	dc.b		nRst,	$06,	nC4,	$03,	nRst,	$06,	nD4,	$03
	dc.b		nRst,	$09,	nE4,	$05,	nRst,	$07,	nF4,	$05
	dc.b		nRst,	$07,	nG4,	$05,	nRst,	$07,	nF4,	$03
	dc.b		nE4
	smpsReturn

Palmtree_Panic_Zone_Present_Call20:
	dc.b		smpsNoAttack,	$30,	nRst
	smpsReturn

Palmtree_Panic_Zone_Present_Call21:
	dc.b		smpsNoAttack,	$0C
	smpsFMvoice	$06
	dc.b		nFs5,	$03,	smpsNoAttack,	nG5,	$51
	smpsReturn

Palmtree_Panic_Zone_Present_Call22:
	dc.b		smpsNoAttack,	$03,	nRst,	nF5,	$06,	nRst,	nF5,	nRst
	dc.b		nE5,	nRst,	nE5,	nRst,	nC5,	nRst,	nC5,	nRst
	dc.b		nD5,	nC5,	nRst
	smpsReturn

Palmtree_Panic_Zone_Present_Call23:
	dc.b		nB5,	$03,	smpsNoAttack,	nC6,	$33,	nRst,	$06,	nBb5
	dc.b		nA5,	nRst,	nBb5,	nRst,	nA5
	smpsReturn

Palmtree_Panic_Zone_Present_Call24:
	dc.b		nRst,	$06,	nF5,	nRst,	nF5,	$08,	nRst,	$0A
	dc.b		nG5,	$06,	nF5,	nG5,	$08,	nRst,	$04,	nE5
	dc.b		$06,	nRst,	nC5,	nRst,	nC5,	nRst
	smpsReturn

Palmtree_Panic_Zone_Present_Call25:
	dc.b		nF5,	$42,	nRst,	$0C,	nA5,	$07,	nRst,	$05
	dc.b		nBb5,	nRst,	$01
	smpsReturn

Palmtree_Panic_Zone_Present_Call26:
	dc.b		smpsNoAttack,	$35,	nRst,	$01,	nF5,	$06,	nE5,	nF5
	dc.b		nE5,	nF5,	nE5,	nF5
	smpsReturn

Palmtree_Panic_Zone_Present_Call27:
	dc.b		smpsNoAttack,	$60
	smpsReturn

Palmtree_Panic_Zone_Present_Call28:
	dc.b		smpsNoAttack,	$0C
	smpsFMvoice	$04
	dc.b		nC5,	$05,	nRst,	$01,	nC5,	$05,	nRst,	$01
	dc.b		nC5,	$05,	nRst,	$01,	nC5,	$05,	nRst,	$01
	dc.b		nC5,	$05,	nRst,	$01,	nC5,	$05,	nRst,	$07
	dc.b		nB4,	$05,	nRst,	$07,	nB4,	$0C,	$05,	nRst
	dc.b		$01,	nB4,	$05,	nRst,	$01,	nB4,	$05,	nRst
	dc.b		$01
	smpsReturn

Palmtree_Panic_Zone_Present_Call29:
	dc.b		smpsNoAttack,	$0C,	nC5,	$05,	nRst,	$01,	nC5,	$05
	dc.b		nRst,	$01,	nC5,	$05,	nRst,	$01,	nC5,	$05
	dc.b		nRst,	$01,	nB4,	$05,	nRst,	$01,	nC5,	$05
	dc.b		nRst,	$01
	smpsFMvoice	$05
	dc.b		nC5,	$08,	nRst,	$0A,	nC5,	$05,	nRst,	$0D
	dc.b		nC5,	$05,	nRst,	$07
	smpsReturn

Palmtree_Panic_Zone_Present_Call2A:
	dc.b		smpsNoAttack,	$0C,	nC5,	$05,	nRst,	$01,	nC5,	$05
	dc.b		nRst,	$01,	nC5,	$05,	nRst,	$01,	nC5,	$05
	dc.b		nRst,	$01,	nB4,	$05,	nRst,	$01,	nC5,	$05
	dc.b		nRst,	$01
	smpsFMvoice	$05
	dc.b		nC5,	$05,	nRst,	$01,	nC5,	$05,	nRst,	$01
	dc.b		nC5,	$05,	nRst,	$01,	nC5,	$05,	nRst,	$07
	dc.b		nC5,	$05,	nRst,	$07,	nC5,	$05,	nRst,	$01
	smpsReturn

Palmtree_Panic_Zone_Present_Call2B:
	dc.b		smpsNoAttack,	$0C
	smpsFMvoice	$04
	dc.b		nF5,	$05,	nRst,	$01,	nF5,	$05,	nRst,	$01
	dc.b		nF5,	$05,	nRst,	$01,	nF5,	$05,	nRst,	$01
	dc.b		nF5,	$05,	nRst,	$01,	nF5,	$05,	nRst,	$07
	dc.b		nE5,	$05,	nRst,	$07,	nE5,	$0C,	$05,	nRst
	dc.b		$01,	nE5,	$05,	nRst,	$01,	nE5,	$05,	nRst
	dc.b		$01
	smpsReturn

Palmtree_Panic_Zone_Present_Call2C:
	dc.b		smpsNoAttack,	$0C,	nC5,	$05,	nRst,	$01,	nC5,	$05
	dc.b		nRst,	$01,	nC5,	$05,	nRst,	$01,	nC5,	$05
	dc.b		nRst,	$01,	nB4,	$05,	nRst,	$01,	nC5,	$05
	dc.b		nRst,	$01
	smpsFMvoice	$05
	dc.b		nC5,	$05,	nRst,	$01,	nC5,	$05,	nRst,	$07
	dc.b		nC5,	$05,	nRst,	$07,	nC5,	$05,	nRst,	$07
	dc.b		nC5,	$05,	nRst,	$01
	smpsReturn

Palmtree_Panic_Zone_Present_Call2D:
	smpsFMvoice	$07
	dc.b		nF5,	$05,	nRst,	$07,	nB5,	$05,	nRst,	$01
	dc.b		nB6,	$05,	nRst,	$07,	nF5,	$05,	nRst,	$07
	dc.b		nF5,	$05,	nRst,	$07,	nB5,	$05,	nRst,	$01
	dc.b		nB6,	$05,	nRst,	$01,	nF5,	$05,	nRst,	$01
	dc.b		nB5,	$05,	nRst,	$07,	nB5,	$05,	nRst,	$01
	dc.b		nB5,	$05,	nRst,	$01
	smpsReturn

Palmtree_Panic_Zone_Present_Call2E:
	dc.b		nF5,	$05,	nRst,	$07,	nB5,	$05,	nRst,	$01
	dc.b		nB6,	$05,	nRst,	$07,	nF5,	$05,	nRst,	$07
	dc.b		nF5,	$05,	nRst,	$07,	nB5,	$05,	nRst,	$01
	dc.b		nB6,	$05,	nRst,	$01,	nF5,	$05,	nRst,	$01
	dc.b		nB5,	$05,	nRst,	$07,	nB5,	$05,	nRst,	$07
	smpsReturn

Palmtree_Panic_Zone_Present_Call2F:
	dc.b		nF5,	$05,	nRst,	$07,	nB5,	$05,	nRst,	$01
	dc.b		nB6,	$05,	nRst,	$07,	nF5,	$05,	nRst,	$07
	dc.b		nF5,	$05,	nRst,	$07,	nB5,	$05,	nRst,	$01
	dc.b		nB6,	$05,	nRst,	$01,	nF5,	$05,	nRst,	$01
	dc.b		nB5,	$05,	nRst,	$07,	nB5,	$05,	nRst,	$01
	dc.b		nB5,	$05,	nRst,	$01
	smpsReturn

Palmtree_Panic_Zone_Present_Call30:
	dc.b		nF5,	$05,	nRst,	$07,	nB5,	$05,	nRst,	$01
	dc.b		nB6,	$05,	nRst,	$07,	nF5,	$05,	nRst,	$07
	dc.b		nF5,	$05,	nRst,	$31
	smpsReturn

Palmtree_Panic_Zone_Present_Call31:
	dc.b		smpsNoAttack,	$0C,	nC5,	$05,	nRst,	$01,	nC5,	$05
	dc.b		nRst,	$01,	nC5,	$05,	nRst,	$01,	nC5,	$05
	dc.b		nRst,	$01,	nB4,	$05,	nRst,	$01,	nC5,	$05
	dc.b		nRst,	$01
	smpsFMvoice	$05
	dc.b		nC5,	$05,	nRst,	$01,	nC5,	$05,	nRst,	$01
	dc.b		nC5,	$05,	nRst,	$01,	nC5,	$05,	nRst,	$07
	dc.b		nC5,	$05,	nRst,	$07,	nC5,	$05,	nRst,	$01
	smpsReturn

Palmtree_Panic_Zone_Present_Call32:
	dc.b		nC5,	$08,	nRst,	$04
	smpsFMvoice	$04
	dc.b		nC5,	$05,	nRst,	$01,	nC5,	$05,	nRst,	$01
	dc.b		nC5,	$05,	nRst,	$01,	nC5,	$05,	nRst,	$01
	dc.b		nC5,	$05,	nRst,	$01,	nC5,	$05,	nRst,	$07
	dc.b		nB4,	$05,	nRst,	$07,	nB4,	$0C,	$05,	nRst
	dc.b		$01,	nB4,	$05,	nRst,	$01,	nB4,	$05,	nRst
	dc.b		$01
	smpsReturn

Palmtree_Panic_Zone_Present_Call33:
	dc.b		smpsNoAttack,	$0C,	nC5,	$05,	nRst,	$01,	nC5,	$05
	dc.b		nRst,	$01,	nC5,	$05,	nRst,	$01,	nC5,	$05
	dc.b		nRst,	$01,	nB4,	$05,	nRst,	$01,	nC5,	$05
	dc.b		nRst,	$01
	smpsFMvoice	$05
	dc.b		nC5,	$05,	nRst,	$0D,	nC5,	$05,	nRst,	$0D
	dc.b		nC5,	$05,	nRst,	$07
	smpsReturn

Palmtree_Panic_Zone_Present_Call34:
	dc.b		smpsNoAttack,	$60
	smpsReturn

Palmtree_Panic_Zone_Present_Call35:
	dc.b		smpsNoAttack,	$0C
	smpsFMvoice	$04
	dc.b		nE4,	$05,	nRst,	$01,	nG4,	$05,	nRst,	$01
	dc.b		nE4,	$05,	nRst,	$01,	nG4,	$05,	nRst,	$01
	dc.b		nE4,	$05,	nRst,	$01,	nG4,	$05,	nRst,	$07
	dc.b		nF4,	$05,	nRst,	$07,	nG4,	$05,	nRst,	$01
	dc.b		nG4,	$05,	nRst,	$01,	nG4,	$05,	nRst,	$01
	dc.b		nF4,	$05,	nRst,	$01,	nG4,	$05,	nRst,	$01
	smpsReturn

Palmtree_Panic_Zone_Present_Call36:
	dc.b		smpsNoAttack,	$0C
	smpsFMvoice	$04
	dc.b		nE4,	$05,	nRst,	$01,	nG4,	$05,	nRst,	$01
	dc.b		nE4,	$05,	nRst,	$01,	nG4,	$05,	nRst,	$01
	dc.b		nE4,	$05,	nRst,	$01,	nG4,	$05,	nRst,	$07
	dc.b		nF4,	$05,	nRst,	$07,	nG4,	$05,	nRst,	$01
	dc.b		nG4,	$05,	nRst,	$01,	nG4,	$05,	nRst,	$01
	dc.b		nF4,	$05,	nRst,	$01,	nG4,	$05,	nRst,	$01
	smpsReturn

Palmtree_Panic_Zone_Present_Call37:
	dc.b		smpsNoAttack,	$0C,	nE4,	$05,	nRst,	$01,	nG4,	$05
	dc.b		nRst,	$01,	nE4,	$05,	nRst,	$01,	nG4,	$05
	dc.b		nRst,	$01,	nEb4,	$05,	nRst,	$01,	nG4,	$05
	dc.b		nRst,	$01
	smpsFMvoice	$05
	dc.b		nC4,	$08,	nRst,	$0A,	nC4,	$05,	nRst,	$0D
	dc.b		nC4,	$05,	nRst,	$07
	smpsReturn

Palmtree_Panic_Zone_Present_Call38:
	dc.b		smpsNoAttack,	$0C,	nE4,	$05,	nRst,	$01,	nG4,	$05
	dc.b		nRst,	$01,	nE4,	$05,	nRst,	$01,	nG4,	$05
	dc.b		nRst,	$01,	nEb4,	$05,	nRst,	$01,	nG4,	$05
	dc.b		nRst,	$01
	smpsFMvoice	$05
	dc.b		nC4,	$05,	nRst,	$01,	nC4,	$05,	nRst,	$01
	dc.b		nC4,	$05,	nRst,	$01,	nC4,	$05,	nRst,	$07
	dc.b		nC4,	$05,	nRst,	$07,	nC4,	$05,	nRst,	$01
	smpsReturn

Palmtree_Panic_Zone_Present_Call39:
	dc.b		smpsNoAttack,	$0C
	smpsFMvoice	$04
	dc.b		nA4,	$05,	nRst,	$01,	nC5,	$05,	nRst,	$01
	dc.b		nA4,	$05,	nRst,	$01,	nC5,	$05,	nRst,	$01
	dc.b		nA4,	$05,	nRst,	$01,	nC5,	$05,	nRst,	$07
	dc.b		nBb4,	$05,	nRst,	$07,	nC5,	$05,	nRst,	$01
	dc.b		nC5,	$05,	nRst,	$01,	nC5,	$05,	nRst,	$01
	dc.b		nBb4,	$05,	nRst,	$01,	nC5,	$05,	nRst,	$01
	smpsReturn

Palmtree_Panic_Zone_Present_Call3A:
	dc.b		smpsNoAttack,	$0C,	nE4,	$05,	nRst,	$01,	nG4,	$05
	dc.b		nRst,	$01,	nE4,	$05,	nRst,	$01,	nG4,	$05
	dc.b		nRst,	$01,	nEb4,	$05,	nRst,	$01,	nG4,	$05
	dc.b		nRst,	$01
	smpsFMvoice	$05
	dc.b		nC4,	$05,	nRst,	$01,	nC4,	$05,	nRst,	$07
	dc.b		nC4,	$05,	nRst,	$07,	nC4,	$05,	nRst,	$07
	dc.b		nC4,	$05,	nRst,	$01
	smpsReturn

Palmtree_Panic_Zone_Present_Call3B:
	dc.b		nC5,	$08,	nRst,	$58
	smpsReturn

Palmtree_Panic_Zone_Present_Call3C:
	dc.b		smpsNoAttack,	$0C,	nE4,	$05,	nRst,	$01,	nG4,	$05
	dc.b		nRst,	$01,	nE4,	$05,	nRst,	$01,	nG4,	$05
	dc.b		nRst,	$01,	nEb4,	$05,	nRst,	$01,	nG4,	$05
	dc.b		nRst,	$01
	smpsFMvoice	$05
	dc.b		nC4,	$05,	nRst,	$01,	nC4,	$05,	nRst,	$01
	dc.b		nC4,	$05,	nRst,	$01,	nC4,	$05,	nRst,	$07
	dc.b		nC4,	$05,	nRst,	$07,	nC4,	$05,	nRst,	$01
	smpsReturn

Palmtree_Panic_Zone_Present_Call3D:
	dc.b		nC4,	$08,	nRst,	$04
	smpsFMvoice	$04
	dc.b		nE4,	$05,	nRst,	$01,	nG4,	$05,	nRst,	$01
	dc.b		nE4,	$05,	nRst,	$01,	nG4,	$05,	nRst,	$01
	dc.b		nE4,	$05,	nRst,	$01,	nG4,	$05,	nRst,	$07
	dc.b		nF4,	$05,	nRst,	$07,	nG4,	$05,	nRst,	$01
	dc.b		nG4,	$05,	nRst,	$01,	nG4,	$05,	nRst,	$01
	dc.b		nF4,	$05,	nRst,	$01,	nG4,	$05,	nRst,	$01
	smpsReturn

Palmtree_Panic_Zone_Present_Call3E:
	dc.b		smpsNoAttack,	$0C,	nE4,	$05,	nRst,	$01,	nG4,	$05
	dc.b		nRst,	$01,	nE4,	$05,	nRst,	$01,	nG4,	$05
	dc.b		nRst,	$01,	nEb4,	$05,	nRst,	$01,	nG4,	$05
	dc.b		nRst,	$01
	smpsFMvoice	$05
	dc.b		nC4,	$05,	nRst,	$0D,	nC4,	$05,	nRst,	$0D
	dc.b		nC4,	$05,	nRst,	$07
	smpsReturn

Palmtree_Panic_Zone_Present_Call3F:
	dc.b		smpsNoAttack,	$60
	smpsReturn

Palmtree_Panic_Zone_Present_Call40:
	dc.b		smpsNoAttack,	$0C
	smpsFMvoice	$04
	dc.b		nG4,	$05,	nRst,	$01,	nE4,	$05,	nRst,	$01
	dc.b		nG4,	$05,	nRst,	$01,	nE4,	$05,	nRst,	$02
	dc.b		nG4,	$05,	nRst,	$06,	nG4,	$05,	nRst,	$01
	dc.b		nF4,	$0C,	$05,	nRst,	$0D,	nG4,	$05,	nRst
	dc.b		$01,	nF4,	$05,	nRst,	$01
	smpsReturn

Palmtree_Panic_Zone_Present_Call41:
	dc.b		smpsNoAttack,	$0C,	nG4,	$05,	nRst,	$01,	nE4,	$05
	dc.b		nRst,	$01,	nG4,	$05,	nRst,	$01,	nE4,	$05
	dc.b		nRst,	$01,	nG4,	$05,	nRst,	$07,	nG4,	$05
	dc.b		nRst,	$01,	nF4,	$0C,	$05,	nRst,	$0D,	nG4
	dc.b		$05,	nRst,	$01,	nF4,	$05,	nRst,	$01
	smpsReturn

Palmtree_Panic_Zone_Present_Call42:
	dc.b		smpsNoAttack,	$0C,	nG4,	$05,	nRst,	$01,	nE4,	$05
	dc.b		nRst,	$01,	nG4,	$05,	nRst,	$01,	nE4,	$05
	dc.b		nRst,	$01,	nG4,	$05,	nRst,	$37
	smpsReturn

Palmtree_Panic_Zone_Present_Call43:
	dc.b		smpsNoAttack,	$0C,	nC5,	$05,	nRst,	$01,	nA4,	$05
	dc.b		nRst,	$01,	nC5,	$05,	nRst,	$01,	nA4,	$05
	dc.b		nRst,	$02,	nC5,	$05,	nRst,	$06,	nC5,	$05
	dc.b		nRst,	$01,	nBb4,	$0C,	$05,	nRst,	$0D,	nC5
	dc.b		$05,	nRst,	$01,	nBb4,	$05,	nRst,	$01
	smpsReturn

Palmtree_Panic_Zone_Present_Call44:
	dc.b		smpsNoAttack,	$0C,	nC5,	$05,	nRst,	$01,	nA4,	$05
	dc.b		nRst,	$01,	nC5,	$05,	nRst,	$01,	nA4,	$05
	dc.b		nRst,	$01,	nC5,	$05,	nRst,	$07,	nC5,	$05
	dc.b		nRst,	$01,	nBb4,	$0C,	$05,	nRst,	$0D,	nC5
	dc.b		$05,	nRst,	$01,	nBb4,	$05,	nRst,	$01
	smpsReturn

Palmtree_Panic_Zone_Present_Call45:
	smpsFMvoice	$05
	dc.b		nC4,	$08,	nRst,	$58
	smpsReturn

Palmtree_Panic_Zone_Present_Call46:
	dc.b		smpsNoAttack,	$60
	smpsReturn

Palmtree_Panic_Zone_Present_Call47:
	dc.b		smpsNoAttack,	$0C
	smpsPSGvoice	$07
	dc.b		nC5,	$05,	nRst,	$01,	nC5,	$05,	nRst,	$01
	dc.b		nC5,	$05,	nRst,	$01,	nC5,	$05,	nRst,	$01
	dc.b		nC5,	$05,	nRst,	$01,	nC5,	$05,	nRst,	$07
	dc.b		nB4,	$05,	nRst,	$07,	nB4,	$05,	nRst,	$01
	dc.b		nB4,	$05,	nRst,	$01,	nB4,	$05,	nRst,	$01
	dc.b		nB4,	$05,	nRst,	$01,	nB4,	$05,	nRst,	$01
	smpsReturn

Palmtree_Panic_Zone_Present_Call48:
	dc.b		smpsNoAttack,	$0C
	smpsPSGvoice	$07
	dc.b		nC5,	$05,	nRst,	$01,	nC5,	$05,	nRst,	$01
	dc.b		nC5,	$05,	nRst,	$01,	nC5,	$05,	nRst,	$01
	dc.b		nC5,	$05,	nRst,	$01,	nC5,	$05,	nRst,	$07
	dc.b		nB4,	$05,	nRst,	$07,	nB4,	$05,	nRst,	$01
	dc.b		nB4,	$05,	nRst,	$01,	nB4,	$05,	nRst,	$01
	dc.b		nB4,	$05,	nRst,	$01,	nB4,	$05,	nRst,	$01
	smpsReturn

Palmtree_Panic_Zone_Present_Call49:
	dc.b		smpsNoAttack,	$0C,	nC5,	$05,	nRst,	$01,	nC5,	$05
	dc.b		nRst,	$01,	nC5,	$05,	nRst,	$01,	nC5,	$05
	dc.b		nRst,	$01,	nB4,	$05,	nRst,	$01,	nC5,	$03
	dc.b		nB4,	nA4,	nG4,	nFs4,	nE4,	nD4,	nCs4,	nC4
	dc.b		nRst,	$1B
	smpsReturn

Palmtree_Panic_Zone_Present_Call4A:
	dc.b		smpsNoAttack,	$0C,	nF5,	$05,	nRst,	$01,	nF5,	$05
	dc.b		nRst,	$01,	nF5,	$05,	nRst,	$01,	nF5,	$05
	dc.b		nRst,	$01,	nF5,	$05,	nRst,	$01,	nF5,	$05
	dc.b		nRst,	$07,	nE5,	$05,	nRst,	$07,	nE5,	$05
	dc.b		nRst,	$01,	nE5,	$05,	nRst,	$01,	nE5,	$05
	dc.b		nRst,	$01,	nE5,	$05,	nRst,	$01,	nE5,	$05
	dc.b		nRst,	$01
	smpsReturn

Palmtree_Panic_Zone_Present_Call4B:
	dc.b		smpsNoAttack,	$60
	smpsReturn

Palmtree_Panic_Zone_Present_Call4C:
	dc.b		smpsNoAttack,	$0C
	smpsPSGvoice	$07
	dc.b		nE4,	$05,	nRst,	$01,	nE4,	$05,	nRst,	$01
	dc.b		nE4,	$05,	nRst,	$01,	nE4,	$05,	nRst,	$01
	dc.b		nE4,	$05,	nRst,	$01,	nE4,	$05,	nRst,	$07
	dc.b		nF4,	$05,	nRst,	$07,	nF4,	$05,	nRst,	$01
	dc.b		nF4,	$05,	nRst,	$01,	nF4,	$05,	nRst,	$01
	dc.b		nF4,	$05,	nRst,	$01,	nF4,	$05,	nRst,	$01
	smpsReturn

Palmtree_Panic_Zone_Present_Call4D:
	dc.b		smpsNoAttack,	$0C
	smpsPSGvoice	$07
	dc.b		nE4,	$05,	nRst,	$01,	nE4,	$05,	nRst,	$01
	dc.b		nE4,	$05,	nRst,	$01,	nE4,	$05,	nRst,	$01
	dc.b		nE4,	$05,	nRst,	$01,	nE4,	$05,	nRst,	$07
	dc.b		nF4,	$05,	nRst,	$07,	nF4,	$05,	nRst,	$01
	dc.b		nF4,	$05,	nRst,	$01,	nF4,	$05,	nRst,	$01
	dc.b		nF4,	$05,	nRst,	$01,	nF4,	$05,	nRst,	$01
	smpsReturn

Palmtree_Panic_Zone_Present_Call4E:
	dc.b		smpsNoAttack,	$0C,	nE4,	$05,	nRst,	$01,	nE4,	$05
	dc.b		nRst,	$01,	nE4,	$05,	nRst,	$01,	nE4,	$05
	dc.b		nRst,	$01,	nEb4,	$05,	nRst,	$01,	nE4,	$03
	dc.b		nEb4,	nCs4,	nB3,	nBb3,	nAb3,	nFs3,	nF3,	nE3
	dc.b		nRst,	$1B
	smpsReturn

Palmtree_Panic_Zone_Present_Call4F:
	dc.b		smpsNoAttack,	$0C,	nA4,	$05,	nRst,	$01,	nA4,	$05
	dc.b		nRst,	$01,	nA4,	$05,	nRst,	$01,	nA4,	$05
	dc.b		nRst,	$01,	nA4,	$05,	nRst,	$01,	nA4,	$05
	dc.b		nRst,	$07,	nBb4,	$05,	nRst,	$07,	nBb4,	$05
	dc.b		nRst,	$01,	nBb4,	$05,	nRst,	$01,	nBb4,	$05
	dc.b		nRst,	$01,	nBb4,	$05,	nRst,	$01,	nBb4,	$05
	dc.b		nRst,	$01
	smpsReturn

Palmtree_Panic_Zone_Present_Call50:
	dc.b		nRst,	$54
	smpsPSGvoice	$02
	dc.b		nCs0,	$03,	nCs0,	nCs0,	$06
	smpsReturn

Palmtree_Panic_Zone_Present_Call51:
	smpsPSGvoice	$02
	dc.b		nCs0,	$06,	nCs0,	nCs0,	nCs0,	nCs0,	$05,	nRst
	dc.b		$01,	nCs0,	$06,	nCs0,	nCs0,	nCs0,	nCs0,	nCs0
	dc.b		nCs0,	nCs0,	nCs0,	nCs0,	nCs0
	smpsReturn

Palmtree_Panic_Zone_Present_Call52:
	smpsPSGvoice	$02
	dc.b		nCs0,	$06,	nCs0,	nCs0,	nCs0,	nCs0,	nCs0,	nCs0
	dc.b		nCs0,	nCs0,	nCs0,	nCs0,	nCs0,	nCs0,	nCs0,	nCs0
	dc.b		$03,	nCs0,	nCs0,	$06
	smpsReturn

Palmtree_Panic_Zone_Present_Call53:
	smpsPSGvoice	$02
	dc.b		nCs0,	$06,	nCs0,	nCs0,	nCs0,	nCs0,	nCs0,	nCs0
	dc.b		nCs0,	nCs0,	nCs0,	nCs0,	nCs0,	nCs0,	nCs0,	nCs0
	dc.b		nCs0
	smpsReturn

Palmtree_Panic_Zone_Present_Call54:
	smpsPSGvoice	$02
	dc.b		nCs0,	$05,	nRst,	$01,	nCs0,	$06,	nCs0,	nCs0
	dc.b		nCs0,	nCs0,	nCs0,	nCs0,	nCs0,	nCs0,	nCs0,	nCs0
	dc.b		nCs0,	nCs0,	nCs0,	nCs0,	$05,	nRst,	$01
	smpsReturn

Palmtree_Panic_Zone_Present_Call55:
	smpsPSGvoice	$02
	dc.b		nCs0,	$05,	nRst,	$01,	nCs0,	$06,	nCs0,	nCs0
	dc.b		nCs0,	nCs0,	nCs0,	nCs0,	nCs0,	nCs0,	nCs0,	nCs0
	dc.b		nCs0,	nCs0,	nCs0,	$03,	nCs0,	nCs0,	$06
	smpsReturn

Palmtree_Panic_Zone_Present_Call56:
	smpsPSGvoice	$02
	dc.b		nCs0,	$05,	nRst,	$01,	nCs0,	$06,	nCs0,	nCs0
	dc.b		nCs0,	nCs0,	nCs0,	nCs0,	nCs0,	nCs0,	nCs0,	nCs0
	dc.b		nCs0,	nCs0,	nCs0,	nCs0
	smpsReturn

Palmtree_Panic_Zone_Present_Call57:
	smpsPSGvoice	$02
	dc.b		nCs0,	$06,	nCs0,	nCs0,	nCs0,	nCs0,	$05,	nRst
	dc.b		$01,	nCs0,	$06,	nCs0,	nCs0,	$32,	nRst,	$04
	smpsReturn

Palmtree_Panic_Zone_Present_Call58:
	smpsPSGvoice	$02
	dc.b		nCs0,	$05,	nRst,	$01,	nCs0,	$06,	nCs0,	nCs0
	dc.b		nCs0,	nCs0,	nCs0,	nCs0,	nCs0,	nCs0,	nCs0,	nCs0
	dc.b		nCs0,	nCs0,	nCs0,	nCs0
	smpsReturn

Palmtree_Panic_Zone_Present_Call59:
	smpsPSGvoice	$02
	dc.b		nCs0,	$05,	nRst,	$01,	nCs0,	$06,	nCs0,	nCs0
	dc.b		nCs0,	$05,	nRst,	$01,	nCs0,	$06,	nCs0,	nCs0
	dc.b		nCs0,	nCs0,	nCs0,	nCs0,	nCs0,	nCs0,	nCs0,	nCs0
	dc.b		$05,	nRst,	$01
	smpsReturn

Palmtree_Panic_Zone_Present_Call5A:
	smpsPSGvoice	$02
	dc.b		nCs0,	$05,	nRst,	$01,	nCs0,	$06,	nCs0,	nCs0
	dc.b		nCs0,	$05,	nRst,	$01,	nCs0,	$06,	nCs0,	nCs0
	dc.b		nCs0,	nCs0,	nCs0,	nCs0,	nCs0,	nCs0,	nCs0,	$03
	dc.b		nCs0,	nCs0,	$06
	smpsReturn

Palmtree_Panic_Zone_Present_Call5B:
	smpsPSGvoice	$02
	dc.b		nCs0,	$05,	nRst,	$01,	nCs0,	$06,	nCs0,	nCs0
	dc.b		nCs0,	$05,	nRst,	$01,	nCs0,	$06,	nCs0,	nCs0
	dc.b		nCs0,	nCs0,	nCs0,	nCs0,	nCs0,	nCs0,	nCs0,	nCs0
	smpsReturn

Palmtree_Panic_Zone_Present_Call5C:
	smpsPSGvoice	$02
	dc.b		nCs0,	$05,	nRst,	$01,	nCs0,	$06,	nCs0,	nCs0
	dc.b		nCs0,	$05,	nRst,	$01,	nCs0,	$06,	nCs0,	nCs0
	dc.b		$32,	nRst,	$04
	smpsReturn

Palmtree_Panic_Zone_Present_Call5D:
	smpsPSGvoice	$02
	dc.b		nCs0,	$06,	nCs0,	nCs0,	nCs0,	nCs0,	$05,	nRst
	dc.b		$01,	nCs0,	$06,	nCs0,	nCs0,	nCs0,	nCs0,	nCs0
	dc.b		nCs0,	nCs0,	nCs0,	nCs0,	nCs0
	smpsReturn

Palmtree_Panic_Zone_Present_Call5E:
	smpsPSGvoice	$02
	dc.b		nCs0,	$06,	nCs0,	nCs0,	nCs0,	nCs0,	nCs0,	nCs0
	dc.b		nCs0,	$36
	smpsReturn

Palmtree_Panic_Zone_Present_Call5F:
	smpsPSGvoice	$02
	dc.b		nCs0,	$05,	nRst,	$01,	nCs0,	$06,	$05,	nRst
	dc.b		$01,	nCs0,	$06,	nCs0,	nCs0,	nCs0,	nCs0,	$05
	dc.b		nRst,	$01,	nCs0,	$06,	nCs0,	nCs0,	nCs0,	nCs0
	dc.b		$05,	nRst,	$01,	nCs0,	$06,	$03,	nCs0,	nCs0
	dc.b		$05,	nRst,	$01
	smpsReturn

Palmtree_Panic_Zone_Present_Call60:
	smpsPSGvoice	$02
	dc.b		nCs0,	$06,	nCs0,	nCs0,	nCs0,	nCs0,	$05,	nRst
	dc.b		$01,	nCs0,	$06,	nCs0,	nCs0,	$05,	nRst,	$01
	dc.b		nCs0,	$06,	nCs0,	nCs0,	nCs0,	$05,	nRst,	$01
	dc.b		nCs0,	$05,	nRst,	$01,	nCs0,	$06,	$03,	nCs0
	dc.b		nCs0,	$05,	nRst,	$01
	smpsReturn

Palmtree_Panic_Zone_Present_Call61:
	smpsPSGvoice	$01
	dc.b		nCs0,	$05,	nRst,	$01
	smpsPSGvoice	$02
	dc.b		nCs0,	$06,	nCs0,	nCs0,	nCs0,	$05,	nRst,	$01
	dc.b		nCs0,	$06,	nCs0,	nCs0,	nCs0,	nCs0,	nCs0,	nCs0
	dc.b		nCs0,	nCs0,	nCs0,	$03,	nCs0,	nCs0,	$06
	smpsReturn

Palmtree_Panic_Zone_Present_Call62:
	smpsPSGvoice	$02
	dc.b		nCs0,	$05,	nRst,	$01,	nCs0,	$06,	nCs0,	nCs0
	dc.b		nCs0,	$05,	nRst,	$01,	nCs0,	$06,	nCs0,	nCs0
	dc.b		$05,	nRst,	$01,	nCs0,	$06,	nCs0,	nCs0,	nCs0
	dc.b		nCs0,	$05,	nRst,	$01,	nCs0,	$06,	$03,	nCs0
	dc.b		nCs0,	$05,	nRst,	$01
	smpsReturn

Palmtree_Panic_Zone_Present_Call63:
	smpsPSGvoice	$02
	dc.b		nCs0,	$05,	nRst,	$01,	nCs0,	$06,	$05,	nRst
	dc.b		$01,	nCs0,	$06,	$05,	nRst,	$01,	nCs0,	$06
	dc.b		nCs0,	nCs0,	$05,	nRst,	$01,	nCs0,	$06,	nCs0
	dc.b		nCs0,	nCs0,	nCs0,	nCs0,	nCs0,	$03,	nCs0,	nCs0
	dc.b		$06
	smpsReturn

Palmtree_Panic_Zone_Present_Call64:
	smpsPSGvoice	$02
	dc.b		nCs0,	$06,	$05,	nRst,	$01,	nCs0,	$05,	nRst
	dc.b		$01,	nCs0,	$06,	nCs0,	nCs0,	nCs0,	$05,	nRst
	dc.b		$01,	nCs0,	$05,	nRst,	$01,	nCs0,	$06,	nCs0
	dc.b		nCs0,	nCs0,	nCs0,	$05,	nRst,	$01,	nCs0,	$06
	dc.b		$03,	nCs0,	nCs0,	$05,	nRst,	$01
	smpsReturn

Palmtree_Panic_Zone_Present_Call65:
	smpsPSGvoice	$01
	dc.b		nCs0,	$05,	nRst,	$01
	smpsPSGvoice	$02
	dc.b		nCs0,	$06,	$05,	nRst,	$01,	nCs0,	$06,	nCs0
	dc.b		nCs0,	nCs0,	nCs0,	nCs0,	$05,	nRst,	$2B
	smpsReturn

Palmtree_Panic_Zone_Present_Call66:
	smpsPSGvoice	$02
	dc.b		nCs0,	$05,	nRst,	$01,	nCs0,	$0C,	$06,	nCs0
	dc.b		nCs0,	nCs0,	nCs0,	nCs0,	nCs0,	nCs0,	nCs0,	nCs0
	dc.b		nCs0,	nCs0,	nCs0
	smpsReturn

Palmtree_Panic_Zone_Present_Call67:
	smpsPSGvoice	$02
	dc.b		nCs0,	$05,	nRst,	$01,	nCs0,	$0C,	$06,	nCs0
	dc.b		nCs0,	nCs0,	nCs0,	nCs0,	nCs0,	nCs0,	nCs0,	nCs0
	dc.b		nCs0,	nCs0,	$03,	nCs0,	nCs0,	$06
	smpsReturn

Palmtree_Panic_Zone_Present_Call68:
	smpsPSGvoice	$02
	dc.b		nCs0,	$06,	nCs0,	nCs0,	nCs0,	nCs0,	$05,	nRst
	dc.b		$01,	nCs0,	$06,	nCs0,	nCs0,	nCs0,	nCs0,	nCs0
	dc.b		nCs0,	nCs0,	nCs0,	nCs0,	nCs0
	smpsReturn

Palmtree_Panic_Zone_Present_Call69:
	smpsPSGvoice	$02
	dc.b		nCs0,	$06,	$0C,	$06,	$05,	nRst,	$01,	nCs0
	dc.b		$06,	nCs0,	nCs0,	nCs0,	nCs0,	nCs0,	nCs0,	nCs0
	dc.b		nCs0,	nCs0,	nCs0,	$05,	nRst,	$01
	smpsReturn

Palmtree_Panic_Zone_Present_Call6A:
	smpsPSGvoice	$02
	dc.b		nCs0,	$05,	nRst,	$01,	nCs0,	$06,	nCs0,	nCs0
	dc.b		nCs0,	$05,	nRst,	$01,	nCs0,	$06,	nCs0,	nCs0
	dc.b		nCs0,	nCs0,	nCs0,	nCs0,	nCs0,	nCs0,	nCs0,	nCs0
	smpsReturn

Palmtree_Panic_Zone_Present_Call6B:
	smpsPSGvoice	$02
	dc.b		nCs0,	$06,	nCs0,	nCs0,	nCs0,	nCs0,	$05,	nRst
	dc.b		$01,	nCs0,	$06,	nCs0,	nCs0,	nCs0,	nCs0,	nCs0
	dc.b		nCs0,	nCs0,	nCs0,	nCs0,	$03,	nCs0,	nCs0,	$06
	smpsReturn

Palmtree_Panic_Zone_Present_Call6C:
	smpsPSGvoice	$02
	dc.b		nCs0,	$05,	nRst,	$01,	nCs0,	$06,	nCs0,	nCs0
	dc.b		nCs0,	$05,	nRst,	$01,	nCs0,	$06,	nCs0,	nCs0
	dc.b		nCs0,	nCs0,	nCs0,	nCs0,	nCs0,	nCs0,	nCs0
	smpsPSGvoice	$01
	dc.b		nCs0
	smpsReturn

Palmtree_Panic_Zone_Present_Call6D:
	smpsPSGvoice	$02
	dc.b		nCs0,	$05,	nRst,	$01,	nCs0,	$06,	nCs0,	nCs0
	dc.b		nCs0,	$05,	nRst,	$01,	nCs0,	$06,	nCs0,	nCs0
	dc.b		nCs0,	nCs0,	nCs0,	nCs0,	nCs0,	nCs0,	nCs0,	nCs0
	smpsReturn

Palmtree_Panic_Zone_Present_Call6E:
	smpsPSGvoice	$02
	dc.b		nCs0,	$06,	nCs0,	nCs0,	nCs0,	nCs0,	$05,	nRst
	dc.b		$01,	nCs0,	$06,	nCs0,	nCs0,	nCs0,	nCs0,	nCs0
	dc.b		nCs0,	nCs0,	nCs0,	nCs0,	nCs0,	$05,	nRst,	$01
	smpsReturn

Palmtree_Panic_Zone_Present_Call6F:
	smpsPSGvoice	$02
	dc.b		nCs0,	$06,	nCs0,	nCs0,	nCs0,	nCs0,	$05,	nRst
	dc.b		$01,	nCs0,	$06,	nCs0,	nCs0,	nCs0,	nCs0,	nCs0
	dc.b		nCs0,	nCs0,	nCs0,	nCs0,	nCs0
	smpsReturn

Palmtree_Panic_Zone_Present_Call70:
	smpsPSGvoice	$02
	dc.b		nCs0,	$05,	nRst,	$01,	nCs0,	$0C,	$06,	nCs0
	dc.b		nCs0,	nCs0,	nCs0,	nCs0,	nCs0,	nCs0,	nCs0,	nCs0
	dc.b		nCs0,	nCs0,	nCs0,	$05,	nRst,	$01
	smpsReturn

Palmtree_Panic_Zone_Present_Call71:
	smpsPSGvoice	$02
	dc.b		nCs0,	$06,	nCs0,	nCs0,	nCs0,	nCs0,	nCs0,	nCs0
	dc.b		nCs0,	nCs0,	nCs0,	nCs0,	nCs0,	nCs0,	nCs0,	nCs0
	dc.b		nCs0
	smpsReturn

Palmtree_Panic_Zone_Present_Call72:
	smpsPSGvoice	$02
	dc.b		nCs0,	$06,	nCs0,	nCs0,	nCs0,	nCs0,	$05,	nRst
	dc.b		$01,	nCs0,	$06,	nCs0,	nCs0,	nCs0,	nCs0,	nCs0
	dc.b		nCs0,	nCs0,	nCs0,	nCs0,	nCs0,	$05,	nRst,	$01
	smpsReturn

Palmtree_Panic_Zone_Present_Call73:
	dc.b		dKick,	$05,	nRst,	$01,	dKick,	$05,	nRst,	$01
	dc.b		dKick,	$05,	nRst,	$01,	dKick,	$05,	nRst,	$0D
	dc.b		dKick,	$05,	nRst,	$0D,	dKick,	$05,	nRst,	$07
	dc.b		dKick,	$05,	nRst,	$01,	dKick,	$05,	nRst,	$07
	dc.b		dKick,	$05,	nRst,	$07
	smpsReturn

Palmtree_Panic_Zone_Present_Call74:
	dc.b		dKick,	$05,	nRst,	$13,	dKick,	$06,	nRst,	$12
	dc.b		dKick,	$05,	nRst,	$13,	$86,	$05,	nRst,	$13
	smpsReturn

Palmtree_Panic_Zone_Present_Call75:
	dc.b		dKick,	$05,	nRst,	$13,	dKick,	$05,	nRst,	$13
	dc.b		dKick,	$05,	nRst,	$13,	$86,	$05,	nRst,	$13
	smpsReturn

Palmtree_Panic_Zone_Present_Call76:
	dc.b		dKick,	$06,	nRst,	$12,	dKick,	$05,	nRst,	$13
	dc.b		dKick,	$05,	nRst,	$13,	$86,	$05,	nRst,	$0D
	dc.b		dSnare,	$06
	smpsReturn

Palmtree_Panic_Zone_Present_Call77:
	dc.b		dKick,	$06,	nRst,	$12,	dKick,	$05,	nRst,	$13
	dc.b		dKick,	$05,	nRst,	$13,	$86,	$05,	nRst,	$13
	smpsReturn

Palmtree_Panic_Zone_Present_Call78:
	dc.b		dKick,	$05,	nRst,	$13,	dKick,	$06,	nRst,	$12
	dc.b		$86,	$05,	nRst,	$0D,	$86,	$05,	nRst,	$0D
	dc.b		$86,	$05,	nRst,	$07
	smpsReturn

Palmtree_Panic_Zone_Present_Call79:
	dc.b		$8F,	$06,	nRst,	$12,	dKick,	$05,	nRst,	$13
	dc.b		dKick,	$05,	nRst,	$13,	$86,	$05,	nRst,	$13
	smpsReturn

Palmtree_Panic_Zone_Present_Call7A:
	dc.b		dKick,	$06,	nRst,	$12,	dKick,	$06,	nRst,	$12
	dc.b		dKick,	$05,	nRst,	$13,	$86,	$05,	nRst,	$0D
	dc.b		dSnare,	$06
	smpsReturn

Palmtree_Panic_Zone_Present_Call7B:
	dc.b		dKick,	$06,	nRst,	$12,	dKick,	$06,	nRst,	$12
	dc.b		dKick,	$05,	nRst,	$13,	$86,	$05,	nRst,	$13
	smpsReturn

Palmtree_Panic_Zone_Present_Call7C:
	dc.b		dKick,	$06,	nRst,	$12,	dKick,	$06,	nRst,	$12
	dc.b		$86,	$05,	nRst,	$01,	$86,	$05,	nRst,	$01
	dc.b		$86,	$05,	nRst,	$01,	$86,	$05,	nRst,	$07
	dc.b		$86,	$05,	nRst,	$07,	$86,	$05,	nRst,	$01
	smpsReturn

Palmtree_Panic_Zone_Present_Call7D:
	dc.b		dKick,	$18,	dKick,	$86,	$12,	$86,	$86,	$0C
	smpsReturn

Palmtree_Panic_Zone_Present_Call7E:
	dc.b		$9B,	$48,	dSnare,	$05,	nRst,	$13
	smpsReturn

Palmtree_Panic_Zone_Present_Call7F:
	dc.b		nRst,	$48,	dSnare,	$05,	nRst,	$0D,	dSnare,	$05
	dc.b		nRst,	$01
	smpsReturn

Palmtree_Panic_Zone_Present_Call80:
	dc.b		nRst,	$48,	dSnare,	$05,	nRst,	$13
	smpsReturn

Palmtree_Panic_Zone_Present_Call81:
	dc.b		nRst,	$48,	dSnare,	$05,	nRst,	$07,	dSnare,	$05
	dc.b		nRst,	$01,	$86,	$05,	nRst,	$01
	smpsReturn

Palmtree_Panic_Zone_Present_Call82:
	dc.b		$8F,	$48,	dSnare,	$05,	nRst,	$13
	smpsReturn

Palmtree_Panic_Zone_Present_Call83:
	dc.b		dKick,	$48,	dSnare,	$05,	nRst,	$0D,	dSnare,	$05
	dc.b		nRst,	$01
	smpsReturn

Palmtree_Panic_Zone_Present_Call84:
	dc.b		dKick,	$48,	dSnare,	$18
	smpsReturn

Palmtree_Panic_Zone_Present_Call85:
	dc.b		dKick,	$30,	dSnare,	$06,	$05,	nRst,	$01,	dSnare
	dc.b		$05,	nRst,	$01,	dSnare,	$05,	nRst,	$07,	dSnare
	dc.b		$05,	nRst,	$07,	dSnare,	$05,	nRst,	$01
	smpsReturn

Palmtree_Panic_Zone_Present_Call86:
	dc.b		$8F,	$06,	nRst,	$12,	dKick,	$18,	dKick,	$86
	smpsReturn

Palmtree_Panic_Zone_Present_Call87:
	dc.b		dKick,	$05,	nRst,	$13,	dKick,	$06,	nRst,	$12
	dc.b		dKick,	$05,	nRst,	$13,	$86,	$05,	nRst,	$0D
	dc.b		dKick,	$06
	smpsReturn

Palmtree_Panic_Zone_Present_Call88:
	dc.b		dKick,	$06,	nRst,	$12,	dKick,	$06,	nRst,	$12
	dc.b		dSnare,	$05,	nRst,	$01,	dSnare,	$05,	nRst,	$01
	dc.b		dSnare,	$05,	nRst,	$01,	dSnare,	$05,	nRst,	$07
	dc.b		dSnare,	$05,	nRst,	$07,	dSnare,	$05,	nRst,	$01
	smpsReturn

Palmtree_Panic_Zone_Present_Call89:
	dc.b		$8F,	$06,	nRst,	$12,	$86,	$06,	nRst,	$12
	dc.b		dKick,	$05,	nRst,	$13,	$86,	$05,	nRst,	$13
	smpsReturn

Palmtree_Panic_Zone_Present_Call8A:
	dc.b		dKick,	$06,	nRst,	$12,	$86,	$06,	nRst,	$12
	dc.b		dKick,	$05,	nRst,	$13,	$86,	$05,	nRst,	$13
	smpsReturn

Palmtree_Panic_Zone_Present_Call8B:
	dc.b		dKick,	$06,	nRst,	$12,	$86,	$06,	nRst,	$12
	dc.b		dKick,	$05,	nRst,	$13,	$86,	$05,	nRst,	$13
	smpsReturn

Palmtree_Panic_Zone_Present_Call8C:
	dc.b		dKick,	$05,	nRst,	$13,	$86,	$06,	nRst,	$12
	dc.b		dKick,	$05,	nRst,	$13,	$86,	$05,	nRst,	$0D
	dc.b		dSnare,	$06
	smpsReturn

Palmtree_Panic_Zone_Present_Call8D:
	dc.b		dKick,	$05,	nRst,	$13,	$86,	$06,	nRst,	$12
	dc.b		dKick,	$05,	nRst,	$13,	$86,	$05,	nRst,	$13
	smpsReturn

Palmtree_Panic_Zone_Present_Call8E:
	dc.b		dKick,	$05,	nRst,	$13,	$86,	$05,	nRst,	$13
	dc.b		dKick,	$05,	nRst,	$13,	$86,	$05,	nRst,	$13
	smpsReturn

Palmtree_Panic_Zone_Present_Call8F:
	dc.b		dKick,	$06,	nRst,	$12,	$86,	$05,	nRst,	$13
	dc.b		dKick,	$05,	nRst,	$13,	$86,	$05,	nRst,	$13
	smpsReturn

Palmtree_Panic_Zone_Present_Call90:
	dc.b		dKick,	$05,	nRst,	$13,	$86,	$06,	nRst,	$12
	dc.b		$86,	$05,	nRst,	$0D,	$86,	$05,	nRst,	$0D
	dc.b		$86,	$05,	nRst,	$07
	smpsReturn

Palmtree_Panic_Zone_Present_Voices:
	dc.b		$04,$0A,$2D,$EA,$17,$1F,$1F,$1F,$1F,$1F,$1F,$1A,$1F,$0A,$0D,$0A
	dc.b		$0D,$59,$0A,$2A,$0A,$00,$1D,$0F,$1D;			Voice 00
	dc.b		$36,$32,$04,$61,$3F,$5F,$5F,$5F,$5F,$0C,$0D,$09,$10,$09,$08,$08
	dc.b		$10,$30,$35,$36,$D5,$2B,$10,$10,$1D;			Voice 01
	dc.b		$3A,$61,$3C,$14,$31,$9C,$DB,$9C,$DA,$04,$09,$04,$03,$03,$01,$03
	dc.b		$00,$1F,$0F,$0F,$AF,$21,$47,$31,$80;			Voice 02
	dc.b		$19,$37,$32,$31,$31,$5F,$5F,$5F,$5F,$0B,$07,$07,$0D,$06,$05,$05
	dc.b		$05,$20,$50,$50,$15,$2D,$23,$28,$00;			Voice 03
	dc.b		$32,$61,$37,$53,$61,$9D,$1C,$1C,$9F,$07,$08,$04,$04,$04,$1B,$19
	dc.b		$16,$F0,$F0,$F0,$F5,$1E,$1C,$28,$0D;			Voice 04
	dc.b		$3A,$01,$07,$01,$01,$9F,$9F,$9F,$5F,$0E,$0E,$0E,$03,$00,$00,$00
	dc.b		$00,$1F,$FF,$1F,$0F,$18,$28,$27,$00;			Voice 05
	dc.b		$3A,$01,$07,$01,$01,$9F,$9F,$9F,$5F,$0E,$0E,$0E,$03,$00,$00,$00
	dc.b		$00,$1F,$FF,$1F,$0F,$18,$28,$27,$00;			Voice 06
	dc.b		$3C,$36,$31,$76,$71,$94,$9F,$96,$9F,$12,$00,$14,$0F,$04,$0A,$04
	dc.b		$0D,$2F,$0F,$4F,$2F,$33,$80,$1A,$80;			Voice 07
	dc.b		$19,$37,$32,$31,$31,$5F,$5F,$5F,$5F,$0B,$07,$07,$0D,$06,$05,$05
	dc.b		$05,$20,$50,$50,$15,$2D,$23,$28,$00;			Voice 08
	dc.b		$00;			Voice 09
	even
