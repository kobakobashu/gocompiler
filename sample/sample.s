main.min STEXT nosplit size=1 args=0x0 locals=0x0 funcid=0x0 align=0x0
	0x0000 00000 (/Users/kobayashishuhei/2025/gocompiler/sample/sample.go:5)	TEXT	main.min(SB), NOSPLIT|NOFRAME|ABIInternal, $0-0
	0x0000 00000 (/Users/kobayashishuhei/2025/gocompiler/sample/sample.go:5)	FUNCDATA	$0, gclocals·g2BeySu+wFnoycgXfElmcg==(SB)
	0x0000 00000 (/Users/kobayashishuhei/2025/gocompiler/sample/sample.go:5)	FUNCDATA	$1, gclocals·g2BeySu+wFnoycgXfElmcg==(SB)
	0x0000 00000 (/Users/kobayashishuhei/2025/gocompiler/sample/sample.go:7)	RET
	0x0000 c3                                               .
main.arg1 STEXT nosplit size=6 args=0x8 locals=0x0 funcid=0x0 align=0x0
	0x0000 00000 (/Users/kobayashishuhei/2025/gocompiler/sample/sample.go:9)	TEXT	main.arg1(SB), NOSPLIT|NOFRAME|ABIInternal, $0-8
	0x0000 00000 (/Users/kobayashishuhei/2025/gocompiler/sample/sample.go:9)	FUNCDATA	$0, gclocals·g2BeySu+wFnoycgXfElmcg==(SB)
	0x0000 00000 (/Users/kobayashishuhei/2025/gocompiler/sample/sample.go:9)	FUNCDATA	$1, gclocals·g2BeySu+wFnoycgXfElmcg==(SB)
	0x0000 00000 (/Users/kobayashishuhei/2025/gocompiler/sample/sample.go:9)	FUNCDATA	$5, main.arg1.arginfo1(SB)
	0x0000 00000 (/Users/kobayashishuhei/2025/gocompiler/sample/sample.go:9)	MOVQ	AX, main.x+8(SP)
	0x0005 00005 (/Users/kobayashishuhei/2025/gocompiler/sample/sample.go:11)	RET
	0x0000 48 89 44 24 08 c3                                H.D$..
main.arg1ret1 STEXT nosplit size=31 args=0x8 locals=0x10 funcid=0x0 align=0x0
	0x0000 00000 (/Users/kobayashishuhei/2025/gocompiler/sample/sample.go:13)	TEXT	main.arg1ret1(SB), NOSPLIT|ABIInternal, $16-8
	0x0000 00000 (/Users/kobayashishuhei/2025/gocompiler/sample/sample.go:13)	PUSHQ	BP
	0x0001 00001 (/Users/kobayashishuhei/2025/gocompiler/sample/sample.go:13)	MOVQ	SP, BP
	0x0004 00004 (/Users/kobayashishuhei/2025/gocompiler/sample/sample.go:13)	SUBQ	$8, SP
	0x0008 00008 (/Users/kobayashishuhei/2025/gocompiler/sample/sample.go:13)	FUNCDATA	$0, gclocals·g2BeySu+wFnoycgXfElmcg==(SB)
	0x0008 00008 (/Users/kobayashishuhei/2025/gocompiler/sample/sample.go:13)	FUNCDATA	$1, gclocals·g2BeySu+wFnoycgXfElmcg==(SB)
	0x0008 00008 (/Users/kobayashishuhei/2025/gocompiler/sample/sample.go:13)	FUNCDATA	$5, main.arg1ret1.arginfo1(SB)
	0x0008 00008 (/Users/kobayashishuhei/2025/gocompiler/sample/sample.go:13)	MOVQ	AX, main.x+24(SP)
	0x000d 00013 (/Users/kobayashishuhei/2025/gocompiler/sample/sample.go:13)	MOVQ	$0, main.~r0(SP)
	0x0015 00021 (/Users/kobayashishuhei/2025/gocompiler/sample/sample.go:14)	MOVQ	AX, main.~r0(SP)
	0x0019 00025 (/Users/kobayashishuhei/2025/gocompiler/sample/sample.go:14)	ADDQ	$8, SP
	0x001d 00029 (/Users/kobayashishuhei/2025/gocompiler/sample/sample.go:14)	POPQ	BP
	0x001e 00030 (/Users/kobayashishuhei/2025/gocompiler/sample/sample.go:14)	RET
	0x0000 55 48 89 e5 48 83 ec 08 48 89 44 24 18 48 c7 04  UH..H...H.D$.H..
	0x0010 24 00 00 00 00 48 89 04 24 48 83 c4 08 5d c3     $....H..$H...].
