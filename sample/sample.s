"".min STEXT nosplit size=1 args=0x0 locals=0x0 funcid=0x0
	0x0000 00000 (sample/sample.go:5)	TEXT	"".min(SB), NOSPLIT|ABIInternal, $0-0
	0x0000 00000 (sample/sample.go:5)	FUNCDATA	$0, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x0000 00000 (sample/sample.go:5)	FUNCDATA	$1, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x0000 00000 (sample/sample.go:7)	RET
	0x0000 c3                                               .
"".arg1 STEXT nosplit size=6 args=0x8 locals=0x0 funcid=0x0
	0x0000 00000 (sample/sample.go:9)	TEXT	"".arg1(SB), NOSPLIT|ABIInternal, $0-8
	0x0000 00000 (sample/sample.go:9)	FUNCDATA	$0, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x0000 00000 (sample/sample.go:9)	FUNCDATA	$1, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x0000 00000 (sample/sample.go:9)	FUNCDATA	$5, "".arg1.arginfo1(SB)
	0x0000 00000 (sample/sample.go:9)	MOVQ	AX, "".x+8(SP)
	0x0005 00005 (sample/sample.go:11)	RET
	0x0000 48 89 44 24 08 c3                                H.D$..
"".arg1ret1 STEXT nosplit size=46 args=0x8 locals=0x10 funcid=0x0
	0x0000 00000 (sample/sample.go:13)	TEXT	"".arg1ret1(SB), NOSPLIT|ABIInternal, $16-8
	0x0000 00000 (sample/sample.go:13)	SUBQ	$16, SP
	0x0004 00004 (sample/sample.go:13)	MOVQ	BP, 8(SP)
	0x0009 00009 (sample/sample.go:13)	LEAQ	8(SP), BP
	0x000e 00014 (sample/sample.go:13)	FUNCDATA	$0, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x000e 00014 (sample/sample.go:13)	FUNCDATA	$1, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x000e 00014 (sample/sample.go:13)	FUNCDATA	$5, "".arg1ret1.arginfo1(SB)
	0x000e 00014 (sample/sample.go:13)	MOVQ	AX, "".x+24(SP)
	0x0013 00019 (sample/sample.go:13)	MOVQ	$0, "".~r1(SP)
	0x001b 00027 (sample/sample.go:14)	MOVQ	"".x+24(SP), AX
	0x0020 00032 (sample/sample.go:14)	MOVQ	AX, "".~r1(SP)
	0x0024 00036 (sample/sample.go:14)	MOVQ	8(SP), BP
	0x0029 00041 (sample/sample.go:14)	ADDQ	$16, SP
	0x002d 00045 (sample/sample.go:14)	RET
	0x0000 48 83 ec 10 48 89 6c 24 08 48 8d 6c 24 08 48 89  H...H.l$.H.l$.H.
	0x0010 44 24 18 48 c7 04 24 00 00 00 00 48 8b 44 24 18  D$.H..$....H.D$.
	0x0020 48 89 04 24 48 8b 6c 24 08 48 83 c4 10 c3        H..$H.l$.H....
"".sum STEXT nosplit size=56 args=0x10 locals=0x10 funcid=0x0
	0x0000 00000 (sample/sample.go:17)	TEXT	"".sum(SB), NOSPLIT|ABIInternal, $16-16
	0x0000 00000 (sample/sample.go:17)	SUBQ	$16, SP
	0x0004 00004 (sample/sample.go:17)	MOVQ	BP, 8(SP)
	0x0009 00009 (sample/sample.go:17)	LEAQ	8(SP), BP
	0x000e 00014 (sample/sample.go:17)	FUNCDATA	$0, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x000e 00014 (sample/sample.go:17)	FUNCDATA	$1, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x000e 00014 (sample/sample.go:17)	FUNCDATA	$5, "".sum.arginfo1(SB)
	0x000e 00014 (sample/sample.go:17)	MOVQ	AX, "".x+24(SP)
	0x0013 00019 (sample/sample.go:17)	MOVQ	BX, "".y+32(SP)
	0x0018 00024 (sample/sample.go:17)	MOVQ	$0, "".~r2(SP)
	0x0020 00032 (sample/sample.go:18)	MOVQ	"".x+24(SP), AX
	0x0025 00037 (sample/sample.go:18)	ADDQ	"".y+32(SP), AX
	0x002a 00042 (sample/sample.go:18)	MOVQ	AX, "".~r2(SP)
	0x002e 00046 (sample/sample.go:18)	MOVQ	8(SP), BP
	0x0033 00051 (sample/sample.go:18)	ADDQ	$16, SP
	0x0037 00055 (sample/sample.go:18)	RET
	0x0000 48 83 ec 10 48 89 6c 24 08 48 8d 6c 24 08 48 89  H...H.l$.H.l$.H.
	0x0010 44 24 18 48 89 5c 24 20 48 c7 04 24 00 00 00 00  D$.H.\$ H..$....
	0x0020 48 8b 44 24 18 48 03 44 24 20 48 89 04 24 48 8b  H.D$.H.D$ H..$H.
	0x0030 6c 24 08 48 83 c4 10 c3                          l$.H....
"".concate STEXT size=143 args=0x20 locals=0x40 funcid=0x0
	0x0000 00000 (sample/sample.go:21)	TEXT	"".concate(SB), ABIInternal, $64-32
	0x0000 00000 (sample/sample.go:21)	CMPQ	SP, 16(R14)
	0x0004 00004 (sample/sample.go:21)	PCDATA	$0, $-2
	0x0004 00004 (sample/sample.go:21)	JLS	93
	0x0006 00006 (sample/sample.go:21)	PCDATA	$0, $-1
	0x0006 00006 (sample/sample.go:21)	SUBQ	$64, SP
	0x000a 00010 (sample/sample.go:21)	MOVQ	BP, 56(SP)
	0x000f 00015 (sample/sample.go:21)	LEAQ	56(SP), BP
	0x0014 00020 (sample/sample.go:21)	FUNCDATA	$0, gclocals·267260df189670137001aef19b5fd4fc(SB)
	0x0014 00020 (sample/sample.go:21)	FUNCDATA	$1, gclocals·2589ca35330fc0fce83503f4569854a0(SB)
	0x0014 00020 (sample/sample.go:21)	FUNCDATA	$5, "".concate.arginfo1(SB)
	0x0014 00020 (sample/sample.go:21)	MOVQ	AX, "".x+72(SP)
	0x0019 00025 (sample/sample.go:21)	MOVQ	BX, "".x+80(SP)
	0x001e 00030 (sample/sample.go:21)	MOVQ	CX, "".y+88(SP)
	0x0023 00035 (sample/sample.go:21)	MOVQ	DI, "".y+96(SP)
	0x0028 00040 (sample/sample.go:21)	MOVUPS	X15, "".~r2+40(SP)
	0x002e 00046 (sample/sample.go:22)	MOVQ	"".x+72(SP), BX
	0x0033 00051 (sample/sample.go:22)	MOVQ	"".y+88(SP), DI
	0x0038 00056 (sample/sample.go:22)	MOVQ	"".x+80(SP), CX
	0x003d 00061 (sample/sample.go:22)	MOVQ	"".y+96(SP), SI
	0x0042 00066 (sample/sample.go:22)	XORL	AX, AX
	0x0044 00068 (sample/sample.go:22)	PCDATA	$1, $1
	0x0044 00068 (sample/sample.go:22)	CALL	runtime.concatstring2(SB)
	0x0049 00073 (sample/sample.go:22)	MOVQ	AX, "".~r2+40(SP)
	0x004e 00078 (sample/sample.go:22)	MOVQ	BX, "".~r2+48(SP)
	0x0053 00083 (sample/sample.go:22)	MOVQ	56(SP), BP
	0x0058 00088 (sample/sample.go:22)	ADDQ	$64, SP
	0x005c 00092 (sample/sample.go:22)	RET
	0x005d 00093 (sample/sample.go:22)	NOP
	0x005d 00093 (sample/sample.go:21)	PCDATA	$1, $-1
	0x005d 00093 (sample/sample.go:21)	PCDATA	$0, $-2
	0x005d 00093 (sample/sample.go:21)	MOVQ	AX, 8(SP)
	0x0062 00098 (sample/sample.go:21)	MOVQ	BX, 16(SP)
	0x0067 00103 (sample/sample.go:21)	MOVQ	CX, 24(SP)
	0x006c 00108 (sample/sample.go:21)	MOVQ	DI, 32(SP)
	0x0071 00113 (sample/sample.go:21)	CALL	runtime.morestack_noctxt(SB)
	0x0076 00118 (sample/sample.go:21)	MOVQ	8(SP), AX
	0x007b 00123 (sample/sample.go:21)	MOVQ	16(SP), BX
	0x0080 00128 (sample/sample.go:21)	MOVQ	24(SP), CX
	0x0085 00133 (sample/sample.go:21)	MOVQ	32(SP), DI
	0x008a 00138 (sample/sample.go:21)	PCDATA	$0, $-1
	0x008a 00138 (sample/sample.go:21)	JMP	0
	0x0000 49 3b 66 10 76 57 48 83 ec 40 48 89 6c 24 38 48  I;f.vWH..@H.l$8H
	0x0010 8d 6c 24 38 48 89 44 24 48 48 89 5c 24 50 48 89  .l$8H.D$HH.\$PH.
	0x0020 4c 24 58 48 89 7c 24 60 44 0f 11 7c 24 28 48 8b  L$XH.|$`D..|$(H.
	0x0030 5c 24 48 48 8b 7c 24 58 48 8b 4c 24 50 48 8b 74  \$HH.|$XH.L$PH.t
	0x0040 24 60 31 c0 e8 00 00 00 00 48 89 44 24 28 48 89  $`1......H.D$(H.
	0x0050 5c 24 30 48 8b 6c 24 38 48 83 c4 40 c3 48 89 44  \$0H.l$8H..@.H.D
	0x0060 24 08 48 89 5c 24 10 48 89 4c 24 18 48 89 7c 24  $.H.\$.H.L$.H.|$
	0x0070 20 e8 00 00 00 00 48 8b 44 24 08 48 8b 5c 24 10   .....H.D$.H.\$.
	0x0080 48 8b 4c 24 18 48 8b 7c 24 20 e9 71 ff ff ff     H.L$.H.|$ .q...
	rel 69+4 t=7 runtime.concatstring2+0
	rel 114+4 t=7 runtime.morestack_noctxt+0
"".main STEXT size=234 args=0x0 locals=0xb0 funcid=0x0
	0x0000 00000 (sample/sample.go:25)	TEXT	"".main(SB), ABIInternal, $176-0
	0x0000 00000 (sample/sample.go:25)	LEAQ	-48(SP), R12
	0x0005 00005 (sample/sample.go:25)	CMPQ	R12, 16(R14)
	0x0009 00009 (sample/sample.go:25)	PCDATA	$0, $-2
	0x0009 00009 (sample/sample.go:25)	JLS	221
	0x000f 00015 (sample/sample.go:25)	PCDATA	$0, $-1
	0x000f 00015 (sample/sample.go:25)	SUBQ	$176, SP
	0x0016 00022 (sample/sample.go:25)	MOVQ	BP, 168(SP)
	0x001e 00030 (sample/sample.go:25)	LEAQ	168(SP), BP
	0x0026 00038 (sample/sample.go:25)	FUNCDATA	$0, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x0026 00038 (sample/sample.go:25)	FUNCDATA	$1, gclocals·26c19b003b4032a46d3e8db29831f3fe(SB)
	0x0026 00038 (sample/sample.go:26)	JMP	40
	0x0028 00040 (sample/sample.go:27)	MOVQ	$1, "".x+80(SP)
	0x0031 00049 (sample/sample.go:27)	JMP	51
	0x0033 00051 (sample/sample.go:28)	MOVQ	$2, "".x+72(SP)
	0x003c 00060 (sample/sample.go:28)	MOVQ	$2, "".~R0+40(SP)
	0x0045 00069 (sample/sample.go:28)	JMP	71
	0x0047 00071 (sample/sample.go:29)	MOVQ	$2, "".x+64(SP)
	0x0050 00080 (sample/sample.go:29)	MOVQ	$3, "".y+56(SP)
	0x0059 00089 (<unknown line number>)	NOP
	0x0059 00089 (sample/sample.go:18)	MOVQ	"".x+64(SP), DX
	0x005e 00094 (sample/sample.go:18)	ADDQ	$3, DX
	0x0062 00098 (sample/sample.go:29)	MOVQ	DX, "".~R0+48(SP)
	0x0067 00103 (sample/sample.go:29)	JMP	105
	0x0069 00105 (sample/sample.go:30)	LEAQ	go.string."hello"(SB), DX
	0x0070 00112 (sample/sample.go:30)	MOVQ	DX, "".x+152(SP)
	0x0078 00120 (sample/sample.go:30)	MOVQ	$5, "".x+160(SP)
	0x0084 00132 (sample/sample.go:30)	LEAQ	go.string." world"(SB), DI
	0x008b 00139 (sample/sample.go:30)	MOVQ	DI, "".y+136(SP)
	0x0093 00147 (sample/sample.go:30)	MOVQ	$6, "".y+144(SP)
	0x009f 00159 (<unknown line number>)	NOP
	0x009f 00159 (sample/sample.go:22)	MOVQ	"".x+152(SP), BX
	0x00a7 00167 (sample/sample.go:22)	MOVQ	"".x+160(SP), CX
	0x00af 00175 (sample/sample.go:22)	LEAQ	""..autotmp_9+88(SP), AX
	0x00b4 00180 (sample/sample.go:22)	MOVL	$6, SI
	0x00b9 00185 (sample/sample.go:22)	PCDATA	$1, $0
	0x00b9 00185 (sample/sample.go:22)	CALL	runtime.concatstring2(SB)
	0x00be 00190 (sample/sample.go:30)	MOVQ	AX, "".~R0+120(SP)
	0x00c3 00195 (sample/sample.go:30)	MOVQ	BX, "".~R0+128(SP)
	0x00cb 00203 (sample/sample.go:30)	JMP	205
	0x00cd 00205 (sample/sample.go:31)	PCDATA	$1, $-1
	0x00cd 00205 (sample/sample.go:31)	MOVQ	168(SP), BP
	0x00d5 00213 (sample/sample.go:31)	ADDQ	$176, SP
	0x00dc 00220 (sample/sample.go:31)	RET
	0x00dd 00221 (sample/sample.go:31)	NOP
	0x00dd 00221 (sample/sample.go:25)	PCDATA	$1, $-1
	0x00dd 00221 (sample/sample.go:25)	PCDATA	$0, $-2
	0x00dd 00221 (sample/sample.go:25)	NOP
	0x00e0 00224 (sample/sample.go:25)	CALL	runtime.morestack_noctxt(SB)
	0x00e5 00229 (sample/sample.go:25)	PCDATA	$0, $-1
	0x00e5 00229 (sample/sample.go:25)	JMP	0
	0x0000 4c 8d 64 24 d0 4d 3b 66 10 0f 86 ce 00 00 00 48  L.d$.M;f.......H
	0x0010 81 ec b0 00 00 00 48 89 ac 24 a8 00 00 00 48 8d  ......H..$....H.
	0x0020 ac 24 a8 00 00 00 eb 00 48 c7 44 24 50 01 00 00  .$......H.D$P...
	0x0030 00 eb 00 48 c7 44 24 48 02 00 00 00 48 c7 44 24  ...H.D$H....H.D$
	0x0040 28 02 00 00 00 eb 00 48 c7 44 24 40 02 00 00 00  (......H.D$@....
	0x0050 48 c7 44 24 38 03 00 00 00 48 8b 54 24 40 48 83  H.D$8....H.T$@H.
	0x0060 c2 03 48 89 54 24 30 eb 00 48 8d 15 00 00 00 00  ..H.T$0..H......
	0x0070 48 89 94 24 98 00 00 00 48 c7 84 24 a0 00 00 00  H..$....H..$....
	0x0080 05 00 00 00 48 8d 3d 00 00 00 00 48 89 bc 24 88  ....H.=....H..$.
	0x0090 00 00 00 48 c7 84 24 90 00 00 00 06 00 00 00 48  ...H..$........H
	0x00a0 8b 9c 24 98 00 00 00 48 8b 8c 24 a0 00 00 00 48  ..$....H..$....H
	0x00b0 8d 44 24 58 be 06 00 00 00 e8 00 00 00 00 48 89  .D$X..........H.
	0x00c0 44 24 78 48 89 9c 24 80 00 00 00 eb 00 48 8b ac  D$xH..$......H..
	0x00d0 24 a8 00 00 00 48 81 c4 b0 00 00 00 c3 0f 1f 00  $....H..........
	0x00e0 e8 00 00 00 00 e9 16 ff ff ff                    ..........
	rel 108+4 t=15 go.string."hello"+0
	rel 135+4 t=15 go.string." world"+0
	rel 186+4 t=7 runtime.concatstring2+0
	rel 225+4 t=7 runtime.morestack_noctxt+0
go.cuinfo.packagename. SDWARFCUINFO dupok size=0
	0x0000 6d 61 69 6e                                      main
""..inittask SNOPTRDATA size=24
	0x0000 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0010 00 00 00 00 00 00 00 00                          ........
go.info."".min$abstract SDWARFABSFCN dupok size=9
	0x0000 04 2e 6d 69 6e 00 01 01 00                       ..min....
go.info."".arg1$abstract SDWARFABSFCN dupok size=18
	0x0000 04 2e 61 72 67 31 00 01 01 11 78 00 00 00 00 00  ..arg1....x.....
	0x0010 00 00                                            ..
	rel 0+0 t=23 type.int+0
	rel 13+4 t=31 go.info.int+0
go.info."".arg1ret1$abstract SDWARFABSFCN dupok size=22
	0x0000 04 2e 61 72 67 31 72 65 74 31 00 01 01 11 78 00  ..arg1ret1....x.
	0x0010 00 00 00 00 00 00                                ......
	rel 0+0 t=23 type.int+0
	rel 17+4 t=31 go.info.int+0
go.info."".sum$abstract SDWARFABSFCN dupok size=25
	0x0000 04 2e 73 75 6d 00 01 01 11 78 00 00 00 00 00 00  ..sum....x......
	0x0010 11 79 00 00 00 00 00 00 00                       .y.......
	rel 0+0 t=23 type.int+0
	rel 12+4 t=31 go.info.int+0
	rel 20+4 t=31 go.info.int+0
go.info."".concate$abstract SDWARFABSFCN dupok size=29
	0x0000 04 2e 63 6f 6e 63 61 74 65 00 01 01 11 78 00 00  ..concate....x..
	0x0010 00 00 00 00 11 79 00 00 00 00 00 00 00           .....y.......
	rel 0+0 t=23 type.string+0
	rel 16+4 t=31 go.info.string+0
	rel 24+4 t=31 go.info.string+0
go.string."hello" SRODATA dupok size=5
	0x0000 68 65 6c 6c 6f                                   hello
go.string." world" SRODATA dupok size=6
	0x0000 20 77 6f 72 6c 64                                 world
gclocals·33cdeccccebe80329f1fdbee7f5874cb SRODATA dupok size=8
	0x0000 01 00 00 00 00 00 00 00                          ........
"".arg1.arginfo1 SRODATA static dupok size=3
	0x0000 00 08 ff                                         ...
"".arg1ret1.arginfo1 SRODATA static dupok size=3
	0x0000 00 08 ff                                         ...
"".sum.arginfo1 SRODATA static dupok size=5
	0x0000 00 08 08 08 ff                                   .....
gclocals·267260df189670137001aef19b5fd4fc SRODATA dupok size=10
	0x0000 02 00 00 00 03 00 00 00 05 00                    ..........
gclocals·2589ca35330fc0fce83503f4569854a0 SRODATA dupok size=10
	0x0000 02 00 00 00 02 00 00 00 00 00                    ..........
"".concate.arginfo1 SRODATA static dupok size=13
	0x0000 fe 00 08 08 08 fd fe 10 08 18 08 fd ff           .............
gclocals·26c19b003b4032a46d3e8db29831f3fe SRODATA dupok size=9
	0x0000 01 00 00 00 06 00 00 00 00                       .........
