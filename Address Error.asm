debugAddressError = 1

  if debugAddressError
	ifndef ArtTile_VRAM_Start
	  include "Address Error Defs.asm"
	endif
  	
; Use this to give a numerical identifier to the build. It is printed as an
; unsigned word, so anything from 0 up to 65535 is valid.
Revision = 79

	; set the character set for text
	;            ;   ?   @   A   B   C   D   E   F   G   H   I   J   K   L   M   N   O   P   Q   R   S   T   U   V   W   X   Y   Z   [  \\   ]
	;charset '?',"\x44\x42\x1E\x1F\x20\x21\x22\x23\x24\x25\x26\x27\x28\x29\x2A\x2B\x2C\x2D\x2E\x2F\x30\x31\x32\x33\x34\x35\x36\x37\x46\x40\x47"
	;charset 'a',"\x1E\x1F\x20\x21\x22\x23\x24\x25\x26\x27\x28\x29\x2A\x2B\x2C\x2D\x2E\x2F\x30\x31\x32\x33\x34\x35\x36\x37"
	;            ;   (   )   *   +   ,   -   .   /   0   1   2   3   4   5   6   7   8   9   :   ;
	;charset '(',"\x39\x3A\x10\x12\x3C\x38\x3B\x3F\x14\x15\x16\x17\x18\x19\x1A\x1B\x1C\x1D\x11\x45"
	;            ;   #   $   %   &
	;charset '#',"\x3D\x3E\x41\x43"
	;charset '!',$13
	;charset ' ',0
	
; macro for defining title card letters in conjunction with the remapped character set
opcodeLetters macro pal,letters
c := 0
	dc.w	strlen(letters)-1
	rept strlen(letters)
t := substr(letters,c,1)
	if strstr(";?@[\\]()+,-./:;#$%&! ",t)>=0	; Note: * is not on the list
	dc.w t				; raw character (no palette modifier)
	else
	dc.b pal>>8,t		; output letter code
	endif
c := c+1
    endm
    endm

AddressLoc function col,line,(($50 * line) + (2 * col))

ArtTile_ArtKos_AddressError              = $0010

; Edit these to your name and e-mail. If the e-mail is empty (""), then nothing
; will be printed on the line.
HackerName:	opcodeLetters palette_line_0,"FLAMEWING"
EMailmsg:	opcodeLetters palette_line_1,"FLAMEWING.SONIC@GMAIL.COM"

; System strings, do not edit.
BusErrorMsg:		opcodeLetters palette_line_1,"   A BUS ERROR HAS OCCURRED"
AddressErrorMsg:	opcodeLetters palette_line_1,"AN ADDRESS ERROR HAS OCCURRED"
Atmsg:	opcodeLetters palette_line_0,"AT "
ReadFrommsg:	opcodeLetters palette_line_1,"READ FROM"
UnrecovDatamsg:	opcodeLetters palette_line_2,"* UNAVAILABLE INFORMATION FOR DISASM *"
UnrecovAddrmsg:	opcodeLetters palette_line_2,"*  UNRECOVERABLE ADDRESS FOR DISASM  *"

; If disassembling a *given* instruction with the instruction register pointing
; immediately after the instruction and extension words, then change this to
; a nonzero value. For the result of exceptions, this should be left as zero.
RawDisassembly = 0
; Alignment of disassembled instructions.
DisassemblyAlign = 3

; The palette.
AddressErrorPalette:	incbin "AddressError-pal.bin"
AddressErrorPalette_end
; ===========================================================================
; Crash/Freeze the 68000 and display error message. Note that the Z80 continues to run, so the music keeps playing.
BusError:
	movem.l	d0-a6,-(sp)		; Save all registers; we will need them
	move.w	#$2700,sr		; Disable interrupts
	move.l	#BusErrorMsg,-(sp)
	bra.s	+
; ===========================================================================
; Crash/Freeze the 68000 and display error message. Note that the Z80 continues to run, so the music keeps playing.
AddressError:
	movem.l	d0-a6,-(sp)		; Save all registers; we will need them
	move.w	#$2700,sr		; Disable interrupts
	move.l	#AddressErrorMsg,-(sp)
+
	stopZ80

	lea	(VDP_control_port).l,a6
	move.w	#$8114,(a6)		; Genesis mode, DMA enabled, VBLANK-INT disabled, blanking mode on.
	move.w	#$8004,(a6)		; H-INT disabled
	move.w	#$8230,(a6)		; PNT A base: $C000
	move.w	#$8407,(a6)		; PNT B base: $E000
	move.w	#$857C,(a6)		; Sprite attribute table base: $F800
	move.w	#$8700,(a6)		; Background palette/color: 0/0
	move.w	#$8ADF,(a6)		; H-INT every 223rd scanline
	move.w	#$8B00,(a6)		; EXT-INT disabled, V scroll by screen, H scroll by screen
	move.w	#$8C81,(a6)		; H res 40 cells, no interlace
	move.w	#$9001,(a6)		; Scroll table size: 64x32

	; Copy the palette to CRAM
	dma68kToVDP AddressErrorPalette,$0000,(AddressErrorPalette_end-AddressErrorPalette),CRAM

	; Clear vertical scroll
	moveq	#0,d0
	lea	(VDP_data_port).l,a1
	move.l	#vdpComm($0000,VSRAM,WRITE),(a6)
	move.w	d0,(a1)
	move.w	d0,(a1)

	; Fill VRAM with 0
	dmaFillVRAM 0,$0000,$10000

	; Decode and load graphics.
	lea	(ArtKos_AddressError).l,a0
	lea	(Chunk_Table).l,a1
	jsr	(KosDec).l
	dma68kToVDP Chunk_Table,tiles_to_bytes(ArtTile_ArtKos_AddressError),tiles_to_bytes($38),VRAM

	; Decode enigma-compressed plane mappings to RAM buffer.
	lea	(Chunk_Table).l,a1
	lea	(MapEng_AddressError).l,a0
	move.w	#make_art_tile(ArtTile_VRAM_Start,0,0),d0
	jsr	(EniDec).l
	
	; Print the type of error.
	movea.l	(sp)+,a1
	lea	(Chunk_Table + AddressLoc(5, 0)).l,a5
	bsr.w	PrintMessage

	; Print out hacker name.
	lea	HackerName(pc),a1
	lea	(Chunk_Table + AddressLoc(28, 8)).l,a5
	bsr.w	PrintMessage
	
	; Print e-mail and "at" text, if required.
	tst.w	(Emailmsg).l
	bmi.s	+
	lea	(Chunk_Table + AddressLoc(1, 9)).l,a5
	lea Atmsg(pc),a1
	bsr.w	PrintMessage
	lea	EMailmsg(pc),a1
	bsr.w	PrintMessage
+
	; a0 = pointer to exception data.
	lea $3C(sp),a0

	; First, the interrupt flags.
	move.w	(a0)+,d0
	lea	(Chunk_Table + AddressLoc(8, 11)).l,a2
	
	; Print information on whether or not the exception happened during a read
	; or during a write. An exception can happen on a read if executing non-
	; aligned code.
	move.w	#'W'|palette_line_2, d1
	btst	#4,d0
	beq.s	+
	; On a read, must also display the 'read from' bit.
	move.w	#'R'|palette_line_2, d1
	lea	ReadFrommsg(pc),a1
	lea	(Chunk_Table + AddressLoc(13, 1)).l,a5
	bsr.w	PrintMessage
+
	move.w	d1,(a2)+

	; Whether or not the exception was on a valid instruction.
	move.w	#'I'|palette_line_2, d1
	btst	#3,d0
	beq.s	+
	move.w	#'N'|palette_line_2, d1
+
	move.w	d1,(a2)+

	moveq	#2,d2

-	; Function codes: FC? low/high. See user manual.
	move.w	#'L'|palette_line_2, d1
	btst	d2,d0
	beq.s	+
	move.w	#'H'|palette_line_2, d1
+
	move.w	d1,(a2)+
	dbf	d2,-

	; Print the misaligned address that caused the exception.
	move.w	(a0)+,d0
	swap	d0
	move.w	(a0)+,d0
	lea	(Chunk_Table + AddressLoc(24, 1)).l,a1
	moveq	#7,d2
	bsr.w	HexDump
	lea	(Chunk_Table + AddressLoc(31, 11)).l,a1
	moveq	#7,d2
	bsr.w	HexDump

	; Print the instruction register (IR) and status register (SR).
	move.w	(a0)+,d0
	move.w	d0,d6
	swap	d0
	move.w	(a0)+,d0
	; Instruction Register.
	lea	(Chunk_Table + AddressLoc(5, 12)).l,a1
	moveq	#3,d2
	bsr.w	HexDump
	; Status Register.
	lea	(Chunk_Table + AddressLoc(18, 12)).l,a1
	moveq	#3,d2
	bsr.w	HexDump

	; Print location of the next instruction to be executed -- Program Counter (PC).
	move.w	(a0)+,d0
	swap	d0
	move.w	(a0)+,d0
	move.l	d0,a6
	lea	(Chunk_Table + AddressLoc(31, 12)).l,a1
	moveq	#7,d2
	bsr.w	HexDump
	
	; Instruction disassembly.
	lea	(Chunk_Table + AddressLoc(DisassemblyAlign, 4)).l,a5
	bsr.w	Disassemble_Opcode
	; d7 has information on whether or not all information needed by the
	; disassembly was present (branching/jump/loop instructions need this).
	tst.b	d7
	bne.s	+
	; Disassembly was complete.
	; Print the address of the instruction.
	move.l	a6,d0
	sub.l	d5,d0
	subq.l	#2,d0
	moveq	#7,d2
	lea	(Chunk_Table + AddressLoc(2, 3)).l,a1
	bsr.w	HexDump
	bra.s	DidDisassembly
+
	; Missing information led to incomplete disassembly.
	; This happens for Bcc (except BSR), JMP (but not JSR) and DBcc when cc is
	; false or when cc true, but the register was not -1 (i.e., loop not done).
	lea	UnrecovDatamsg(pc),a1
	tst.b	d7
	bpl.s	+
	; We could recover all but instruction address.
	lea	UnrecovAddrmsg(pc),a1
+
	lea	(Chunk_Table + AddressLoc(1, 6)).l,a5
	bsr.w	PrintMessage

DidDisassembly:
	; Print hack revision.
	lea	(Chunk_Table + AddressLoc(11, 13)).l,a1
	move.w	#Revision,d0
	swap	d0
	moveq	#3,d2
	bsr.w	HexDump

	; Print the stack pointer -- but adjust it to skip all registers we added.
	lea	(Chunk_Table + AddressLoc(31, 13)).l,a1
	movea.l sp,d0
	addi.l	#$3C,d0
	moveq	#7,d2
	bsr.w	HexDump

	; Print the registers as they were at the start of the exception handler.
	lea (sp),a0
	lea	(Chunk_Table + AddressLoc(5, 16)).l,a2
	moveq	#4,d4

	; Register dump loop.
-	moveq	#2,d5
	lea	(a2),a1

-	move.l	(a0)+,d0
	moveq	#7,d2
	bsr.w	HexDump
	adda.w	#AddressLoc(5, 0),a1
	dbf	d5,-
	adda.w	#AddressLoc(0, 1),a2
	dbf	d4,--

	; Print stack dump -- starting AFTER all exception data.
	lea $4A(sp),a0
	lea	(Chunk_Table + AddressLoc(4, 24)).l,a2
	move.w	a0,d4
	subi.w	#System_Stack,d4	; d4 = -1 * number of bytes to print
	bpl.s	NoStackTrace		; Branch if positive or zero (stack underflow or empty)
	neg.w	d4
	cmpi.w	#$40,d4				; Limit to $40 bytes, as this is all space we have.
	bcs.s	+
	moveq	#$40,d4
+
	lsr.w	#1,d4				; Convert to words.
	move.w	d4,d6
	addq.w	#7,d4				; Prepare to round up number of lines.
	lsr.w	#3,d4				; Convert to lines of stack dump.
	subq.w	#1,d4				; Turn into loop index.
	andi.w	#7,d6				; Number of words we have to print on last line.
	lsr.w	#1,d6				; Convert to number of longs...
	scs.b	d7					; ... but set d7 to true if we have a last word.
	subq.w	#1,d6				; Convert this to a loop index too

	; Stack dump loop.
-	moveq	#3,d5
	tst.w	d4
	bne.s	+
	move.w	d6,d5
+
	lea	(a2),a1

-	move.l	(a0)+,d0
	moveq	#7,d2
	bsr.s	HexDump
	adda.w	#AddressLoc(1, 0),a1
	dbf	d5,-
	adda.w	#AddressLoc(0, 1),a2
	dbf	d4,--
	
	; If we have a last word (as opposed to last long), we need to delete the
	; last two characters printed.
	tst.b	d7
	beq.s	+
	suba.w	#AddressLoc(5, 0),a1
	clr.l	(a1)+
	clr.l	(a1)
+

NoStackTrace:
	; Transfer everything to VRAM.
	lea	(Chunk_Table).l,a1
	move.l	#vdpComm(VRAM_Plane_A_Name_Table,VRAM,WRITE),d0
	moveq	#$27,d1			; 40 cells wide
	moveq	#$1B,d2			; 28 cells tall
	jsr	(PlaneMapToVRAM).l

	; Exit blanking mode.
	move.w	#$8154,(VDP_control_port).l		; Genesis mode, DMA enabled, VBLANK-INT disabled, blanking mode off.

	movem.l	(sp)+,d0-a6		; Restore all registers
	move.w	#$2300,sr		; Enable interrupts

	startZ80

	; Exception loop.
-	nop
	nop
	bra.s	-

; Utility to dump a hex number. Prints the upper d2 nibbles of the long word
; stored in d0.
HexDump:
	rol.l	#4,d0
	move.b	d0,d3
	andi.w	#$F,d3
	addi.w	#'0'|palette_line_2,d3
	move.w	d3,(a1)+
	dbra	d2,HexDump
	rts

; ===========================================================================
; SUBROUTINE
; Disassembles an opcode
; Input:
;         a5	Where the output text goes
;         a6	Program counter just after instruction and extension words
;         d6	Instruction register
; Output:
;         a5	Cell just after last printed text
;         d5	Number of bytes taken by the instruction's extension words
;         d7	Nonzero for unreliable branching disassembly; if -1, only address
;           	of instruction is uncertain, if 1 there are other missing information
;           	as well.
Disassemble_Opcode:
	moveq	#0,d5
	moveq	#0,d7
	; Do a switch jump based on highest nibble of instruction.
	; This matches broad categories laid out in programmer's reference.
	move.w	d6,d0
	andi.w	#$F000,d0
	rol.w	#5,d0
	move.w	OpCodeMap(pc,d0.w),d0
	jmp	OpCodeMap(pc,d0.w)
; ===========================================================================
OpCodeMap:	offsetTable
	offsetTableEntry.w	Dis_BitMan_MoveP_Immed      	; %0000
	offsetTableEntry.w	Dis_MoveByte                	; %0001
	offsetTableEntry.w	Dis_MoveLong                	; %0010
	offsetTableEntry.w	Dis_MoveWord                 	; %0011
	offsetTableEntry.w	Dis_Miscellaneous           	; %0100
	offsetTableEntry.w	Dis_AddQ_SubQ_Scc_DBcc      	; %0101
	offsetTableEntry.w	Dis_Bcc_Bsr_Bra             	; %0110
	offsetTableEntry.w	Dis_MoveQ                   	; %0111
	offsetTableEntry.w	Dis_Or_Div_Sbcd             	; %1000
	offsetTableEntry.w	Dis_Sub_SubX                	; %1001
	offsetTableEntry.w	InvalidInstruction          	; %1010
	offsetTableEntry.w	Dis_Cmp_Eor                 	; %1011
	offsetTableEntry.w	Dis_And_Mul_Abcd_Exg        	; %1100
	offsetTableEntry.w	Dis_Add_AddX                	; %1101
	offsetTableEntry.w	Dis_Shift_Rotate            	; %1110
	offsetTableEntry.w	InvalidInstruction          	; %1111
; ===========================================================================
Dis_BitMan_MoveP_Immed:      	; %0000
	; Check to see if this is an immediate to CCR/SR instruction.
	move.w	d6,d0
	andi.w	#$5BF,d0
	cmpi.w	#$3C,d0
	beq.w	Handle_Immed_to_CCR_SR	; Branch if it is.
	; Check to see if this is a bit manipulation instruction with an immediate
	; operand.
	move.w	d6,d0
	andi.w	#$F00,d0
	cmpi.w	#$800,d0
	beq.s	Handle_BitMan_immed		; Branch if it is.
	; Check to see if this is a reserved instruction (not on MC68000).
	move.w	d6,d0
	andi.w	#$1C0,d0
	cmpi.w	#$C0,d0
	beq.w	InvalidInstruction		; Branch if it is.
	; Check to see if this is an instruction with immediate operands.
	btst	#8,d6
	beq.w	Handle_Immed			; Branch if it is.
	; Check to see if this is a movep instruction.
	move.w	d6,d0
	andi.w	#$38,d0
	cmpi.w	#$8,d0
	beq.s	Handle_MoveP			; Branch if it is.
	; Bit manipulation with bit number in register.
	move.w	d6,d2
	andi.w	#$C0,d2
	lsr.w	#4,d2
	lea	Bitman_Msgs(pc),a1
	move.l	(a1,d2.w),a1
	bsr.w	PrintMessage
	lea	LongSize(pc),a1
	bsr.w	PrintMessage
	move.w	d6,d1
	andi.w	#$E00,d1
	rol.w	#7,d2
	bsr.w	Reg_Data_Direct
	move.w	#',',(a5)+
	moveq	#2,d4
	lea	(a6),a2
	bra.w	Handle_effective_address
	
Handle_BitMan_immed:
	; Bit manipulation with bit number in immediate value.
	move.w	d6,d2
	andi.w	#$C0,d2
	lsr.w	#4,d2
	lea	Bitman_Msgs(pc),a1
	move.l	(a1,d2.w),a1
	bsr.w	PrintMessage
	lea	ByteSize(pc),a1
	bsr.w	PrintMessage
	; Compute number of bytes of destination address.
	move.w	d6,d7
	bsr.w	Calc_effective_address_size
	moveq	#0,d7
	; Need to compensate for those bytes when fetching bit number.
	lea	(a6),a2
	suba.w	d5,a2
	move.w	-2(a2),d0
	move.w	#'#',(a5)+
	bsr.w	PrintByte
	move.w	#',',(a5)+
	moveq	#0,d4
	lea	(a6),a2
	moveq	#2,d5
	bra.w	Handle_effective_address
	
Handle_MoveP:
	; movep.
	lea	MovePmsg(pc),a1
	bsr.w	PrintMessage
	lea	WordSize(pc),a1
	moveq	#1,d4
	btst	#6,d6
	beq.s	+
	add.b	d4,d4
	lea	LongSize(pc),a1
+
	bsr.w	PrintMessage

	; Bit 7 indicates direction of operation.
	btst	#7,d6
	beq.s	+
	; Moving from register.
	move.w	d6,d1
	andi.w	#$E00,d1
	rol.w	#7,d1
	bsr.w	Reg_Data_Direct
	move.w	#',',(a5)+
+
	; Print displacement (if nonzero).
	move.w	-2(a6),d0
	beq.s	+
	bsr.w	PrintWordSigned
+
	move.w	d6,d1
	andi.w	#7,d1
	moveq	#2,d5
	btst	#7,d6
	bne.w	Reg_Addr_Indirect
	bsr.w	Reg_Addr_Indirect
	; If we got here, a register is the destination.
	move.w	#',',(a5)+
	move.w	d6,d1
	andi.w	#$E00,d1
	rol.w	#7,d1
	bra.w	Reg_Data_Direct
	
Handle_Immed:
	; Instructions with immediate operands.
	move.w	d6,d1
	andi.w	#$E00,d1
	lsr.w	#7,d1
	lea	Immed_Msgs(pc),a1
	move.l	(a1,d1.w),a1
	bsr.w	PrintMessage
	move.w	d6,d4
	andi.w	#$C0,d4
	lsr.w	#4,d4
	lea	SizeMsgs(pc),a1
	move.l	(a1,d4.w),a1
	bsr.w	PrintMessage
	lsr.w	#2,d4
	move.w	d6,d7
	; Compute number of bytes of destination address.
	bsr.w	Calc_effective_address_size
	moveq	#0,d7
	; Need to compensate for those bytes when fetching immediate operand.
	lea	(a6),a2
	suba.w	d5,a2
	moveq	#0,d5
	bsr.w	Immediate
	move.w	#',',(a5)+
	lea	(a6),a2
	bra.w	Handle_effective_address
	
Handle_Immed_to_CCR_SR:
	; Instructions affecting CCR/SR with immediate operands.
	move.w	d6,d1
	andi.w	#$E00,d1
	lsr.w	#7,d1
	move.l	Immed_Msgs(pc,d1.w),a1
	bsr.w	PrintMessage
	move.w	d6,d4
	andi.w	#$C0,d4
	lsr.w	#4,d4
	lea	SizeMsgs(pc),a1
	move.l	(a1,d4.w),a1
	bsr.w	PrintMessage
	move.l	Immed_to_CCR_SR_Msgs+8(pc,d4.w),a1	; +8 because table is reused.
	lsr.w	#2,d4
	lea	(a6),a2
	bsr.w	Immediate
	move.w	#',',(a5)+
	bra.w	PrintMessage
; ===========================================================================
Bitman_Msgs:
		dc.l Btstmsg,Bchgmsg,Bclrmsg,Bsetmsg
Immed_Msgs:
		dc.l Orimsg,Andimsg,Subimsg,Addimsg,InvalidInstruction,Eorimsg,Cmpimsg
Immed_to_CCR_SR_Msgs:
		dc.l SRegmsg,CCRmsg,CCRmsg,SRegmsg
Btstmsg:	opcodeLetters palette_line_1,"BTST"
Bchgmsg:	opcodeLetters palette_line_1,"BCHG"
Bclrmsg:	opcodeLetters palette_line_1,"BCLR"
Bsetmsg:	opcodeLetters palette_line_1,"BSET"

Orimsg:	opcodeLetters palette_line_1,"ORI"
Andimsg:	opcodeLetters palette_line_1,"ANDI"
Subimsg:	opcodeLetters palette_line_1,"SUBI"
Addimsg:	opcodeLetters palette_line_1,"ADDI"
Eorimsg:	opcodeLetters palette_line_1,"EORI"
Cmpimsg:	opcodeLetters palette_line_1,"CMPI"

SRegmsg:	opcodeLetters palette_line_3,"SR"
CCRmsg:	opcodeLetters palette_line_3,"CCR"

MovePmsg:	opcodeLetters palette_line_1,"MOVEP"
; ===========================================================================
Dis_MoveByte:                	; %0001
Dis_MoveWord:                	; %0011
Dis_MoveLong:                	; %0010
	lea	Movemsg(pc),a1
	bsr.w	PrintMessage
	move.w	d6,d7
	lsr.w	#3,d7
	move.w	d7,d2
	andi.w	#$38,d2
	lsr.w	#6,d7
	andi.w	#7,d7
	or.w	d2,d7
	; Is this a movea?
	cmpi.b	#8,d2
	bne.s	+					; Branch if not.
	move.w	#'A',(a5)+
+
	move.w	d6,d4
	andi.w	#$3000,d4
	rol.w	#4,d4
	; Remap move sizes to other sizes, so we can use the same table.
	move.b	MoveSizeMsgs(pc,d4.w),d4
	lea	SizeMsgs(pc),a1
	move.l	(a1,d4.w),a1
	bsr.w	PrintMessage
	lsr.w	#2,d4
	; Compute number of bytes of destination address.
	bsr.w	Calc_effective_address_size
	move.w $40(sp),d0			; Address error flags
	movem.w	d0/d5,-(sp)			; Save flags and size of last parameter
	; Need to compensate for those bytes when fetching source address.
	lea	(a6),a2
	btst	#4,d0				; Did the error happen during a write?
	bne.s	+					; Branch if not
	suba.w	d5,a2				; Adjust address for first parameter
+
	moveq	#0,d5
	bsr.w	Handle_effective_address
	move.w	#',',(a5)+
	lea	(a6),a2
	movem.w	(sp)+,d0/d2			; Get flags and size of last parameter
	btst	#4,d0				; Did the error happen during a read?
	beq.s	+					; Branch if not
	adda.w	d2,a2				; Adjust address for second parameter
+
	move.w	d7,d6
	moveq	#0,d7
	bra.w	Handle_effective_address
; ===========================================================================
Movemsg:	opcodeLetters palette_line_1,"MOVE"
MoveSizeMsgs:
		dc.b $C,$0,$8,$4
; ===========================================================================
Dis_Miscellaneous:           	; %0100
	; Chock full of unrelated instructions.
	; Is this a lea or a chk instruction?
	btst	#8,d6
	bne.w	Handle_Lea_Chk		; Branch if yes.
	; Is this a move to/from SR/CCR, negx, clr, neg or not instructions?
	btst	#11,d6
	beq.w	Handle_MoveSRCCR_NegX_Clr_Neg_Not	; Branch if yes.
	; Otherwise, do a switch based on ramaining bits of second-to-highest nibble.
	move.w	d6,d0
	andi.w	#$600,d0
	lsr.w	#8,d0
	move.w	MiscOpCodeMap(pc,d0.w),d0
	jmp	MiscOpCodeMap(pc,d0.w)
; ===========================================================================
MiscOpCodeMap:	offsetTable
	offsetTableEntry.w	Handle_Ext_Nbcd_Swap_Pea_MoveMToMem                 	; %00
	offsetTableEntry.w	Handle_Illegal_Tas_Tst                              	; %01
	offsetTableEntry.w	Handle_MoveMToReg                                   	; %10
	offsetTableEntry.w	Handle_Trap_LinkW_Unlk_MoveUSP_Reset_Nop_Stop_Rte_Rts_TrapV_Rtr_Jmp_Jsr	; %11
; ===========================================================================
Handle_Trap_LinkW_Unlk_MoveUSP_Reset_Nop_Stop_Rte_Rts_TrapV_Rtr_Jmp_Jsr:
	; Select instruction based on second-to-lowest nibble.
	; Is this a jmp or a jsr?
	btst	#7,d6
	bne.w	Handle_Jmp_Jsr		; Branch if yes.
	;Is this a trap?
	move.w	d6,d1
	andi.w	#$30,d1
	beq.s	Handle_Trap			; Branch if yes.
	; Is this a link or unlk?
	cmpi.w	#$10,d1
	beq.s	Handle_Link_Unlk	; Branch if yes.
	; Is this a move to/from USP?
	cmpi.w	#$20,d1
	beq.s	Handle_MoveUSP		; Branch if yes.
	; Finally down to the last nibble!
	btst	#3,d1
	bne.w	InvalidInstruction
	; Is this a stop?
	move.w	d6,d1
	andi.w	#7,d1
	cmpi.w	#2,d1
	beq.s	Handle_Stop			; Branch if yes.
	lsl.w	#2,d1
	; This is one of: reset, stop, rte, rts, trapv or rtr.
	; None of them have operands.
	lea	Reset_Nop_Stop_Rte_Rts_TrapV_Rtrmsgs(pc),a1
	move.l	(a1,d1.w),a1
	bra.w	PrintMessage

Handle_Stop:
	; A stop instruction.
	lea	Stopmsg(pc),a1
	bsr.w	PrintMessage
	moveq	#1,d4
	lea	(a6),a2
	bra.w	Immediate

Handle_Trap:
	; Watch out! A trap!
	lea	Trapmsg(pc),a1
	bsr.w	PrintMessage
	move.w	d6,d0
	andi.w	#$F,d0
	bra.w	PrintByte
	
Handle_Link_Unlk:
	; link or unlk.
	lea	Linkmsg(pc),a1
	; bit 3 says whether this is a link or unlk.
	btst	#3,d6
	beq.s	+
	lea	Unlkmsg(pc),a1
+
	bsr.w	PrintMessage
	move.w	d6,d1
	andi.w	#7,d1
	btst	#3,d6
	bne.w	Reg_Addr_Direct
	bsr.w	Reg_Addr_Direct
	; link has another parameter.
	move.w	#',',(a5)+
	moveq	#1,d4
	lea	(a6),a2
	bra.w	Immediate
	
Handle_MoveUSP:
	; Move to/from USP.
	lea	Movemsg(pc),a1
	bsr.w	PrintMessage
	lea	LongSize(pc),a1
	bsr.w	PrintMessage
	; Bit 3 indicated direction of move.
	btst	#3,d6
	beq.s	+
	; Moving from USP.
	lea	USPmsg(pc),a1
	bsr.w	PrintMessage
	move.w	#',',(a5)+
+
	move.w	d6,d1
	andi.w	#7,d1
	btst	#3,d6
	bne.w	Reg_Addr_Direct
	bsr.w	Reg_Addr_Direct
	; Moving to USP.
	move.w	#',',(a5)+
	lea	USPmsg(pc),a1
	bra.w	PrintMessage
	
Handle_Jmp_Jsr:
	; jmp or jsr.
	; Is this a jmp?
	btst	#6,d6
	bne.s	Handle_Jmp		; Branch if so.
	; We can always have full information on a jsr.
	lea	Jsrmsg(pc),a1
	bsr.w	PrintMessage
	if RawDisassembly=0
	; a6 = return address of jsr.
	move.l $4E(sp),a6
	endif
	lea	(a6),a2
	bra.w	Handle_effective_address

Handle_Jmp:
	; We can always find the target of a jmp, but we can never find the address
	; where it is located at.
	lea	Jmpmsg(pc),a1
	bsr.w	PrintMessage
	if RawDisassembly
	lea	(a6),a2
	bra.w	Handle_effective_address
	else
	; Use the current location as jump target.
	lea	4(sp),a2
	bra.w	Handle_jmp_effective_address
	endif

Handle_Ext_Nbcd_Swap_Pea_MoveMToMem:
	; ext, nbcd, swap, pea, movem to memory.
	; If bit 7 is set, this can be an ext or movem.
	btst	#7,d6
	beq.s	+
	move.w	d6,d1
	andi.w	#$38,d1
	beq.s	Handle_Ext			; This is an ext.
	bra.w	Handle_MoveM		; We have a movem.
+
	; Filter out invalid instructions.
	move.w	d6,d1
	andi.w	#$38,d1
	cmpi.w	#8,d1
	beq.w	InvalidInstruction
	; Is this an nbcd?
	btst	#6,d6
	beq.s	Handle_Nbcd			; Branch if yes.
	; Check if this is a swap.
	tst.b	d1
	beq.s	Handle_Swap			; Branch if yes.
	; We have a pea. Make soup?
	lea	Peamsg(pc),a1
	bsr.w	PrintMessage
	moveq	#2,d4
	lea	(a6),a2
	bra.w	Handle_effective_address

Handle_Swap:
	; Swap.
	lea	Swapmsg(pc),a1
	bsr.w	PrintMessage
	move.w	d6,d1
	andi.w	#7,d1
	bra.w	Reg_Data_Direct
	
Handle_Nbcd:
	; Nbcd.
	lea	Nbcdmsg(pc),a1
	bsr.w	PrintMessage
	moveq	#0,d4
	lea	(a6),a2
	bra.w	Handle_effective_address
	
Handle_Ext:
	; Ext.
	lea	Extmsg(pc),a1
	bsr.w	PrintMessage
	lea	WordSize(pc),a1
	btst	#6,d6
	beq.s	+
	lea	LongSize(pc),a1
+
	bsr.w	PrintMessage
	move.w	d6,d1
	andi.w	#7,d1
	bra.w	Reg_Data_Direct
	
