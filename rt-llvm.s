#BEGIN Preamble
	REG	r0
	REG	r1
	REG	r2
	REG	r3
	REG	r4
	REG	r5
	REG	r6
	REG	r7
	REG	r8
	REG	r9
	REG	r10
	REG	r11
	REG	r12
	REG	r13
	REG	r14
	REG	r15
	REG	r16
	REG	r17
	REG	r18
	REG	r19
	REG	r20
	REG	r21
	REG	r22
	REG	r23
	REG	r24
	REG	r25
	REG	r26
	REG	r27
	REG	r28
	REG	r29
	REG	r30
	REG	r31
	LOADIMM	r0, 0
	ADDI	r1, r0, 8192
start:	brlid	r15, main
	NOP
	HALT
#END Preamble
#	.file	"rt.bc"
#	.text
#	.globl	main
#	.align	2
#	.type	main,@function
#	.ent	main                    # @main
main:
#	.frame	r1,656,r15
#	.mask	0xfff00000
	ADDI	r1,	r1,	-656
	SWI	r20,	r1,	44
	SWI	r21,	r1,	40
	SWI	r22,	r1,	36
	SWI	r23,	r1,	32
	SWI	r24,	r1,	28
	SWI	r25,	r1,	24
	SWI	r26,	r1,	20
	SWI	r27,	r1,	16
	SWI	r28,	r1,	12
	SWI	r29,	r1,	8
	SWI	r30,	r1,	4
	SWI	r31,	r1,	0
	ADD	r3,	r0,	r0
	LOAD	r4,	r3,	1
	SWI	r4,	r1,	652
	LOAD	r5,	r3,	4
	LOAD	r6,	r3,	7
	SWI	r6,	r1,	636
	LOAD	r6,	r3,	2
	SWI	r6,	r1,	556
	LOAD	r6,	r3,	5
	SWI	r6,	r1,	560
	LOAD	r6,	r3,	12
	LOAD	r7,	r6,	0
	SWI	r7,	r1,	564
	LOAD	r7,	r6,	1
	SWI	r7,	r1,	568
	LOAD	r6,	r6,	2
	SWI	r6,	r1,	572
	LOAD	r6,	r3,	10
	LOAD	r7,	r6,	0
	SWI	r7,	r1,	448
	LOAD	r7,	r6,	1
	SWI	r7,	r1,	452
	LOAD	r7,	r6,	2
	SWI	r7,	r1,	468
	ADDI	r7,	r6,	9
	LOAD	r8,	r7,	0
	LOAD	r8,	r7,	1
	ADDI	r8,	r6,	12
	LOAD	r7,	r7,	2
	LOAD	r7,	r8,	0
	SWI	r7,	r1,	576
	LOAD	r7,	r8,	1
	SWI	r7,	r1,	580
	LOAD	r7,	r8,	2
	SWI	r7,	r1,	584
	ADDI	r7,	r6,	15
	LOAD	r8,	r7,	0
	SWI	r8,	r1,	588
	LOAD	r8,	r7,	1
	SWI	r8,	r1,	592
	LOAD	r7,	r7,	2
	SWI	r7,	r1,	596
	ADDI	r6,	r6,	18
	LOAD	r7,	r6,	0
	SWI	r7,	r1,	600
	LOAD	r7,	r6,	1
	SWI	r7,	r1,	604
	LOAD	r6,	r6,	2
	SWI	r6,	r1,	608
	LOAD	r6,	r3,	28
	LOAD	r6,	r3,	29
	LOAD	r3,	r3,	8
	SWI	r3,	r1,	472
	FPCONV	r3,	r4
	SWI	r3,	r1,	628
	FPCONV	r3,	r5
	SWI	r3,	r1,	632
	ORI	r3,	r0,	-1073741824
	MUL	r4,	r5,	r4
	SWI	r4,	r1,	640
	ATOMIC_INC	r5,	0
	CMP	r4,	r5,	r4
	bleid	r4,	$0BB0_217
	NOP
	LWI	r4,	r1,	628
	FPDIV	r4,	r4,	r3
	SWI	r4,	r1,	644
	LWI	r4,	r1,	632
	FPDIV	r3,	r4,	r3
	SWI	r3,	r1,	648
	LWI	r3,	r1,	468
	SWI	r3,	r1,	184
	LWI	r3,	r1,	452
	SWI	r3,	r1,	180
	LWI	r3,	r1,	448
	SWI	r3,	r1,	176
	ADD	r3,	r0,	r0
	SWI	r3,	r1,	616
	LWI	r4,	r1,	184
	SWI	r4,	r1,	612
	SWI	r3,	r1,	528
	SWI	r3,	r1,	532
	SWI	r3,	r1,	536
$0BB0_2:
	LWI	r3,	r1,	652
	DIV	r4,	r3,	r5
	MUL	r3,	r4,	r3
	SWI	r3,	r1,	620
	RSUB	r5,	r3,	r5
	SWI	r5,	r1,	624
	FPCONV	r5,	r5
	FPCONV	r3,	r4
	LWI	r4,	r1,	644
	FPADD	r5,	r5,	r4
	ORI	r4,	r0,	1056964608
	LWI	r6,	r1,	648
	FPADD	r3,	r3,	r6
	FPADD	r5,	r5,	r4
	FPADD	r3,	r3,	r4
	FPADD	r5,	r5,	r5
	FPADD	r3,	r3,	r3
	LWI	r4,	r1,	628
	FPDIV	r5,	r5,	r4
	SWI	r5,	r1,	548
	LWI	r5,	r1,	632
	FPDIV	r5,	r3,	r5
	SWI	r5,	r1,	552
	ADDI	r5,	r0,	25
	SWI	r5,	r1,	540
