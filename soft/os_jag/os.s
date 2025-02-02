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

*	move.w	#0x1861, MEMCON1
* 0x1861
* 0001 1000 0110 0001
* 0 0     0 11      000 0       11        00       00       1
* u CPU32 u IOSPEED u   FASTROM DRAMSPEED ROMSPEED ROMWIDTH ROMHI
* 0 0     0 11      000 0       11        11       01       1
* 0001 1000 0111 1011
* = 0x187B
* 0 0     0 11      000 0       11        11       00       1
* 0001 1000 0111 1001
* = 0x1879
* 0 0     0 11      000 1       11        11       00       1
* 0001 1000 1111 1001
* = 0x18F9
* 0 0     0 11      000 0       11        10       00       1
* 0001 1000 0111 0001
* = 0x1871
* Slow ROM
*	move.w	#0x1861, MEMCON1
* Speed up the ROM a little bit
*	move.w	#0x1879, MEMCON1
	move.w	#0x1871, MEMCON1
* Use FASTROM
*	move.w	#0x18F9, MEMCON1
	move.w	#0x35CC, MEMCON2

* RAM Test
	lea.l		0x00003804, %a0
	lea.l		0x00003810, %a1
	move.l	#0x12345678, (%a0)
	move.b	(%a0)+, (%a1)+
	move.b	(%a0)+, (%a1)+
	move.w	(%a0)+, (%a1)+
	
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

	lea.l		Prog_Start-4, %a0
	lea.l		0x00004000-4, %a1
* uncomment this when DRAM contents is preloaded (in simulation), or when using a cartridge
	move.w	#0x0, %d7
* uncomment this otherwise - and set a corresponding value (0x1000 = 16k)
*	move.w	#0x1000, %d7
	
Copy_Loop:
	move.l	(%a0)+, (%a1)+
	dbra		%d7, Copy_Loop

* Loads the "second-stage bootloader" the dirty way
	lea.l		Boot_Start, %a0
	lea.l		0x00003800, %a1
	move.l	(%a0)+, (%a1)+
	move.l	(%a0)+, (%a1)+
	move.l	(%a0)+, (%a1)+
	move.l	(%a0)+, (%a1)+
	
	lea.l		0x00003800, %a1
	jmp			(%a1)


Boot_Start:
* See above - For 16-bit cartridge mode only
*	move.w	#0x187B, MEMCON1

* Jump to "standard" entry point for homebrew games
*	lea.l	0x00004000, %a0
* Entry point for most cartridges (should be fetched instead from $800404)
	lea.l	0x00802000, %a0
	jmp		(%a0)
	
Prog_Start:
  .incbin "../jr.bin"
Prog_End:
