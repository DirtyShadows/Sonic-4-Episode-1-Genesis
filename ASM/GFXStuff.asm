	even
ASCIItiles:
 INCBIN "GRAPHICS\FONT.BIN" 
	even
DefaultPal:
 DC.L    $00000000, $00000000, $00000000, $00000EEE

 EVEN   
topbin: incbin GRAPHICS\LOGO.bin
	even
toppal: incbin GRAPHICS\LOGOPAL.bin
	even

fadeout:
	rts
	even