	.file	"rt.bc"
	.text
	.globl	main
	.align	2
	.type	main,@function
	.ent	main                    # @main
main:
	.frame	r1,656,r15
	.mask	0xfff00000
# BB#0:                                 # %entry
	ADDI      r1, r1, -656
	SWI       r20, r1, 44
	SWI       r21, r1, 40
	SWI       r22, r1, 36
	SWI       r23, r1, 32
	SWI       r24, r1, 28
	SWI       r25, r1, 24
	SWI       r26, r1, 20
	SWI       r27, r1, 16
	SWI       r28, r1, 12
	SWI       r29, r1, 8
	SWI       r30, r1, 4
	SWI       r31, r1, 0
	ADD       r3, r0, r0
	LOAD      r4, r3, 1
	SWI       r4, r1, 652
	LOAD      r5, r3, 4
	LOAD      r6, r3, 7
	SWI       r6, r1, 636
	LOAD      r6, r3, 2
	SWI       r6, r1, 556
	LOAD      r6, r3, 5
	SWI       r6, r1, 560
	LOAD      r6, r3, 12
	LOAD      r7, r6, 0
	SWI       r7, r1, 564
	LOAD      r7, r6, 1
	SWI       r7, r1, 568
	LOAD      r6, r6, 2
	SWI       r6, r1, 572
	LOAD      r6, r3, 10
	LOAD      r7, r6, 0
	SWI       r7, r1, 448
	LOAD      r7, r6, 1
	SWI       r7, r1, 452
	LOAD      r7, r6, 2
	SWI       r7, r1, 468
	ADDI      r7, r6, 9
	LOAD      r8, r7, 0
	LOAD      r8, r7, 1
	ADDI      r8, r6, 12
	LOAD      r7, r7, 2
	LOAD      r7, r8, 0
	SWI       r7, r1, 576
	LOAD      r7, r8, 1
	SWI       r7, r1, 580
	LOAD      r7, r8, 2
	SWI       r7, r1, 584
	ADDI      r7, r6, 15
	LOAD      r8, r7, 0
	SWI       r8, r1, 588
	LOAD      r8, r7, 1
	SWI       r8, r1, 592
	LOAD      r7, r7, 2
	SWI       r7, r1, 596
	ADDI      r6, r6, 18
	LOAD      r7, r6, 0
	SWI       r7, r1, 600
	LOAD      r7, r6, 1
	SWI       r7, r1, 604
	LOAD      r6, r6, 2
	SWI       r6, r1, 608
	LOAD      r6, r3, 28
	LOAD      r6, r3, 29
	LOAD      r3, r3, 8
	SWI       r3, r1, 472
	FPCONV    r3, r4
	SWI       r3, r1, 628
	FPCONV    r3, r5
	SWI       r3, r1, 632
	ORI       r3, r0, -1073741824
	MUL       r4, r5, r4
	SWI       r4, r1, 640
	ATOMIC_INC r5, 0
	CMP       r4, r5, r4
	bleid     r4, ($BB0_217)
	NOP    
# BB#1:                                 # %bb.lr.ph
	LWI       r4, r1, 628
	FPDIV     r4, r4, r3
	SWI       r4, r1, 644
	LWI       r4, r1, 632
	FPDIV     r3, r4, r3
	SWI       r3, r1, 648
	LWI       r3, r1, 468
	SWI        r3, r1, 184
	LWI       r3, r1, 452
	SWI        r3, r1, 180
	LWI       r3, r1, 448
	SWI        r3, r1, 176
	ADD       r3, r0, r0
	SWI       r3, r1, 616
	LWI       r4, r1, 184
	SWI       r4, r1, 612
	SWI       r3, r1, 528
	SWI       r3, r1, 532
	SWI       r3, r1, 536
$BB0_2:                                 # %bb
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
                                        #       Child Loop BB0_110 Depth 3
                                        #         Child Loop BB0_202 Depth 4
                                        #         Child Loop BB0_174 Depth 4
                                        #         Child Loop BB0_205 Depth 4
                                        #         Child Loop BB0_111 Depth 4
                                        #       Child Loop BB0_4 Depth 3
                                        #         Child Loop BB0_96 Depth 4
                                        #         Child Loop BB0_68 Depth 4
                                        #         Child Loop BB0_99 Depth 4
                                        #         Child Loop BB0_5 Depth 4
	LWI       r3, r1, 652
	DIV       r4, r3, r5
	MUL       r3, r4, r3
	SWI       r3, r1, 620
	RSUB      r5, r3, r5
	SWI       r5, r1, 624
	FPCONV    r5, r5
	FPCONV    r3, r4
	LWI       r4, r1, 644
	FPADD     r5, r5, r4
	ORI       r4, r0, 1056964608
	LWI       r6, r1, 648
	FPADD     r3, r3, r6
	FPADD     r5, r5, r4
	FPADD     r3, r3, r4
	FPADD     r5, r5, r5
	FPADD     r3, r3, r3
	LWI       r4, r1, 628
	FPDIV     r5, r5, r4
	SWI       r5, r1, 548
	LWI       r5, r1, 632
	FPDIV     r5, r3, r5
	SWI       r5, r1, 552
	ADDI      r5, r0, 25
	SWI       r5, r1, 540
$BB0_3:                                 # %bb2
                                        #   Parent Loop BB0_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_110 Depth 3
                                        #         Child Loop BB0_202 Depth 4
                                        #         Child Loop BB0_174 Depth 4
                                        #         Child Loop BB0_205 Depth 4
                                        #         Child Loop BB0_111 Depth 4
                                        #       Child Loop BB0_4 Depth 3
                                        #         Child Loop BB0_96 Depth 4
                                        #         Child Loop BB0_68 Depth 4
                                        #         Child Loop BB0_99 Depth 4
                                        #         Child Loop BB0_5 Depth 4
	RAND      r5
	ORI       r3, r0, -1090519040
	RAND      r4
	FPADD     r4, r4, r3
	FPADD     r5, r5, r3
	FPADD     r3, r4, r4
	FPADD     r5, r5, r5
	LWI       r4, r1, 560
	FPMUL     r3, r3, r4
	LWI       r4, r1, 556
	FPMUL     r5, r5, r4
	LWI       r4, r1, 552
	FPRSUB    r3, r3, r4
	LWI       r4, r1, 548
	FPRSUB    r5, r5, r4
	LWI       r4, r1, 604
	FPMUL     r4, r4, r3
	LWI       r6, r1, 592
	FPMUL     r6, r6, r5
	LWI       r7, r1, 600
	FPMUL     r7, r7, r3
	LWI       r8, r1, 588
	FPMUL     r8, r8, r5
	LWI       r9, r1, 608
	FPMUL     r3, r9, r3
	LWI       r9, r1, 596
	FPMUL     r5, r9, r5
	FPADD     r6, r4, r6
	FPADD     r8, r7, r8
	LWI       r9, r1, 580
	FPADD     r6, r6, r9
	LWI       r9, r1, 576
	FPADD     r8, r8, r9
	FPADD     r5, r5, r3
	LWI       r9, r1, 584
	FPADD     r5, r9, r5
	FPMUL     r9, r8, r8
	FPMUL     r10, r6, r6
	FPADD     r9, r9, r10
	FPMUL     r10, r5, r5
	FPADD     r9, r9, r10
	FPINVSQRT r9, r9
	ORI       r10, r0, 1065353216
	FPDIV     r9, r10, r9
	FPDIV     r5, r5, r9
	SWI        r5, r1, 208
	FPDIV     r5, r6, r9
	SWI       r5, r1, 436
	FPDIV     r6, r8, r9
	SWI       r6, r1, 440
	LWI       r8, r1, 208
	LWI       r9, r1, 616
	BITOR     r8, r9, r8
	SWI       r8, r1, 544
	SWI        r5, r1, 204
	SWI        r6, r1, 200
	SWI       r8, r1, 212
	SWI        r3, r1, 188
	SWI        r4, r1, 192
	SWI        r7, r1, 196
	ADD       r5, r0, r0
	SWI       r5, r1, 480
	LWI        r3, r1, 212
	SWI       r3, r1, 444
	ADDI      r3, r0, -1
	SWI       r3, r1, 428
	ADDI      r3, r0, 1343554297
	SWI       r3, r1, 424
	SWI       r5, r1, 460
	SWI       r5, r1, 464
	SWI       r5, r1, 484
	SWI       r5, r1, 488
	SWI       r5, r1, 476
	SWI       r5, r1, 496
	SWI       r5, r1, 492
	SWI       r5, r1, 500
	SWI       r5, r1, 508
	SWI       r5, r1, 504
	SWI       r5, r1, 512
$BB0_4:                                 # %bb.i92
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_3 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_96 Depth 4
                                        #         Child Loop BB0_68 Depth 4
                                        #         Child Loop BB0_99 Depth 4
                                        #         Child Loop BB0_5 Depth 4
	ADDI      r3, r0, 3
	ANDI      r3, r3, 31
	beqid     r3, ($BB0_6)
	ADDI      r5, r5, 0
