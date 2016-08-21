;*******************************************
;* SEGA Megadrive ROM Header        *
;*******************************************

InterruptVector:

	dc.l	$00FFE000;		Slot #1 : The address of the stack 
	dc.l	MDInit;		Slot #2 : The start of our program
	dc.l	BusErr;		Slot #3
	dc.l	AddErr;		Slot #4
	dc.l	IllErr;		Slot #5
	dc.l	DivErr;		Slot #6
	dc.l	ChkErr;		Slot #7
	dc.l	TrpErr;		Slot #8
	dc.l	PrvErr;		Slot #9
	dc.l	TrcErr;		Slot #10
	dc.l	L10Err;		Slot #11
	dc.l	L11Err;		Slot #12
	dc.l	Interrupt;		Slot #13
	dc.l	Interrupt;		Slot #14
	dc.l	Interrupt;		Slot #15
	dc.l	Interrupt;		Slot #16
	dc.l	Interrupt;		Slot #17
	dc.l	Interrupt;		Slot #18
	dc.l	Interrupt;		Slot #19
	dc.l	Interrupt;		Slot #20
	dc.l	Interrupt;		Slot #21
	dc.l	Interrupt;		Slot #22
	dc.l	Interrupt;		Slot #23
	dc.l	Interrupt;		Slot #24
	dc.l	Interrupt;		Slot #25
	dc.l	Interrupt;		Slot #26
	dc.l	Interrupt;		Slot #27
	dc.l	Interrupt;		Slot #28
	dc.l	Horizontal_Int;	Slot #29 : VDP Horizontal Interrupt
	dc.l	Interrupt;		Slot #30
	dc.l	Vertical_Int;	Slot #31 : VDP Vertical Interrupt
	dc.l	Interrupt;		Slot #32
	dc.l	Interrupt;		Slot #33
	dc.l	Interrupt;		Slot #34
	dc.l	Interrupt;		Slot #35
	dc.l	Interrupt;		Slot #36
	dc.l	Interrupt;		Slot #37
	dc.l	Interrupt;		Slot #38
	dc.l	Interrupt;		Slot #39
	dc.l	Interrupt;		Slot #40
	dc.l	Interrupt;		Slot #41
	dc.l	Interrupt;		Slot #42
	dc.l	Interrupt;		Slot #43
	dc.l	Interrupt;		Slot #44
	dc.l	Interrupt;		Slot #45
	dc.l	Interrupt;		Slot #46
	dc.l	Interrupt;		Slot #47
	dc.l	Interrupt;		Slot #48
	dc.l	Interrupt;		Slot #49
	dc.l	Interrupt;		Slot #50
	dc.l	Interrupt;		Slot #51
	dc.l	Interrupt;		Slot #52
	dc.l	Interrupt;		Slot #53
	dc.l	Interrupt;		Slot #54
	dc.l	Interrupt;		Slot #55
	dc.l	Interrupt;		Slot #56
	dc.l	Interrupt;		Slot #57
	dc.l	Interrupt;		Slot #58
	dc.l	Interrupt;		Slot #59
	dc.l	Interrupt;		Slot #60
	dc.l	Interrupt;		Slot #61
	dc.l	Interrupt;		Slot #62
	dc.l	Interrupt;		Slot #63
	dc.l	Interrupt;		Slot #64




GameInformation:

	dc.b	"SEGA COMPATIBLE!";				Europe and Japan Console Name
	dc.b	"2010.JUN        ";					Copyright date
	dc.b	"Oerg866 --- SMPS PLAYER V2.5                    ";		Domestic Name
	dc.b	"Oerg866 --- SMPS PLAYER V2.5                    ";		Overseas Name
	dc.b	"LOLOLOLOLOLOLO";					Serial Number
	dc.w	$2010;						Checksum
	dc.b	"                "					I/O Support
	dc.l	$00000000;						ROM Start Address
	dc.l	$00000000;						ROM End Address
	dc.l	$00ff0000;						RAM Start Address
	dc.l	$00ffffff;						RAM End Address
	dc.b	"                        ";				No Modem or SRAM Support
	dc.b	"http://oerg866.tototek.com for the win! "
	dc.b	"U               ";	Can be released in Japan, Europe and the US.