$0BB0_3:
	RAND	r5
	ORI	r3,	r0,	-1090519040
	RAND	r4
	FPADD	r4,	r4,	r3
	FPADD	r5,	r5,	r3
	FPADD	r3,	r4,	r4
	FPADD	r5,	r5,	r5
	LWI	r4,	r1,	560
	FPMUL	r3,	r3,	r4
	LWI	r4,	r1,	556
	FPMUL	r5,	r5,	r4
	LWI	r4,	r1,	552
	FPRSUB	r3,	r3,	r4
	LWI	r4,	r1,	548
	FPRSUB	r5,	r5,	r4
	LWI	r4,	r1,	604
	FPMUL	r4,	r4,	r3
	LWI	r6,	r1,	592
	FPMUL	r6,	r6,	r5
	LWI	r7,	r1,	600
	FPMUL	r7,	r7,	r3
	LWI	r8,	r1,	588
	FPMUL	r8,	r8,	r5
	LWI	r9,	r1,	608
	FPMUL	r3,	r9,	r3
	LWI	r9,	r1,	596
	FPMUL	r5,	r9,	r5
	FPADD	r6,	r4,	r6
	FPADD	r8,	r7,	r8
	LWI	r9,	r1,	580
	FPADD	r6,	r6,	r9
	LWI	r9,	r1,	576
	FPADD	r8,	r8,	r9
	FPADD	r5,	r5,	r3
	LWI	r9,	r1,	584
	FPADD	r5,	r9,	r5
	FPMUL	r9,	r8,	r8
	FPMUL	r10,	r6,	r6
	FPADD	r9,	r9,	r10
	FPMUL	r10,	r5,	r5
	FPADD	r9,	r9,	r10
	FPINVSQRT	r9,	r9
	ORI	r10,	r0,	1065353216
	FPDIV	r9,	r10,	r9
	FPDIV	r5,	r5,	r9
	SWI	r5,	r1,	208
	FPDIV	r5,	r6,	r9
	SWI	r5,	r1,	436
	FPDIV	r6,	r8,	r9
	SWI	r6,	r1,	440
	LWI	r8,	r1,	208
	LWI	r9,	r1,	616
	BITOR	r8,	r9,	r8
	SWI	r8,	r1,	544
	SWI	r5,	r1,	204
	SWI	r6,	r1,	200
	SWI	r8,	r1,	212
	SWI	r3,	r1,	188
	SWI	r4,	r1,	192
	SWI	r7,	r1,	196
	ADD	r5,	r0,	r0
	SWI	r5,	r1,	480
	LWI	r3,	r1,	212
	SWI	r3,	r1,	444
	ADDI	r3,	r0,	-1
	SWI	r3,	r1,	428
	ADDI	r3,	r0,	1343554297
	SWI	r3,	r1,	424
	SWI	r5,	r1,	460
	SWI	r5,	r1,	464
	SWI	r5,	r1,	484
	SWI	r5,	r1,	488
	SWI	r5,	r1,	476
	SWI	r5,	r1,	496
	SWI	r5,	r1,	492
	SWI	r5,	r1,	500
	SWI	r5,	r1,	508
	SWI	r5,	r1,	504
	SWI	r5,	r1,	512
$0BB0_4:
	ADDI	r3,	r0,	3
	ANDI	r3,	r3,	31
	beqid	r3,	$0BB0_6
	ADDI	r5,	r5,	0
$0BB0_5:
	ADDI	r3,	r3,	-1
	bneid	r3,	$0BB0_5
	ADDK	r5,	r5,	r5
$0BB0_6:
	LWI	r3,	r1,	472
	ADD	r3,	r5,	r3
	LOAD	r5,	r3,	2
	LOAD	r4,	r3,	1
	LOAD	r6,	r3,	0
	LOAD	r7,	r3,	5
	LOAD	r8,	r3,	4
	LOAD	r9,	r3,	3
	LWI	r10,	r1,	448
	FPRSUB	r6,	r10,	r6
	FPRSUB	r9,	r10,	r9
	LWI	r10,	r1,	440
	FPDIV	r6,	r6,	r10
	FPDIV	r9,	r9,	r10
	FPGT	r10,	r6,	r9
	ADDI	r11,	r0,	1
	ADDI	r12,	r0,	0
	bneid	r10,	$0BB0_8
	ADD	r20,	r11,	r0
	ADD	r20,	r12,	r0
$0BB0_8:
	bneid	r20,	$0BB0_10
	ADD	r10,	r9,	r0
	ADD	r10,	r6,	r0
$0BB0_10:
	ORI	r21,	r0,	-803929351
	bneid	r20,	$0BB0_12
	NOP
	ADD	r6,	r9,	r0
$0BB0_12:
	ORI	r9,	r0,	1343554297
	FPGT	r20,	r10,	r21
	FPLT	r22,	r6,	r9
	bneid	r20,	$0BB0_14
	ADD	r23,	r11,	r0
	ADD	r23,	r12,	r0
$0BB0_14:
	bneid	r22,	$0BB0_16
	ADD	r20,	r11,	r0
	ADD	r20,	r12,	r0
$0BB0_16:
	bneid	r23,	$0BB0_18
	NOP
	ADD	r10,	r21,	r0
$0BB0_18:
	bneid	r20,	$0BB0_20
	NOP
	ADD	r6,	r9,	r0
$0BB0_20:
	FPGT	r9,	r10,	r6
	bneid	r9,	$0BB0_22
	NOP
	ADD	r11,	r12,	r0
$0BB0_22:
	bneid	r11,	$0BB0_94
	NOP
	ORI	r9,	r0,	0
	ADDI	r11,	r0,	1
	FPLT	r9,	r6,	r9
	bneid	r9,	$0BB0_25
	NOP
	ADDI	r11,	r0,	0
$0BB0_25:
	bneid	r11,	$0BB0_94
	NOP
	LWI	r9,	r1,	452
	FPRSUB	r4,	r9,	r4
	FPRSUB	r8,	r9,	r8
	LWI	r9,	r1,	436
	FPDIV	r4,	r4,	r9
	FPDIV	r8,	r8,	r9
	FPGT	r9,	r4,	r8
	ADDI	r11,	r0,	1
	ADDI	r12,	r0,	0
	bneid	r9,	$0BB0_28
	ADD	r20,	r11,	r0
	ADD	r20,	r12,	r0
$0BB0_28:
	bneid	r20,	$0BB0_30
	ADD	r9,	r8,	r0
	ADD	r9,	r4,	r0
$0BB0_30:
	bneid	r20,	$0BB0_32
	NOP
	ADD	r4,	r8,	r0
$0BB0_32:
	FPGT	r8,	r9,	r10
	FPLT	r20,	r4,	r6
	bneid	r8,	$0BB0_34
	ADD	r21,	r11,	r0
	ADD	r21,	r12,	r0
$0BB0_34:
	bneid	r20,	$0BB0_36
	ADD	r8,	r11,	r0
	ADD	r8,	r12,	r0
$0BB0_36:
	bneid	r21,	$0BB0_38
	NOP
	ADD	r9,	r10,	r0
$0BB0_38:
	bneid	r8,	$0BB0_40
	NOP
	ADD	r4,	r6,	r0
$0BB0_40:
	FPGT	r6,	r9,	r4
	bneid	r6,	$0BB0_42
	NOP
	ADD	r11,	r12,	r0
$0BB0_42:
	bneid	r11,	$0BB0_94
	NOP
	ORI	r6,	r0,	0
	ADDI	r8,	r0,	1
	FPLT	r6,	r4,	r6
	bneid	r6,	$0BB0_45
	NOP
	ADDI	r8,	r0,	0
$0BB0_45:
	bneid	r8,	$0BB0_94
	NOP
	LWI	r6,	r1,	468
	FPRSUB	r5,	r6,	r5
	FPRSUB	r6,	r6,	r7
	LWI	r7,	r1,	444
	FPDIV	r5,	r5,	r7
	FPDIV	r6,	r6,	r7
	FPGT	r7,	r5,	r6
	ADDI	r8,	r0,	1
	ADDI	r10,	r0,	0
	bneid	r7,	$0BB0_48
	ADD	r11,	r8,	r0
	ADD	r11,	r10,	r0
$0BB0_48:
	bneid	r11,	$0BB0_50
	ADD	r7,	r6,	r0
	ADD	r7,	r5,	r0
$0BB0_50:
	bneid	r11,	$0BB0_52
	NOP
	ADD	r5,	r6,	r0
$0BB0_52:
	FPGT	r6,	r7,	r9
	FPLT	r11,	r5,	r4
	bneid	r6,	$0BB0_54
	ADD	r12,	r8,	r0
	ADD	r12,	r10,	r0
$0BB0_54:
	bneid	r11,	$0BB0_56
	ADD	r6,	r8,	r0
	ADD	r6,	r10,	r0
$0BB0_56:
	bneid	r6,	$0BB0_58
	NOP
	ADD	r5,	r4,	r0
$0BB0_58:
	bneid	r12,	$0BB0_60
	NOP
	ADD	r7,	r9,	r0
$0BB0_60:
	FPGT	r4,	r7,	r5
	bneid	r4,	$0BB0_62
	NOP
	ADD	r8,	r10,	r0
$0BB0_62:
	bneid	r8,	$0BB0_94
	NOP
	ORI	r4,	r0,	0
	ADDI	r6,	r0,	1
	FPLT	r5,	r5,	r4
	bneid	r5,	$0BB0_65
	NOP
	ADDI	r6,	r0,	0
$0BB0_65:
	bneid	r6,	$0BB0_94
	NOP
	LOAD	r5,	r3,	7
	LOAD	r3,	r3,	6
	SWI	r3,	r1,	432
	ADD	r4,	r0,	r0
	CMP	r3,	r4,	r3
	bltid	r3,	$0BB0_98
	NOP
	ADD	r3,	r0,	r0
	LWI	r4,	r1,	432
	CMP	r3,	r3,	r4
	bleid	r3,	$0BB0_94
	NOP
$0BB0_68:
	LOAD	r3,	r5,	2
	LOAD	r4,	r5,	1
	LOAD	r6,	r5,	0
	LOAD	r7,	r5,	5
	LOAD	r8,	r5,	4
	LOAD	r9,	r5,	3
	LOAD	r10,	r5,	8
	LOAD	r11,	r5,	7
	LOAD	r12,	r5,	6
	FPRSUB	r7,	r10,	r7
	SWI	r7,	r1,	456
	FPRSUB	r8,	r11,	r8
	FPRSUB	r9,	r12,	r9
	LWI	r20,	r1,	436
	FPMUL	r21,	r20,	r7
	LWI	r22,	r1,	444
	FPMUL	r23,	r8,	r22
	FPRSUB	r6,	r12,	r6
	LOAD	r24,	r5,	10
	FPRSUB	r21,	r23,	r21
	FPMUL	r22,	r9,	r22
	LWI	r23,	r1,	440
	FPMUL	r25,	r23,	r7
	FPRSUB	r3,	r10,	r3
	FPRSUB	r4,	r11,	r4
	LWI	r26,	r1,	448
	FPRSUB	r12,	r12,	r26
	FPRSUB	r22,	r25,	r22
	FPMUL	r23,	r8,	r23
	FPMUL	r20,	r9,	r20
	FPMUL	r25,	r21,	r6
	ORI	r26,	r0,	0
	ADD	r27,	r0,	r0
	LOAD	r28,	r5,	9
	LWI	r28,	r1,	452
	FPRSUB	r11,	r11,	r28
	FPMUL	r21,	r21,	r12
	FPRSUB	r20,	r20,	r23
	FPMUL	r23,	r22,	r4
	FPADD	r25,	r25,	r26
	FPMUL	r28,	r4,	r7
	FPMUL	r29,	r8,	r3
	FPMUL	r30,	r9,	r3
	FPMUL	r7,	r6,	r7
	MULI	r24,	r24,	25
	LOAD	r27,	r27,	9
	LWI	r31,	r1,	468
	FPRSUB	r10,	r10,	r31
	FPRSUB	r28,	r29,	r28
	FPRSUB	r7,	r7,	r30
	ADD	r24,	r27,	r24
	FPMUL	r22,	r22,	r11
	FPADD	r21,	r21,	r26
	FPMUL	r27,	r20,	r3
	FPADD	r23,	r23,	r25
	FPMUL	r25,	r8,	r6
	FPMUL	r29,	r9,	r4
	FPRSUB	r25,	r29,	r25
	LOAD	r29,	r24,	6
	FPMUL	r20,	r20,	r10
	FPADD	r21,	r22,	r21
	ORI	r22,	r0,	1065353216
	FPADD	r23,	r27,	r23
	FPMUL	r27,	r28,	r28
	FPMUL	r7,	r7,	r7
	FPDIV	r22,	r22,	r23
	FPADD	r20,	r20,	r21
	LOAD	r21,	r24,	5
	FPADD	r7,	r27,	r7
	FPMUL	r21,	r25,	r25
	FPMUL	r20,	r20,	r22
	FPADD	r7,	r7,	r21
	LOAD	r21,	r24,	4
	ADDI	r21,	r0,	1
	FPLT	r23,	r20,	r26
	FPINVSQRT	r7,	r7
	bneid	r23,	$0BB0_70
	NOP
	ADDI	r21,	r0,	0
$0BB0_70:
	bneid	r21,	$0BB0_93
	NOP
	ORI	r7,	r0,	1065353216
	ADDI	r21,	r0,	1
	FPGT	r7,	r20,	r7
	bneid	r7,	$0BB0_73
	NOP
	ADDI	r21,	r0,	0
$0BB0_73:
	bneid	r21,	$0BB0_93
	NOP
	FPMUL	r7,	r11,	r3
	FPMUL	r21,	r4,	r10
	FPRSUB	r7,	r21,	r7
	FPMUL	r10,	r6,	r10
	FPMUL	r3,	r12,	r3
	FPRSUB	r3,	r3,	r10
	FPMUL	r4,	r4,	r12
	FPMUL	r6,	r6,	r11
	LWI	r10,	r1,	440
	FPMUL	r10,	r7,	r10
	ORI	r11,	r0,	0
	FPRSUB	r4,	r6,	r4
	LWI	r6,	r1,	436
	FPMUL	r6,	r3,	r6
	FPADD	r10,	r10,	r11
	LWI	r12,	r1,	444
	FPMUL	r12,	r4,	r12
	FPADD	r6,	r6,	r10
	FPADD	r6,	r12,	r6
	FPMUL	r6,	r6,	r22
	ADDI	r10,	r0,	1
	FPLT	r11,	r6,	r11
	bneid	r11,	$0BB0_76
	NOP
	ADDI	r10,	r0,	0
$0BB0_76:
	bneid	r10,	$0BB0_93
	NOP
	FPADD	r6,	r6,	r20
	ORI	r10,	r0,	1065353216
	ADDI	r11,	r0,	1
	FPGT	r6,	r6,	r10
	bneid	r6,	$0BB0_79
	NOP
	ADDI	r11,	r0,	0
$0BB0_79:
	bneid	r11,	$0BB0_93
	NOP
	FPMUL	r6,	r7,	r9
	ORI	r7,	r0,	0
	FPMUL	r3,	r3,	r8
	FPADD	r6,	r6,	r7
	LWI	r8,	r1,	456
	FPMUL	r4,	r4,	r8
	FPADD	r3,	r3,	r6
	FPADD	r3,	r4,	r3
	FPMUL	r3,	r3,	r22
	FPUN	r4,	r3,	r7
	FPLE	r6,	r3,	r7
	BITOR	r4,	r4,	r6
	bneid	r4,	$0BB0_82
	ADDI	r7,	r0,	1
	ADDI	r7,	r0,	0
$0BB0_82:
	bneid	r7,	$0BB0_93
	NOP
	ORI	r4,	r0,	981668463
	ADDI	r6,	r0,	1
	FPLT	r4,	r3,	r4
	bneid	r4,	$0BB0_85
	NOP
	ADDI	r6,	r0,	0
$0BB0_85:
	bneid	r6,	$0BB0_93
	NOP
	ORI	r4,	r0,	1343554297
	ADDI	r6,	r0,	1
	FPEQ	r4,	r3,	r4
	bneid	r4,	$0BB0_88
	NOP
	ADDI	r6,	r0,	0
$0BB0_88:
	bneid	r6,	$0BB0_93
	NOP
	LWI	r4,	r1,	424
	SWI	r4,	r1,	216
	LWI	r4,	r1,	216
	FPUN	r6,	r4,	r3
	FPLE	r4,	r4,	r3
	BITOR	r4,	r6,	r4
	bneid	r4,	$0BB0_91
	ADDI	r7,	r0,	1
	ADDI	r7,	r0,	0
$0BB0_91:
	bneid	r7,	$0BB0_93
	NOP
	LOAD	r4,	r5,	2
	LOAD	r6,	r5,	1
	LOAD	r7,	r5,	0
	LOAD	r8,	r5,	5
	LOAD	r9,	r5,	4
	LOAD	r10,	r5,	3
	LOAD	r11,	r5,	8
	LOAD	r12,	r5,	7
	LOAD	r20,	r5,	6
	LOAD	r21,	r5,	10
	LOAD	r22,	r5,	9
	SWI	r22,	r1,	524
	ADD	r22,	r0,	r0
	MULI	r21,	r21,	25
	LOAD	r22,	r22,	9
	ADD	r21,	r22,	r21
	LOAD	r22,	r21,	6
	LOAD	r23,	r21,	5
	LOAD	r21,	r21,	4
	SWI	r22,	r1,	260
	SWI	r23,	r1,	264
	SWI	r21,	r1,	268
	SWI	r11,	r1,	248
	SWI	r12,	r1,	252
	SWI	r20,	r1,	256
	SWI	r8,	r1,	236
	SWI	r9,	r1,	240
	SWI	r10,	r1,	244
	SWI	r4,	r1,	224
	SWI	r6,	r1,	228
	SWI	r7,	r1,	232
	SWI	r3,	r1,	220
	ADDI	r3,	r0,	1060320051
	SWI	r3,	r1,	516
	ADDI	r3,	r0,	1050253722
	SWI	r3,	r1,	520
	LWI	r3,	r1,	260
	SWI	r3,	r1,	480
	LWI	r3,	r1,	264
	SWI	r3,	r1,	460
	LWI	r3,	r1,	268
	SWI	r3,	r1,	464
	LWI	r3,	r1,	248
	SWI	r3,	r1,	484
	LWI	r3,	r1,	252
	SWI	r3,	r1,	488
	LWI	r3,	r1,	256
	SWI	r3,	r1,	476
	LWI	r3,	r1,	236
	SWI	r3,	r1,	496
	LWI	r3,	r1,	240
	SWI	r3,	r1,	492
	LWI	r3,	r1,	244
	SWI	r3,	r1,	500
	LWI	r3,	r1,	224
	SWI	r3,	r1,	508
	LWI	r3,	r1,	228
	SWI	r3,	r1,	504
	LWI	r3,	r1,	232
	SWI	r3,	r1,	512
	LWI	r3,	r1,	220
	SWI	r3,	r1,	424
$0BB0_93:
	LWI	r3,	r1,	432
	ADDI	r3,	r3,	-1
	SWI	r3,	r1,	432
	ADDI	r5,	r5,	11
	ADD	r4,	r0,	r0
	CMP	r3,	r4,	r3
	bneid	r3,	$0BB0_68
	NOP
$0BB0_94:
	ADD	r5,	r0,	r0
	LWI	r3,	r1,	428
	CMP	r5,	r5,	r3
	bltid	r5,	$0BB0_101
	NOP
	ADDI	r5,	r0,	2
	ANDI	r5,	r5,	31
	LWI	r3,	r1,	428
	beqid	r5,	$0BB0_97
	ADDI	r3,	r3,	0
$0BB0_96:
	ADDI	r5,	r5,	-1
	bneid	r5,	$0BB0_96
	ADDK	r3,	r3,	r3
$0BB0_97:
	ADDI	r5,	r1,	48
	LW	r5,	r5,	r3
	LWI	r3,	r1,	428
	ADDI	r3,	r3,	-1
	brid	$0BB0_4
	SWI	r3,	r1,	428
$0BB0_98:
	ADDI	r3,	r0,	2
	ANDI	r3,	r3,	31
	LWI	r4,	r1,	428
	beqid	r3,	$0BB0_100
	ADDI	r4,	r4,	0
$0BB0_99:
	ADDI	r3,	r3,	-1
	bneid	r3,	$0BB0_99
	ADDK	r4,	r4,	r4
$0BB0_100:
	ADDI	r3,	r1,	48
	LWI	r6,	r1,	428
	ADDI	r6,	r6,	1
	SWI	r6,	r1,	428
	ADDI	r6,	r5,	1
	ADD	r3,	r3,	r4
	brid	$0BB0_4
	SWI	r6,	r3,	4
$0BB0_101:
	LWI	r3,	r1,	508
	SWI	r3,	r1,	320
	LWI	r3,	r1,	496
	SWI	r3,	r1,	308
	LWI	r3,	r1,	484
	SWI	r3,	r1,	296
	LWI	r3,	r1,	488
	SWI	r3,	r1,	300
	LWI	r3,	r1,	512
	SWI	r3,	r1,	328
	LWI	r3,	r1,	500
	SWI	r3,	r1,	316
	LWI	r3,	r1,	476
	SWI	r3,	r1,	304
	LWI	r3,	r1,	504
	SWI	r3,	r1,	324
	LWI	r3,	r1,	492
	SWI	r3,	r1,	312
	LWI	r5,	r1,	320
	LWI	r3,	r1,	308
	LWI	r4,	r1,	296
	LWI	r6,	r1,	300
	LWI	r7,	r1,	312
	LWI	r8,	r1,	324
	LWI	r9,	r1,	328
	LWI	r10,	r1,	316
	LWI	r11,	r1,	304
	FPRSUB	r5,	r3,	r5
	FPRSUB	r6,	r6,	r7
	FPRSUB	r9,	r10,	r9
	FPRSUB	r3,	r4,	r3
	FPRSUB	r4,	r11,	r10
	FPRSUB	r7,	r7,	r8
	FPMUL	r8,	r7,	r3
	FPMUL	r10,	r6,	r5
	FPMUL	r5,	r4,	r5
	FPMUL	r3,	r9,	r3
	FPRSUB	r8,	r10,	r8
	FPRSUB	r5,	r3,	r5
	FPMUL	r3,	r6,	r9
	FPMUL	r4,	r4,	r7
	FPRSUB	r3,	r4,	r3
	LWI	r4,	r1,	544
	SWI	r4,	r1,	276
	FPMUL	r4,	r8,	r8
	FPMUL	r6,	r5,	r5
	LWI	r7,	r1,	276
	LWI	r9,	r1,	440
	FPMUL	r10,	r9,	r9
	LWI	r11,	r1,	436
	FPMUL	r12,	r11,	r11
	FPADD	r4,	r4,	r6
	FPMUL	r6,	r3,	r3
	FPADD	r4,	r4,	r6
	FPADD	r6,	r10,	r12
	FPMUL	r10,	r7,	r7
	FPADD	r6,	r6,	r10
	FPINVSQRT	r4,	r4
	ORI	r10,	r0,	1065353216
	FPINVSQRT	r6,	r6
	FPDIV	r6,	r10,	r6
	FPDIV	r4,	r10,	r4
	FPDIV	r8,	r8,	r4
	FPDIV	r10,	r9,	r6
	FPDIV	r5,	r5,	r4
	FPDIV	r12,	r11,	r6
	LWI	r20,	r1,	424
	SWI	r20,	r1,	332
	FPMUL	r10,	r10,	r8
	ORI	r20,	r0,	0
	LWI	r21,	r1,	332
	FPDIV	r3,	r3,	r4
	FPDIV	r4,	r7,	r6
	FPMUL	r6,	r12,	r5
	FPADD	r10,	r10,	r20
	LWI	r12,	r1,	612
	SWI	r12,	r1,	284
	FPMUL	r7,	r7,	r21
	FPMUL	r11,	r11,	r21
	FPMUL	r9,	r9,	r21
	FPMUL	r4,	r4,	r3
	FPADD	r6,	r6,	r10
	FPADD	r4,	r4,	r6
	LWI	r6,	r1,	464
	SWI	r6,	r1,	292
	LWI	r6,	r1,	460
	SWI	r6,	r1,	288
	LWI	r6,	r1,	520
	SWI	r6,	r1,	280
	LWI	r6,	r1,	516
	SWI	r6,	r1,	272
	LWI	r6,	r1,	284
	SWI	r7,	r1,	336
	SWI	r11,	r1,	340
	SWI	r9,	r1,	344
	LWI	r10,	r1,	292
	SWI	r10,	r1,	488
	LWI	r10,	r1,	288
	SWI	r10,	r1,	492
	LWI	r10,	r1,	280
	LWI	r12,	r1,	272
	SWI	r12,	r1,	496
	FPUN	r12,	r4,	r20
	FPLE	r4,	r4,	r20
	BITOR	r4,	r12,	r4
	bneid	r4,	$0BB0_103
	ADDI	r20,	r0,	1
	ADDI	r20,	r0,	0
$0BB0_103:
	bneid	r20,	$0BB0_105
	NOP
	FPNEG	r3,	r3
	FPNEG	r5,	r5
	FPNEG	r8,	r8
	SWI	r3,	r1,	356
	SWI	r5,	r1,	352
	SWI	r8,	r1,	348
$0BB0_105:
	LWI	r4,	r1,	448
	FPADD	r4,	r9,	r4
	SWI	r4,	r1,	456
	LWI	r9,	r1,	452
	FPADD	r9,	r11,	r9
	SWI	r9,	r1,	460
	FPADD	r6,	r6,	r7
	SWI	r6,	r1,	464
	LWI	r7,	r1,	564
	FPRSUB	r4,	r4,	r7
	LWI	r7,	r1,	568
	FPRSUB	r7,	r9,	r7
	LWI	r9,	r1,	572
	FPRSUB	r6,	r6,	r9
	FPMUL	r9,	r4,	r4
	FPMUL	r11,	r7,	r7
	FPADD	r9,	r9,	r11
	FPMUL	r11,	r6,	r6
	FPADD	r9,	r9,	r11
	ORI	r11,	r0,	1065353216
	FPINVSQRT	r12,	r9
	FPDIV	r11,	r11,	r12
	FPDIV	r4,	r4,	r11
	SWI	r4,	r1,	436
	FPDIV	r7,	r7,	r11
	SWI	r7,	r1,	440
	FPMUL	r4,	r4,	r8
	ORI	r8,	r0,	0
	FPDIV	r6,	r6,	r11
	SWI	r6,	r1,	444
	FPMUL	r5,	r7,	r5
	FPADD	r4,	r4,	r8
	FPMUL	r3,	r6,	r3
	FPADD	r5,	r5,	r4
	FPADD	r5,	r3,	r5
	SWI	r5,	r1,	504
	ORI	r3,	r0,	1053609165
	FPUN	r4,	r5,	r8
	FPLE	r5,	r5,	r8
	BITOR	r5,	r4,	r5
	bneid	r5,	$0BB0_107
	ADDI	r6,	r0,	1
	ADDI	r6,	r0,	0
$0BB0_107:
	FPMUL	r5,	r10,	r3
	beqid	r6,	$0BB0_109
	SWI	r5,	r1,	484
	brid	$0BB0_215
	LWI	r5,	r1,	484
$0BB0_109:
	ADD	r5,	r0,	r0
	ADDI	r3,	r0,	-1
	SWI	r3,	r1,	428
	FPINVSQRT	r3,	r9
	SWI	r3,	r1,	500
$0BB0_110:
	ADDI	r3,	r0,	3
	ANDI	r3,	r3,	31
	beqid	r3,	$0BB0_112
	ADDI	r5,	r5,	0
$0BB0_111:
	ADDI	r3,	r3,	-1
	bneid	r3,	$0BB0_111
	ADDK	r5,	r5,	r5
$0BB0_112:
	LWI	r3,	r1,	472
	ADD	r3,	r5,	r3
	LOAD	r5,	r3,	2
	LOAD	r4,	r3,	1
	LOAD	r6,	r3,	0
	LOAD	r7,	r3,	5
	LOAD	r8,	r3,	4
	LOAD	r9,	r3,	3
	LWI	r10,	r1,	456
	FPRSUB	r6,	r10,	r6
	FPRSUB	r9,	r10,	r9
	LWI	r10,	r1,	436
	FPDIV	r6,	r6,	r10
	FPDIV	r9,	r9,	r10
	FPGT	r10,	r6,	r9
	ADDI	r11,	r0,	1
	ADDI	r12,	r0,	0
	bneid	r10,	$0BB0_114
	ADD	r20,	r11,	r0
	ADD	r20,	r12,	r0
$0BB0_114:
	bneid	r20,	$0BB0_116
	ADD	r10,	r9,	r0
	ADD	r10,	r6,	r0
$0BB0_116:
	ORI	r21,	r0,	-803929351
	bneid	r20,	$0BB0_118
	NOP
	ADD	r6,	r9,	r0
$0BB0_118:
	ORI	r9,	r0,	1343554297
	FPGT	r20,	r10,	r21
	FPLT	r22,	r6,	r9
	bneid	r20,	$0BB0_120
	ADD	r23,	r11,	r0
	ADD	r23,	r12,	r0
$0BB0_120:
	bneid	r22,	$0BB0_122
	ADD	r20,	r11,	r0
	ADD	r20,	r12,	r0
$0BB0_122:
	bneid	r23,	$0BB0_124
	NOP
	ADD	r10,	r21,	r0
$0BB0_124:
	bneid	r20,	$0BB0_126
	NOP
	ADD	r6,	r9,	r0
$0BB0_126:
	FPGT	r9,	r10,	r6
	bneid	r9,	$0BB0_128
	NOP
	ADD	r11,	r12,	r0
$0BB0_128:
	bneid	r11,	$0BB0_200
	NOP
	ORI	r9,	r0,	0
	ADDI	r11,	r0,	1
	FPLT	r9,	r6,	r9
	bneid	r9,	$0BB0_131
	NOP
	ADDI	r11,	r0,	0
$0BB0_131:
	bneid	r11,	$0BB0_200
	NOP
	LWI	r9,	r1,	460
	FPRSUB	r4,	r9,	r4
	FPRSUB	r8,	r9,	r8
	LWI	r9,	r1,	440
	FPDIV	r4,	r4,	r9
	FPDIV	r8,	r8,	r9
	FPGT	r9,	r4,	r8
	ADDI	r11,	r0,	1
	ADDI	r12,	r0,	0
	bneid	r9,	$0BB0_134
	ADD	r20,	r11,	r0
	ADD	r20,	r12,	r0
$0BB0_134:
	bneid	r20,	$0BB0_136
	ADD	r9,	r8,	r0
	ADD	r9,	r4,	r0
$0BB0_136:
	bneid	r20,	$0BB0_138
	NOP
	ADD	r4,	r8,	r0
$0BB0_138:
	FPGT	r8,	r9,	r10
	FPLT	r20,	r4,	r6
	bneid	r8,	$0BB0_140
	ADD	r21,	r11,	r0
	ADD	r21,	r12,	r0
$0BB0_140:
	bneid	r20,	$0BB0_142
	ADD	r8,	r11,	r0
	ADD	r8,	r12,	r0
$0BB0_142:
	bneid	r21,	$0BB0_144
	NOP
	ADD	r9,	r10,	r0
$0BB0_144:
	bneid	r8,	$0BB0_146
	NOP
	ADD	r4,	r6,	r0
$0BB0_146:
	FPGT	r6,	r9,	r4
	bneid	r6,	$0BB0_148
	NOP
	ADD	r11,	r12,	r0
$0BB0_148:
	bneid	r11,	$0BB0_200
	NOP
	ORI	r6,	r0,	0
	ADDI	r8,	r0,	1
	FPLT	r6,	r4,	r6
	bneid	r6,	$0BB0_151
	NOP
	ADDI	r8,	r0,	0
$0BB0_151:
	bneid	r8,	$0BB0_200
	NOP
	LWI	r6,	r1,	464
	FPRSUB	r5,	r6,	r5
	FPRSUB	r6,	r6,	r7
	LWI	r7,	r1,	444
	FPDIV	r5,	r5,	r7
	FPDIV	r6,	r6,	r7
	FPGT	r7,	r5,	r6
	ADDI	r8,	r0,	1
	ADDI	r10,	r0,	0
	bneid	r7,	$0BB0_154
	ADD	r11,	r8,	r0
	ADD	r11,	r10,	r0
$0BB0_154:
	bneid	r11,	$0BB0_156
	ADD	r7,	r6,	r0
	ADD	r7,	r5,	r0
$0BB0_156:
	bneid	r11,	$0BB0_158
	NOP
	ADD	r5,	r6,	r0
$0BB0_158:
	FPGT	r6,	r7,	r9
	FPLT	r11,	r5,	r4
	bneid	r6,	$0BB0_160
	ADD	r12,	r8,	r0
	ADD	r12,	r10,	r0
$0BB0_160:
	bneid	r11,	$0BB0_162
	ADD	r6,	r8,	r0
	ADD	r6,	r10,	r0
$0BB0_162:
	bneid	r6,	$0BB0_164
	NOP
	ADD	r5,	r4,	r0
$0BB0_164:
	bneid	r12,	$0BB0_166
	NOP
	ADD	r7,	r9,	r0
$0BB0_166:
	FPGT	r4,	r7,	r5
	bneid	r4,	$0BB0_168
	NOP
	ADD	r8,	r10,	r0
$0BB0_168:
	bneid	r8,	$0BB0_200
	NOP
	ORI	r4,	r0,	0
	ADDI	r6,	r0,	1
	FPLT	r5,	r5,	r4
	bneid	r5,	$0BB0_171
	NOP
	ADDI	r6,	r0,	0
$0BB0_171:
	bneid	r6,	$0BB0_200
	NOP
	LOAD	r5,	r3,	7
	LOAD	r3,	r3,	6
	SWI	r3,	r1,	432
	ADD	r4,	r0,	r0
	CMP	r3,	r4,	r3
	bltid	r3,	$0BB0_204
	NOP
	ADD	r3,	r0,	r0
	LWI	r4,	r1,	432
	CMP	r3,	r3,	r4
	bleid	r3,	$0BB0_200
	NOP
$0BB0_174:
	LOAD	r3,	r5,	2
	LOAD	r4,	r5,	1
	LOAD	r6,	r5,	0
	LOAD	r7,	r5,	5
	LOAD	r8,	r5,	4
	LOAD	r9,	r5,	3
	LOAD	r10,	r5,	8
	LOAD	r11,	r5,	7
	LOAD	r12,	r5,	6
	FPRSUB	r7,	r10,	r7
	SWI	r7,	r1,	476
	FPRSUB	r8,	r11,	r8
	FPRSUB	r9,	r12,	r9
	LWI	r20,	r1,	440
	FPMUL	r21,	r20,	r7
	LWI	r22,	r1,	444
	FPMUL	r23,	r8,	r22
	FPRSUB	r6,	r12,	r6
	LOAD	r24,	r5,	10
	FPRSUB	r21,	r23,	r21
	FPMUL	r22,	r9,	r22
	LWI	r23,	r1,	436
	FPMUL	r25,	r23,	r7
	FPRSUB	r3,	r10,	r3
	FPRSUB	r4,	r11,	r4
	LWI	r26,	r1,	456
	FPRSUB	r12,	r12,	r26
	FPRSUB	r22,	r25,	r22
	FPMUL	r23,	r8,	r23
	FPMUL	r20,	r9,	r20
	FPMUL	r25,	r21,	r6
	ORI	r26,	r0,	0
	ADD	r27,	r0,	r0
	LOAD	r28,	r5,	9
	LWI	r28,	r1,	460
	FPRSUB	r11,	r11,	r28
	FPMUL	r21,	r21,	r12
	FPRSUB	r20,	r20,	r23
	FPMUL	r23,	r22,	r4
	FPADD	r25,	r25,	r26
	FPMUL	r28,	r4,	r7
	FPMUL	r29,	r8,	r3
	FPMUL	r30,	r9,	r3
	FPMUL	r7,	r6,	r7
	MULI	r24,	r24,	25
	LOAD	r27,	r27,	9
	LWI	r31,	r1,	464
	FPRSUB	r10,	r10,	r31
	FPRSUB	r28,	r29,	r28
	FPRSUB	r7,	r7,	r30
	ADD	r24,	r27,	r24
	FPMUL	r22,	r22,	r11
	FPADD	r21,	r21,	r26
	FPMUL	r27,	r20,	r3
	FPADD	r23,	r23,	r25
	FPMUL	r25,	r8,	r6
	FPMUL	r29,	r9,	r4
	FPRSUB	r25,	r29,	r25
	LOAD	r29,	r24,	6
	FPMUL	r20,	r20,	r10
	FPADD	r21,	r22,	r21
	ORI	r22,	r0,	1065353216
	FPADD	r23,	r27,	r23
	FPMUL	r27,	r28,	r28
	FPMUL	r7,	r7,	r7
	FPDIV	r22,	r22,	r23
	FPADD	r20,	r20,	r21
	LOAD	r21,	r24,	5
	FPADD	r7,	r27,	r7
	FPMUL	r21,	r25,	r25
	FPMUL	r20,	r20,	r22
	FPADD	r7,	r7,	r21
	LOAD	r21,	r24,	4
	ADDI	r21,	r0,	1
	FPLT	r23,	r20,	r26
	FPINVSQRT	r7,	r7
	bneid	r23,	$0BB0_176
	NOP
	ADDI	r21,	r0,	0
$0BB0_176:
	bneid	r21,	$0BB0_199
	NOP
	ORI	r7,	r0,	1065353216
	ADDI	r21,	r0,	1
	FPGT	r7,	r20,	r7
	bneid	r7,	$0BB0_179
	NOP
	ADDI	r21,	r0,	0
$0BB0_179:
	bneid	r21,	$0BB0_199
	NOP
	FPMUL	r7,	r11,	r3
	FPMUL	r21,	r4,	r10
	FPRSUB	r7,	r21,	r7
	FPMUL	r10,	r6,	r10
	FPMUL	r3,	r12,	r3
	FPRSUB	r3,	r3,	r10
	FPMUL	r4,	r4,	r12
	FPMUL	r6,	r6,	r11
	LWI	r10,	r1,	436
	FPMUL	r10,	r7,	r10
	ORI	r11,	r0,	0
	FPRSUB	r4,	r6,	r4
	LWI	r6,	r1,	440
	FPMUL	r6,	r3,	r6
	FPADD	r10,	r10,	r11
	LWI	r12,	r1,	444
	FPMUL	r12,	r4,	r12
	FPADD	r6,	r6,	r10
	FPADD	r6,	r12,	r6
	FPMUL	r6,	r6,	r22
	ADDI	r10,	r0,	1
	FPLT	r11,	r6,	r11
	bneid	r11,	$0BB0_182
	NOP
	ADDI	r10,	r0,	0
$0BB0_182:
	bneid	r10,	$0BB0_199
	NOP
	FPADD	r6,	r6,	r20
	ORI	r10,	r0,	1065353216
	ADDI	r11,	r0,	1
	FPGT	r6,	r6,	r10
	bneid	r6,	$0BB0_185
	NOP
	ADDI	r11,	r0,	0
$0BB0_185:
	bneid	r11,	$0BB0_199
	NOP
	FPMUL	r6,	r7,	r9
	ORI	r7,	r0,	0
	FPMUL	r3,	r3,	r8
	FPADD	r6,	r6,	r7
	LWI	r8,	r1,	476
	FPMUL	r4,	r4,	r8
	FPADD	r3,	r3,	r6
	FPADD	r3,	r4,	r3
	FPMUL	r3,	r3,	r22
	FPUN	r4,	r3,	r7
	FPLE	r6,	r3,	r7
	BITOR	r4,	r4,	r6
	bneid	r4,	$0BB0_188
	ADDI	r7,	r0,	1
	ADDI	r7,	r0,	0
$0BB0_188:
	bneid	r7,	$0BB0_199
	NOP
	ORI	r4,	r0,	981668463
	ADDI	r6,	r0,	1
	FPLT	r4,	r3,	r4
	bneid	r4,	$0BB0_191
	NOP
	ADDI	r6,	r0,	0
$0BB0_191:
	bneid	r6,	$0BB0_199
	NOP
	ORI	r4,	r0,	1343554297
	ADDI	r6,	r0,	1
	FPEQ	r4,	r3,	r4
	bneid	r4,	$0BB0_194
	NOP
	ADDI	r6,	r0,	0
$0BB0_194:
	bneid	r6,	$0BB0_199
	NOP
	LWI	r4,	r1,	424
	SWI	r4,	r1,	360
	LWI	r4,	r1,	360
	FPUN	r6,	r4,	r3
	FPLE	r4,	r4,	r3
	BITOR	r4,	r6,	r4
	bneid	r4,	$0BB0_197
	ADDI	r7,	r0,	1
	ADDI	r7,	r0,	0
$0BB0_197:
	bneid	r7,	$0BB0_199
	NOP
	LOAD	r4,	r5,	2
	LOAD	r4,	r5,	1
	LOAD	r4,	r5,	0
	LOAD	r4,	r5,	5
	LOAD	r4,	r5,	4
	LOAD	r4,	r5,	3
	LOAD	r4,	r5,	8
	LOAD	r4,	r5,	7
	LOAD	r4,	r5,	6
	LOAD	r4,	r5,	10
	ADD	r6,	r0,	r0
	LOAD	r7,	r5,	9
	MULI	r4,	r4,	25
	LOAD	r6,	r6,	9
	ADD	r4,	r6,	r4
	SWI	r3,	r1,	364
	LOAD	r3,	r4,	6
	LWI	r3,	r1,	364
	SWI	r3,	r1,	424
	LOAD	r3,	r4,	5
	LOAD	r3,	r4,	4
$0BB0_199:
	LWI	r3,	r1,	432
	ADDI	r3,	r3,	-1
	SWI	r3,	r1,	432
	ADDI	r5,	r5,	11
	ADD	r4,	r0,	r0
	CMP	r3,	r4,	r3
	bneid	r3,	$0BB0_174
	NOP
$0BB0_200:
	ADD	r5,	r0,	r0
	LWI	r3,	r1,	428
	CMP	r5,	r5,	r3
	bltid	r5,	$0BB0_207
	NOP
	ADDI	r5,	r0,	2
	ANDI	r5,	r5,	31
	LWI	r3,	r1,	428
	beqid	r5,	$0BB0_203
	ADDI	r3,	r3,	0
$0BB0_202:
	ADDI	r5,	r5,	-1
	bneid	r5,	$0BB0_202
	ADDK	r3,	r3,	r3
$0BB0_203:
	ADDI	r5,	r1,	48
	LW	r5,	r5,	r3
	LWI	r3,	r1,	428
	ADDI	r3,	r3,	-1
	brid	$0BB0_110
	SWI	r3,	r1,	428
$0BB0_204:
	ADDI	r3,	r0,	2
	ANDI	r3,	r3,	31
	LWI	r4,	r1,	428
	beqid	r3,	$0BB0_206
	ADDI	r4,	r4,	0
$0BB0_205:
	ADDI	r3,	r3,	-1
	bneid	r3,	$0BB0_205
	ADDK	r4,	r4,	r4
$0BB0_206:
	ADDI	r3,	r1,	48
	LWI	r6,	r1,	428
	ADDI	r6,	r6,	1
	SWI	r6,	r1,	428
	ADDI	r6,	r5,	1
	ADD	r3,	r3,	r4
	brid	$0BB0_110
	SWI	r6,	r3,	4
$0BB0_207:
	LWI	r5,	r1,	424
	SWI	r5,	r1,	368
	ORI	r5,	r0,	1065353216
	LWI	r3,	r1,	368
	LWI	r4,	r1,	500
	FPDIV	r5,	r5,	r4
	FPUN	r4,	r3,	r5
	FPGE	r5,	r3,	r5
	BITOR	r5,	r4,	r5
	bneid	r5,	$0BB0_209
	ADDI	r6,	r0,	1
	ADDI	r6,	r0,	0
$0BB0_209:
	bneid	r6,	$0BB0_214
	NOP
	ORI	r5,	r0,	1008981770
	ADDI	r4,	r0,	1
	FPGT	r5,	r3,	r5
	bneid	r5,	$0BB0_212
	NOP
	ADDI	r4,	r0,	0
$0BB0_212:
	beqid	r4,	$0BB0_214
	NOP
	brid	$0BB0_215
	LWI	r5,	r1,	484
$0BB0_214:
	LWI	r3,	r1,	504
	LWI	r5,	r1,	496
	FPMUL	r5,	r5,	r3
	LWI	r3,	r1,	484
	FPADD	r3,	r5,	r3
	SWI	r3,	r1,	484
	ADD	r5,	r3,	r0
$0BB0_215:
	LWI	r3,	r1,	480
	SWI	r3,	r1,	392
	LWI	r4,	r1,	536
	SWI	r4,	r1,	372
	LWI	r4,	r1,	532
	SWI	r4,	r1,	376
	LWI	r4,	r1,	528
	SWI	r4,	r1,	380
	LWI	r3,	r1,	392
	LWI	r4,	r1,	484
	FPMUL	r3,	r3,	r4
	LWI	r4,	r1,	380
	LWI	r6,	r1,	492
	FPMUL	r6,	r6,	r5
	LWI	r7,	r1,	376
	LWI	r8,	r1,	488
	FPMUL	r5,	r8,	r5
	LWI	r8,	r1,	372
	FPADD	r8,	r5,	r8
	FPADD	r7,	r6,	r7
	FPADD	r4,	r4,	r3
	SWI	r8,	r1,	396
	SWI	r7,	r1,	400
	SWI	r4,	r1,	408
	SWI	r3,	r1,	404
	SWI	r6,	r1,	388
	SWI	r5,	r1,	384
	LWI	r5,	r1,	396
	SWI	r5,	r1,	536
	LWI	r5,	r1,	400
	SWI	r5,	r1,	532
	LWI	r5,	r1,	408
	SWI	r5,	r1,	528
	LWI	r5,	r1,	540
	ADDI	r5,	r5,	-1
	SWI	r5,	r1,	540
	ADD	r3,	r0,	r0
	CMP	r5,	r3,	r5
	bneid	r5,	$0BB0_3
	NOP
	LWI	r3,	r1,	624
	LWI	r5,	r1,	620
	ADD	r5,	r5,	r3
	MULI	r5,	r5,	3
	ORI	r3,	r0,	1025758986
	FPMUL	r6,	r8,	r3
	LWI	r8,	r1,	636
	ADD	r5,	r5,	r8
	FPMUL	r7,	r7,	r3
	STORE	r5,	r6,	0
	FPMUL	r3,	r4,	r3
	STORE	r5,	r7,	1
	STORE	r5,	r3,	2
	SWI	r3,	r1,	420
	SWI	r7,	r1,	416
	SWI	r6,	r1,	412
	LWI	r4,	r1,	420
	SWI	r4,	r1,	528
	LWI	r4,	r1,	416
	SWI	r4,	r1,	532
	LWI	r4,	r1,	412
	SWI	r4,	r1,	536
	ATOMIC_INC	r5,	0
	LWI	r3,	r1,	640
	CMP	r3,	r5,	r3
	bgtid	r3,	$0BB0_2
	NOP
$0BB0_217:
	ADD	r3,	r0,	r0
	LWI	r31,	r1,	0
	LWI	r30,	r1,	4
	LWI	r29,	r1,	8
	LWI	r28,	r1,	12
	LWI	r27,	r1,	16
	LWI	r26,	r1,	20
	LWI	r25,	r1,	24
	LWI	r24,	r1,	28
	LWI	r23,	r1,	32
	LWI	r22,	r1,	36
	LWI	r21,	r1,	40
	LWI	r20,	r1,	44
	rtsd	r15,	8
	ADDI	r1,	r1,	656
#	.end	main
$0tmp0:
#	.size	main, ($tmp0)-main