$BB0_5:                                 # %bb.i92
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_3 Depth=2
                                        #       Parent Loop BB0_4 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ADDI      r3, r3, -1
	bneid     r3, ($BB0_5)
	ADDK      r5, r5, r5
$BB0_6:                                 # %bb.i92
                                        #   in Loop: Header=BB0_4 Depth=3
	LWI       r3, r1, 472
	ADD       r3, r5, r3
	LOAD      r5, r3, 2
	LOAD      r4, r3, 1
	LOAD      r6, r3, 0
	LOAD      r7, r3, 5
	LOAD      r8, r3, 4
	LOAD      r9, r3, 3
	LWI       r10, r1, 448
	FPRSUB    r6, r10, r6
	FPRSUB    r9, r10, r9
	LWI       r10, r1, 440
	FPDIV     r6, r6, r10
	FPDIV     r9, r9, r10
	FPGT      r10, r6, r9
	ADDI      r11, r0, 1
	ADDI      r12, r0, 0
	bneid     r10, ($BB0_8)
	ADD       r20, r11, r0
# BB#7:                                 # %bb.i92
                                        #   in Loop: Header=BB0_4 Depth=3
	ADD       r20, r12, r0
$BB0_8:                                 # %bb.i92
                                        #   in Loop: Header=BB0_4 Depth=3
	bneid     r20, ($BB0_10)
	ADD       r10, r9, r0
# BB#9:                                 # %bb.i92
                                        #   in Loop: Header=BB0_4 Depth=3
	ADD       r10, r6, r0
$BB0_10:                                # %bb.i92
                                        #   in Loop: Header=BB0_4 Depth=3
	ORI       r21, r0, -803929351
	bneid     r20, ($BB0_12)
	NOP    
# BB#11:                                # %bb.i92
                                        #   in Loop: Header=BB0_4 Depth=3
	ADD       r6, r9, r0
$BB0_12:                                # %bb.i92
                                        #   in Loop: Header=BB0_4 Depth=3
	ORI       r9, r0, 1343554297
	FPGT      r20, r10, r21
	FPLT      r22, r6, r9
	bneid     r20, ($BB0_14)
	ADD       r23, r11, r0
# BB#13:                                # %bb.i92
                                        #   in Loop: Header=BB0_4 Depth=3
	ADD       r23, r12, r0
$BB0_14:                                # %bb.i92
                                        #   in Loop: Header=BB0_4 Depth=3
	bneid     r22, ($BB0_16)
	ADD       r20, r11, r0
# BB#15:                                # %bb.i92
                                        #   in Loop: Header=BB0_4 Depth=3
	ADD       r20, r12, r0
$BB0_16:                                # %bb.i92
                                        #   in Loop: Header=BB0_4 Depth=3
	bneid     r23, ($BB0_18)
	NOP    
# BB#17:                                # %bb.i92
                                        #   in Loop: Header=BB0_4 Depth=3
	ADD       r10, r21, r0
$BB0_18:                                # %bb.i92
                                        #   in Loop: Header=BB0_4 Depth=3
	bneid     r20, ($BB0_20)
	NOP    
# BB#19:                                # %bb.i92
                                        #   in Loop: Header=BB0_4 Depth=3
	ADD       r6, r9, r0
$BB0_20:                                # %bb.i92
                                        #   in Loop: Header=BB0_4 Depth=3
	FPGT      r9, r10, r6
	bneid     r9, ($BB0_22)
	NOP    
# BB#21:                                # %bb.i92
                                        #   in Loop: Header=BB0_4 Depth=3
	ADD       r11, r12, r0
$BB0_22:                                # %bb.i92
                                        #   in Loop: Header=BB0_4 Depth=3
	bneid     r11, ($BB0_94)
	NOP    
# BB#23:                                # %bb.i92
                                        #   in Loop: Header=BB0_4 Depth=3
	ORI       r9, r0, 0
	ADDI      r11, r0, 1
	FPLT      r9, r6, r9
	bneid     r9, ($BB0_25)
	NOP    
# BB#24:                                # %bb.i92
                                        #   in Loop: Header=BB0_4 Depth=3
	ADDI      r11, r0, 0
$BB0_25:                                # %bb.i92
                                        #   in Loop: Header=BB0_4 Depth=3
	bneid     r11, ($BB0_94)
	NOP    
# BB#26:                                # %bb29.i.i98
                                        #   in Loop: Header=BB0_4 Depth=3
	LWI       r9, r1, 452
	FPRSUB    r4, r9, r4
	FPRSUB    r8, r9, r8
	LWI       r9, r1, 436
	FPDIV     r4, r4, r9
	FPDIV     r8, r8, r9
	FPGT      r9, r4, r8
	ADDI      r11, r0, 1
	ADDI      r12, r0, 0
	bneid     r9, ($BB0_28)
	ADD       r20, r11, r0
# BB#27:                                # %bb29.i.i98
                                        #   in Loop: Header=BB0_4 Depth=3
	ADD       r20, r12, r0
$BB0_28:                                # %bb29.i.i98
                                        #   in Loop: Header=BB0_4 Depth=3
	bneid     r20, ($BB0_30)
	ADD       r9, r8, r0
# BB#29:                                # %bb29.i.i98
                                        #   in Loop: Header=BB0_4 Depth=3
	ADD       r9, r4, r0
$BB0_30:                                # %bb29.i.i98
                                        #   in Loop: Header=BB0_4 Depth=3
	bneid     r20, ($BB0_32)
	NOP    
# BB#31:                                # %bb29.i.i98
                                        #   in Loop: Header=BB0_4 Depth=3
	ADD       r4, r8, r0
$BB0_32:                                # %bb29.i.i98
                                        #   in Loop: Header=BB0_4 Depth=3
	FPGT      r8, r9, r10
	FPLT      r20, r4, r6
	bneid     r8, ($BB0_34)
	ADD       r21, r11, r0
# BB#33:                                # %bb29.i.i98
                                        #   in Loop: Header=BB0_4 Depth=3
	ADD       r21, r12, r0
$BB0_34:                                # %bb29.i.i98
                                        #   in Loop: Header=BB0_4 Depth=3
	bneid     r20, ($BB0_36)
	ADD       r8, r11, r0
# BB#35:                                # %bb29.i.i98
                                        #   in Loop: Header=BB0_4 Depth=3
	ADD       r8, r12, r0
$BB0_36:                                # %bb29.i.i98
                                        #   in Loop: Header=BB0_4 Depth=3
	bneid     r21, ($BB0_38)
	NOP    
# BB#37:                                # %bb29.i.i98
                                        #   in Loop: Header=BB0_4 Depth=3
	ADD       r9, r10, r0
$BB0_38:                                # %bb29.i.i98
                                        #   in Loop: Header=BB0_4 Depth=3
	bneid     r8, ($BB0_40)
	NOP    
# BB#39:                                # %bb29.i.i98
                                        #   in Loop: Header=BB0_4 Depth=3
	ADD       r4, r6, r0
$BB0_40:                                # %bb29.i.i98
                                        #   in Loop: Header=BB0_4 Depth=3
	FPGT      r6, r9, r4
	bneid     r6, ($BB0_42)
	NOP    
# BB#41:                                # %bb29.i.i98
                                        #   in Loop: Header=BB0_4 Depth=3
	ADD       r11, r12, r0
$BB0_42:                                # %bb29.i.i98
                                        #   in Loop: Header=BB0_4 Depth=3
	bneid     r11, ($BB0_94)
	NOP    
# BB#43:                                # %bb29.i.i98
                                        #   in Loop: Header=BB0_4 Depth=3
	ORI       r6, r0, 0
	ADDI      r8, r0, 1
	FPLT      r6, r4, r6
	bneid     r6, ($BB0_45)
	NOP    
# BB#44:                                # %bb29.i.i98
                                        #   in Loop: Header=BB0_4 Depth=3
	ADDI      r8, r0, 0
$BB0_45:                                # %bb29.i.i98
                                        #   in Loop: Header=BB0_4 Depth=3
	bneid     r8, ($BB0_94)
	NOP    
# BB#46:                                # %bb62.i.i104
                                        #   in Loop: Header=BB0_4 Depth=3
	LWI       r6, r1, 468
	FPRSUB    r5, r6, r5
	FPRSUB    r6, r6, r7
	LWI       r7, r1, 444
	FPDIV     r5, r5, r7
	FPDIV     r6, r6, r7
	FPGT      r7, r5, r6
	ADDI      r8, r0, 1
	ADDI      r10, r0, 0
	bneid     r7, ($BB0_48)
	ADD       r11, r8, r0
# BB#47:                                # %bb62.i.i104
                                        #   in Loop: Header=BB0_4 Depth=3
	ADD       r11, r10, r0
$BB0_48:                                # %bb62.i.i104
                                        #   in Loop: Header=BB0_4 Depth=3
	bneid     r11, ($BB0_50)
	ADD       r7, r6, r0
# BB#49:                                # %bb62.i.i104
                                        #   in Loop: Header=BB0_4 Depth=3
	ADD       r7, r5, r0
