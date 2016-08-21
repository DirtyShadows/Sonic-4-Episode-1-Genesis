align macro
	cnop 0,\1
	endm

	include ./ASM/PCMSAMPS.ASM


pcms macro start,end,pitch
	dc.b	((start%$8000)+$8000)%$100
	dc.b	((start%$8000)+$8000)/$100

	dc.b	((end-start)/2)%$100
	dc.b	((end-start)/2)/$100
	
	dc.b	pitch
	
	dc.b	((start-(start%$8000))/$100)%$100
	dc.b	((start-(start%$8000))/$100)/$100
	
	dc.b	0
	endm
	even
Z80_Driver:
	incbin ./S1DRV/Z80_new.bin


DAC_Table:
	
	include ./ASM/PCM_TABLE.ASM


		
DAC_TableEnd: 

Z80_Size: dc.l DAC_TableEnd-Z80_Driver
	even

	even

