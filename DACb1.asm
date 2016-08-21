DACb1_index:	z80RamPoint	Sample1C
		z80RamPoint	Sample1D
		z80RamPoint	Sample1E
		z80RamPoint	Sample1F
		z80RamPoint	Sample20
		z80RamPoint	Sample21
		z80RamPoint	Sample22
;---------------------------------------------------------
Sample1C:	dc.b		$8		; Pitch
		swap16		DAC11-DAC10	; Size
		z80RamPoint	DAC10		; Pointer to sample file in Z80 RAM

Sample1D:	dc.b		$16		; Pitch
		swap16		DAC12-DAC11	; Size
		z80RamPoint	DAC11		; Pointer to sample file in Z80 RAM

Sample1E:	dc.b		$10		; Pitch
		swap16		DAC13-DAC12	; Size
		z80RamPoint	DAC12		; Pointer to sample file in Z80 RAM

Sample1F:	dc.b		$2		; Pitch
		swap16		DAC14-DAC13	; Size
		z80RamPoint	DAC13		; Pointer to sample file in Z80 RAM

Sample20:	dc.b		$A		; Pitch
		swap16		DAC15-DAC14	; Size
		z80RamPoint	DAC14		; Pointer to sample file in Z80 RAM

Sample21:	dc.b		$A		; Pitch
		swap16		DAC16-DAC15	; Size
		z80RamPoint	DAC15		; Pointer to sample file in Z80 RAM

Sample22:	dc.b		$A		; Pitch
		swap16		DACb1_End-DAC16	; Size
		z80RamPoint	DAC16		; Pointer to sample file in Z80 RAM
;---------------------------------------------------------
DAC10:		incbin		DAC/DAC10.bin
DAC11:		incbin		DAC/DAC11.bin
DAC12:		incbin		DAC/DAC12.bin
DAC13:		incbin		DAC/DAC13.bin
DAC14:		incbin		DAC/DAC14.bin
DAC15:		incbin		DAC/DAC15.bin
DAC16:		incbin		DAC/DAC16.bin
DACb1_End:	dc.w		$0
