main.main STEXT nosplit size=46 args=0x0 locals=0x20 funcid=0x0 align=0x0
	0x0000 00000 (/Users/kobayashishuhei/2025/gocompiler/sample/sample.go:17)	TEXT	main.main(SB), NOSPLIT|ABIInternal, $32-0
	0x0000 00000 (/Users/kobayashishuhei/2025/gocompiler/sample/sample.go:17)	PUSHQ	BP
	0x0001 00001 (/Users/kobayashishuhei/2025/gocompiler/sample/sample.go:17)	MOVQ	SP, BP
	0x0004 00004 (/Users/kobayashishuhei/2025/gocompiler/sample/sample.go:17)	SUBQ	$24, SP
	0x0008 00008 (/Users/kobayashishuhei/2025/gocompiler/sample/sample.go:17)	FUNCDATA	$0, gclocals·g2BeySu+wFnoycgXfElmcg==(SB)
	0x0008 00008 (/Users/kobayashishuhei/2025/gocompiler/sample/sample.go:17)	FUNCDATA	$1, gclocals·g2BeySu+wFnoycgXfElmcg==(SB)
	0x0008 00008 (/Users/kobayashishuhei/2025/gocompiler/sample/sample.go:18)	JMP	10
	0x000a 00010 (/Users/kobayashishuhei/2025/gocompiler/sample/sample.go:19)	MOVQ	$1, main.x+16(SP)
	0x0013 00019 (/Users/kobayashishuhei/2025/gocompiler/sample/sample.go:19)	JMP	21
	0x0015 00021 (/Users/kobayashishuhei/2025/gocompiler/sample/sample.go:20)	MOVQ	$2, main.x+8(SP)
	0x001e 00030 (/Users/kobayashishuhei/2025/gocompiler/sample/sample.go:20)	MOVQ	$2, main.~r0(SP)
	0x0026 00038 (/Users/kobayashishuhei/2025/gocompiler/sample/sample.go:20)	JMP	40
	0x0028 00040 (/Users/kobayashishuhei/2025/gocompiler/sample/sample.go:21)	ADDQ	$24, SP
	0x002c 00044 (/Users/kobayashishuhei/2025/gocompiler/sample/sample.go:21)	POPQ	BP
	0x002d 00045 (/Users/kobayashishuhei/2025/gocompiler/sample/sample.go:21)	RET
	0x0000 55 48 89 e5 48 83 ec 18 eb 00 48 c7 44 24 10 01  UH..H.....H.D$..
	0x0010 00 00 00 eb 00 48 c7 44 24 08 02 00 00 00 48 c7  .....H.D$.....H.
	0x0020 04 24 02 00 00 00 eb 00 48 83 c4 18 5d c3        .$......H...].
go:cuinfo.producer.<unlinkable> SDWARFCUINFO dupok size=0
	0x0000 2d 4e 20 72 65 67 61 62 69                       -N regabi
go:cuinfo.packagename.main SDWARFCUINFO dupok size=0
	0x0000 6d 61 69 6e                                      main
go:info.main.min$abstract SDWARFABSFCN dupok size=14
	0x0000 05 6d 61 69 6e 2e 6d 69 6e 00 01 05 01 00        .main.min.....
go:info.main.arg1$abstract SDWARFABSFCN dupok size=23
	0x0000 05 6d 61 69 6e 2e 61 72 67 31 00 01 09 01 13 78  .main.arg1.....x
	0x0010 00 00 00 00 00 00 00                             .......
	rel 18+4 t=R_DWARFSECREF go:info.int+0
go:info.main.arg1ret1$abstract SDWARFABSFCN dupok size=27
	0x0000 05 6d 61 69 6e 2e 61 72 67 31 72 65 74 31 00 01  .main.arg1ret1..
	0x0010 0d 01 13 78 00 00 00 00 00 00 00                 ...x.......
	rel 22+4 t=R_DWARFSECREF go:info.int+0
main..inittask SNOPTRDATA size=8
	0x0000 00 00 00 00 00 00 00 00                          ........
gclocals·g2BeySu+wFnoycgXfElmcg== SRODATA dupok size=8
	0x0000 01 00 00 00 00 00 00 00                          ........
main.arg1.arginfo1 SRODATA static dupok size=3
	0x0000 00 08 ff                                         ...
main.arg1ret1.arginfo1 SRODATA static dupok size=3
	0x0000 00 08 ff                                         ...
