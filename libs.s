	.cpu cortex-m0
	.fpu softvfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 6
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.code	16
	.file	"libs.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.align	2
	.global	libs_init_switches
	.code	16
	.thumb_func
	.type	libs_init_switches, %function
libs_init_switches:
.LFB0:
	.file 1 "libs.c"
	.loc 1 7 0
	.cfi_startproc
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 1 9 0
	ldr	r3, .L2
	ldr	r2, .L2
	ldr	r2, [r2, #20]
	mov	r1, #128
	lsl	r1, r1, #10
	orr	r2, r1
	str	r2, [r3, #20]
	.loc 1 10 0
	mov	r3, #144
	lsl	r3, r3, #23
	mov	r2, #144
	lsl	r2, r2, #23
	ldr	r2, [r2]
	mov	r1, #255
	bic	r2, r1
	str	r2, [r3]
	.loc 1 11 0
	mov	r3, #144
	lsl	r3, r3, #23
	mov	r2, #144
	lsl	r2, r2, #23
	ldr	r2, [r2, #12]
	mov	r1, #85
	orr	r2, r1
	str	r2, [r3, #12]
	.loc 1 12 0
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L3:
	.align	2
.L2:
	.word	1073876992
	.cfi_endproc
.LFE0:
	.size	libs_init_switches, .-libs_init_switches
	.align	2
	.global	libs_read_switches
	.code	16
	.thumb_func
	.type	libs_read_switches, %function
libs_read_switches:
.LFB1:
	.loc 1 14 0
	.cfi_startproc
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #8
	.cfi_def_cfa_offset 16
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 1 16 0
	mov	r3, #144
	lsl	r3, r3, #23
	ldrh	r3, [r3, #16]
	uxth	r2, r3
	add	r3, r7, #7
	strb	r2, [r3]
	.loc 1 17 0
	add	r3, r7, #7
	ldrb	r3, [r3]
	.loc 1 18 0
	mov	r0, r3
	mov	sp, r7
	add	sp, sp, #8
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE1:
	.size	libs_read_switches, .-libs_read_switches
	.align	2
	.global	libs_read_switches_bool
	.code	16
	.thumb_func
	.type	libs_read_switches_bool, %function
libs_read_switches_bool:
.LFB2:
	.loc 1 20 0
	.cfi_startproc
	push	{r4, r7, lr}
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #20
	.cfi_def_cfa_offset 32
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	mov	r2, r0
	add	r3, r7, #7
	strb	r2, [r3]
	.loc 1 22 0
	mov	r4, r7
	add	r4, r4, #15
	bl	libs_read_switches
	mov	r3, r0
	strb	r3, [r4]
	.loc 1 23 0
	mov	r3, r7
	add	r3, r3, #15
	mov	r2, r7
	add	r2, r2, #15
	ldrb	r1, [r2]
	mov	r2, #15
	and	r2, r1
	strb	r2, [r3]
	.loc 1 25 0
	add	r3, r7, #7
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.L7
	.loc 1 27 0
	mov	r3, r7
	add	r3, r3, #15
	ldrb	r3, [r3]
	sub	r3, r3, #14
	neg	r2, r3
	adc	r3, r3, r2
	uxtb	r3, r3
	b	.L8
.L7:
	.loc 1 30 0
	add	r3, r7, #7
	ldrb	r3, [r3]
	cmp	r3, #1
	bne	.L9
	.loc 1 32 0
	mov	r3, r7
	add	r3, r3, #15
	ldrb	r3, [r3]
	sub	r3, r3, #13
	neg	r2, r3
	adc	r3, r3, r2
	uxtb	r3, r3
	b	.L8
.L9:
	.loc 1 35 0
	add	r3, r7, #7
	ldrb	r3, [r3]
	cmp	r3, #2
	bne	.L10
	.loc 1 37 0
	mov	r3, r7
	add	r3, r3, #15
	ldrb	r3, [r3]
	sub	r3, r3, #11
	neg	r2, r3
	adc	r3, r3, r2
	uxtb	r3, r3
	b	.L8
.L10:
	.loc 1 40 0
	add	r3, r7, #7
	ldrb	r3, [r3]
	cmp	r3, #3
	bne	.L11
	.loc 1 42 0
	mov	r3, r7
	add	r3, r3, #15
	ldrb	r3, [r3]
	sub	r3, r3, #7
	neg	r2, r3
	adc	r3, r3, r2
	uxtb	r3, r3
	b	.L8
.L11:
	.loc 1 45 0
	mov	r3, #0
.L8:
	.loc 1 46 0
	mov	r0, r3
	mov	sp, r7
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r7, pc}
	.cfi_endproc
.LFE2:
	.size	libs_read_switches_bool, .-libs_read_switches_bool
	.align	2
	.global	libs_init_leds
	.code	16
	.thumb_func
	.type	libs_init_leds, %function
libs_init_leds:
.LFB3:
	.loc 1 49 0
	.cfi_startproc
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 1 51 0
	ldr	r3, .L13
	ldr	r2, .L13
	ldr	r2, [r2, #20]
	mov	r1, #128
	lsl	r1, r1, #11
	orr	r2, r1
	str	r2, [r3, #20]
	.loc 1 52 0
	ldr	r3, .L13+4
	ldr	r2, .L13+4
	ldr	r2, [r2]
	mov	r1, #255
	bic	r2, r1
	str	r2, [r3]
	.loc 1 53 0
	ldr	r3, .L13+4
	ldr	r2, .L13+4
	ldr	r2, [r2]
	ldr	r1, .L13+8
	orr	r2, r1
	str	r2, [r3]
	.loc 1 54 0
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L14:
	.align	2
.L13:
	.word	1073876992
	.word	1207960576
	.word	21845
	.cfi_endproc
.LFE3:
	.size	libs_init_leds, .-libs_init_leds
	.align	2
	.global	libs_write_leds
	.code	16
	.thumb_func
	.type	libs_write_leds, %function
libs_write_leds:
.LFB4:
	.loc 1 56 0
	.cfi_startproc
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #8
	.cfi_def_cfa_offset 16
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	mov	r2, r0
	add	r3, r7, #7
	strb	r2, [r3]
	.loc 1 58 0
	ldr	r3, .L16
	add	r2, r7, #7
	ldrb	r2, [r2]
	uxth	r2, r2
	strh	r2, [r3, #20]
	.loc 1 59 0
	mov	sp, r7
	add	sp, sp, #8
	@ sp needed
	pop	{r7, pc}
.L17:
	.align	2
.L16:
	.word	1207960576
	.cfi_endproc
.LFE4:
	.size	libs_write_leds, .-libs_write_leds
	.align	2
	.global	libs_init_pot
	.code	16
	.thumb_func
	.type	libs_init_pot, %function
libs_init_pot:
.LFB5:
	.loc 1 63 0
	.cfi_startproc
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #8
	.cfi_def_cfa_offset 16
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 1 65 0
	ldr	r3, .L22
	ldr	r2, .L22
	ldr	r2, [r2, #24]
	mov	r1, #128
	lsl	r1, r1, #2
	orr	r2, r1
	str	r2, [r3, #24]
	.loc 1 66 0
	mov	r3, #144
	lsl	r3, r3, #23
	mov	r2, #144
	lsl	r2, r2, #23
	ldr	r2, [r2]
	mov	r1, #240
	lsl	r1, r1, #6
	orr	r2, r1
	str	r2, [r3]
	.loc 1 69 0
	ldr	r3, .L22+4
	ldr	r2, .L22+4
	ldr	r2, [r2, #8]
	mov	r1, #128
	lsl	r1, r1, #24
	orr	r2, r1
	str	r2, [r3, #8]
	.loc 1 70 0
	ldr	r3, .L22+4
	ldr	r3, [r3, #8]
	mov	r2, r3
	add	r3, r7, #7
	lsr	r2, r2, #31
	strb	r2, [r3]
	.loc 1 71 0
	b	.L19
.L20:
	.loc 1 72 0
	ldr	r3, .L22+4
	ldr	r3, [r3, #8]
	mov	r2, r3
	add	r3, r7, #7
	lsr	r2, r2, #31
	strb	r2, [r3]
.L19:
	.loc 1 71 0 discriminator 1
	add	r3, r7, #7
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.L20
	.loc 1 75 0
	ldr	r3, .L22+4
	ldr	r2, .L22+4
	ldr	r2, [r2, #8]
	mov	r1, #1
	orr	r2, r1
	str	r2, [r3, #8]
	.loc 1 76 0
	ldr	r3, .L22+4
	ldr	r2, .L22+4
	ldr	r2, [r2, #12]
	mov	r1, #15
	bic	r2, r1
	str	r2, [r3, #12]
	.loc 1 77 0
	ldr	r3, .L22+4
	ldr	r2, .L22+4
	ldr	r2, [r2, #12]
	mov	r1, #16
	orr	r2, r1
	str	r2, [r3, #12]
	.loc 1 78 0
	mov	r8, r8
.L21:
	.loc 1 78 0 is_stmt 0 discriminator 1
	ldr	r3, .L22+4
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L21
	.loc 1 83 0 is_stmt 1
	mov	sp, r7
	add	sp, sp, #8
	@ sp needed
	pop	{r7, pc}
.L23:
	.align	2
.L22:
	.word	1073876992
	.word	1073816576
	.cfi_endproc
.LFE5:
	.size	libs_init_pot, .-libs_init_pot
	.align	2
	.global	libs_read_pot
	.code	16
	.thumb_func
	.type	libs_read_pot, %function
libs_read_pot:
.LFB6:
	.loc 1 86 0
	.cfi_startproc
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #16
	.cfi_def_cfa_offset 24
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	mov	r2, r0
	add	r3, r7, #7
	strb	r2, [r3]
	.loc 1 90 0
	ldr	r3, .L30
	ldr	r2, .L30
	ldr	r2, [r2, #40]
	mov	r1, #96
	bic	r2, r1
	str	r2, [r3, #40]
	.loc 1 92 0
	add	r3, r7, #7
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L25
	.loc 1 93 0
	ldr	r3, .L30
	mov	r2, #64
	str	r2, [r3, #40]
	b	.L26
.L25:
	.loc 1 96 0
	ldr	r3, .L30
	mov	r2, #32
	str	r2, [r3, #40]
.L26:
	.loc 1 99 0
	ldr	r3, .L30
	ldr	r2, .L30
	ldr	r2, [r2, #8]
	mov	r1, #4
	orr	r2, r1
	str	r2, [r3, #8]
	.loc 1 101 0
	ldr	r3, .L30
	ldr	r2, [r3]
	mov	r3, #4
	and	r2, r3
	mov	r3, r7
	add	r3, r3, #15
	sub	r1, r2, #1
	sbc	r2, r2, r1
	strb	r2, [r3]
	.loc 1 103 0
	b	.L27
.L28:
	.loc 1 104 0
	ldr	r3, .L30
	ldr	r2, [r3]
	mov	r3, #4
	and	r2, r3
	mov	r3, r7
	add	r3, r3, #15
	sub	r1, r2, #1
	sbc	r2, r2, r1
	strb	r2, [r3]
.L27:
	.loc 1 103 0 discriminator 1
	mov	r3, r7
	add	r3, r3, #15
	ldrb	r3, [r3]
	mov	r2, #1
	eor	r3, r2
	uxtb	r3, r3
	cmp	r3, #0
	bne	.L28
	.loc 1 107 0
	ldr	r3, .L30
	ldr	r3, [r3, #64]
	str	r3, [r7, #8]
	.loc 1 108 0
	ldr	r2, [r7, #8]
	mov	r3, #255
	and	r3, r2
	str	r3, [r7, #8]
	.loc 1 110 0
	ldr	r3, [r7, #8]
	uxtb	r3, r3
	.loc 1 111 0
	mov	r0, r3
	mov	sp, r7
	add	sp, sp, #16
	@ sp needed
	pop	{r7, pc}
.L31:
	.align	2
.L30:
	.word	1073816576
	.cfi_endproc
.LFE6:
	.size	libs_read_pot, .-libs_read_pot
.Letext0:
	.file 2 "/usr/include/newlib/machine/_default_types.h"
	.file 3 "/usr/include/newlib/stdint.h"
	.file 4 "stm32f0xx.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x442
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF58
	.byte	0x1
	.4byte	.LASF59
	.4byte	.LASF60
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x2
	.byte	0x1d
	.4byte	0x37
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x2
	.byte	0x2b
	.4byte	0x50
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x2
	.byte	0x41
	.4byte	0x69
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0x2a
	.4byte	0x2c
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x3
	.byte	0x36
	.4byte	0x45
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x3
	.byte	0x42
	.4byte	0x5e
	.uleb128 0x5
	.byte	0x44
	.byte	0x4
	.2byte	0x1f7
	.4byte	0x15d
	.uleb128 0x6
	.ascii	"ISR\000"
	.byte	0x4
	.2byte	0x1f9
	.4byte	0x15d
	.byte	0
	.uleb128 0x6
	.ascii	"IER\000"
	.byte	0x4
	.2byte	0x1fa
	.4byte	0x15d
	.byte	0x4
	.uleb128 0x6
	.ascii	"CR\000"
	.byte	0x4
	.2byte	0x1fb
	.4byte	0x15d
	.byte	0x8
	.uleb128 0x7
	.4byte	.LASF15
	.byte	0x4
	.2byte	0x1fc
	.4byte	0x15d
	.byte	0xc
	.uleb128 0x7
	.4byte	.LASF16
	.byte	0x4
	.2byte	0x1fd
	.4byte	0x15d
	.byte	0x10
	.uleb128 0x7
	.4byte	.LASF17
	.byte	0x4
	.2byte	0x1fe
	.4byte	0x15d
	.byte	0x14
	.uleb128 0x7
	.4byte	.LASF18
	.byte	0x4
	.2byte	0x1ff
	.4byte	0xa2
	.byte	0x18
	.uleb128 0x7
	.4byte	.LASF19
	.byte	0x4
	.2byte	0x200
	.4byte	0xa2
	.byte	0x1c
	.uleb128 0x6
	.ascii	"TR\000"
	.byte	0x4
	.2byte	0x201
	.4byte	0x15d
	.byte	0x20
	.uleb128 0x7
	.4byte	.LASF20
	.byte	0x4
	.2byte	0x202
	.4byte	0xa2
	.byte	0x24
	.uleb128 0x7
	.4byte	.LASF21
	.byte	0x4
	.2byte	0x203
	.4byte	0x15d
	.byte	0x28
	.uleb128 0x7
	.4byte	.LASF22
	.byte	0x4
	.2byte	0x204
	.4byte	0x162
	.byte	0x2c
	.uleb128 0x6
	.ascii	"DR\000"
	.byte	0x4
	.2byte	0x205
	.4byte	0x15d
	.byte	0x40
	.byte	0
	.uleb128 0x8
	.4byte	0xa2
	.uleb128 0x9
	.4byte	0xa2
	.4byte	0x172
	.uleb128 0xa
	.4byte	0x172
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF23
	.uleb128 0xb
	.4byte	.LASF24
	.byte	0x4
	.2byte	0x206
	.4byte	0xad
	.uleb128 0x8
	.4byte	0x97
	.uleb128 0x5
	.byte	0x2c
	.byte	0x4
	.2byte	0x2e6
	.4byte	0x24a
	.uleb128 0x7
	.4byte	.LASF25
	.byte	0x4
	.2byte	0x2e8
	.4byte	0x15d
	.byte	0
	.uleb128 0x7
	.4byte	.LASF26
	.byte	0x4
	.2byte	0x2e9
	.4byte	0x185
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF27
	.byte	0x4
	.2byte	0x2ea
	.4byte	0x97
	.byte	0x6
	.uleb128 0x7
	.4byte	.LASF28
	.byte	0x4
	.2byte	0x2eb
	.4byte	0x15d
	.byte	0x8
	.uleb128 0x7
	.4byte	.LASF29
	.byte	0x4
	.2byte	0x2ec
	.4byte	0x15d
	.byte	0xc
	.uleb128 0x6
	.ascii	"IDR\000"
	.byte	0x4
	.2byte	0x2ed
	.4byte	0x185
	.byte	0x10
	.uleb128 0x7
	.4byte	.LASF18
	.byte	0x4
	.2byte	0x2ee
	.4byte	0x97
	.byte	0x12
	.uleb128 0x6
	.ascii	"ODR\000"
	.byte	0x4
	.2byte	0x2ef
	.4byte	0x185
	.byte	0x14
	.uleb128 0x7
	.4byte	.LASF19
	.byte	0x4
	.2byte	0x2f0
	.4byte	0x97
	.byte	0x16
	.uleb128 0x7
	.4byte	.LASF30
	.byte	0x4
	.2byte	0x2f1
	.4byte	0x15d
	.byte	0x18
	.uleb128 0x7
	.4byte	.LASF31
	.byte	0x4
	.2byte	0x2f2
	.4byte	0x15d
	.byte	0x1c
	.uleb128 0x6
	.ascii	"AFR\000"
	.byte	0x4
	.2byte	0x2f3
	.4byte	0x25a
	.byte	0x20
	.uleb128 0x6
	.ascii	"BRR\000"
	.byte	0x4
	.2byte	0x2f4
	.4byte	0x185
	.byte	0x28
	.uleb128 0x7
	.4byte	.LASF20
	.byte	0x4
	.2byte	0x2f5
	.4byte	0x97
	.byte	0x2a
	.byte	0
	.uleb128 0x9
	.4byte	0xa2
	.4byte	0x25a
	.uleb128 0xa
	.4byte	0x172
	.byte	0x1
	.byte	0
	.uleb128 0x8
	.4byte	0x24a
	.uleb128 0xb
	.4byte	.LASF32
	.byte	0x4
	.2byte	0x2f6
	.4byte	0x18a
	.uleb128 0x5
	.byte	0x38
	.byte	0x4
	.2byte	0x335
	.4byte	0x32a
	.uleb128 0x6
	.ascii	"CR\000"
	.byte	0x4
	.2byte	0x337
	.4byte	0x15d
	.byte	0
	.uleb128 0x7
	.4byte	.LASF33
	.byte	0x4
	.2byte	0x338
	.4byte	0x15d
	.byte	0x4
	.uleb128 0x6
	.ascii	"CIR\000"
	.byte	0x4
	.2byte	0x339
	.4byte	0x15d
	.byte	0x8
	.uleb128 0x7
	.4byte	.LASF34
	.byte	0x4
	.2byte	0x33a
	.4byte	0x15d
	.byte	0xc
	.uleb128 0x7
	.4byte	.LASF35
	.byte	0x4
	.2byte	0x33b
	.4byte	0x15d
	.byte	0x10
	.uleb128 0x7
	.4byte	.LASF36
	.byte	0x4
	.2byte	0x33c
	.4byte	0x15d
	.byte	0x14
	.uleb128 0x7
	.4byte	.LASF37
	.byte	0x4
	.2byte	0x33d
	.4byte	0x15d
	.byte	0x18
	.uleb128 0x7
	.4byte	.LASF38
	.byte	0x4
	.2byte	0x33e
	.4byte	0x15d
	.byte	0x1c
	.uleb128 0x7
	.4byte	.LASF39
	.byte	0x4
	.2byte	0x33f
	.4byte	0x15d
	.byte	0x20
	.uleb128 0x6
	.ascii	"CSR\000"
	.byte	0x4
	.2byte	0x340
	.4byte	0x15d
	.byte	0x24
	.uleb128 0x7
	.4byte	.LASF40
	.byte	0x4
	.2byte	0x341
	.4byte	0x15d
	.byte	0x28
	.uleb128 0x7
	.4byte	.LASF16
	.byte	0x4
	.2byte	0x342
	.4byte	0x15d
	.byte	0x2c
	.uleb128 0x7
	.4byte	.LASF41
	.byte	0x4
	.2byte	0x343
	.4byte	0x15d
	.byte	0x30
	.uleb128 0x6
	.ascii	"CR2\000"
	.byte	0x4
	.2byte	0x344
	.4byte	0x15d
	.byte	0x34
	.byte	0
	.uleb128 0xb
	.4byte	.LASF42
	.byte	0x4
	.2byte	0x345
	.4byte	0x26b
	.uleb128 0xc
	.4byte	.LASF47
	.byte	0x1
	.byte	0x7
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xd
	.4byte	.LASF43
	.byte	0x1
	.byte	0xe
	.4byte	0x8c
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x36f
	.uleb128 0xe
	.4byte	.LASF45
	.byte	0x1
	.byte	0x10
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0xf
	.4byte	.LASF44
	.byte	0x1
	.byte	0x14
	.4byte	0x8c
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3a5
	.uleb128 0x10
	.4byte	.LASF49
	.byte	0x1
	.byte	0x14
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0xe
	.4byte	.LASF46
	.byte	0x1
	.byte	0x16
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0xc
	.4byte	.LASF48
	.byte	0x1
	.byte	0x31
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x11
	.4byte	.LASF51
	.byte	0x1
	.byte	0x38
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3da
	.uleb128 0x10
	.4byte	.LASF50
	.byte	0x1
	.byte	0x38
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x11
	.4byte	.LASF52
	.byte	0x1
	.byte	0x3f
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3fe
	.uleb128 0xe
	.4byte	.LASF53
	.byte	0x1
	.byte	0x46
	.4byte	0x3fe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF54
	.uleb128 0x12
	.4byte	.LASF55
	.byte	0x1
	.byte	0x56
	.4byte	0x8c
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x10
	.4byte	.LASF56
	.byte	0x1
	.byte	0x56
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0xe
	.4byte	.LASF57
	.byte	0x1
	.byte	0x65
	.4byte	0x3fe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0xe
	.4byte	.LASF45
	.byte	0x1
	.byte	0x6b
	.4byte	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF29:
	.ascii	"PUPDR\000"
.LASF31:
	.ascii	"LCKR\000"
.LASF47:
	.ascii	"libs_init_switches\000"
.LASF26:
	.ascii	"OTYPER\000"
.LASF3:
	.ascii	"__uint8_t\000"
.LASF25:
	.ascii	"MODER\000"
.LASF10:
	.ascii	"long long unsigned int\000"
.LASF17:
	.ascii	"SMPR\000"
.LASF9:
	.ascii	"long long int\000"
.LASF0:
	.ascii	"signed char\000"
.LASF30:
	.ascii	"BSRR\000"
.LASF46:
	.ascii	"all_switches\000"
.LASF6:
	.ascii	"long int\000"
.LASF59:
	.ascii	"libs.c\000"
.LASF34:
	.ascii	"APB2RSTR\000"
.LASF57:
	.ascii	"EOC_flag\000"
.LASF13:
	.ascii	"uint16_t\000"
.LASF24:
	.ascii	"ADC_TypeDef\000"
.LASF28:
	.ascii	"OSPEEDR\000"
.LASF7:
	.ascii	"__uint32_t\000"
.LASF53:
	.ascii	"CALR\000"
.LASF49:
	.ascii	"value\000"
.LASF11:
	.ascii	"unsigned int\000"
.LASF8:
	.ascii	"long unsigned int\000"
.LASF32:
	.ascii	"GPIO_TypeDef\000"
.LASF58:
	.ascii	"GNU C 4.8.4 20141219 (release) -mthumb -mcpu=cortex"
	.ascii	"-m0 -g -std=c99\000"
.LASF42:
	.ascii	"RCC_TypeDef\000"
.LASF5:
	.ascii	"short unsigned int\000"
.LASF21:
	.ascii	"CHSELR\000"
.LASF52:
	.ascii	"libs_init_pot\000"
.LASF55:
	.ascii	"libs_read_pot\000"
.LASF45:
	.ascii	"output\000"
.LASF23:
	.ascii	"sizetype\000"
.LASF43:
	.ascii	"libs_read_switches\000"
.LASF40:
	.ascii	"AHBRSTR\000"
.LASF35:
	.ascii	"APB1RSTR\000"
.LASF27:
	.ascii	"RESERVED0\000"
.LASF18:
	.ascii	"RESERVED1\000"
.LASF19:
	.ascii	"RESERVED2\000"
.LASF20:
	.ascii	"RESERVED3\000"
.LASF22:
	.ascii	"RESERVED4\000"
.LASF54:
	.ascii	"_Bool\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF44:
	.ascii	"libs_read_switches_bool\000"
.LASF2:
	.ascii	"short int\000"
.LASF48:
	.ascii	"libs_init_leds\000"
.LASF37:
	.ascii	"APB2ENR\000"
.LASF50:
	.ascii	"input\000"
.LASF14:
	.ascii	"uint32_t\000"
.LASF4:
	.ascii	"__uint16_t\000"
.LASF38:
	.ascii	"APB1ENR\000"
.LASF60:
	.ascii	"/home/amisi/Dropbox/School/2016/EEE2026S/Micros/cod"
	.ascii	"e/prac7\000"
.LASF39:
	.ascii	"BDCR\000"
.LASF15:
	.ascii	"CFGR1\000"
.LASF16:
	.ascii	"CFGR2\000"
.LASF41:
	.ascii	"CFGR3\000"
.LASF12:
	.ascii	"uint8_t\000"
.LASF56:
	.ascii	"channel\000"
.LASF51:
	.ascii	"libs_write_leds\000"
.LASF33:
	.ascii	"CFGR\000"
.LASF36:
	.ascii	"AHBENR\000"
	.ident	"GCC: (4.8.4-1+11-1) 4.8.4 20141219 (release)"