$BB0_50:                                # %bb62.i.i104
                                        #   in Loop: Header=BB0_4 Depth=3
	bneid     r11, ($BB0_52)
	NOP    
# BB#51:                                # %bb62.i.i104
                                        #   in Loop: Header=BB0_4 Depth=3
	ADD       r5, r6, r0
$BB0_52:                                # %bb62.i.i104
                                        #   in Loop: Header=BB0_4 Depth=3
	FPGT      r6, r7, r9
	FPLT      r11, r5, r4
	bneid     r6, ($BB0_54)
	ADD       r12, r8, r0
# BB#53:                                # %bb62.i.i104
                                        #   in Loop: Header=BB0_4 Depth=3
	ADD       r12, r10, r0
$BB0_54:                                # %bb62.i.i104
                                        #   in Loop: Header=BB0_4 Depth=3
	bneid     r11, ($BB0_56)
	ADD       r6, r8, r0
# BB#55:                                # %bb62.i.i104
                                        #   in Loop: Header=BB0_4 Depth=3
	ADD       r6, r10, r0
$BB0_56:                                # %bb62.i.i104
                                        #   in Loop: Header=BB0_4 Depth=3
	bneid     r6, ($BB0_58)
	NOP    
# BB#57:                                # %bb62.i.i104
                                        #   in Loop: Header=BB0_4 Depth=3
	ADD       r5, r4, r0
$BB0_58:                                # %bb62.i.i104
                                        #   in Loop: Header=BB0_4 Depth=3
	bneid     r12, ($BB0_60)
	NOP    
# BB#59:                                # %bb62.i.i104
                                        #   in Loop: Header=BB0_4 Depth=3
	ADD       r7, r9, r0
$BB0_60:                                # %bb62.i.i104
                                        #   in Loop: Header=BB0_4 Depth=3
	FPGT      r4, r7, r5
	bneid     r4, ($BB0_62)
	NOP    
# BB#61:                                # %bb62.i.i104
                                        #   in Loop: Header=BB0_4 Depth=3
	ADD       r8, r10, r0
$BB0_62:                                # %bb62.i.i104
                                        #   in Loop: Header=BB0_4 Depth=3
	bneid     r8, ($BB0_94)
	NOP    
# BB#63:                                # %bb62.i.i104
                                        #   in Loop: Header=BB0_4 Depth=3
	ORI       r4, r0, 0
	ADDI      r6, r0, 1
	FPLT      r5, r5, r4
	bneid     r5, ($BB0_65)
	NOP    
# BB#64:                                # %bb62.i.i104
                                        #   in Loop: Header=BB0_4 Depth=3
	ADDI      r6, r0, 0
$BB0_65:                                # %bb62.i.i104
                                        #   in Loop: Header=BB0_4 Depth=3
	bneid     r6, ($BB0_94)
	NOP    
# BB#66:                                # %bb1.i105
                                        #   in Loop: Header=BB0_4 Depth=3
	LOAD      r5, r3, 7
	LOAD      r3, r3, 6
	SWI       r3, r1, 432
	ADD       r4, r0, r0
	CMP       r3, r4, r3
	bltid     r3, ($BB0_98)
	NOP    
# BB#67:                                # %bb6.preheader.i106
                                        #   in Loop: Header=BB0_4 Depth=3
	ADD       r3, r0, r0
	LWI       r4, r1, 432
	CMP       r3, r3, r4
	bleid     r3, ($BB0_94)
	NOP    
$BB0_68:                                # %bb5.i119
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_3 Depth=2
                                        #       Parent Loop BB0_4 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	LOAD      r3, r5, 2
	LOAD      r4, r5, 1
	LOAD      r6, r5, 0
	LOAD      r7, r5, 5
	LOAD      r8, r5, 4
	LOAD      r9, r5, 3
	LOAD      r10, r5, 8
	LOAD      r11, r5, 7
	LOAD      r12, r5, 6
	FPRSUB    r7, r10, r7
	SWI       r7, r1, 456
	FPRSUB    r8, r11, r8
	FPRSUB    r9, r12, r9
	LWI       r20, r1, 436
	FPMUL     r21, r20, r7
	LWI       r22, r1, 444
	FPMUL     r23, r8, r22
	FPRSUB    r6, r12, r6
	LOAD      r24, r5, 10
	FPRSUB    r21, r23, r21
	FPMUL     r22, r9, r22
	LWI       r23, r1, 440
	FPMUL     r25, r23, r7
	FPRSUB    r3, r10, r3
	FPRSUB    r4, r11, r4
	LWI       r26, r1, 448
	FPRSUB    r12, r12, r26
	FPRSUB    r22, r25, r22
	FPMUL     r23, r8, r23
	FPMUL     r20, r9, r20
	FPMUL     r25, r21, r6
	ORI       r26, r0, 0
	ADD       r27, r0, r0
	LOAD      r28, r5, 9
	LWI       r28, r1, 452
	FPRSUB    r11, r11, r28
	FPMUL     r21, r21, r12
	FPRSUB    r20, r20, r23
	FPMUL     r23, r22, r4
	FPADD     r25, r25, r26
	FPMUL     r28, r4, r7
	FPMUL     r29, r8, r3
	FPMUL     r30, r9, r3
	FPMUL     r7, r6, r7
	MULI      r24, r24, 25
	LOAD      r27, r27, 9
	LWI       r31, r1, 468
	FPRSUB    r10, r10, r31
	FPRSUB    r28, r29, r28
	FPRSUB    r7, r7, r30
	ADD       r24, r27, r24
	FPMUL     r22, r22, r11
	FPADD     r21, r21, r26
	FPMUL     r27, r20, r3
	FPADD     r23, r23, r25
	FPMUL     r25, r8, r6
	FPMUL     r29, r9, r4
	FPRSUB    r25, r29, r25
	LOAD      r29, r24, 6
	FPMUL     r20, r20, r10
	FPADD     r21, r22, r21
	ORI       r22, r0, 1065353216
	FPADD     r23, r27, r23
	FPMUL     r27, r28, r28
	FPMUL     r7, r7, r7
	FPDIV     r22, r22, r23
	FPADD     r20, r20, r21
	LOAD      r21, r24, 5
	FPADD     r7, r27, r7
	FPMUL     r21, r25, r25
	FPMUL     r20, r20, r22
	FPADD     r7, r7, r21
	LOAD      r21, r24, 4
	ADDI      r21, r0, 1
	FPLT      r23, r20, r26
	FPINVSQRT r7, r7
	bneid     r23, ($BB0_70)
	NOP    
# BB#69:                                # %bb5.i119
                                        #   in Loop: Header=BB0_68 Depth=4
	ADDI      r21, r0, 0
$BB0_70:                                # %bb5.i119
                                        #   in Loop: Header=BB0_68 Depth=4
	bneid     r21, ($BB0_93)
	NOP    
# BB#71:                                # %bb5.i119
                                        #   in Loop: Header=BB0_68 Depth=4
	ORI       r7, r0, 1065353216
	ADDI      r21, r0, 1
	FPGT      r7, r20, r7
	bneid     r7, ($BB0_73)
	NOP    
# BB#72:                                # %bb5.i119
                                        #   in Loop: Header=BB0_68 Depth=4
	ADDI      r21, r0, 0
$BB0_73:                                # %bb5.i119
                                        #   in Loop: Header=BB0_68 Depth=4
	bneid     r21, ($BB0_93)
	NOP    
# BB#74:                                # %bb73.i.i120
                                        #   in Loop: Header=BB0_68 Depth=4
	FPMUL     r7, r11, r3
	FPMUL     r21, r4, r10
	FPRSUB    r7, r21, r7
	FPMUL     r10, r6, r10
	FPMUL     r3, r12, r3
	FPRSUB    r3, r3, r10
	FPMUL     r4, r4, r12
	FPMUL     r6, r6, r11
	LWI       r10, r1, 440
	FPMUL     r10, r7, r10
	ORI       r11, r0, 0
	FPRSUB    r4, r6, r4
	LWI       r6, r1, 436
	FPMUL     r6, r3, r6
	FPADD     r10, r10, r11
	LWI       r12, r1, 444
	FPMUL     r12, r4, r12
	FPADD     r6, r6, r10
	FPADD     r6, r12, r6
	FPMUL     r6, r6, r22
	ADDI      r10, r0, 1
	FPLT      r11, r6, r11
	bneid     r11, ($BB0_76)
	NOP    
# BB#75:                                # %bb73.i.i120
                                        #   in Loop: Header=BB0_68 Depth=4
	ADDI      r10, r0, 0
$BB0_76:                                # %bb73.i.i120
                                        #   in Loop: Header=BB0_68 Depth=4
	bneid     r10, ($BB0_93)
	NOP    
# BB#77:                                # %bb94.i55.i121
                                        #   in Loop: Header=BB0_68 Depth=4
	FPADD     r6, r6, r20
	ORI       r10, r0, 1065353216
	ADDI      r11, r0, 1
	FPGT      r6, r6, r10
	bneid     r6, ($BB0_79)
	NOP    
# BB#78:                                # %bb94.i55.i121
                                        #   in Loop: Header=BB0_68 Depth=4
	ADDI      r11, r0, 0
$BB0_79:                                # %bb94.i55.i121
                                        #   in Loop: Header=BB0_68 Depth=4
	bneid     r11, ($BB0_93)
	NOP    
# BB#80:                                # %bb96.i.i124
                                        #   in Loop: Header=BB0_68 Depth=4
	FPMUL     r6, r7, r9
	ORI       r7, r0, 0
	FPMUL     r3, r3, r8
	FPADD     r6, r6, r7
	LWI       r8, r1, 456
	FPMUL     r4, r4, r8
	FPADD     r3, r3, r6
	FPADD     r3, r4, r3
	FPMUL     r3, r3, r22
	FPUN      r4, r3, r7
	FPLE      r6, r3, r7
	BITOR     r4, r4, r6
	bneid     r4, ($BB0_82)
	ADDI      r7, r0, 1
# BB#81:                                # %bb96.i.i124
                                        #   in Loop: Header=BB0_68 Depth=4
	ADDI      r7, r0, 0
$BB0_82:                                # %bb96.i.i124
                                        #   in Loop: Header=BB0_68 Depth=4
	bneid     r7, ($BB0_93)
	NOP    
# BB#83:                                # %bb96.i.i124
                                        #   in Loop: Header=BB0_68 Depth=4
	ORI       r4, r0, 981668463
	ADDI      r6, r0, 1
	FPLT      r4, r3, r4
	bneid     r4, ($BB0_85)
	NOP    
# BB#84:                                # %bb96.i.i124
                                        #   in Loop: Header=BB0_68 Depth=4
	ADDI      r6, r0, 0
$BB0_85:                                # %bb96.i.i124
                                        #   in Loop: Header=BB0_68 Depth=4
	bneid     r6, ($BB0_93)
	NOP    
# BB#86:                                # %bb96.i.i124
                                        #   in Loop: Header=BB0_68 Depth=4
	ORI       r4, r0, 1343554297
	ADDI      r6, r0, 1
	FPEQ      r4, r3, r4
	bneid     r4, ($BB0_88)
	NOP    
# BB#87:                                # %bb96.i.i124
                                        #   in Loop: Header=BB0_68 Depth=4
	ADDI      r6, r0, 0
$BB0_88:                                # %bb96.i.i124
                                        #   in Loop: Header=BB0_68 Depth=4
	bneid     r6, ($BB0_93)
	NOP    
# BB#89:                                # %bb2.i.i.i125
                                        #   in Loop: Header=BB0_68 Depth=4
	LWI       r4, r1, 424
	SWI       r4, r1, 216
	LWI        r4, r1, 216
	FPUN      r6, r4, r3
	FPLE      r4, r4, r3
	BITOR     r4, r6, r4
	bneid     r4, ($BB0_91)
	ADDI      r7, r0, 1
# BB#90:                                # %bb2.i.i.i125
                                        #   in Loop: Header=BB0_68 Depth=4
	ADDI      r7, r0, 0
$BB0_91:                                # %bb2.i.i.i125
                                        #   in Loop: Header=BB0_68 Depth=4
	bneid     r7, ($BB0_93)
	NOP    
# BB#92:                                # %bb3.i.i.i176
                                        #   in Loop: Header=BB0_68 Depth=4
	LOAD      r4, r5, 2
	LOAD      r6, r5, 1
	LOAD      r7, r5, 0
	LOAD      r8, r5, 5
	LOAD      r9, r5, 4
	LOAD      r10, r5, 3
	LOAD      r11, r5, 8
	LOAD      r12, r5, 7
	LOAD      r20, r5, 6
	LOAD      r21, r5, 10
	LOAD      r22, r5, 9
	SWI       r22, r1, 524
	ADD       r22, r0, r0
	MULI      r21, r21, 25
	LOAD      r22, r22, 9
	ADD       r21, r22, r21
	LOAD      r22, r21, 6
	LOAD      r23, r21, 5
	LOAD      r21, r21, 4
	SWI        r22, r1, 260
	SWI        r23, r1, 264
	SWI        r21, r1, 268
	SWI        r11, r1, 248
	SWI        r12, r1, 252
	SWI        r20, r1, 256
	SWI        r8, r1, 236
	SWI        r9, r1, 240
	SWI        r10, r1, 244
	SWI        r4, r1, 224
	SWI        r6, r1, 228
	SWI        r7, r1, 232
	SWI        r3, r1, 220
	ADDI      r3, r0, 1060320051
	SWI       r3, r1, 516
	ADDI      r3, r0, 1050253722
	SWI       r3, r1, 520
	LWI       r3, r1, 260
	SWI       r3, r1, 480
	LWI       r3, r1, 264
	SWI       r3, r1, 460
	LWI       r3, r1, 268
	SWI       r3, r1, 464
	LWI       r3, r1, 248
	SWI       r3, r1, 484
	LWI       r3, r1, 252
	SWI       r3, r1, 488
	LWI       r3, r1, 256
	SWI       r3, r1, 476
	LWI       r3, r1, 236
	SWI       r3, r1, 496
	LWI       r3, r1, 240
	SWI       r3, r1, 492
	LWI       r3, r1, 244
	SWI       r3, r1, 500
	LWI       r3, r1, 224
	SWI       r3, r1, 508
	LWI       r3, r1, 228
	SWI       r3, r1, 504
	LWI       r3, r1, 232
	SWI       r3, r1, 512
	LWI       r3, r1, 220
	SWI       r3, r1, 424
$BB0_93:                                # %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i178
                                        #   in Loop: Header=BB0_68 Depth=4
	LWI       r3, r1, 432
	ADDI      r3, r3, -1
	SWI       r3, r1, 432
	ADDI      r5, r5, 11
	ADD       r4, r0, r0
	CMP       r3, r4, r3
	bneid     r3, ($BB0_68)
	NOP    
$BB0_94:                                # %bb7.i179
                                        #   in Loop: Header=BB0_4 Depth=3
	ADD       r5, r0, r0
	LWI       r3, r1, 428
	CMP       r5, r5, r3
	bltid     r5, ($BB0_101)
	NOP    
# BB#95:                                # %bb9.i180
                                        #   in Loop: Header=BB0_4 Depth=3
	ADDI      r5, r0, 2
	ANDI      r5, r5, 31
	LWI       r3, r1, 428
	beqid     r5, ($BB0_97)
	ADDI      r3, r3, 0
$BB0_96:                                # %bb9.i180
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_3 Depth=2
                                        #       Parent Loop BB0_4 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ADDI      r5, r5, -1
	bneid     r5, ($BB0_96)
	ADDK      r3, r3, r3
$BB0_97:                                # %bb9.i180
                                        #   in Loop: Header=BB0_4 Depth=3
	ADDI      r5, r1, 48
	LW        r5, r5, r3
	LWI       r3, r1, 428
	ADDI      r3, r3, -1
	brid      ($BB0_4)
	SWI       r3, r1, 428
$BB0_98:                                # %bb3.i108
                                        #   in Loop: Header=BB0_4 Depth=3
	ADDI      r3, r0, 2
	ANDI      r3, r3, 31
	LWI       r4, r1, 428
	beqid     r3, ($BB0_100)
	ADDI      r4, r4, 0
$BB0_99:                                # %bb3.i108
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_3 Depth=2
                                        #       Parent Loop BB0_4 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ADDI      r3, r3, -1
	bneid     r3, ($BB0_99)
	ADDK      r4, r4, r4
$BB0_100:                               # %bb3.i108
                                        #   in Loop: Header=BB0_4 Depth=3
	ADDI      r3, r1, 48
	LWI       r6, r1, 428
	ADDI      r6, r6, 1
	SWI       r6, r1, 428
	ADDI      r6, r5, 1
	ADD       r3, r3, r4
	brid      ($BB0_4)
	SWI       r6, r3, 4
$BB0_101:                               # %_ZN3BVH9intersectER9HitRecordR3Ray.exit181
                                        #   in Loop: Header=BB0_3 Depth=2
	LWI       r3, r1, 508
	SWI       r3, r1, 320
	LWI       r3, r1, 496
	SWI       r3, r1, 308
	LWI       r3, r1, 484
	SWI       r3, r1, 296
	LWI       r3, r1, 488
	SWI       r3, r1, 300
	LWI       r3, r1, 512
	SWI       r3, r1, 328
	LWI       r3, r1, 500
	SWI       r3, r1, 316
	LWI       r3, r1, 476
	SWI       r3, r1, 304
	LWI       r3, r1, 504
	SWI       r3, r1, 324
	LWI       r3, r1, 492
	SWI       r3, r1, 312
	LWI        r5, r1, 320
	LWI        r3, r1, 308
	LWI        r4, r1, 296
	LWI        r6, r1, 300
	LWI        r7, r1, 312
	LWI        r8, r1, 324
	LWI        r9, r1, 328
	LWI        r10, r1, 316
	LWI        r11, r1, 304
	FPRSUB    r5, r3, r5
	FPRSUB    r6, r6, r7
	FPRSUB    r9, r10, r9
	FPRSUB    r3, r4, r3
	FPRSUB    r4, r11, r10
	FPRSUB    r7, r7, r8
	FPMUL     r8, r7, r3
	FPMUL     r10, r6, r5
	FPMUL     r5, r4, r5
	FPMUL     r3, r9, r3
	FPRSUB    r8, r10, r8
	FPRSUB    r5, r3, r5
	FPMUL     r3, r6, r9
	FPMUL     r4, r4, r7
	FPRSUB    r3, r4, r3
	LWI       r4, r1, 544
	SWI       r4, r1, 276
	FPMUL     r4, r8, r8
	FPMUL     r6, r5, r5
	LWI        r7, r1, 276
	LWI       r9, r1, 440
	FPMUL     r10, r9, r9
	LWI       r11, r1, 436
	FPMUL     r12, r11, r11
	FPADD     r4, r4, r6
	FPMUL     r6, r3, r3
	FPADD     r4, r4, r6
	FPADD     r6, r10, r12
	FPMUL     r10, r7, r7
	FPADD     r6, r6, r10
	FPINVSQRT r4, r4
	ORI       r10, r0, 1065353216
	FPINVSQRT r6, r6
	FPDIV     r6, r10, r6
	FPDIV     r4, r10, r4
	FPDIV     r8, r8, r4
	FPDIV     r10, r9, r6
	FPDIV     r5, r5, r4
	FPDIV     r12, r11, r6
	LWI       r20, r1, 424
	SWI       r20, r1, 332
	FPMUL     r10, r10, r8
	ORI       r20, r0, 0
	LWI        r21, r1, 332
	FPDIV     r3, r3, r4
	FPDIV     r4, r7, r6
	FPMUL     r6, r12, r5
	FPADD     r10, r10, r20
	LWI       r12, r1, 612
	SWI       r12, r1, 284
	FPMUL     r7, r7, r21
	FPMUL     r11, r11, r21
	FPMUL     r9, r9, r21
	FPMUL     r4, r4, r3
	FPADD     r6, r6, r10
	FPADD     r4, r4, r6
	LWI       r6, r1, 464
	SWI       r6, r1, 292
	LWI       r6, r1, 460
	SWI       r6, r1, 288
	LWI       r6, r1, 520
	SWI       r6, r1, 280
	LWI       r6, r1, 516
	SWI       r6, r1, 272
	LWI        r6, r1, 284
	SWI        r7, r1, 336
	SWI        r11, r1, 340
	SWI        r9, r1, 344
	LWI        r10, r1, 292
	SWI       r10, r1, 488
	LWI        r10, r1, 288
	SWI       r10, r1, 492
	LWI        r10, r1, 280
	LWI        r12, r1, 272
	SWI       r12, r1, 496
	FPUN      r12, r4, r20
	FPLE      r4, r4, r20
	BITOR     r4, r12, r4
	bneid     r4, ($BB0_103)
	ADDI      r20, r0, 1
# BB#102:                               # %_ZN3BVH9intersectER9HitRecordR3Ray.exit181
                                        #   in Loop: Header=BB0_3 Depth=2
	ADDI      r20, r0, 0
$BB0_103:                               # %_ZN3BVH9intersectER9HitRecordR3Ray.exit181
                                        #   in Loop: Header=BB0_3 Depth=2
	bneid     r20, ($BB0_105)
	NOP    
# BB#104:                               # %bb.i
                                        #   in Loop: Header=BB0_3 Depth=2
	FPNEG     r3, r3
	FPNEG     r5, r5
	FPNEG     r8, r8
	SWI        r3, r1, 356
	SWI        r5, r1, 352
	SWI        r8, r1, 348
$BB0_105:                               # %bb52.i
                                        #   in Loop: Header=BB0_3 Depth=2
	LWI       r4, r1, 448
	FPADD     r4, r9, r4
	SWI       r4, r1, 456
	LWI       r9, r1, 452
	FPADD     r9, r11, r9
	SWI       r9, r1, 460
	FPADD     r6, r6, r7
	SWI       r6, r1, 464
	LWI       r7, r1, 564
	FPRSUB    r4, r4, r7
	LWI       r7, r1, 568
	FPRSUB    r7, r9, r7
	LWI       r9, r1, 572
	FPRSUB    r6, r6, r9
	FPMUL     r9, r4, r4
	FPMUL     r11, r7, r7
	FPADD     r9, r9, r11
	FPMUL     r11, r6, r6
	FPADD     r9, r9, r11
	ORI       r11, r0, 1065353216
	FPINVSQRT r12, r9
	FPDIV     r11, r11, r12
	FPDIV     r4, r4, r11
	SWI       r4, r1, 436
	FPDIV     r7, r7, r11
	SWI       r7, r1, 440
	FPMUL     r4, r4, r8
	ORI       r8, r0, 0
	FPDIV     r6, r6, r11
	SWI       r6, r1, 444
	FPMUL     r5, r7, r5
	FPADD     r4, r4, r8
	FPMUL     r3, r6, r3
	FPADD     r5, r5, r4
	FPADD     r5, r3, r5
	SWI       r5, r1, 504
	ORI       r3, r0, 1053609165
	FPUN      r4, r5, r8
	FPLE      r5, r5, r8
	BITOR     r5, r4, r5
	bneid     r5, ($BB0_107)
	ADDI      r6, r0, 1
# BB#106:                               # %bb52.i
                                        #   in Loop: Header=BB0_3 Depth=2
	ADDI      r6, r0, 0
$BB0_107:                               # %bb52.i
                                        #   in Loop: Header=BB0_3 Depth=2
	FPMUL     r5, r10, r3
	beqid     r6, ($BB0_109)
	SWI       r5, r1, 484
# BB#108:                               #   in Loop: Header=BB0_3 Depth=2
	brid      ($BB0_215)
	LWI       r5, r1, 484
$BB0_109:                               # %bb93.i
                                        #   in Loop: Header=BB0_3 Depth=2
	ADD       r5, r0, r0
	ADDI      r3, r0, -1
	SWI       r3, r1, 428
	FPINVSQRT r3, r9
	SWI       r3, r1, 500
$BB0_110:                               # %bb.i53
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_3 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_202 Depth 4
                                        #         Child Loop BB0_174 Depth 4
                                        #         Child Loop BB0_205 Depth 4
                                        #         Child Loop BB0_111 Depth 4
	ADDI      r3, r0, 3
	ANDI      r3, r3, 31
	beqid     r3, ($BB0_112)
	ADDI      r5, r5, 0
$BB0_111:                               # %bb.i53
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_3 Depth=2
                                        #       Parent Loop BB0_110 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ADDI      r3, r3, -1
	bneid     r3, ($BB0_111)
	ADDK      r5, r5, r5
$BB0_112:                               # %bb.i53
                                        #   in Loop: Header=BB0_110 Depth=3
	LWI       r3, r1, 472
	ADD       r3, r5, r3
	LOAD      r5, r3, 2
	LOAD      r4, r3, 1
	LOAD      r6, r3, 0
	LOAD      r7, r3, 5
	LOAD      r8, r3, 4
	LOAD      r9, r3, 3
	LWI       r10, r1, 456
	FPRSUB    r6, r10, r6
	FPRSUB    r9, r10, r9
	LWI       r10, r1, 436
	FPDIV     r6, r6, r10
	FPDIV     r9, r9, r10
	FPGT      r10, r6, r9
	ADDI      r11, r0, 1
	ADDI      r12, r0, 0
	bneid     r10, ($BB0_114)
	ADD       r20, r11, r0
# BB#113:                               # %bb.i53
                                        #   in Loop: Header=BB0_110 Depth=3
	ADD       r20, r12, r0
$BB0_114:                               # %bb.i53
                                        #   in Loop: Header=BB0_110 Depth=3
	bneid     r20, ($BB0_116)
	ADD       r10, r9, r0
# BB#115:                               # %bb.i53
                                        #   in Loop: Header=BB0_110 Depth=3
	ADD       r10, r6, r0
$BB0_116:                               # %bb.i53
                                        #   in Loop: Header=BB0_110 Depth=3
	ORI       r21, r0, -803929351
	bneid     r20, ($BB0_118)
	NOP    
# BB#117:                               # %bb.i53
                                        #   in Loop: Header=BB0_110 Depth=3
	ADD       r6, r9, r0
$BB0_118:                               # %bb.i53
                                        #   in Loop: Header=BB0_110 Depth=3
	ORI       r9, r0, 1343554297
	FPGT      r20, r10, r21
	FPLT      r22, r6, r9
	bneid     r20, ($BB0_120)
	ADD       r23, r11, r0
# BB#119:                               # %bb.i53
                                        #   in Loop: Header=BB0_110 Depth=3
	ADD       r23, r12, r0
$BB0_120:                               # %bb.i53
                                        #   in Loop: Header=BB0_110 Depth=3
	bneid     r22, ($BB0_122)
	ADD       r20, r11, r0
# BB#121:                               # %bb.i53
                                        #   in Loop: Header=BB0_110 Depth=3
	ADD       r20, r12, r0
