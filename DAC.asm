; Указатели на конфиги сэмплов
DAC_index:	z80RamPoint	Sample00
		z80RamPoint	Sample01
		z80RamPoint	Sample02
		z80RamPoint	Sample03
		z80RamPoint	Sample04
		z80RamPoint	Sample05
		z80RamPoint	Sample06
		z80RamPoint	Sample07
		z80RamPoint	Sample07
		z80RamPoint	Sample08
		z80RamPoint	Sample09
		z80RamPoint	Sample0A
		z80RamPoint	Sample0B
		z80RamPoint	Sample0C
		z80RamPoint	Sample0D
		z80RamPoint	Sample0E
		z80RamPoint	Sample0F
		z80RamPoint	Sample10
		z80RamPoint	Sample11
		z80RamPoint	Sample12
		z80RamPoint	Sample13
		z80RamPoint	Sample14
		z80RamPoint	Sample15
		z80RamPoint	Sample16
		z80RamPoint	Sample17
		z80RamPoint	Sample18
		z80RamPoint	Sample19
		z80RamPoint	Sample19
		z80RamPoint	Sample19
		z80RamPoint	Sample19
		z80RamPoint	Sample1A
		z80RamPoint	Sample1B
;-----------------------------------------------------------------
; Конфиги сэмплов
; Образец записи:
;Sample00:	dc.b		$4		; Скорость звучаниЯ (pitch)
;		swap16		DAC02-DAC01	; Размер сэмпла в байтах
;		z80RamPoint	DAC01		; Указатель на сэмпл в банке z80 (относительно $8000)
;-----------------------------------------------------------------

Sample00:	dc.b		$4		; Pitch
		swap16		DAC02-DAC01	; Size
		z80RamPoint	DAC01		; Pointer to sample file in Z80 RAM

Sample01:	dc.b		$E		; Pitch
		swap16		DAC03-DAC02	; Size
		z80RamPoint	DAC02		; Pointer to sample file in Z80 RAM

Sample02:	dc.b		$14		; Pitch
		swap16		DAC03-DAC02	; Size
		z80RamPoint	DAC02		; Pointer to sample file in Z80 RAM

Sample03:	dc.b		$1A		; Pitch
		swap16		DAC03-DAC02	; Size
		z80RamPoint	DAC02		; Pointer to sample file in Z80 RAM

Sample04:	dc.b		$20		; Pitch
		swap16		DAC03-DAC02	; Size
		z80RamPoint	DAC02		; Pointer to sample file in Z80 RAM

Sample05:	dc.b		$4		; Pitch
		swap16		DAC01-DAC00	; Size
		z80RamPoint	DAC00		; Pointer to sample file in Z80 RAM

Sample06:	dc.b		$4		; Pitch
		swap16		DAC0A-DAC09	; Size
		z80RamPoint	DAC09		; Pointer to sample file in Z80 RAM

Sample07:	dc.b		$6		; Pitch
		swap16		DAC06-DAC05	; Size
		z80RamPoint	DAC05		; Pointer to sample file in Z80 RAM

Sample08:	dc.b		$14		; Pitch
		swap16		DAC07-DAC06	; Size
		z80RamPoint	DAC06		; Pointer to sample file in Z80 RAM

Sample09:	dc.b		$1B		; Pitch
		swap16		DAC07-DAC06	; Size
		z80RamPoint	DAC06		; Pointer to sample file in Z80 RAM

Sample0A:	dc.b		$8		; Pitch
		swap16		DAC08-DAC07	; Size
		z80RamPoint	DAC07		; Pointer to sample file in Z80 RAM

Sample0B:	dc.b		$B		; Pitch
		swap16		DAC09-DAC08	; Size
		z80RamPoint	DAC08		; Pointer to sample file in Z80 RAM

Sample0C:	dc.b		$11		; Pitch
		swap16		DAC09-DAC08	; Size
		z80RamPoint	DAC08		; Pointer to sample file in Z80 RAM

Sample0D:	dc.b		$8		; Pitch
		swap16		DAC0B-DAC0A	; Size
		z80RamPoint	DAC0A		; Pointer to sample file in Z80 RAM

Sample0E:	dc.b		$3		; Pitch
		swap16		DAC05-DAC04	; Size
		z80RamPoint	DAC04		; Pointer to sample file in Z80 RAM

Sample0F:	dc.b		$7		; Pitch
		swap16		DAC05-DAC04	; Size
		z80RamPoint	DAC04		; Pointer to sample file in Z80 RAM

Sample10:	dc.b		$A		; Pitch
		swap16		DAC05-DAC04	; Size
		z80RamPoint	DAC04		; Pointer to sample file in Z80 RAM

Sample11:	dc.b		$E		; Pitch
		swap16		DAC05-DAC04	; Size
		z80RamPoint	DAC04		; Pointer to sample file in Z80 RAM

Sample12:	dc.b		$6		; Pitch
		swap16		DAC04-DAC03	; Size
		z80RamPoint	DAC03		; Pointer to sample file in Z80 RAM

Sample13:	dc.b		$A		; Pitch
		swap16		DAC04-DAC03	; Size
		z80RamPoint	DAC03		; Pointer to sample file in Z80 RAM

Sample14:	dc.b		$D		; Pitch
		swap16		DAC04-DAC03	; Size
		z80RamPoint	DAC03		; Pointer to sample file in Z80 RAM

Sample15:	dc.b		$12		; Pitch
		swap16		DAC04-DAC03	; Size
		z80RamPoint	DAC03		; Pointer to sample file in Z80 RAM

Sample16:	dc.b		$B		; Pitch
		swap16		DAC0C-DAC0B	; Size
		z80RamPoint	DAC0B		; Pointer to sample file in Z80 RAM

Sample17:	dc.b		$13		; Pitch
		swap16		DAC0C-DAC0B	; Size
		z80RamPoint	DAC0B		; Pointer to sample file in Z80 RAM

Sample18:	dc.b		$16		; Pitch
		swap16		DAC0C-DAC0B	; Size
		z80RamPoint	DAC0B		; Pointer to sample file in Z80 RAM

Sample19:	dc.b		$C		; Pitch
		swap16		DAC0D-DAC0C	; Size
		z80RamPoint	DAC0C		; Pointer to sample file in Z80 RAM

Sample1A:	dc.b		$1		; Pitch
		swap16		DAC0E-DAC0D	; Size
		z80RamPoint	DAC0D		; Pointer to sample file in Z80 RAM

Sample1B:	dc.b		$12		; Pitch
		swap16		DAC_End-DAC0E	; Size
		z80RamPoint	DAC0E		; Pointer to sample file in Z80 RAM
;---------------------------------------------------
; Samples (compressed by Kosinky)
;---------------------------------------------------
DAC00:		incbin		DAC/DAC00.bin
DAC01:		incbin		DAC/DAC01.bin
DAC02:		incbin		DAC/DAC02.bin
DAC03:		incbin		DAC/DAC03.bin
DAC04:		incbin		DAC/DAC04.bin
DAC05:		incbin		DAC/DAC05.bin
DAC06:		incbin		DAC/DAC06.bin
DAC07:		incbin		DAC/DAC07.bin
DAC08:		incbin		DAC/DAC08.bin
DAC09:		incbin		DAC/DAC09.bin
DAC0A:		incbin		DAC/DAC0A.bin
DAC0B:		incbin		DAC/DAC0B.bin
DAC0C:		incbin		DAC/DAC0C.bin
DAC0D:		incbin		DAC/DAC0D.bin
DAC0E:		incbin		DAC/DAC0E.bin
DAC_End:	dc.w		$0