Handle_MoveMToReg:
	; Bit 7 is another instruction that doesn't exist for MC68000.
	btst	#7,d6
	beq.w	InvalidInstruction
	
Handle_MoveM:
	; Movem.
	; This is for an end-of-line marker, as movem instructions can give quite
	; long lines when disassembled.
	lea	(a5),a3
	adda.w	#AddressLoc(39-DisassemblyAlign, 0),a3
	; Save it, for now.
	move.l	a3,-(sp)
	lea	MoveMmsg(pc),a1
	bsr.w	PrintMessage
	lea	WordSize(pc),a1
	moveq	#1,d4
	btst	#6,d6
	beq.s	+
	lea	LongSize(pc),a1
	add.w	d4,d4
+
	bsr.w	PrintMessage
	move.w	d6,d7
	; Compute effective size of souce/target address.
	bsr.w	Calc_effective_address_size
	; d7 = end-of-line address.
	move.l	(sp)+,d7
	; Assuming normal register list.
	lea	Handle_MoveM_Normal_List(pc),a3
	; Need to compensate for source/target address when fetching register list.
	lea	(a6),a4
	suba.w	d5,a4
	moveq	#2,d5
	; If bit 10 is set, we are moving from register list to memory.
	btst	#10,d6
	bne.s	++
	move.w	d6,d1
	andi.w	#$38,d1
	; Is the addressing move -(An)?
	cmpi.w	#$20,d1
	bne.s	+
	; It is; use reversed register list.
	lea	Handle_MoveM_Predecr_List(pc),a3
+
	; Print register list.
	jsr	(a3)
	move.w	#',',(a5)+
	bsr.s	Do_Line_Break
	moveq	#0,d7
+
	lea	(a6),a2
	btst	#10,d6
	beq.w	Handle_effective_address
	bsr.w	Handle_effective_address
	; Moving to register list; print it.
	move.w	#',',(a5)+
	jsr	(a3)
	moveq	#0,d7
	rts

Handle_MoveM_Predecr_List:
	; Prints a register list for -(An), adding line breaks if needed.
	; Fetch list.
	move.w	-2(a4),d0
	; First, do Dn.
	moveq	#7,d3
	lea	Reg_Data_Direct(pc),a1
	bsr.s	+
	; Now do An.
	moveq	#7,d3
	lea	Reg_Addr_Direct(pc),a1

/	; Loop until a register is specified.
	lsl.w	#1,d0
	dbcs.w	d3,-
	; Save the register.
	move.w	d3,d2
	bmi.s	Handle_MoveM_Predecr_List_ret	; We finished the loop, so exit.

-	; Loop through all contiguous registers.
	lsl.w	#1,d0
	dbcc.w	d3,-

	; Add back last bit shifted out.
	roxr.w	#1,d0
	; Have we finished going through the list?
	tst.w	d3
	bpl.s	+
	; Yes; make d3 sane.
	addq.w	#1,d3
+
	; Do we need to print one or more registers?
	cmp.w	d3,d2
	beq.s	+
	; More than one. Print first register.
	moveq	#7,d1
	sub.w	d2,d1
	jsr	(a1)
	move.w	#'-',(a5)+
+
	; Print register.
	moveq	#7,d1
	sub.w	d3,d1
	jsr	(a1)
	; Have we finished going through the list?
	tst.w	d0
	beq.s	Handle_MoveM_Predecr_List_ret
	; No. Print a slash and loop.
	move.w	#'/',(a5)+
	bsr.s	Do_Line_Break
	dbra	d3,--

Handle_MoveM_Predecr_List_ret:
	rts

Do_Line_Break:
	; Prints a register list for all but -(An), adding line breaks if needed.
	move.w	d7,d1
	sub.w	a5,d1
	cmpi.w	#AddressLoc(8, 0),d1
	bhs.s	Did_Line_Break
	asr.w	#1,d1
	subq.w	#1,d1
	
	moveq	#' ',d2
-	move.w	d2,(a5)+
	dbf	d1,-

	move.w	#'\\',(a5)+
	
	moveq	#9+DisassemblyAlign,d1
-	move.w	d2,(a5)+
	dbf	d1,-
	
	addi.w	#AddressLoc(0, 1),d7
	
Did_Line_Break:
	rts

Handle_MoveM_Normal_List:
	; Prints a register list for -(An), adding line breaks if needed.
	; Fetch list.
	move.w	-2(a4),d0
	; First, do Dn.
	moveq	#7,d3
	lea	Reg_Data_Direct(pc),a1
	bsr.s	+
	; Now do An.
	moveq	#7,d3
	lea	Reg_Addr_Direct(pc),a1

/	; Loop until a register is specified.
	lsr.w	#1,d0
	dbcs.w	d3,-
	; Save the register.
	move.w	d3,d2
	bmi.s	Handle_MoveM_Predecr_List_ret	; We finished the loop, so exit.

-	; Loop through all contiguous registers.
	lsr.w	#1,d0
	dbcc.w	d3,-

	; Add back last bit shifted out.
	roxl.w	#1,d0
	; Have we finished going through the list?
	tst.w	d3
	bpl.s	+
	; Yes; make d3 sane.
	addq.w	#1,d3
+
	; Do we need to print one or more registers?
	cmp.w	d3,d2
	beq.s	+
	; More than one. Print first register.
	moveq	#7,d1
	sub.w	d2,d1
	jsr	(a1)
	move.w	#'-',(a5)+
+
	; Print register.
	moveq	#7,d1
	sub.w	d3,d1
	jsr	(a1)
	; Have we finished going through the list?
	tst.w	d0
	beq.s	Handle_MoveM_Normal_List_ret
	; No. Print a slash and loop.
	move.w	#'/',(a5)+
	bsr.s	Do_Line_Break
	dbra	d3,--

Handle_MoveM_Normal_List_ret:
	rts

Handle_Illegal_Tas_Tst:
	; illegal, tas, tst.
	; Is this a tst?
	move.w	d6,d1
	andi.w	#$C0,d1
	cmpi.w	#$C0,d1
	bne.s	Handle_Tst			; Branch if yes.
	; Is this an invalid instruction?
	move.w	d6,d1
	andi.w	#$3F,d1
	cmpi.w	#$3A,d1
	beq.w	InvalidInstruction	; If yes, branch.
	; Is this a illegal instruction?
	cmpi.w	#$3C,d1
	beq.s	Handle_Illegal		; Branch if yes.
	; We have a tas.
	lea	Tasmsg(pc),a1
	bsr.w	PrintMessage
	moveq	#0,d4
	lea	(a6),a2
	bra.w	Handle_effective_address

Handle_Illegal:
	; illegal.
	lea	Illegalmsg(pc),a1
	bra.w	PrintMessage
	
Handle_Tst:
	; tst.
	lea	Tstmsg(pc),a1
	bra.s	+
	
Handle_MoveSRCCR_NegX_Clr_Neg_Not:
	; Is this a move to/from SR/CCR?
	move.w	d6,d1
	andi.w	#$C0,d1
	cmpi.w	#$C0,d1
	beq.s	Handle_MoveSRCCR		; Branch if yes.
	; negx, clr, neg, not.
	move.w	d6,d1
	andi.w	#$600,d1
	lsr.w	#7,d1
	lea	NegX_Clr_Neg_Notmsgs(pc),a1
	move.l	(a1,d1.w),a1
+
	bsr.w	PrintMessage

	move.w	d6,d4
	andi.w	#$C0,d4
	lsr.w	#4,d4
	lea	SizeMsgs(pc),a1
	move.l	(a1,d4.w),a1
	bsr.w	PrintMessage
	lsr.w	#2,d4
	lea	(a6),a2
	bra.w	Handle_effective_address
	
Handle_MoveSRCCR:
	; Move to/from SR/CCR.
	lea	Movemsg(pc),a1
	bsr.w	PrintMessage
	lea	WordSize(pc),a1
	bsr.w	PrintMessage
	moveq	#1,d4
	
	; Bit 10 indicated if this is a move to or from SR/CCR.
	btst	#10,d6
	beq.s	+
	; Move is to SR/CCR.
	lea	(a6),a2
	bsr.w	Handle_effective_address
	move.w	#',',(a5)+
+
	move.w	d6,d1
	andi.w	#$600,d1
	lsr.w	#7,d1
	lea	Immed_to_CCR_SR_Msgs(pc),a1
	move.l	(a1,d1.w),a1
	btst	#10,d6
	bne.w	PrintMessage
	bsr.w	PrintMessage
	; Move is from SR/CCR.
	move.w	#',',(a5)+
	lea	(a6),a2
	bra.w	Handle_effective_address

Handle_Lea_Chk:
	; lea, chk.
	; Is this an invalid instruction on MC68000?
	move.w	d6,d1
	andi.w	#$1C0,d1
	cmpi.w	#$1C0,d1
	bne.s	+					; Branch if not.
	move.w	d6,d1
	andi.w	#$38,d1
	beq.w	InvalidInstruction	; Branch if yes.
+
	; Is this a chk?
	btst	#6,d6
	beq.s	Handle_Chk			; Branch if yes.
	; lea.
	lea	Leamsg(pc),a1
	bsr.w	PrintMessage
	moveq	#2,d4
	bra.s	+
	
Handle_Chk:
	; chk.
	btst	#7,d6
	beq.w	InvalidInstruction
	lea	Chkmsg(pc),a1
	bsr.w	PrintMessage
	moveq	#1,d4
+
	lea	(a6),a2
	bsr.w	Handle_effective_address
	move.w	#',',(a5)+
	move.w	d6,d1
	andi.w	#$E00,d1
	rol.w	#7,d1
	btst	#6,d6
	beq.w	Reg_Data_Direct
	bra.w	Reg_Addr_Direct
; ===========================================================================
NegX_Clr_Neg_Notmsgs:
		dc.l NegXmsg,Clrmsg,Negmsg,Notmsg
NegXmsg:	opcodeLetters palette_line_1,"NEGX"
Clrmsg:	opcodeLetters palette_line_1,"CLR"
Negmsg:	opcodeLetters palette_line_1,"NEG"
Notmsg:	opcodeLetters palette_line_1,"NOT"

Reset_Nop_Stop_Rte_Rts_TrapV_Rtrmsgs:
		dc.l Resetmsg,Nopmsg,Stopmsg,Rtemsg
		dc.l InvalidInstructionMsg,Rtsmsg,TrapVmsg,Rtrmsg
Resetmsg:	opcodeLetters palette_line_1,"RESET"
Nopmsg:	opcodeLetters palette_line_1,"NOP"
Rtemsg:	opcodeLetters palette_line_1,"RTE"
Rtsmsg:	opcodeLetters palette_line_1,"RTS"
TrapVmsg:	opcodeLetters palette_line_1,"TRAPV"
Rtrmsg:	opcodeLetters palette_line_1,"RTR"

Nbcdmsg:	opcodeLetters palette_line_1,"NBCD.B  "
Extmsg:	opcodeLetters palette_line_1,"EXT"
Swapmsg:	opcodeLetters palette_line_1,"SWAP  "
MoveMmsg:	opcodeLetters palette_line_1,"MOVEM"

Stopmsg:	opcodeLetters palette_line_1,"STOP  "
USPmsg:	opcodeLetters palette_line_1,"USP"
Linkmsg:	opcodeLetters palette_line_1,"LINK  "
Unlkmsg:	opcodeLetters palette_line_1,"UNLK  "
Trapmsg:	opcodeLetters palette_line_1,"TRAP  #"
Jmpmsg:	opcodeLetters palette_line_1,"JMP  "
Jsrmsg:	opcodeLetters palette_line_1,"JSR  "
Leamsg:	opcodeLetters palette_line_1,"LEA  "
Peamsg:	opcodeLetters palette_line_1,"PEA  "
Chkmsg:	opcodeLetters palette_line_1,"CHK.W  "
Tstmsg:	opcodeLetters palette_line_1,"TST"
Tasmsg:	opcodeLetters palette_line_1,"TAS.B  "
Illegalmsg:	opcodeLetters palette_line_1,"ILLEGAL"
; ===========================================================================
Dis_AddQ_SubQ_Scc_DBcc:	; %0101
	; Is this addq or subq?
	move.w	d6,d1
	andi.w	#$C0,d1
	cmpi.w	#$C0,d1
	bne.w	Handle_AddQ_SubQ		; Branch if yes.
	; Is this a loop instruction (DBcc)?
	move.w	d6,d1
	andi.w	#$38,d1
	cmpi.w	#8,d1
	beq.s	Handle_Dbcc				; Branch if yes.
	; Is this Scc?
	cmpi.w	#$38,d1
	bne.w	Handle_Scc				; Branch if yes.
	move.w	d6,d1
	andi.w	#6,d1
	beq.w	Handle_Scc				; Branch if yes.
	bra.w	InvalidInstruction

Handle_Dbcc:
	; DBcc.
	lea	DbCCmsg(pc),a1
	bsr.w	PrintMessage
	move.w	d6,d2
	andi.w	#$F00,d2
	lsr.w	#6,d2
	lea	Db_Trap_S_CC(pc),a1
	move.l	(a1,d2.w),a1
	bsr.w	PrintMessage
	lea	WordSize(pc),a1
	bsr.w	PrintMessage
	move.w	d6,d1
	andi.w	#7,d1
	bsr.w	Reg_Data_Direct
	move.w	#',',(a5)+
	if RawDisassembly=0
	move.w	$48(sp),d3	; sr
	moveq	#0,d0		; will be used to check whether or not the condition was true
	lea	Check_CC(pc),a1
	move.l	(a1,d2.w),a1
	; Restore old condition codes and set d0 according to loop condition.
	move.b	d3,ccr
	jsr	(a1)
	; If the condition was false, we can recover everything; so was it true?
	tst.b	d0
	bne.s	Handle_Dbcc_TrueCC		; Branch if yes.
	; We are just after the instruction; we can recover everything.
	; This case is impossible to generate an address error, though, as the
	; DBcc itself would have to be odd-aligned, and the previous instruction
	; would have triggered the exception instead.
	; Could be useful for bus errors, though.
	endif
	move.w	-2(a6),d0
	ext.l	d0
	add.l	a6,d0
	sub.l	#2,d0
	bra.w	PrintLong
	
	if RawDisassembly=0
Handle_Dbcc_TrueCC:
	; Get the counter value; if it is -1, then we still can recover everything.
	lsl.w	#4,d1
	move.l	4(sp,d1.w),d1
	; So was the loop counter -1?
	cmpi.w	#-1,d1
	beq.s	+						; Branch if yes.

	; We can recover only the target address of the branch.
	moveq	#-1,d7
	move.l	a6,d0
	bra.w	PrintLong
+
	; We have complete information, even in this case.
	move.w	-2(a6),d0
	ext.l	d0
	add.l	a6,d0
	sub.l	#2,d0
	bra.w	PrintLong
	endif
	
Handle_Scc:
	; Scc.
	move.w	#'S',(a5)+
	move.w	d6,d2
	andi.w	#$F00,d2
	lsr.w	#6,d2
	lea	Db_Trap_S_CC(pc),a1
	move.l	(a1,d2.w),a1
	bsr.w	PrintMessage
	lea	ByteSize(pc),a1
	bsr.w	PrintMessage
	lea	(a6),a2
	bra.w	Handle_effective_address

Handle_AddQ_SubQ:
	; addq/subq.
	lea	AddQmsg(pc),a1
	btst	#8,d6
	beq.s	+
	lea	SubQmsg(pc),a1
+
	bsr.w	PrintMessage
	move.w	d6,d4
	andi.w	#$C0,d4
	lsr.w	#4,d4
	lea	SizeMsgs(pc),a1
	move.l	(a1,d4.w),a1
	bsr.w	PrintMessage
	lsr.w	#2,d4
	move.w	#'#',(a5)+
	move.w	d6,d2
	andi.w	#$E00,d2
	rol.w	#7,d2
	bne.s	+
	addq.w	#8,d2
+
	addi.w	#'0'|palette_line_2,d2
	move.w	d2,(a5)+
	move.w	#',',(a5)+
	lea	(a6),a2
	bra.w	Handle_effective_address
; ===========================================================================
AddQmsg:	opcodeLetters palette_line_1,"ADDQ"
SubQmsg:	opcodeLetters palette_line_1,"SUBQ"
DbCCmsg:	opcodeLetters palette_line_1,"DB"
; ===========================================================================
Db_Trap_S_CC:
		dc.l Tcmsg,Fcmsg,HImsg,LSmsg,CCmsg,CSmsg,NEmsg,EQmsg
		dc.l VCmsg,VSmsg,PLmsg,MImsg,GEmsg,LTmsg,GTmsg,LEmsg
; ===========================================================================
Dis_Bcc_Bsr_Bra:             	; %0110
	; Bcc, BSR, BRA.
	move.w	#'B',(a5)+
	move.w	d6,d2
	andi.w	#$F00,d2
	lsr.w	#6,d2
	lea	Branch_CC(pc),a1
	move.l	(a1,d2.w),a1
	bsr.w	PrintMessage

	if RawDisassembly=0
	; Is this a bsr?
	cmpi.w	#4,d2
	beq.s	Handle_Bsr			; Branch if yes.
	; Is this a bra?
	tst.w	d2
	beq.s	Handle_Bra_TrueCC	; Branch if yes.
	move.w	$48(sp),d3			; Fetch value of sr at the time of the exception.
	; d0 will be used to check whether or not the condition was true.
	moveq	#0,d0
	; Get condition check handlers.
	lea	Check_CC(pc),a1
	move.l	(a1,d2.w),a1
	; Restore ccr and check conditions.
	move.b	d3,ccr
	jsr	(a1)
	; Was the condition true?
	tst.b	d0
	bne.s	Handle_Bra_TrueCC		; Branch if yes.
	; We are just after the instruction; we can recover everything.
	; This case is impossible to generate an address error, though, as the
	; branch itself would have to be odd-aligned, and the previous instruction
	; would have triggered the exception.
	; Could be useful for bus errors, though.
	bra.w	Handle_Bcc_Label

Handle_Bra_TrueCC:
	; We can only ever recover the jump target.
	moveq	#-1,d7
	lea	ByteSize(pc),a1
	tst.b	d6
	bne.s	+
	lea	WordSize(pc),a1
+
	bsr.w	PrintMessage
	move.l	a6,d0
	bra.w	PrintLong

Handle_Bsr:
	; a6 = pointer to bsr return target.
	move.l $4E(sp),a6
	
	endif
Handle_Bcc_Label:
	; This is for the cases where complete information is available.
	; Was this a short (.s) jump?
	tst.b	d6
	beq.s	+
	lea	ByteSize(pc),a1
	bsr.w	PrintMessage
	move.b	d6,d0
	ext.w	d0
	ext.l	d0
	add.l	a6,d0
	bra.w	PrintLong
+
	if RawDisassembly=0
	cmpi.w	#4,d2
	beq.s	+
	moveq	#1,d7
	endif
+
	lea	WordSize(pc),a1
	bsr.w	PrintMessage
	move.w	-2(a6),d0
	ext.l	d0
	add.l	a6,d0
	sub.l	#2,d0
	bra.w	PrintLong
; ===========================================================================
Branch_CC:
		dc.l RAmsg,SRmsg,HImsg,LSmsg,CCmsg,CSmsg,NEmsg,EQmsg
		dc.l VCmsg,VSmsg,PLmsg,MImsg,GEmsg,LTmsg,GTmsg,LEmsg
Tcmsg:	opcodeLetters palette_line_1,"T"
Fcmsg:	opcodeLetters palette_line_1,"F"
RAmsg:	opcodeLetters palette_line_1,"RA"
SRmsg:	opcodeLetters palette_line_1,"SR"
HImsg:	opcodeLetters palette_line_1,"HI"
LSmsg:	opcodeLetters palette_line_1,"LS"
CCmsg:	opcodeLetters palette_line_1,"CC"
CSmsg:	opcodeLetters palette_line_1,"CS"
NEmsg:	opcodeLetters palette_line_1,"NE"
EQmsg:	opcodeLetters palette_line_1,"EQ"
VCmsg:	opcodeLetters palette_line_1,"VC"
VSmsg:	opcodeLetters palette_line_1,"VS"
PLmsg:	opcodeLetters palette_line_1,"PL"
MImsg:	opcodeLetters palette_line_1,"MI"
GEmsg:	opcodeLetters palette_line_1,"GE"
LTmsg:	opcodeLetters palette_line_1,"LT"
GTmsg:	opcodeLetters palette_line_1,"GT"
LEmsg:	opcodeLetters palette_line_1,"LE"

; Handlers for condition checks.
Check_CC:
		dc.l Tccheck,Fccheck,HIcheck,LScheck,CCcheck,CScheck,NEcheck,EQcheck
		dc.l VCcheck,VScheck,PLcheck,MIcheck,GEcheck,LTcheck,GTcheck,LEcheck
Tccheck:
	st.b	d0
	rts
Fccheck:
	sf.b	d0
	rts
HIcheck:
	shi.b	d0
	rts
LScheck:
	sls.b	d0
	rts
CCcheck:
	scc.b	d0
	rts
