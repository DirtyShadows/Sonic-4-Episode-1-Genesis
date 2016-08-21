charging_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     charging_Voices
	smpsHeaderChan      $01, $02
	smpsHeaderTempo     $80, $80

	smpsHeaderDAC       charging_DAC,	$03, $00charging_DAC
	smpsHeaderPSG       charging_PSG1,	$00, $12, $05, fTone_01
	smpsHeaderPSG       charging_PSG2,	$80, $03, $F5, fTone_1F

; The following track data was present at 32928 bytes from the start of the song.
; PSG1 Data
charging_PSG1:

; The following track data was present at 32771 bytes from the start of the song.
; PSG2 Data
charging_PSG2:

; DAC Data
charging_DAC:
; Song seems to not use any FM voices
charging_Voices:
