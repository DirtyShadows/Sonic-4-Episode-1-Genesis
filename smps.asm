;
;  DZ80 V3.4.1 Z80 Disassembly of z80nodata.bin
;  2007/09/18 15:48
;

;
;  Sonic 1 Z80 Driver disassembly by Puto.
;  Should be assembled with AS (though it should be easily portable to other assemblers if necessary).
;
	cpu z80
	listing off
	phase	0

DAC_Panning	equ	1FFDh		; I *THINK* this is for the panning of the DAC. I'm not sure though, so don't quote me on this. 
Sample_to_Play	equ	1FFFh		; Sample to play, the 68K will move into this locatiton whatever sample that's supposed to be played.
YM2612_A0	equ	4000h		; The location where the Z80 needs to move shit over in order to play it with the DAC.
ROM_Bank	equ	6000h		; This location points to the ROM bank which the Z80 has access to (by default in S1, 7, aka $78000)
SEGA_Size	equ	6978h		; The size of the SEGA sound
SEGA_Location	equ	9688h		; The location within the bank of the SEGA sound, 8000h-based
SEGA_Pitch	equ	0Bh		; The pitch of the SEGA sound
SEGA_Bank	equ	7		; The location of the bank where the SEGA sound is in the main genesis ROM (multiply it by $10000 and add the next equate multiplied by $1000 to it to get the actual bank's location in ROM)
SEGA_Bank_Minor	equ	8		; The location of the bank where the SEGA sound is in the main genesis ROM (multiply it by $1000 and add the previous equate multiplied by $10000 to it to get the actual bank's location in ROM)
;

;
Z80Driver_Start:	
	di				; Disable interrupts
	di
	di
	ld	sp,1FFCh		; Initialize the stack pointer at address 1FFCh (though it isn't actually used throughout the whole driver)
	ld	ix,YM2612_A0		; ix=4000h
	xor	a			; a=0
	ld	(DAC_Panning),a		; 1FFDh=0
	ld	(Sample_to_Play),a	; 1FFFh=0
	ld	a,1			; a=1
	ld	(ROM_Bank),a		; 6000h=1
	ld	b,SEGA_Bank_Minor	; b=8
	ld	a,SEGA_Bank		; a=7
	
Z80_Init_Loop:	
	ld	(ROM_Bank),a		; 6000h=a (This sets the memory portion of the main genesis ROM that the Z80 will be allowed access to. To move the SEGA sound, change the "7" above this to the new bank where it is located)
	rrca				; rotate right circular register a (whatever the fuck that means, I think it shifts right anyway)
	djnz	Z80_Init_Loop		; decrement and loop if not zero
	jr	Load_Sample		; branch to Load_Sample


	db	0			; I have no idea what all this data's for...
	db	1
	db	2
	db	4
	db	8
	db	10h
	db	20h
	db	40h
	db	80h
	db	0FFh
	db	0FEh
	db	0FCh
	db	0F8h
	db	0F0h 
	db	0E0h 
	db	0C0h 

Load_Sample:	
	ld	hl,Sample_to_Play	; Load the address 1FFFh to register hl.

Wait_for_DAC_Request:	
	ld	a,(hl)			; a = Current sample to play.
	or	a			; if a == 0
	jp	p,Wait_for_DAC_Request	; Loop until we get a request to play a DAC sample
	sub	81h			; Subtract 81h from the obtained DAC value.
	ld	(hl),a			; Load the subtracted value to 1FFFh (eh?)
	cp	6			; is the value=6 (playing sample 87)?
	jr	nc,Play_SegaPCM		; If sample>=87, branch to Play_SegaPCM 
	ld	de,0			; de = 0
	ld	iy,PCM_Table		; Load the PCM Table to index register iy.
	sla	a			; Arithmetically shift left, 3 times (a=a*8)
	sla	a
	sla	a
	ld	b,0			; b = 0
	ld	c,a			; c = a
	add	iy,bc			; Add the contents of bc (word formed from b and c) to index register iy, to get to the proper slot in the table
	ld	e,(iy+0)		; e = iy
	ld	d,(iy+1)		; d = iy+1 (de = location of the DAC sample)
	ld	c,(iy+2)		; c = iy+2
	ld	b,(iy+3)		; b = iy+3 (bc = size of the DAC sample)
	exx				; Switches to an alternate set of data registers
	ld	d,80h			; d = 80h
	ld	hl,DAC_Panning		; Load address 1FFDh into register pair hl
	ld	(hl),d			; Move 80h onto address 1FFDh
	ld	(ix+0),2Bh		; Move 2Bh onto the address pointed to by ix (4000h, I believe)
	ld	e,2Ah			; e = 20h
	ld	c,(iy+4)		; c = iy+4 (pitch of the DAC sample)
	ld	(ix+1),d		; 4001h = 80h
	ld	(hl),0			; 1FFDh = 0
	exx				; Switch back to the normal registers
	ld	h,0			; h = 0
PlayPCM_Loop:	
	ld	a,(de)			; a = (de) 
	and	0F0h			; a = a & F0h
	rrca				; Shift-right 4 times with rotation (Divide by 16/10h)
	rrca
	rrca
	rrca
	add	a,22h			; a = a+22h
	ld	l,a			; l = a
	ld	a,(hl)			; a = (Contents of 1FFDh) 
	exx				; Switch to alternate registers
	add	a,d			; a = a+d
	ld	d,a			; d = a
	ld	(hl),l			; 1FFDh = l
	ld	(ix+0),e		; 4000h = e
	ld	(ix+1),d		; 4001h = d
	ld	(hl),h			; 1FFDh = h 
	ld	b,c			; b = c (Load pitch into register b)
loop_8E:	
	djnz	loop_8E			; Decrement b, jump if not 0 to loop_8E	(This slows down the rate at which samples are played by intentionally lagging the Z80 at this point. Removing this and the similar comparison at loop_A4 causes all samples to play with a pitch of 1)
	exx				; Switch to normal registers
	ld	a,(de)			; a = (de)
	and	0Fh			; a = a & 0Fh
	add	a,22h			; a = a + 22h
	ld	l,a			; l = a
	ld	a,(hl)			; a = 1FFDh
	exx				; Switch to alternate registers
	add	a,d			; a = a + d
	ld	d,a			; d = a
	ld	(hl),l			; 1FFDh = l
	ld	(ix+0),e		; 4000h = e
	ld	(ix+1),d		; 4001h = d
	ld	(hl),h			; 1FFDh = h
	ld	b,c			; b = c
loop_A4:	
	djnz	loop_A4			; Decrement b, jump if not 0 to loop_A4 (Read the loop_8E comment for more info)
	exx				; Switch to normal registers
	ld	a,(Sample_to_Play)	; Load the sample we're playing onto register a
	bit	7,a			; Test bit 7 of register a
	jp	nz,Load_Sample		; Jump if not 0 to Load_Sample
	inc	de			; Increment de (Location of the DAC sample)
	dec	bc			; Decrement bc (Size of DAC sample)
	ld	a,c			; a = c
	or	b			; a = a or b
	jp	nz,PlayPCM_Loop		; Jump if a!=0 to PlayPCM_Loop
	jp	Load_Sample		; Finished playing the PCM sample, so now jump back to Load_Sample
; 
; Subroutine - Play_SegaPCM
;
; This subroutine plays the "SEGA" sound.
; 
Play_SegaPCM:	
	ld	de,SEGA_Location	; Load the location of the SEGA sound (80h-based relative pointer to $78000 in the main ROM) to address de.
	ld	hl,SEGA_Size		; Load the size of the SEGA sound to register hl.
	ld	c,2Ah			; c = 2Ah
PlaySegaPCM_Loop:	
	ld	a,(de)			; Load the contents of whatever de points at to register a
	ld	(ix+0),c		; 4000h = c
	ld	(ix+1),a		; 4001h = a
	ld	b,SEGA_Pitch		; b = 0Bh (Pitch of the SEGA sample)
loop_CA:	
	djnz	loop_CA			; Decrement b; jump to loop_CA if not 0. (Read the loop_8E comment for more info).
	inc	de			; Increment de
	dec	hl			; Decrement hl
	ld	a,l			; a = l
	or	h			; a = a or h
	jp	nz,PlaySegaPCM_Loop	; If a!=0, jump to PlaySegaPCM_Loop
	jp	Load_Sample		; Otherwise, if you finished playing the SEGA sound, jump back to Load_Sample

;
; Table referencing the three PCM samples
;	
; As documented by jman2050, first two bytes are a pointer to the sample, third and fourth are the sample size, fifth is the pitch, 6-8 are unused.
;


PCM_Table:
	dw	DAC_Sample1	; Kick sample
	dw	(DAC_Sample1_End-DAC_Sample1)
	dw	0017h		; Pitch = 17h
	dw	0000h
	
	dw	DAC_Sample2	; Snare sample
	dw	(DAC_Sample2_End-DAC_Sample2)
	dw	0001h		; Pitch = 1h
	dw	0000h
	
	dw	DAC_Sample3	; Timpani sample
	dw	(Dac_Sample3_End-DAC_Sample3)
Sample3_Pitch:
	dw	001Bh		; Pitch = 1Bh
	dw	0000h
	


DAC_Sample1:	binclude	"Samples/86.bin"
DAC_Sample1_End:

DAC_Sample2:	binclude	"Samples/81.bin"
DAC_Sample2_End:

DAC_Sample3:	binclude	"Samples/8F.bin"
DAC_Sample3_End:

EndOfDriver:
	if MOMPASS==2
		if $ > 1FFCh
			fatal "The driver is too big; the maximum size it can take is 1FFCh. It currently takes \{EndOfDriver}h bytes. You won't be able to use this thing."
		else
			message "Uncompressed driver size: \{EndOfDriver}h bytes."
		endif

		shared	Sample3_Pitch	; Share this symbol externally (might be useful the timpani pitch changes)

		cpu 68000	; AS can't really add $A00000 in Z80, since the Z80 can't handle anything > $FFFF, so set it to 68K mode for this message.
		message	"The timpani pitch byte is \{Sample3_Pitch}h (or alternatively, in 68K notation, $\{Sample3_Pitch+$A00000})."
		message "Remember to set that in loc_71CAC."
	endif
	end
;