CScheck:
	scs.b	d0
	rts
NEcheck:
	sne.b	d0
	rts
EQcheck:
	seq.b	d0
	rts
VCcheck:
	svc.b	d0
	rts
VScheck:
	svs.b	d0
	rts
PLcheck:
	spl.b	d0
	rts
MIcheck:
	smi.b	d0
	rts
GEcheck:
	sge.b	d0
	rts
LTcheck:
	slt.b	d0
	rts
GTcheck:
	sgt.b	d0
	rts
LEcheck:
	sle.b	d0
	rts
; ===========================================================================
Dis_MoveQ:                   	; %0111
	; moveq.
	lea	Moveqmsg(pc),a1
	bsr.w	PrintMessage
	move.w	d6,d0
	bsr.w	PrintByteSigned
	move.w	#',',(a5)+
	move.w	d6,d1
	andi.w	#$E00,d1
	rol.w	#7,d1
	bra.w	Reg_Data_Direct
; ===========================================================================
Moveqmsg:	opcodeLetters palette_line_1,"MOVEQ  #"
; ===========================================================================
Dis_Or_Div_Sbcd:             	; %1000
	; or, div, sbcd.
	; Is this a div?
	move.w	d6,d1
	andi.w	#$C0,d1
	cmpi.w	#$C0,d1
	beq.w	Handle_Div			; Branch if yes.
	; Filter out invalid instructions.
	move.w	d6,d1
	andi.w	#$1F0,d1
	cmpi.w	#$180,d1
	beq.w	InvalidInstruction
	cmpi.w	#$140,d1
	beq.w	InvalidInstruction
	; Is this a sbcd?
	andi.w	#$1F0,d1
	cmpi.w	#$100,d1
	beq.s	Handle_Sbcd			; Branch if yes.
	lea	Ormsg(pc),a1
	bsr.w	PrintMessage
	; or, sub.
	move.w	d6,d4
	andi.w	#$C0,d4
	lsr.w	#4,d4
	bra.w	Handle_Add_And_Or_Sub

Handle_Sbcd:
	; sbcd.
	lea	Sbcdmsg(pc),a1
	bsr.w	PrintMessage
	moveq	#0,d4
	bra.w	Handle_AddX_Abcd_Pack_Unpk_SubX_Sbcd_Common

Handle_Div:
	; div.
	lea	Divmsg(pc),a1
	bra.w	Handle_Div_Mul_Common
; ===========================================================================
Sbcdmsg:	opcodeLetters palette_line_1,"SBCD.B  "
Ormsg:	opcodeLetters palette_line_1,"OR"
Divmsg:	opcodeLetters palette_line_1,"DIV"
; ===========================================================================
Dis_Cmp_Eor:                 	; %1011
	; cmp, eor.
	; Is this a cmpm?
	move.w	d6,d1
	andi.w	#$138,d1
	cmpi.w	#$108,d1
	beq.w	Handle_CmpM			; Branch if yes.
	; Is this a cmpa?
	move.w	d6,d1
	andi.w	#$C0,d1
	cmpi.w	#$C0,d1
	beq.s	Handle_CmpA			; Branch if yes.
	; Is this a normal cmp?
	btst	#8,d6
	beq.s	Handle_Cmp			; Branch if yes.
	; eor.
	lea	Eormsg(pc),a1
	bsr.w	PrintMessage
	move.w	d6,d4
	andi.w	#$C0,d4
	lsr.w	#4,d4
	lea	SizeMsgs(pc),a1
	move.l	(a1,d4.w),a1
	bsr.w	PrintMessage
	lsr.w	#2,d4
	move.w	d6,d1
	andi.w	#$E00,d1
	rol.w	#7,d1
	bsr.w	Reg_Data_Direct
	move.w	#',',(a5)+
	lea	(a6),a2
	bra.w	Handle_effective_address
	
Handle_Cmp:
	; cmp.
	lea	Cmpmsg(pc),a1
	lea	Reg_Data_Direct(pc),a3
	bsr.w	PrintMessage
	move.w	d6,d4
	andi.w	#$C0,d4
	lsr.w	#4,d4
	bra.s	+
	
Handle_CmpA:
	; cmpa.
	lea	CmpAmsg(pc),a1
	lea	Reg_Addr_Direct(pc),a3
	bsr.w	PrintMessage
	moveq	#4,d4
	btst	#8,d6
	beq.s	+
	add.b	d4,d4
+
	lea	SizeMsgs(pc),a1
	move.l	(a1,d4.w),a1
	bsr.w	PrintMessage
	lsr.w	#2,d4
	lea	(a6),a2
	bsr.w	Handle_effective_address
	move.w	#',',(a5)+
	move.w	d6,d1
	andi.w	#$E00,d1
	rol.w	#7,d1
	jmp	(a3)
	
Handle_CmpM:
	; cmpm.
	lea	CmpMmsg(pc),a1
	bsr.w	PrintMessage
	move.w	d6,d4
	andi.w	#$C0,d4
	lsr.w	#4,d4
	lea	SizeMsgs(pc),a1
	move.l	(a1,d4.w),a1
	bsr.w	PrintMessage
	move.w	d6,d1
	andi.w	#7,d1
	bsr.w	Reg_Addr_Post_Indirect
	move.w	d6,d1
	andi.w	#$E00,d1
	rol.w	#7,d1
	bra.w	Reg_Addr_Post_Indirect
; ===========================================================================
Eormsg:	opcodeLetters palette_line_1,"EOR"
Cmpmsg:	opcodeLetters palette_line_1,"CMP"
CmpAmsg:	opcodeLetters palette_line_1,"CMPA"
CmpMmsg:	opcodeLetters palette_line_1,"CMPM"
; ===========================================================================
Dis_And_Mul_Abcd_Exg:        	; %1100
	; and, mul, abcd, exg.
	; Is this a mul?
	move.w	d6,d1
	andi.w	#$C0,d1
	cmpi.w	#$C0,d1
	beq.w	Handle_Mul			; Branch if so.
	; Is this an exg?
	move.w	d6,d1
	andi.w	#$1F8,d1
	cmpi.w	#$188,d1
	beq.s	Handle_Exg_Mixed	; Branch if yes.
	cmpi.w	#$148,d1
	beq.s	Handle_Exg_Both_Addr	; Branch if yes.
	cmpi.w	#$140,d1
	beq.s	Handle_Exg_Both_Data	; Branch if yes.
	; Is this an abcd?
	andi.w	#$1F0,d1
	cmpi.w	#$100,d1
	beq.s	Handle_Abcd				; Branch if yes.
	; and.
	lea	AndMsg(pc),a1
	bsr.w	PrintMessage
	move.w	d6,d4
	andi.w	#$C0,d4
	lsr.w	#4,d4
	bra.w	Handle_Add_And_Or_Sub

Handle_Exg_Both_Data:
	; exg dx,dy.
	lea	Reg_Data_Direct(pc),a2
	lea	Reg_Data_Direct(pc),a3
	bra.s	Handle_Exg

Handle_Exg_Both_Addr:
	; exg ax,ay.
	lea	Reg_Addr_Indirect(pc),a2
	lea	Reg_Addr_Indirect(pc),a3
	bra.s	Handle_Exg

Handle_Exg_Mixed:
	; exg dx,ay.
	lea	Reg_Data_Direct(pc),a2
	lea	Reg_Addr_Indirect(pc),a3

Handle_Exg:
	; exg.
	lea	Exgmsg(pc),a1
	bsr.w	PrintMessage
	move.w	d6,d1
	andi.w	#$E00,d1
	rol.w	#7,d1
	jsr	(a2)
	move.w	#',',(a5)+
	move.w	d6,d1
	andi.w	#7,d1
	jmp	(a3)
	
Handle_Abcd:
	; The alphabet.
	lea	Abcdmsg(pc),a1
	bsr.w	PrintMessage
	moveq	#0,d4
	bra.w	Handle_AddX_Abcd_Pack_Unpk_SubX_Sbcd_Common

Handle_Mul:
	; A mul? Is this Dark Sun?
	lea	Mulmsg(pc),a1

Handle_Div_Mul_Common:
	; Div/mul.
	; Print u or s as needed.
	bsr.w	PrintMessage
	moveq	#'U',d2
	btst	#8,d6
	beq.s	+
	moveq	#'S',d2
+
	move.w	d2,(a5)+
	lea	WordSize(pc),a1
	bsr.w	PrintMessage
	moveq	#1,d4

	lea	(a6),a2
	bsr.w	Handle_effective_address
	move.w	#',',(a5)+
	move.w	d6,d1
	andi.w	#$E00,d1
	rol.w	#7,d1
	bra.w	Reg_Data_Direct
; ===========================================================================
Abcdmsg:	opcodeLetters palette_line_1,"ABCD.B  "
Andmsg:	opcodeLetters palette_line_1,"AND"
Exgmsg:	opcodeLetters palette_line_1,"EXG.L  "
Mulmsg:	opcodeLetters palette_line_1,"MUL"
; ===========================================================================
Dis_Sub_SubX:                	; %1001
	; sub, subx.
	lea	Submsg(pc),a1
	bra.s	+
Dis_Add_AddX:                	; %1101
	; add, addx.
	lea	AddMsg(pc),a1
+
	bsr.w	PrintMessage
	; Is this addx/subx?
	move.w	d6,d1
	andi.w	#$130,d1
	cmpi.w	#$100,d1
	beq.w	Handle_AddX_SubX	; Branch if yes.
	; Is this add/and/or/sub?
	move.w	d6,d4
	andi.w	#$C0,d4
	lsr.w	#4,d4
	cmpi.b	#$C,d4
	bne.s	Handle_Add_And_Or_Sub	; Branch if yes.
	; adda/suba.
	move.w	#'A',(a5)+
	moveq	#4,d4
	btst	#8,d6
	beq.s	+
	add.b	d4,d4
+
	lea	SizeMsgs(pc),a1
	move.l	(a1,d4.w),a1
	bsr.w	PrintMessage
	lsr.w	#2,d4
	lea	(a6),a2
	bsr.w	Handle_effective_address
	move.w	#',',(a5)+
	move.w	d6,d1
	andi.w	#$E00,d1
	rol.w	#7,d1
	bra.w	Reg_Addr_Direct

Handle_Add_And_Or_Sub:
	; add, and, or, sub.
	lea	SizeMsgs(pc),a1
	move.l	(a1,d4.w),a1
	bsr.w	PrintMessage
	lsr.w	#2,d4
	
	btst	#8,d6
	bne.s	+
	; First parameter is effective address.
	lea	(a6),a2
	bsr.w	Handle_effective_address
	move.w	#',',(a5)+
+
	; Print register.
	move.w	d6,d1
	andi.w	#$E00,d1
	rol.w	#7,d1
	btst	#8,d6
	beq.w	Reg_Data_Direct
	bsr.w	Reg_Data_Direct
	; Second parameter is effective address.
	move.w	#',',(a5)+
	lea	(a6),a2
	bra.w	Handle_effective_address

Handle_AddX_SubX:
	; addx/subx.
	move.w	#'X',(a5)+
	move.w	d6,d4
	andi.w	#$C0,d4
	lsr.w	#4,d4
	lea	SizeMsgs(pc),a1
	move.l	(a1,d4.w),a1
	bsr.w	PrintMessage

Handle_AddX_Abcd_Pack_Unpk_SubX_Sbcd_Common:
	; Common to lots of instructions.
	lea	Reg_Data_Direct(pc),a2
	; Bit 3 determines if parameters are Dn or -(An).
	btst	#3,d6
	beq.s	+
	lea	Reg_Addr_Pre_Indirect(pc),a2
+
	move.w	d6,d1
	andi.w	#7,d1
	jsr	(a2)
	move.w	#',',(a5)+
	move.w	d6,d1
	andi.w	#$E00,d1
	rol.w	#7,d1
	jmp	(a2)
; ===========================================================================
Addmsg:	opcodeLetters palette_line_1,"ADD"
Submsg:	opcodeLetters palette_line_1,"SUB"
; ===========================================================================
Dis_Shift_Rotate:   	; %1110
	; Shift and rotate instructions.
	; Filter out invalid instructions on the MC68000.
	move.w	d6,d1
	andi.w	#$8C0,d1
	cmpi.w	#$8C0,d1
	beq.w	InvalidInstruction

	; Are we doing a register or memory shift?
	andi.w	#$C0,d1
	move.w	d6,d2
	cmpi.w	#$C0,d1
	beq.s	+
	; Register shift
	andi.w	#$18,d2
	lsr.w	#1,d2
	bra.s	++
+
	; Memory shift
	andi.w	#$600,d2
	lsr.w	#7,d2
+
	move.l	ShiftMessages(pc,d2.w),a1
	bsr.w	PrintMessage
	; Bit 8 indicates direction of shift.
	moveq	#'R',d2
	btst	#8,d6
	beq.s	+
	moveq	#'L',d2
+
	move.w	d2,(a5)+
	
	move.w	d1,d3
	lsr.w	#4,d3
	lea	SizeMsgs(pc),a1
	move.l	(a1,d3.w),a1
	bsr.w	PrintMessage

	cmpi.w	#$C0,d1
	beq.s	MemoryShift
	
	; Register shift
	move.w	#'D'|palette_line_3,d2
	move.w	#'0'|palette_line_3,d1
	moveq	#0,d3
	btst	#5,d6
	bne.s	+
	moveq	#8,d3
	move.w	#'#',d2
	move.w	#'0'|palette_line_2,d1
+
	move.w	d2,(a5)+

	move.w	d6,d2
	andi.w	#$E00,d2
	rol.w	#7,d2
	bne.s	+
	add.w	d3,d2
+
	add.w	d1,d2
	move.w	d2,(a5)+
	move.w	#',',(a5)+
	move.w	d6,d1
	andi.w	#7,d1
	bra.w	Reg_Data_Direct
	
MemoryShift:
	lea	(a6),a2
	bra.w	Handle_effective_address
; ===========================================================================
ShiftMessages:
		dc.l ASdmsg,LSdmsg,ROXdmsg,ROdmsg
ASdmsg:	opcodeLetters palette_line_1,"AS"
LSdmsg:	opcodeLetters palette_line_1,"LS"
ROXdmsg:	opcodeLetters palette_line_1,"ROX"
ROdmsg:	opcodeLetters palette_line_1,"RO"
; ===========================================================================
InvalidInstruction:          	; %1010
                             	; %1111
	lea	InvalidInstructionMsg(pc),a1
	bra.w	PrintMessage
; ===========================================================================
InvalidInstructionMsg:	opcodeLetters palette_line_2,"         INVALID INSTRUCTION!"

SizeMsgs:
		dc.l ByteSize,WordSize,LongSize,NoSize
ByteSize:	opcodeLetters palette_line_1,".B  "
WordSize:	opcodeLetters palette_line_1,".W  "
LongSize:	opcodeLetters palette_line_1,".L  "
NoSize:		opcodeLetters palette_line_1,"  "
; ===========================================================================
; Computes size of affective address data
; Input:
;         d4	Instruction size (%00 = byte, %01 = word, %10 = long, all others = invalid)
;         d7	Effective address bits
; Output:
;         d5	Size (in bytes) of data for effective address
Calc_effective_address_size:
	moveq	#0,d5	; Start with zero bytes
	move.w	d7,d0
	andi.w	#$38,d0
	cmpi.b	#$20,d0	; Reg (data|addr) direct, reg addr indirect, reg addr post-incr indirect, reg addr pre-decr indirect?
	ble.s	++		; rts if so
	addq.w	#2,d5	; All others have at least one word
	cmpi.b	#$38,d0	; Misc EA modes?
	bne.s	++		; rts if not
	move.w	d7,d1
	andi.w	#$7,d1
	cmpi.b	#$1,d1	; Abs long
	beq.s	+		; Need 2 more bytes
	cmpi.b	#$4,d1	; Abs short, PC disp indirect, PC index indirect?
	blt.s	++		; rts if so
	cmpi.b	#2,d4	; Long immed?
	blo.s	++		; rts if not
+
	addq.w	#2,d5	; Two words
+
	rts
; ===========================================================================
; Prints effective address for opcode
; Input:
;         a2	Pointer to address just after extension word (if any) in RAM
;         a5	Write destination (in RAM)
;         d4	Instruction size (%00 = byte, %01 = word, %10 = long, all others = invalid)
;         d6	Instruction register
; Output:
;         d5	Increased by size (in bytes) of extension words (if any)
Handle_effective_address:
	move.w	d6,d0
	move.w	d6,d1
	andi.w	#$38,d0
	lsr.w	#2,d0
	andi.w	#$7,d1
	move.w	EACodeMap(pc,d0.w),d0
	jmp	EACodeMap(pc,d0.w)
; ===========================================================================
EACodeMap:	offsetTable
	offsetTableEntry.w	Reg_Data_Direct      	; %000
	offsetTableEntry.w	Reg_Addr_Direct      	; %001
	offsetTableEntry.w	Reg_Addr_Indirect   	; %010
	offsetTableEntry.w	Reg_Addr_Post_Indirect	; %011
	offsetTableEntry.w	Reg_Addr_Pre_Indirect	; %100
	offsetTableEntry.w	Reg_Addr_Disp_Indirect	; %101
	offsetTableEntry.w	Reg_Addr_Index_Indirect	; %110
	offsetTableEntry.w	Misc_EA_Modes       	; %111
; ===========================================================================
Reg_Data_Direct:
	;Dn
	move.w	#'D'|palette_line_3,(a5)+
	bra.s	+
	
Reg_Addr_Direct:
	;An
	move.w	#'A'|palette_line_3,(a5)+
+
	addi.w	#'0'|palette_line_3,d1
	move.w	d1,(a5)+
	rts
; ===========================================================================
Reg_Addr_Indirect:
	;(An)
	move.w	#'(',(a5)+
	move.w	#'A'|palette_line_3,(a5)+
	addi.w	#'0'|palette_line_3,d1
	move.w	d1,(a5)+
	move.w	#')',(a5)+
	rts
; ===========================================================================
Reg_Addr_Post_Indirect:
	;(An)+
	bsr.s	Reg_Addr_Indirect
	move.w	#'+',(a5)+
	rts
; ===========================================================================
Reg_Addr_Pre_Indirect:
	;-(An)
	move.w	#'-',(a5)+
	bra.s	Reg_Addr_Indirect
; ===========================================================================
Reg_Addr_Disp_Indirect:
	;d16(An)
	addq.w	#2,d5
	move.w	-2(a2),d0
	beq.s	Reg_Addr_Indirect
	bsr.w	PrintWordSigned
	bra.s	Reg_Addr_Indirect
; ===========================================================================
Reg_Addr_Index_Indirect:
	;d8(An,Xn.S)
	addq.w	#2,d5
	move.w	-2(a2),d0
	tst.b	d0
	beq.s	+
	bsr.w	PrintByteSigned
+
	move.w	#'(',(a5)+
	bsr.s	Reg_Addr_Direct
	move.w	#',',(a5)+
	move.w	#'D'|palette_line_3,d2
	btst	#15,d0
	beq.s	+
	move.w	#'A'|palette_line_3,d2
+
	move.w	d2,(a5)+
	move.w	d0,d2
	andi.w	#$7000,d2
	rol.w	#4,d2
	addi.w	#'0'|palette_line_3,d2
	move.w	d2,(a5)+
	move.w	#'.',(a5)+
	move.w	#'W'|palette_line_3,d2
	btst	#11,d0
	beq.s	+
	move.w	#'L'|palette_line_3,d2
+
	move.w	d2,(a5)+
	move.w	#')',(a5)+
	rts
; ===========================================================================
Misc_EA_Modes:
	lsl.w	#1,d1
	move.w	MiscEACodeMap(pc,d1.w),d1
	jmp	MiscEACodeMap(pc,d1.w)
; ===========================================================================
MiscEACodeMap:	offsetTable
	offsetTableEntry.w	Abs_Short         	; %000
	offsetTableEntry.w	Abs_Long          	; %001
	offsetTableEntry.w	PC_Disp_Indirect  	; %010
	offsetTableEntry.w	PC_Index_Indirect 	; %011
	offsetTableEntry.w	Immediate         	; %100
	offsetTableEntry.w	InvalidAddrModeMsg	; %101
	offsetTableEntry.w	InvalidAddrModeMsg	; %110
	offsetTableEntry.w	InvalidAddrModeMsg	; %111
; ===========================================================================
Abs_Short:
	addq.w	#2,d5
	move.w	#'(',(a5)+
	move.w	-2(a2),d0
	bsr.w	PrintWord
	move.w	#')',(a5)+
	move.w	#'.',(a5)+
	move.w	#'W'|palette_line_1,(a5)+
	rts
; ===========================================================================
Abs_Long:
	addq.w	#4,d5
	move.w	#'(',(a5)+
	move.l	-4(a2),d0
	bsr.w	PrintLong
	move.w	#')',(a5)+
	move.w	#'.',(a5)+
	move.w	#'L'|palette_line_1,(a5)+
	rts
; ===========================================================================
PC_Disp_Indirect:
	;d16(PC)
	addq.w	#2,d5
	move.w	-2(a2),d0
	beq.s	+
	bsr.w	PrintWordSigned