$BB0_122:                               # %bb.i53
                                        #   in Loop: Header=BB0_110 Depth=3
	bneid     r23, ($BB0_124)
	NOP    
# BB#123:                               # %bb.i53
                                        #   in Loop: Header=BB0_110 Depth=3
	ADD       r10, r21, r0
$BB0_124:                               # %bb.i53
                                        #   in Loop: Header=BB0_110 Depth=3
	bneid     r20, ($BB0_126)
	NOP    
# BB#125:                               # %bb.i53
                                        #   in Loop: Header=BB0_110 Depth=3
	ADD       r6, r9, r0
$BB0_126:                               # %bb.i53
                                        #   in Loop: Header=BB0_110 Depth=3
	FPGT      r9, r10, r6
	bneid     r9, ($BB0_128)
	NOP    
# BB#127:                               # %bb.i53
                                        #   in Loop: Header=BB0_110 Depth=3
	ADD       r11, r12, r0
$BB0_128:                               # %bb.i53
                                        #   in Loop: Header=BB0_110 Depth=3
	bneid     r11, ($BB0_200)
	NOP    
# BB#129:                               # %bb.i53
                                        #   in Loop: Header=BB0_110 Depth=3
	ORI       r9, r0, 0
	ADDI      r11, r0, 1
	FPLT      r9, r6, r9
	bneid     r9, ($BB0_131)
	NOP    
# BB#130:                               # %bb.i53
                                        #   in Loop: Header=BB0_110 Depth=3
	ADDI      r11, r0, 0
$BB0_131:                               # %bb.i53
                                        #   in Loop: Header=BB0_110 Depth=3
	bneid     r11, ($BB0_200)
	NOP    
# BB#132:                               # %bb29.i.i
                                        #   in Loop: Header=BB0_110 Depth=3
	LWI       r9, r1, 460
	FPRSUB    r4, r9, r4
	FPRSUB    r8, r9, r8
	LWI       r9, r1, 440
	FPDIV     r4, r4, r9
	FPDIV     r8, r8, r9
	FPGT      r9, r4, r8
	ADDI      r11, r0, 1
	ADDI      r12, r0, 0
	bneid     r9, ($BB0_134)
	ADD       r20, r11, r0
# BB#133:                               # %bb29.i.i
                                        #   in Loop: Header=BB0_110 Depth=3
	ADD       r20, r12, r0
$BB0_134:                               # %bb29.i.i
                                        #   in Loop: Header=BB0_110 Depth=3
	bneid     r20, ($BB0_136)
	ADD       r9, r8, r0
# BB#135:                               # %bb29.i.i
                                        #   in Loop: Header=BB0_110 Depth=3
	ADD       r9, r4, r0
$BB0_136:                               # %bb29.i.i
                                        #   in Loop: Header=BB0_110 Depth=3
	bneid     r20, ($BB0_138)
	NOP    
# BB#137:                               # %bb29.i.i
                                        #   in Loop: Header=BB0_110 Depth=3
	ADD       r4, r8, r0
$BB0_138:                               # %bb29.i.i
                                        #   in Loop: Header=BB0_110 Depth=3
	FPGT      r8, r9, r10
	FPLT      r20, r4, r6
	bneid     r8, ($BB0_140)
	ADD       r21, r11, r0
# BB#139:                               # %bb29.i.i
                                        #   in Loop: Header=BB0_110 Depth=3
	ADD       r21, r12, r0
$BB0_140:                               # %bb29.i.i
                                        #   in Loop: Header=BB0_110 Depth=3
	bneid     r20, ($BB0_142)
	ADD       r8, r11, r0
# BB#141:                               # %bb29.i.i
                                        #   in Loop: Header=BB0_110 Depth=3
	ADD       r8, r12, r0
$BB0_142:                               # %bb29.i.i
                                        #   in Loop: Header=BB0_110 Depth=3
	bneid     r21, ($BB0_144)
	NOP    
# BB#143:                               # %bb29.i.i
                                        #   in Loop: Header=BB0_110 Depth=3
	ADD       r9, r10, r0
$BB0_144:                               # %bb29.i.i
                                        #   in Loop: Header=BB0_110 Depth=3
	bneid     r8, ($BB0_146)
	NOP    
# BB#145:                               # %bb29.i.i
                                        #   in Loop: Header=BB0_110 Depth=3
	ADD       r4, r6, r0
$BB0_146:                               # %bb29.i.i
                                        #   in Loop: Header=BB0_110 Depth=3
	FPGT      r6, r9, r4
	bneid     r6, ($BB0_148)
	NOP    
# BB#147:                               # %bb29.i.i
                                        #   in Loop: Header=BB0_110 Depth=3
	ADD       r11, r12, r0
$BB0_148:                               # %bb29.i.i
                                        #   in Loop: Header=BB0_110 Depth=3
	bneid     r11, ($BB0_200)
	NOP    
# BB#149:                               # %bb29.i.i
                                        #   in Loop: Header=BB0_110 Depth=3
	ORI       r6, r0, 0
	ADDI      r8, r0, 1
	FPLT      r6, r4, r6
	bneid     r6, ($BB0_151)
	NOP    
# BB#150:                               # %bb29.i.i
                                        #   in Loop: Header=BB0_110 Depth=3
	ADDI      r8, r0, 0
$BB0_151:                               # %bb29.i.i
                                        #   in Loop: Header=BB0_110 Depth=3
	bneid     r8, ($BB0_200)
	NOP    
# BB#152:                               # %bb62.i.i
                                        #   in Loop: Header=BB0_110 Depth=3
	LWI       r6, r1, 464
	FPRSUB    r5, r6, r5
	FPRSUB    r6, r6, r7
	LWI       r7, r1, 444
	FPDIV     r5, r5, r7
	FPDIV     r6, r6, r7
	FPGT      r7, r5, r6
	ADDI      r8, r0, 1
	ADDI      r10, r0, 0
	bneid     r7, ($BB0_154)
	ADD       r11, r8, r0
# BB#153:                               # %bb62.i.i
                                        #   in Loop: Header=BB0_110 Depth=3
	ADD       r11, r10, r0
$BB0_154:                               # %bb62.i.i
                                        #   in Loop: Header=BB0_110 Depth=3
	bneid     r11, ($BB0_156)
	ADD       r7, r6, r0
# BB#155:                               # %bb62.i.i
                                        #   in Loop: Header=BB0_110 Depth=3
	ADD       r7, r5, r0
$BB0_156:                               # %bb62.i.i
                                        #   in Loop: Header=BB0_110 Depth=3
	bneid     r11, ($BB0_158)
	NOP    
# BB#157:                               # %bb62.i.i
                                        #   in Loop: Header=BB0_110 Depth=3
	ADD       r5, r6, r0
$BB0_158:                               # %bb62.i.i
                                        #   in Loop: Header=BB0_110 Depth=3
	FPGT      r6, r7, r9
	FPLT      r11, r5, r4
	bneid     r6, ($BB0_160)
	ADD       r12, r8, r0
# BB#159:                               # %bb62.i.i
                                        #   in Loop: Header=BB0_110 Depth=3
	ADD       r12, r10, r0
$BB0_160:                               # %bb62.i.i
                                        #   in Loop: Header=BB0_110 Depth=3
	bneid     r11, ($BB0_162)
	ADD       r6, r8, r0
# BB#161:                               # %bb62.i.i
                                        #   in Loop: Header=BB0_110 Depth=3
	ADD       r6, r10, r0
$BB0_162:                               # %bb62.i.i
                                        #   in Loop: Header=BB0_110 Depth=3
	bneid     r6, ($BB0_164)
	NOP    
# BB#163:                               # %bb62.i.i
                                        #   in Loop: Header=BB0_110 Depth=3
	ADD       r5, r4, r0
$BB0_164:                               # %bb62.i.i
                                        #   in Loop: Header=BB0_110 Depth=3
	bneid     r12, ($BB0_166)
	NOP    
# BB#165:                               # %bb62.i.i
                                        #   in Loop: Header=BB0_110 Depth=3
	ADD       r7, r9, r0
$BB0_166:                               # %bb62.i.i
                                        #   in Loop: Header=BB0_110 Depth=3
	FPGT      r4, r7, r5
	bneid     r4, ($BB0_168)
	NOP    
# BB#167:                               # %bb62.i.i
                                        #   in Loop: Header=BB0_110 Depth=3
	ADD       r8, r10, r0
$BB0_168:                               # %bb62.i.i
                                        #   in Loop: Header=BB0_110 Depth=3
	bneid     r8, ($BB0_200)
	NOP    
# BB#169:                               # %bb62.i.i
                                        #   in Loop: Header=BB0_110 Depth=3
	ORI       r4, r0, 0
	ADDI      r6, r0, 1
	FPLT      r5, r5, r4
	bneid     r5, ($BB0_171)
	NOP    
# BB#170:                               # %bb62.i.i
                                        #   in Loop: Header=BB0_110 Depth=3
	ADDI      r6, r0, 0
$BB0_171:                               # %bb62.i.i
                                        #   in Loop: Header=BB0_110 Depth=3
	bneid     r6, ($BB0_200)
	NOP    
# BB#172:                               # %bb1.i
                                        #   in Loop: Header=BB0_110 Depth=3
	LOAD      r5, r3, 7
	LOAD      r3, r3, 6
	SWI       r3, r1, 432
	ADD       r4, r0, r0
	CMP       r3, r4, r3
	bltid     r3, ($BB0_204)
	NOP    
# BB#173:                               # %bb6.preheader.i
                                        #   in Loop: Header=BB0_110 Depth=3
	ADD       r3, r0, r0
	LWI       r4, r1, 432
	CMP       r3, r3, r4
	bleid     r3, ($BB0_200)
	NOP    
$BB0_174:                               # %bb5.i
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_3 Depth=2
                                        #       Parent Loop BB0_110 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	LOAD      r3, r5, 2
	LOAD      r4, r5, 1
	LOAD      r6, r5, 0
	LOAD      r7, r5, 5
	LOAD      r8, r5, 4
	LOAD      r9, r5, 3
	LOAD      r10, r5, 8
	LOAD      r11, r5, 7
	LOAD      r12, r5, 6
	FPRSUB    r7, r10, r7
	SWI       r7, r1, 476
	FPRSUB    r8, r11, r8
	FPRSUB    r9, r12, r9
	LWI       r20, r1, 440
	FPMUL     r21, r20, r7
	LWI       r22, r1, 444
	FPMUL     r23, r8, r22
	FPRSUB    r6, r12, r6
	LOAD      r24, r5, 10
	FPRSUB    r21, r23, r21
	FPMUL     r22, r9, r22
	LWI       r23, r1, 436
	FPMUL     r25, r23, r7
	FPRSUB    r3, r10, r3
	FPRSUB    r4, r11, r4
	LWI       r26, r1, 456
	FPRSUB    r12, r12, r26
	FPRSUB    r22, r25, r22
	FPMUL     r23, r8, r23
	FPMUL     r20, r9, r20
	FPMUL     r25, r21, r6
	ORI       r26, r0, 0
	ADD       r27, r0, r0
	LOAD      r28, r5, 9
	LWI       r28, r1, 460
	FPRSUB    r11, r11, r28
	FPMUL     r21, r21, r12
	FPRSUB    r20, r20, r23
	FPMUL     r23, r22, r4
	FPADD     r25, r25, r26
	FPMUL     r28, r4, r7
	FPMUL     r29, r8, r3
	FPMUL     r30, r9, r3
	FPMUL     r7, r6, r7
	MULI      r24, r24, 25
	LOAD      r27, r27, 9
	LWI       r31, r1, 464
	FPRSUB    r10, r10, r31
	FPRSUB    r28, r29, r28
	FPRSUB    r7, r7, r30
	ADD       r24, r27, r24
	FPMUL     r22, r22, r11
	FPADD     r21, r21, r26
	FPMUL     r27, r20, r3
	FPADD     r23, r23, r25
	FPMUL     r25, r8, r6
	FPMUL     r29, r9, r4
	FPRSUB    r25, r29, r25
	LOAD      r29, r24, 6
	FPMUL     r20, r20, r10
	FPADD     r21, r22, r21
	ORI       r22, r0, 1065353216
	FPADD     r23, r27, r23
	FPMUL     r27, r28, r28
	FPMUL     r7, r7, r7
	FPDIV     r22, r22, r23
	FPADD     r20, r20, r21
	LOAD      r21, r24, 5
	FPADD     r7, r27, r7
	FPMUL     r21, r25, r25
	FPMUL     r20, r20, r22
	FPADD     r7, r7, r21
	LOAD      r21, r24, 4
	ADDI      r21, r0, 1
	FPLT      r23, r20, r26
	FPINVSQRT r7, r7
	bneid     r23, ($BB0_176)
	NOP    
# BB#175:                               # %bb5.i
                                        #   in Loop: Header=BB0_174 Depth=4
	ADDI      r21, r0, 0
$BB0_176:                               # %bb5.i
                                        #   in Loop: Header=BB0_174 Depth=4
	bneid     r21, ($BB0_199)
	NOP    
# BB#177:                               # %bb5.i
                                        #   in Loop: Header=BB0_174 Depth=4
	ORI       r7, r0, 1065353216
	ADDI      r21, r0, 1
	FPGT      r7, r20, r7
	bneid     r7, ($BB0_179)
	NOP    
# BB#178:                               # %bb5.i
                                        #   in Loop: Header=BB0_174 Depth=4
	ADDI      r21, r0, 0
$BB0_179:                               # %bb5.i
                                        #   in Loop: Header=BB0_174 Depth=4
	bneid     r21, ($BB0_199)
	NOP    
# BB#180:                               # %bb73.i.i
                                        #   in Loop: Header=BB0_174 Depth=4
	FPMUL     r7, r11, r3
	FPMUL     r21, r4, r10
	FPRSUB    r7, r21, r7
	FPMUL     r10, r6, r10
	FPMUL     r3, r12, r3
	FPRSUB    r3, r3, r10
	FPMUL     r4, r4, r12
	FPMUL     r6, r6, r11
	LWI       r10, r1, 436
	FPMUL     r10, r7, r10
	ORI       r11, r0, 0
	FPRSUB    r4, r6, r4
	LWI       r6, r1, 440
	FPMUL     r6, r3, r6
	FPADD     r10, r10, r11
	LWI       r12, r1, 444
	FPMUL     r12, r4, r12
	FPADD     r6, r6, r10
	FPADD     r6, r12, r6
	FPMUL     r6, r6, r22
	ADDI      r10, r0, 1
	FPLT      r11, r6, r11
	bneid     r11, ($BB0_182)
	NOP    
# BB#181:                               # %bb73.i.i
                                        #   in Loop: Header=BB0_174 Depth=4
	ADDI      r10, r0, 0
$BB0_182:                               # %bb73.i.i
                                        #   in Loop: Header=BB0_174 Depth=4
	bneid     r10, ($BB0_199)
	NOP    
# BB#183:                               # %bb94.i55.i
                                        #   in Loop: Header=BB0_174 Depth=4
	FPADD     r6, r6, r20
	ORI       r10, r0, 1065353216
	ADDI      r11, r0, 1
	FPGT      r6, r6, r10
	bneid     r6, ($BB0_185)
	NOP    
# BB#184:                               # %bb94.i55.i
                                        #   in Loop: Header=BB0_174 Depth=4
	ADDI      r11, r0, 0
$BB0_185:                               # %bb94.i55.i
                                        #   in Loop: Header=BB0_174 Depth=4
	bneid     r11, ($BB0_199)
	NOP    
# BB#186:                               # %bb96.i.i
                                        #   in Loop: Header=BB0_174 Depth=4
	FPMUL     r6, r7, r9
	ORI       r7, r0, 0
	FPMUL     r3, r3, r8
	FPADD     r6, r6, r7
	LWI       r8, r1, 476
	FPMUL     r4, r4, r8
	FPADD     r3, r3, r6
	FPADD     r3, r4, r3
	FPMUL     r3, r3, r22
	FPUN      r4, r3, r7
	FPLE      r6, r3, r7
	BITOR     r4, r4, r6
	bneid     r4, ($BB0_188)
	ADDI      r7, r0, 1
# BB#187:                               # %bb96.i.i
                                        #   in Loop: Header=BB0_174 Depth=4
	ADDI      r7, r0, 0
$BB0_188:                               # %bb96.i.i
                                        #   in Loop: Header=BB0_174 Depth=4
	bneid     r7, ($BB0_199)
	NOP    
# BB#189:                               # %bb96.i.i
                                        #   in Loop: Header=BB0_174 Depth=4
	ORI       r4, r0, 981668463
	ADDI      r6, r0, 1
	FPLT      r4, r3, r4
	bneid     r4, ($BB0_191)
	NOP    
# BB#190:                               # %bb96.i.i
                                        #   in Loop: Header=BB0_174 Depth=4
	ADDI      r6, r0, 0
$BB0_191:                               # %bb96.i.i
                                        #   in Loop: Header=BB0_174 Depth=4
	bneid     r6, ($BB0_199)
	NOP    
# BB#192:                               # %bb96.i.i
                                        #   in Loop: Header=BB0_174 Depth=4
	ORI       r4, r0, 1343554297
	ADDI      r6, r0, 1
	FPEQ      r4, r3, r4
	bneid     r4, ($BB0_194)
	NOP    
# BB#193:                               # %bb96.i.i
                                        #   in Loop: Header=BB0_174 Depth=4
	ADDI      r6, r0, 0
$BB0_194:                               # %bb96.i.i
                                        #   in Loop: Header=BB0_174 Depth=4
	bneid     r6, ($BB0_199)
	NOP    
# BB#195:                               # %bb2.i.i.i
                                        #   in Loop: Header=BB0_174 Depth=4
	LWI       r4, r1, 424
	SWI       r4, r1, 360
	LWI        r4, r1, 360
	FPUN      r6, r4, r3
	FPLE      r4, r4, r3
	BITOR     r4, r6, r4
	bneid     r4, ($BB0_197)
	ADDI      r7, r0, 1
