* Minimal boot rom

.equ	MEMCON1, 0xf00000
.equ	MEMCON2, 0xf00002
.equ	VMODE, 0xf00028
.equ	HP, 0xf0002e
.equ	HBB, 0xf00030
.equ	HBE, 0xf00032
.equ	HDB1, 0xf00038
.equ	HDE, 0xf0003c
.equ	VP, 0xf0003e
.equ	VBB, 0xf00040
.equ	VBE, 0xf00042
.equ	VS, 0xf00044
.equ	VDB, 0xf00046
.equ	VDE, 0xf00048


* Set up SSP
dc.l	0x001ffffc
* dc.l	0x00003ffc
* Entry point
	dc.l	Init
Init:

*	move.l	#0x00003E80, %d0
*	move.l	#0x04F3F52B, %d1
*	divu.w	%d0, %d1

	move.w	#0x1861, MEMCON1
* 0x1861
* 0001 1000 0110 0001
* 0 0     0 11      000 0       11        00       00       1
* u CPU32 u IOSPEED u   FASTROM DRAMSPEED ROMSPEED ROMWIDTH ROMHI
* 0 0     0 11      000 0       11        11       01       1
* 0001 1000 0111 1011
* 0x187B
	
	move.w	#0x35CC, MEMCON2

* NTSC Jaguar
	move.w	#844, HP
	move.w	#1713, HBB
	move.w	#125, HBE
	move.w	#1665, HDE
	move.w	#203, HDB1
	move.w	#523, VP
	move.w	#24, VBE
	move.w	#38, VDB
	move.w	#518, VDE
	move.w	#500, VBB
	move.w	#517, VS
	
* PAL Jaguar	
*	move.w	#850, HP
*	move.w	#1711, HBB
*	move.w	#158, HBE
*	move.w	#1665, HDE
*	move.w	#203, HDB1
*	move.w	#623, VP
*	move.w	#34, VBE
*	move.w	#38, VDB
*	move.w	#518, VDE
*	move.w	#600, VBB
*	move.w	#618, VS

*	move.w	#0x06C1, VMODE

* DRAM contents is preloaded in simulation
*	lea.l		Prog_Start, %a0
*	lea.l		0x00004000, %a1
*	move.w	#0x200, %d7
Copy_Loop:
*	move.l	(%a0)+, (%a1)+
*	move.b	(%a0)+, (%a1)+
*	dbra		%d7, Copy_Loop

	lea.l		Boot_Start, %a0
	lea.l		0x00003800, %a1
	move.l	(%a0)+, (%a1)+
	move.l	(%a0)+, (%a1)+
	move.l	(%a0)+, (%a1)+
	move.l	(%a0)+, (%a1)+
	
	lea.l		0x00003800, %a1
	jmp			(%a1)


Boot_Start:
* See above
	move.w	#0x187B, MEMCON1
* Jump to "standard" entry point for homebrew games
*	lea.l	0x00004000, %a0
* Entry point for most cartridges (should be fetched instead from $800404)
	lea.l	0x00802000, %a0
	jmp		(%a0)
	
Prog_Start:
*  .incbin "../../hello/jag.bin"
Prog_End:
