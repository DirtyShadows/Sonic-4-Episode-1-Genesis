test_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     test_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $02
	smpsHeaderSFXChannel cFM4, test_FM4,	$00, $05
	smpsHeaderSFXChannel cFM5, test_FM5,	$00, $05

; FM5 Data
test_FM4:
	smpsSetvoice        $00
;	smpsPan             panRight, $00
	dc.b	nC4, $0A, nF4, $08, nG4, $08, nC5, $1B
	smpsStop
	
; FM5 Data
test_FM5:
	smpsSetvoice        $00
;	smpsPan             panRight, $00
	dc.b	nC5, $0A, nF5, $08, nG5, $08, nC6, $1B
	smpsStop

test_Voices:
;	Voice $00
;	$04
;	$37, $72, $77, $49, 	$1F, $1F, $1F, $1F, 	$07, $0A, $07, $0D
;	$00, $0B, $00, $0B, 	$1F, $0F, $1F, $0F, 	$23, $80, $23, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $04, $07, $07, $03
	smpsVcCoarseFreq    $09, $07, $02, $07
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0D, $07, $0A, $07
	smpsVcDecayRate2    $0B, $00, $0B, $00
	smpsVcDecayLevel    $00, $01, $00, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $23, $00, $23