# BB#196:                               # %bb2.i.i.i
                                        #   in Loop: Header=BB0_174 Depth=4
	ADDI      r7, r0, 0
$BB0_197:                               # %bb2.i.i.i
                                        #   in Loop: Header=BB0_174 Depth=4
	bneid     r7, ($BB0_199)
	NOP    
# BB#198:                               # %bb3.i.i.i
                                        #   in Loop: Header=BB0_174 Depth=4
	LOAD      r4, r5, 2
	LOAD      r4, r5, 1
	LOAD      r4, r5, 0
	LOAD      r4, r5, 5
	LOAD      r4, r5, 4
	LOAD      r4, r5, 3
	LOAD      r4, r5, 8
	LOAD      r4, r5, 7
	LOAD      r4, r5, 6
	LOAD      r4, r5, 10
	ADD       r6, r0, r0
	LOAD      r7, r5, 9
	MULI      r4, r4, 25
	LOAD      r6, r6, 9
	ADD       r4, r6, r4
	SWI        r3, r1, 364
	LOAD      r3, r4, 6
	LWI       r3, r1, 364
	SWI       r3, r1, 424
	LOAD      r3, r4, 5
	LOAD      r3, r4, 4
$BB0_199:                               # %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i
                                        #   in Loop: Header=BB0_174 Depth=4
	LWI       r3, r1, 432
	ADDI      r3, r3, -1
	SWI       r3, r1, 432
	ADDI      r5, r5, 11
	ADD       r4, r0, r0
	CMP       r3, r4, r3
	bneid     r3, ($BB0_174)
	NOP    
$BB0_200:                               # %bb7.i
                                        #   in Loop: Header=BB0_110 Depth=3
	ADD       r5, r0, r0
	LWI       r3, r1, 428
	CMP       r5, r5, r3
	bltid     r5, ($BB0_207)
	NOP    
# BB#201:                               # %bb9.i
                                        #   in Loop: Header=BB0_110 Depth=3
	ADDI      r5, r0, 2
	ANDI      r5, r5, 31
	LWI       r3, r1, 428
	beqid     r5, ($BB0_203)
	ADDI      r3, r3, 0
$BB0_202:                               # %bb9.i
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_3 Depth=2
                                        #       Parent Loop BB0_110 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ADDI      r5, r5, -1
	bneid     r5, ($BB0_202)
	ADDK      r3, r3, r3
$BB0_203:                               # %bb9.i
                                        #   in Loop: Header=BB0_110 Depth=3
	ADDI      r5, r1, 48
	LW        r5, r5, r3
	LWI       r3, r1, 428
	ADDI      r3, r3, -1
	brid      ($BB0_110)
	SWI       r3, r1, 428
$BB0_204:                               # %bb3.i
                                        #   in Loop: Header=BB0_110 Depth=3
	ADDI      r3, r0, 2
	ANDI      r3, r3, 31
	LWI       r4, r1, 428
	beqid     r3, ($BB0_206)
	ADDI      r4, r4, 0
$BB0_205:                               # %bb3.i
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_3 Depth=2
                                        #       Parent Loop BB0_110 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ADDI      r3, r3, -1
	bneid     r3, ($BB0_205)
	ADDK      r4, r4, r4
$BB0_206:                               # %bb3.i
                                        #   in Loop: Header=BB0_110 Depth=3
	ADDI      r3, r1, 48
	LWI       r6, r1, 428
	ADDI      r6, r6, 1
	SWI       r6, r1, 428
	ADDI      r6, r5, 1
	ADD       r3, r3, r4
	brid      ($BB0_110)
	SWI       r6, r3, 4
$BB0_207:                               # %_ZN3BVH9intersectER9HitRecordR3Ray.exit
                                        #   in Loop: Header=BB0_3 Depth=2
	LWI       r5, r1, 424
	SWI       r5, r1, 368
	ORI       r5, r0, 1065353216
	LWI        r3, r1, 368
	LWI       r4, r1, 500
	FPDIV     r5, r5, r4
	FPUN      r4, r3, r5
	FPGE      r5, r3, r5
	BITOR     r5, r4, r5
	bneid     r5, ($BB0_209)
	ADDI      r6, r0, 1
# BB#208:                               # %_ZN3BVH9intersectER9HitRecordR3Ray.exit
                                        #   in Loop: Header=BB0_3 Depth=2
	ADDI      r6, r0, 0
$BB0_209:                               # %_ZN3BVH9intersectER9HitRecordR3Ray.exit
                                        #   in Loop: Header=BB0_3 Depth=2
	bneid     r6, ($BB0_214)
	NOP    
# BB#210:                               # %_ZN3BVH9intersectER9HitRecordR3Ray.exit
                                        #   in Loop: Header=BB0_3 Depth=2
	ORI       r5, r0, 1008981770
	ADDI      r4, r0, 1
	FPGT      r5, r3, r5
	bneid     r5, ($BB0_212)
	NOP    
# BB#211:                               # %_ZN3BVH9intersectER9HitRecordR3Ray.exit
                                        #   in Loop: Header=BB0_3 Depth=2
	ADDI      r4, r0, 0
$BB0_212:                               # %_ZN3BVH9intersectER9HitRecordR3Ray.exit
                                        #   in Loop: Header=BB0_3 Depth=2
	beqid     r4, ($BB0_214)
	NOP    
# BB#213:                               #   in Loop: Header=BB0_3 Depth=2
	brid      ($BB0_215)
	LWI       r5, r1, 484
$BB0_214:                               # %bb96.i
                                        #   in Loop: Header=BB0_3 Depth=2
	LWI       r3, r1, 504
	LWI       r5, r1, 496
	FPMUL     r5, r5, r3
	LWI       r3, r1, 484
	FPADD     r3, r5, r3
	SWI       r3, r1, 484
	ADD       r5, r3, r0
$BB0_215:                               # %_ZN6Shader10lambertianER3BVH9HitRecord3Ray10PointLight5Color.exit
                                        #   in Loop: Header=BB0_3 Depth=2
	LWI       r3, r1, 480
	SWI       r3, r1, 392
	LWI       r4, r1, 536
	SWI       r4, r1, 372
	LWI       r4, r1, 532
	SWI       r4, r1, 376
	LWI       r4, r1, 528
	SWI       r4, r1, 380
	LWI        r3, r1, 392
	LWI       r4, r1, 484
	FPMUL     r3, r3, r4
	LWI        r4, r1, 380
	LWI       r6, r1, 492
	FPMUL     r6, r6, r5
	LWI        r7, r1, 376
	LWI       r8, r1, 488
	FPMUL     r5, r8, r5
	LWI        r8, r1, 372
	FPADD     r8, r5, r8
	FPADD     r7, r6, r7
	FPADD     r4, r4, r3
	SWI        r8, r1, 396
	SWI        r7, r1, 400
	SWI        r4, r1, 408
	SWI        r3, r1, 404
	SWI        r6, r1, 388
	SWI        r5, r1, 384
	LWI       r5, r1, 396
	SWI       r5, r1, 536
	LWI       r5, r1, 400
	SWI       r5, r1, 532
	LWI       r5, r1, 408
	SWI       r5, r1, 528
	LWI       r5, r1, 540
	ADDI      r5, r5, -1
	SWI       r5, r1, 540
	ADD       r3, r0, r0
	CMP       r5, r3, r5
	bneid     r5, ($BB0_3)
	NOP    
# BB#216:                               # %bb19
                                        #   in Loop: Header=BB0_2 Depth=1
	LWI       r3, r1, 624
	LWI       r5, r1, 620
	ADD       r5, r5, r3
	MULI      r5, r5, 3
	ORI       r3, r0, 1025758986
	FPMUL     r6, r8, r3
	LWI       r8, r1, 636
	ADD       r5, r5, r8
	FPMUL     r7, r7, r3
	STORE     r5, r6, 0
	FPMUL     r3, r4, r3
	STORE     r5, r7, 1
	STORE     r5, r3, 2
	SWI        r3, r1, 420
	SWI        r7, r1, 416
	SWI        r6, r1, 412
	LWI       r4, r1, 420
	SWI       r4, r1, 528
	LWI       r4, r1, 416
	SWI       r4, r1, 532
	LWI       r4, r1, 412
	SWI       r4, r1, 536
	ATOMIC_INC r5, 0
	LWI       r3, r1, 640
	CMP       r3, r5, r3
	bgtid     r3, ($BB0_2)
	NOP    
$BB0_217:                               # %return
	ADD       r3, r0, r0
	LWI       r31, r1, 0
	LWI       r30, r1, 4
	LWI       r29, r1, 8
	LWI       r28, r1, 12
	LWI       r27, r1, 16
	LWI       r26, r1, 20
	LWI       r25, r1, 24
	LWI       r24, r1, 28
	LWI       r23, r1, 32
	LWI       r22, r1, 36
	LWI       r21, r1, 40
	LWI       r20, r1, 44
	rtsd      r15, 8
	ADDI      r1, r1, 656
	.end	main
$tmp0:
	.size	main, ($tmp0)-main