+
	move.w	#'(',(a5)+
	move.w	#'P'|palette_line_3,(a5)+
	move.w	#'C'|palette_line_3,(a5)+
	move.w	#')',(a5)+
	rts
; ===========================================================================
PC_Index_Indirect:
	;d8(PC,Xn.S)
	addq.w	#2,d5
	move.w	-2(a2),d0
	tst.b	d0
	beq.s	+
	bsr.w	PrintByteSigned
+
	move.w	#'(',(a5)+
	move.w	#'P'|palette_line_3,(a5)+
	move.w	#'C'|palette_line_3,(a5)+
	move.w	#',',(a5)+
	move.w	#'D'|palette_line_3,d2
	btst	#15,d0
	beq.s	+
	move.w	#'A'|palette_line_3,d2
+
	move.w	d2,(a5)+
	move.w	d0,d2
	andi.w	#$7000,d2
	rol.w	#4,d2
	addi.w	#'0'|palette_line_3,d2
	move.w	d2,(a5)+
	move.w	#'.',(a5)+
	move.w	#'W'|palette_line_1,d2
	btst	#11,d0
	beq.s	+
	move.w	#'L'|palette_line_1,d2
+
	move.w	d2,(a5)+
	move.w	#')',(a5)+
	rts
; ===========================================================================
Immediate:
	;#value
	move.w	#'#',(a5)+
	cmpi.b	#2,d4
	bhs.s	LongImmed
	addq.w	#2,d5
	move.w	-2(a2),d0
	tst.b	d4
	beq.w	PrintByte
	bra.w	PrintWord
LongImmed:
	addq.w	#4,d5
	move.l	-4(a2),d0
	bra.w	PrintLong
; ===========================================================================
InvalidAddrMode:	; %101,%110,%111
	lea	InvalidAddrModeMsg(pc),a1
	bra.w	PrintMessage
; ===========================================================================
	if RawDisassembly=0
; Prints effective address for jmp opcodes
; Attempts to recover as much information as possible
; Input:
;         a2	Pointer to saved registers (d0-d7,a0-a7,sr)
;         a5	Write destination (in RAM)
;         a6	Program counter after jmp
;         d4	Instruction size (%00 = byte, %01 = word, %10 = long, all others = invalid)
;         d6	Instruction register
; Output:
;         d5	Increased by size (in bytes) of extension words (if any)
;         d7	1 if information could not be recovered, -1 if the instruction's address
;               cannot be recovered, 0 otherwise
Handle_jmp_effective_address:
	moveq	#-1,d7		; We can never recover instruction's address of jmp
	move.w	d6,d0
	move.w	d6,d1
	andi.w	#$38,d0
	lsr.w	#2,d0
	andi.w	#$7,d1
	move.w	jmp_EA_CodeMap(pc,d0.w),d0
	jmp	jmp_EA_CodeMap(pc,d0.w)
; ===========================================================================
jmp_EA_CodeMap:	offsetTable
	offsetTableEntry.w	InvalidAddrMode         	; %000
	offsetTableEntry.w	InvalidAddrMode         	; %001
	offsetTableEntry.w	Reg_Addr_Indirect       	; %010
	offsetTableEntry.w	InvalidAddrMode         	; %011
	offsetTableEntry.w	InvalidAddrMode         	; %100
	offsetTableEntry.w	jmp_Reg_Addr_Disp_Indirect	; %101
	offsetTableEntry.w	jmp_Reg_Addr_Index_Indirect	; %110
	offsetTableEntry.w	jmp_Misc_EA_Modes       	; %111
; ===========================================================================
jmp_Reg_Addr_Disp_Indirect:
	;d16(An)
	; We can recover everything.
	addq.w	#2,d5
	move.w	d1,d0			; d0 = register # (0-7) of An
	lsl.w	#2,d0			; d0 = number of bytes before register in its register group
	move.l	$20(a2,d0.w),d0	; $20 = number of bytes before first address register; d0 = An
	sub.l	a6,d0			; d0 = -d16
	neg.l	d0				; d0 = d16
	beq.w	Reg_Addr_Indirect
	bsr.w	PrintWordSigned
	bra.w	Reg_Addr_Indirect
; ===========================================================================
jmp_Reg_Addr_Index_Indirect:
	;d8(An,Xn.S)
	; We can recover nothing.
	moveq	#1,d7
	addq.w	#2,d5
	move.w	#'$',(a5)+
	move.l	#(('?'|palette_line_2)<<16)|('?'|palette_line_2),(a5)+
	move.w	#'(',(a5)+
	bsr.w	Reg_Addr_Direct
	move.w	#',',(a5)+
	move.l	#(('X'|palette_line_2)<<16)|('n'|palette_line_2),(a5)+
	move.w	#')',(a5)+
	move.w	#' ',(a5)+
	move.w	#';',(a5)+
	move.w	#' ',(a5)+
	move.l	a6,d0
	bra.w	PrintLong
; ===========================================================================
jmp_Misc_EA_Modes:
	lsl.w	#1,d1
	move.w	jmp_Misc_EACodeMap(pc,d1.w),d1
	jmp	jmp_Misc_EACodeMap(pc,d1.w)
; ===========================================================================
jmp_Misc_EACodeMap:	offsetTable
	offsetTableEntry.w	jmp_Abs_Short        	; %000
	offsetTableEntry.w	jmp_Abs_Long         	; %001
	offsetTableEntry.w	jmp_PC_Disp_Indirect 	; %010
	offsetTableEntry.w	jmp_PC_Index_Indirect	; %011
	offsetTableEntry.w	InvalidAddrModeMsg   	; %100
	offsetTableEntry.w	InvalidAddrModeMsg  	; %101
	offsetTableEntry.w	InvalidAddrModeMsg  	; %110
	offsetTableEntry.w	InvalidAddrModeMsg  	; %111
; ===========================================================================
jmp_Abs_Short:
	; Everything can be recovered.
	addq.w	#2,d5
	move.w	#'(',(a5)+
	move.l	a6,d0
	bsr.w	PrintWord
	move.w	#')',(a5)+
	move.w	#'.',(a5)+
	move.w	#'W'|palette_line_1,(a5)+
	rts
; ===========================================================================
jmp_Abs_Long:
	; Everything can be recovered.
	addq.w	#4,d5
	move.w	#'(',(a5)+
	move.l	a6,d0
	bsr.w	PrintLong
	move.w	#')',(a5)+
	move.w	#'.',(a5)+
	move.w	#'L'|palette_line_1,(a5)+
	rts
; ===========================================================================
jmp_PC_Disp_Indirect:
	;d16(PC)
	; Nothing can be recovered.
	moveq	#1,d7
	addq.w	#2,d5
	move.w	#'$',(a5)+
	move.l	#(('?'|palette_line_2)<<16)|('?'|palette_line_2),(a5)+
	move.l	#(('?'|palette_line_2)<<16)|('?'|palette_line_2),(a5)+
	move.w	#'(',(a5)+
	move.w	#'P'|palette_line_3,(a5)+
	move.w	#'C'|palette_line_3,(a5)+
	move.w	#')',(a5)+
	move.w	#' ',(a5)+
	move.w	#';',(a5)+
	move.w	#' ',(a5)+
	move.l	a6,d0
	bra.w	PrintLong
; ===========================================================================
jmp_PC_Index_Indirect:
	;d8(PC,Xn.S)
	; Nothing can be recovered.
	moveq	#1,d7
	addq.w	#2,d5
	move.w	#'$',(a5)+
	move.l	#(('?'|palette_line_2)<<16)|('?'|palette_line_2),(a5)+
	move.w	#'(',(a5)+
	move.w	#'P'|palette_line_3,(a5)+
	move.w	#'C'|palette_line_3,(a5)+
	move.w	#',',(a5)+
	move.l	#(('X'|palette_line_2)<<16)|('n'|palette_line_2),(a5)+
	move.w	#')',(a5)+
	move.w	#' ',(a5)+
	move.w	#';',(a5)+
	move.w	#' ',(a5)+
	move.l	a6,d0
	bra.w	PrintLong
; ===========================================================================
	endif
InvalidAddrModeMsg:	opcodeLetters palette_line_1,"*INVALID ADDRESS MODE*"
; ===========================================================================
; SUBROUTINE
; Disassembles an opcode
; Input:
;         a1	Source letters (declared with opcodeLetters)
;         a5	Write destination (in RAM)
PrintMessage:
	move.w	d1,-(sp)
	move.w	(a1)+,d1
-	move.w	(a1)+,(a5)+
	dbf	d1,-
	move.w	(sp)+,d1
	rts

PrintByteSigned:
	tst.b	d0
	bpl.s	PrintByte
	move.w	#'-',(a5)+
	neg.b	d0

PrintByte:
	move.w	#'$',(a5)+
	moveq	#1,d2
-	rol.b	#4,d0
	move.b	d0,d3
	andi.w	#$F,d3
	addi.w	#'0'|palette_line_2,d3
	move.w	d3,(a5)+
	dbra	d2,-
	rts

PrintWordSigned:
	tst.w	d0
	bpl.s	PrintWord
	move.w	#'-',(a5)+
	neg.w	d0

PrintWord:
	move.w	#'$',(a5)+
	moveq	#3,d2
-	rol.w	#4,d0
	move.b	d0,d3
	andi.w	#$F,d3
	addi.w	#'0'|palette_line_2,d3
	move.w	d3,(a5)+
	dbra	d2,-
	rts

PrintLongSigned:
	tst.l	d0
	bpl.s	PrintLong
	move.w	#'-',(a5)+
	neg.l	d0

PrintLong:
	move.w	#'$',(a5)+
	moveq	#7,d2
-	rol.l	#4,d0
	move.b	d0,d3
	andi.w	#$F,d3
	addi.w	#'0'|palette_line_2,d3
	move.w	d3,(a5)+
	dbra	d2,-
	rts

PrintAddress:
	moveq	#7,d2
-	rol.l	#4,d0
	move.b	d0,d3
	andi.w	#$F,d3
	addi.w	#'0'|palette_line_2,d3
	move.w	d3,(a4)+
	dbra	d2,-
	move.w	#':',(a4)+
	move.w	#' ',(a4)+
	rts

	charset ; reset character set

;---------------------------------------------------------------------------------------
; Enigma compressed mappings
    even
MapEng_AddressError:	incbin	"AddressError-eng.bin"
;---------------------------------------------------------------------------------------
; Kosinski compressed art (88 blocks)
; Standard font		; ArtKos_7C43A:
	even
ArtKos_AddressError:	incbin	"AddressError-kos.bin"
    even
  else
BusError:
AddressError:
	nop
	nop
	bra.s	AddressError
  endif

