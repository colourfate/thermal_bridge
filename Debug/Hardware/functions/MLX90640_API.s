	.cpu cortex-m4
	.arch armv7e-m
	.fpu fpv4-sp-d16
	.eabi_attribute 27, 1
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 6
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"MLX90640_API.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.MLX90640_DumpEE,"ax",%progbits
	.align	1
	.global	MLX90640_DumpEE
	.syntax unified
	.thumb
	.thumb_func
	.type	MLX90640_DumpEE, %function
MLX90640_DumpEE:
.LFB0:
	.file 1 "../Hardware/functions/MLX90640_API.c"
	.loc 1 42 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #8
	.cfi_def_cfa_offset 16
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	mov	r3, r0
	str	r1, [r7]
	strb	r3, [r7, #7]
	.loc 1 43 13
	ldrb	r0, [r7, #7]	@ zero_extendqisi2
	ldr	r3, [r7]
	mov	r2, #832
	mov	r1, #9216
	bl	MLX90640_I2CRead
	mov	r3, r0
	.loc 1 44 1
	mov	r0, r3
	adds	r7, r7, #8
	.cfi_def_cfa_offset 8
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE0:
	.size	MLX90640_DumpEE, .-MLX90640_DumpEE
	.section	.text.MLX90640_SynchFrame,"ax",%progbits
	.align	1
	.global	MLX90640_SynchFrame
	.syntax unified
	.thumb
	.thumb_func
	.type	MLX90640_SynchFrame, %function
MLX90640_SynchFrame:
.LFB1:
	.loc 1 47 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #24
	.cfi_def_cfa_offset 32
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	mov	r3, r0
	strb	r3, [r7, #7]
	.loc 1 48 14
	movs	r3, #0
	strh	r3, [r7, #22]	@ movhi
	.loc 1 50 9
	movs	r3, #1
	str	r3, [r7, #16]
	.loc 1 52 13
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	movs	r2, #48
	mov	r1, #32768
	mov	r0, r3
	bl	MLX90640_I2CWrite
	str	r0, [r7, #16]
	.loc 1 53 7
	ldr	r3, [r7, #16]
	cmp	r3, #-1
	bne	.L6
	.loc 1 55 16
	ldr	r3, [r7, #16]
	b	.L9
.L8:
	.loc 1 60 17
	add	r3, r7, #14
	ldrb	r0, [r7, #7]	@ zero_extendqisi2
	movs	r2, #1
	mov	r1, #32768
	bl	MLX90640_I2CRead
	str	r0, [r7, #16]
	.loc 1 61 11
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L7
	.loc 1 63 20
	ldr	r3, [r7, #16]
	b	.L9
.L7:
	.loc 1 66 37
	ldrh	r3, [r7, #14]
	.loc 1 66 19
	and	r3, r3, #8
	strh	r3, [r7, #22]	@ movhi
.L6:
	.loc 1 58 21
	ldrh	r3, [r7, #22]
	cmp	r3, #0
	beq	.L8
	.loc 1 69 11
	movs	r3, #0
.L9:
	.loc 1 70 1 discriminator 1
	mov	r0, r3
	adds	r7, r7, #24
	.cfi_def_cfa_offset 8
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE1:
	.size	MLX90640_SynchFrame, .-MLX90640_SynchFrame
	.section	.text.MLX90640_TriggerMeasurement,"ax",%progbits
	.align	1
	.global	MLX90640_TriggerMeasurement
	.syntax unified
	.thumb
	.thumb_func
	.type	MLX90640_TriggerMeasurement, %function
MLX90640_TriggerMeasurement:
.LFB2:
	.loc 1 73 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #16
	.cfi_def_cfa_offset 24
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	mov	r3, r0
	strb	r3, [r7, #7]
	.loc 1 74 9
	movs	r3, #1
	str	r3, [r7, #12]
	.loc 1 77 13
	add	r3, r7, #10
	ldrb	r0, [r7, #7]	@ zero_extendqisi2
	movs	r2, #1
	movw	r1, #32781
	bl	MLX90640_I2CRead
	str	r0, [r7, #12]
	.loc 1 79 8
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L11
	.loc 1 81 16
	ldr	r3, [r7, #12]
	b	.L17
.L11:
	.loc 1 84 13
	ldrh	r3, [r7, #10]
	mvn	r3, r3, lsl #17
	mvn	r3, r3, lsr #17
	uxth	r3, r3
	strh	r3, [r7, #10]	@ movhi
	.loc 1 85 13
	ldrh	r2, [r7, #10]
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	movw	r1, #32781
	mov	r0, r3
	bl	MLX90640_I2CWrite
	str	r0, [r7, #12]
	.loc 1 87 8
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L13
	.loc 1 89 16
	ldr	r3, [r7, #12]
	b	.L17
.L13:
	.loc 1 92 13
	bl	MLX90640_I2CGeneralReset
	str	r0, [r7, #12]
	.loc 1 94 8
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L14
	.loc 1 96 16
	ldr	r3, [r7, #12]
	b	.L17
.L14:
	.loc 1 99 13
	add	r3, r7, #10
	ldrb	r0, [r7, #7]	@ zero_extendqisi2
	movs	r2, #1
	movw	r1, #32781
	bl	MLX90640_I2CRead
	str	r0, [r7, #12]
	.loc 1 101 8
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L15
	.loc 1 103 16
	ldr	r3, [r7, #12]
	b	.L17
.L15:
	.loc 1 106 35
	ldrh	r3, [r7, #10]
	sxth	r3, r3
	.loc 1 106 8
	cmp	r3, #0
	bge	.L16
	.loc 1 108 16
	mvn	r3, #8
	b	.L17
.L16:
	.loc 1 111 12
	movs	r3, #0
.L17:
	.loc 1 112 1 discriminator 1
	mov	r0, r3
	adds	r7, r7, #16
	.cfi_def_cfa_offset 8
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE2:
	.size	MLX90640_TriggerMeasurement, .-MLX90640_TriggerMeasurement
	.section	.text.MLX90640_GetFrameData,"ax",%progbits
	.align	1
	.global	MLX90640_GetFrameData
	.syntax unified
	.thumb
	.thumb_func
	.type	MLX90640_GetFrameData, %function
MLX90640_GetFrameData:
.LFB3:
	.loc 1 115 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 152
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #152
	.cfi_def_cfa_offset 160
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	mov	r3, r0
	str	r1, [r7]
	strb	r3, [r7, #7]
	.loc 1 116 14
	movs	r3, #0
	strh	r3, [r7, #150]	@ movhi
	.loc 1 119 9
	movs	r3, #1
	str	r3, [r7, #144]
	.loc 1 121 13
	movs	r3, #0
	strb	r3, [r7, #149]
	.loc 1 123 10
	b	.L19
.L22:
	.loc 1 125 17
	add	r3, r7, #140
	ldrb	r0, [r7, #7]	@ zero_extendqisi2
	movs	r2, #1
	mov	r1, #32768
	bl	MLX90640_I2CRead
	str	r0, [r7, #144]
	.loc 1 126 11
	ldr	r3, [r7, #144]
	cmp	r3, #0
	beq	.L20
	.loc 1 128 20
	ldr	r3, [r7, #144]
	b	.L31
.L20:
	.loc 1 131 37
	ldrh	r3, [r7, #140]
	.loc 1 131 19
	and	r3, r3, #8
	strh	r3, [r7, #150]	@ movhi
.L19:
	.loc 1 123 21
	ldrh	r3, [r7, #150]
	cmp	r3, #0
	beq	.L22
	.loc 1 134 13
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	movs	r2, #48
	mov	r1, #32768
	mov	r0, r3
	bl	MLX90640_I2CWrite
	str	r0, [r7, #144]
	.loc 1 135 7
	ldr	r3, [r7, #144]
	cmp	r3, #-1
	bne	.L23
	.loc 1 137 16
	ldr	r3, [r7, #144]
	b	.L31
.L23:
	.loc 1 140 13
	ldrb	r0, [r7, #7]	@ zero_extendqisi2
	ldr	r3, [r7]
	mov	r2, #768
	mov	r1, #1024
	bl	MLX90640_I2CRead
	str	r0, [r7, #144]
	.loc 1 141 7
	ldr	r3, [r7, #144]
	cmp	r3, #0
	beq	.L24
	.loc 1 143 16
	ldr	r3, [r7, #144]
	b	.L31
.L24:
	.loc 1 146 13
	add	r3, r7, #12
	ldrb	r0, [r7, #7]	@ zero_extendqisi2
	movs	r2, #64
	mov	r1, #1792
	bl	MLX90640_I2CRead
	str	r0, [r7, #144]
	.loc 1 147 7
	ldr	r3, [r7, #144]
	cmp	r3, #0
	beq	.L25
	.loc 1 149 16
	ldr	r3, [r7, #144]
	b	.L31
.L25:
	.loc 1 152 13
	add	r3, r7, #142
	ldrb	r0, [r7, #7]	@ zero_extendqisi2
	movs	r2, #1
	movw	r1, #32781
	bl	MLX90640_I2CRead
	str	r0, [r7, #144]
	.loc 1 153 14
	ldr	r3, [r7]
	add	r3, r3, #1664
	.loc 1 153 20
	ldrh	r2, [r7, #142]
	strh	r2, [r3]	@ movhi
	.loc 1 155 38
	ldrh	r2, [r7, #140]
	.loc 1 155 14
	ldr	r3, [r7]
	addw	r3, r3, #1666
	.loc 1 155 38
	and	r2, r2, #1
	uxth	r2, r2
	.loc 1 155 20
	strh	r2, [r3]	@ movhi
	.loc 1 157 7
	ldr	r3, [r7, #144]
	cmp	r3, #0
	beq	.L26
	.loc 1 159 16
	ldr	r3, [r7, #144]
	b	.L31
.L26:
	.loc 1 162 13
	add	r3, r7, #12
	mov	r0, r3
	bl	ValidateAuxData
	str	r0, [r7, #144]
	.loc 1 163 7
	ldr	r3, [r7, #144]
	cmp	r3, #0
	bne	.L27
	.loc 1 165 16
	movs	r3, #0
	strb	r3, [r7, #149]
	.loc 1 165 9
	b	.L28
.L29:
	.loc 1 167 38 discriminator 3
	ldrb	r3, [r7, #149]	@ zero_extendqisi2
	.loc 1 167 22 discriminator 3
	ldrb	r2, [r7, #149]	@ zero_extendqisi2
	add	r2, r2, #768
	lsls	r2, r2, #1
	ldr	r1, [r7]
	add	r2, r2, r1
	.loc 1 167 38 discriminator 3
	lsls	r3, r3, #1
	adds	r3, r3, #152
	add	r3, r3, r7
	ldrh	r3, [r3, #-140]
	.loc 1 167 32 discriminator 3
	strh	r3, [r2]	@ movhi
	.loc 1 165 31 discriminator 3
	ldrb	r3, [r7, #149]	@ zero_extendqisi2
	adds	r3, r3, #1
	strb	r3, [r7, #149]
.L28:
	.loc 1 165 23 discriminator 1
	ldrb	r3, [r7, #149]	@ zero_extendqisi2
	cmp	r3, #63
	bls	.L29
.L27:
	.loc 1 171 13
	ldr	r0, [r7]
	bl	ValidateFrameData
	str	r0, [r7, #144]
	.loc 1 172 8
	ldr	r3, [r7, #144]
	cmp	r3, #0
	beq	.L30
	.loc 1 174 16
	ldr	r3, [r7, #144]
	b	.L31
.L30:
	.loc 1 177 21
	ldr	r3, [r7]
	addw	r3, r3, #1666
	ldrh	r3, [r3]
.L31:
	.loc 1 178 1 discriminator 1
	mov	r0, r3
	adds	r7, r7, #152
	.cfi_def_cfa_offset 8
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE3:
	.size	MLX90640_GetFrameData, .-MLX90640_GetFrameData
	.section	.text.ValidateFrameData,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	ValidateFrameData, %function
ValidateFrameData:
.LFB4:
	.loc 1 181 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	sub	sp, sp, #20
	.cfi_def_cfa_offset 24
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	.loc 1 182 13
	movs	r3, #0
	strb	r3, [r7, #15]
.LBB2:
	.loc 1 184 13
	movs	r3, #0
	str	r3, [r7, #8]
	.loc 1 184 5
	b	.L33
.L36:
	.loc 1 186 22
	ldr	r3, [r7, #8]
	lsls	r3, r3, #1
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	ldrh	r3, [r3]
	.loc 1 186 11
	movw	r2, #32767
	cmp	r3, r2
	bne	.L34
	.loc 1 186 48 discriminator 1
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	uxth	r3, r3
	and	r3, r3, #1
	uxth	r2, r3
	.loc 1 186 60 discriminator 1
	ldr	r3, [r7, #4]
	addw	r3, r3, #1666
	ldrh	r3, [r3]
	.loc 1 186 37 discriminator 1
	cmp	r2, r3
	bne	.L34
	.loc 1 186 75 discriminator 2
	mvn	r3, #7
	b	.L35
.L34:
	.loc 1 187 14 discriminator 2
	ldrb	r3, [r7, #15]
	adds	r3, r3, #1
	strb	r3, [r7, #15]
	.loc 1 184 26 discriminator 2
	ldr	r3, [r7, #8]
	adds	r3, r3, #32
	str	r3, [r7, #8]
.L33:
	.loc 1 184 19 discriminator 1
	ldr	r3, [r7, #8]
	cmp	r3, #768
	blt	.L36
.LBE2:
	.loc 1 190 12
	movs	r3, #0
.L35:
	.loc 1 191 1
	mov	r0, r3
	adds	r7, r7, #20
	.cfi_def_cfa_offset 4
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	ldr	r7, [sp], #4
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE4:
	.size	ValidateFrameData, .-ValidateFrameData
	.section	.text.ValidateAuxData,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	ValidateAuxData, %function
ValidateAuxData:
.LFB5:
	.loc 1 194 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	sub	sp, sp, #36
	.cfi_def_cfa_offset 40
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	.loc 1 196 15
	ldr	r3, [r7, #4]
	ldrh	r3, [r3]
	.loc 1 196 7
	movw	r2, #32767
	cmp	r3, r2
	bne	.L38
	.loc 1 196 37 discriminator 1
	mvn	r3, #7
	b	.L39
.L38:
.LBB3:
	.loc 1 198 13
	movs	r3, #8
	str	r3, [r7, #28]
	.loc 1 198 5
	b	.L40
.L42:
	.loc 1 200 19
	ldr	r3, [r7, #28]
	lsls	r3, r3, #1
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	ldrh	r3, [r3]
	.loc 1 200 11
	movw	r2, #32767
	cmp	r3, r2
	bne	.L41
	.loc 1 200 41 discriminator 1
	mvn	r3, #7
	b	.L39
.L41:
	.loc 1 198 25 discriminator 2
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	str	r3, [r7, #28]
.L40:
	.loc 1 198 19 discriminator 1
	ldr	r3, [r7, #28]
	cmp	r3, #18
	ble	.L42
.LBE3:
.LBB4:
	.loc 1 203 13
	movs	r3, #20
	str	r3, [r7, #24]
	.loc 1 203 5
	b	.L43
.L45:
	.loc 1 205 19
	ldr	r3, [r7, #24]
	lsls	r3, r3, #1
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	ldrh	r3, [r3]
	.loc 1 205 11
	movw	r2, #32767
	cmp	r3, r2
	bne	.L44
	.loc 1 205 41 discriminator 1
	mvn	r3, #7
	b	.L39
.L44:
	.loc 1 203 26 discriminator 2
	ldr	r3, [r7, #24]
	adds	r3, r3, #1
	str	r3, [r7, #24]
.L43:
	.loc 1 203 20 discriminator 1
	ldr	r3, [r7, #24]
	cmp	r3, #22
	ble	.L45
.LBE4:
.LBB5:
	.loc 1 208 13
	movs	r3, #24
	str	r3, [r7, #20]
	.loc 1 208 5
	b	.L46
.L48:
	.loc 1 210 19
	ldr	r3, [r7, #20]
	lsls	r3, r3, #1
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	ldrh	r3, [r3]
	.loc 1 210 11
	movw	r2, #32767
	cmp	r3, r2
	bne	.L47
	.loc 1 210 41 discriminator 1
	mvn	r3, #7
	b	.L39
.L47:
	.loc 1 208 26 discriminator 2
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L46:
	.loc 1 208 20 discriminator 1
	ldr	r3, [r7, #20]
	cmp	r3, #32
	ble	.L48
.LBE5:
.LBB6:
	.loc 1 213 13
	movs	r3, #40
	str	r3, [r7, #16]
	.loc 1 213 5
	b	.L49
.L51:
	.loc 1 215 19
	ldr	r3, [r7, #16]
	lsls	r3, r3, #1
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	ldrh	r3, [r3]
	.loc 1 215 11
	movw	r2, #32767
	cmp	r3, r2
	bne	.L50
	.loc 1 215 41 discriminator 1
	mvn	r3, #7
	b	.L39
.L50:
	.loc 1 213 26 discriminator 2
	ldr	r3, [r7, #16]
	adds	r3, r3, #1
	str	r3, [r7, #16]
.L49:
	.loc 1 213 20 discriminator 1
	ldr	r3, [r7, #16]
	cmp	r3, #50
	ble	.L51
.LBE6:
.LBB7:
	.loc 1 218 13
	movs	r3, #52
	str	r3, [r7, #12]
	.loc 1 218 5
	b	.L52
.L54:
	.loc 1 220 19
	ldr	r3, [r7, #12]
	lsls	r3, r3, #1
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	ldrh	r3, [r3]
	.loc 1 220 11
	movw	r2, #32767
	cmp	r3, r2
	bne	.L53
	.loc 1 220 41 discriminator 1
	mvn	r3, #7
	b	.L39
.L53:
	.loc 1 218 26 discriminator 2
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L52:
	.loc 1 218 20 discriminator 1
	ldr	r3, [r7, #12]
	cmp	r3, #54
	ble	.L54
.LBE7:
.LBB8:
	.loc 1 223 13
	movs	r3, #56
	str	r3, [r7, #8]
	.loc 1 223 5
	b	.L55
.L57:
	.loc 1 225 19
	ldr	r3, [r7, #8]
	lsls	r3, r3, #1
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	ldrh	r3, [r3]
	.loc 1 225 11
	movw	r2, #32767
	cmp	r3, r2
	bne	.L56
	.loc 1 225 41 discriminator 1
	mvn	r3, #7
	b	.L39
.L56:
	.loc 1 223 26 discriminator 2
	ldr	r3, [r7, #8]
	adds	r3, r3, #1
	str	r3, [r7, #8]
.L55:
	.loc 1 223 20 discriminator 1
	ldr	r3, [r7, #8]
	cmp	r3, #63
	ble	.L57
.LBE8:
	.loc 1 228 12
	movs	r3, #0
.L39:
	.loc 1 230 1
	mov	r0, r3
	adds	r7, r7, #36
	.cfi_def_cfa_offset 4
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	ldr	r7, [sp], #4
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE5:
	.size	ValidateAuxData, .-ValidateAuxData
	.section	.text.MLX90640_ExtractParameters,"ax",%progbits
	.align	1
	.global	MLX90640_ExtractParameters
	.syntax unified
	.thumb
	.thumb_func
	.type	MLX90640_ExtractParameters, %function
MLX90640_ExtractParameters:
.LFB6:
	.loc 1 233 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #16
	.cfi_def_cfa_offset 24
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	str	r1, [r7]
	.loc 1 234 9
	movs	r3, #0
	str	r3, [r7, #12]
	.loc 1 236 5
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	bl	ExtractVDDParameters
	.loc 1 237 5
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	bl	ExtractPTATParameters
	.loc 1 238 5
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	bl	ExtractGainParameters
	.loc 1 239 5
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	bl	ExtractTgcParameters
	.loc 1 240 5
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	bl	ExtractResolutionParameters
	.loc 1 241 5
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	bl	ExtractKsTaParameters
	.loc 1 242 5
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	bl	ExtractKsToParameters
	.loc 1 243 5
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	bl	ExtractCPParameters
	.loc 1 244 5
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	bl	ExtractAlphaParameters
	.loc 1 245 5
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	bl	ExtractOffsetParameters
	.loc 1 246 5
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	bl	ExtractKtaPixelParameters
	.loc 1 247 5
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	bl	ExtractKvPixelParameters
	.loc 1 248 5
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	bl	ExtractCILCParameters
	.loc 1 249 13
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	bl	ExtractDeviatingPixels
	str	r0, [r7, #12]
	.loc 1 251 12
	ldr	r3, [r7, #12]
	.loc 1 253 1
	mov	r0, r3
	adds	r7, r7, #16
	.cfi_def_cfa_offset 8
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE6:
	.size	MLX90640_ExtractParameters, .-MLX90640_ExtractParameters
	.section	.text.MLX90640_SetResolution,"ax",%progbits
	.align	1
	.global	MLX90640_SetResolution
	.syntax unified
	.thumb
	.thumb_func
	.type	MLX90640_SetResolution, %function
MLX90640_SetResolution:
.LFB7:
	.loc 1 258 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #16
	.cfi_def_cfa_offset 24
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	mov	r3, r0
	mov	r2, r1
	strb	r3, [r7, #7]
	mov	r3, r2
	strb	r3, [r7, #6]
	.loc 1 264 35
	ldrb	r3, [r7, #6]	@ zero_extendqisi2
	uxth	r3, r3
	.loc 1 264 11
	lsls	r3, r3, #10
	strh	r3, [r7, #10]	@ movhi
	.loc 1 265 11
	ldrh	r3, [r7, #10]	@ movhi
	and	r3, r3, #3072
	strh	r3, [r7, #10]	@ movhi
	.loc 1 267 13
	add	r3, r7, #8
	ldrb	r0, [r7, #7]	@ zero_extendqisi2
	movs	r2, #1
	movw	r1, #32781
	bl	MLX90640_I2CRead
	str	r0, [r7, #12]
	.loc 1 269 7
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L61
	.loc 1 271 35
	ldrh	r3, [r7, #8]
	bic	r3, r3, #3072
	uxth	r2, r3
	.loc 1 271 15
	ldrh	r3, [r7, #10]	@ movhi
	orrs	r3, r3, r2
	strh	r3, [r7, #10]	@ movhi
	.loc 1 272 17
	ldrh	r2, [r7, #10]
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	movw	r1, #32781
	mov	r0, r3
	bl	MLX90640_I2CWrite
	str	r0, [r7, #12]
.L61:
	.loc 1 275 12
	ldr	r3, [r7, #12]
	.loc 1 276 1
	mov	r0, r3
	adds	r7, r7, #16
	.cfi_def_cfa_offset 8
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE7:
	.size	MLX90640_SetResolution, .-MLX90640_SetResolution
	.section	.text.MLX90640_GetCurResolution,"ax",%progbits
	.align	1
	.global	MLX90640_GetCurResolution
	.syntax unified
	.thumb
	.thumb_func
	.type	MLX90640_GetCurResolution, %function
MLX90640_GetCurResolution:
.LFB8:
	.loc 1 281 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #24
	.cfi_def_cfa_offset 32
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	mov	r3, r0
	strb	r3, [r7, #7]
	.loc 1 286 13
	add	r3, r7, #14
	ldrb	r0, [r7, #7]	@ zero_extendqisi2
	movs	r2, #1
	movw	r1, #32781
	bl	MLX90640_I2CRead
	str	r0, [r7, #20]
	.loc 1 287 7
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L64
	.loc 1 289 16
	ldr	r3, [r7, #20]
	b	.L66
.L64:
	.loc 1 291 71
	ldrh	r3, [r7, #14]
	lsrs	r3, r3, #10
	.loc 1 291 19
	and	r3, r3, #3
	str	r3, [r7, #16]
	.loc 1 293 12
	ldr	r3, [r7, #16]
.L66:
	.loc 1 294 1 discriminator 1
	mov	r0, r3
	adds	r7, r7, #24
	.cfi_def_cfa_offset 8
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE8:
	.size	MLX90640_GetCurResolution, .-MLX90640_GetCurResolution
	.section	.text.MLX90640_SetRefreshRate,"ax",%progbits
	.align	1
	.global	MLX90640_SetRefreshRate
	.syntax unified
	.thumb
	.thumb_func
	.type	MLX90640_SetRefreshRate, %function
MLX90640_SetRefreshRate:
.LFB9:
	.loc 1 299 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #16
	.cfi_def_cfa_offset 24
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	mov	r3, r0
	mov	r2, r1
	strb	r3, [r7, #7]
	mov	r3, r2
	strb	r3, [r7, #6]
	.loc 1 305 36
	ldrb	r3, [r7, #6]	@ zero_extendqisi2
	uxth	r3, r3
	.loc 1 305 11
	lsls	r3, r3, #7
	strh	r3, [r7, #10]	@ movhi
	.loc 1 306 11
	ldrh	r3, [r7, #10]	@ movhi
	and	r3, r3, #896
	strh	r3, [r7, #10]	@ movhi
	.loc 1 308 13
	add	r3, r7, #8
	ldrb	r0, [r7, #7]	@ zero_extendqisi2
	movs	r2, #1
	movw	r1, #32781
	bl	MLX90640_I2CRead
	str	r0, [r7, #12]
	.loc 1 309 7
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L68
	.loc 1 311 35
	ldrh	r3, [r7, #8]
	bic	r3, r3, #896
	uxth	r2, r3
	.loc 1 311 15
	ldrh	r3, [r7, #10]	@ movhi
	orrs	r3, r3, r2
	strh	r3, [r7, #10]	@ movhi
	.loc 1 312 17
	ldrh	r2, [r7, #10]
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	movw	r1, #32781
	mov	r0, r3
	bl	MLX90640_I2CWrite
	str	r0, [r7, #12]
.L68:
	.loc 1 315 12
	ldr	r3, [r7, #12]
	.loc 1 316 1
	mov	r0, r3
	adds	r7, r7, #16
	.cfi_def_cfa_offset 8
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE9:
	.size	MLX90640_SetRefreshRate, .-MLX90640_SetRefreshRate
	.section	.text.MLX90640_GetRefreshRate,"ax",%progbits
	.align	1
	.global	MLX90640_GetRefreshRate
	.syntax unified
	.thumb
	.thumb_func
	.type	MLX90640_GetRefreshRate, %function
MLX90640_GetRefreshRate:
.LFB10:
	.loc 1 321 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #24
	.cfi_def_cfa_offset 32
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	mov	r3, r0
	strb	r3, [r7, #7]
	.loc 1 326 13
	add	r3, r7, #14
	ldrb	r0, [r7, #7]	@ zero_extendqisi2
	movs	r2, #1
	movw	r1, #32781
	bl	MLX90640_I2CRead
	str	r0, [r7, #20]
	.loc 1 327 7
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L71
	.loc 1 329 16
	ldr	r3, [r7, #20]
	b	.L73
.L71:
	.loc 1 331 68
	ldrh	r3, [r7, #14]
	lsrs	r3, r3, #7
	.loc 1 331 17
	and	r3, r3, #7
	str	r3, [r7, #16]
	.loc 1 333 12
	ldr	r3, [r7, #16]
.L73:
	.loc 1 334 1 discriminator 1
	mov	r0, r3
	adds	r7, r7, #24
	.cfi_def_cfa_offset 8
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE10:
	.size	MLX90640_GetRefreshRate, .-MLX90640_GetRefreshRate
	.section	.text.MLX90640_SetInterleavedMode,"ax",%progbits
	.align	1
	.global	MLX90640_SetInterleavedMode
	.syntax unified
	.thumb
	.thumb_func
	.type	MLX90640_SetInterleavedMode, %function
MLX90640_SetInterleavedMode:
.LFB11:
	.loc 1 339 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #16
	.cfi_def_cfa_offset 24
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	mov	r3, r0
	strb	r3, [r7, #7]
	.loc 1 344 13
	add	r3, r7, #8
	ldrb	r0, [r7, #7]	@ zero_extendqisi2
	movs	r2, #1
	movw	r1, #32781
	bl	MLX90640_I2CRead
	str	r0, [r7, #12]
	.loc 1 346 7
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L75
	.loc 1 348 35
	ldrh	r3, [r7, #8]
	.loc 1 348 15
	bic	r3, r3, #4096
	strh	r3, [r7, #10]	@ movhi
	.loc 1 349 17
	ldrh	r2, [r7, #10]
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	movw	r1, #32781
	mov	r0, r3
	bl	MLX90640_I2CWrite
	str	r0, [r7, #12]
.L75:
	.loc 1 352 12
	ldr	r3, [r7, #12]
	.loc 1 353 1
	mov	r0, r3
	adds	r7, r7, #16
	.cfi_def_cfa_offset 8
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE11:
	.size	MLX90640_SetInterleavedMode, .-MLX90640_SetInterleavedMode
	.section	.text.MLX90640_SetChessMode,"ax",%progbits
	.align	1
	.global	MLX90640_SetChessMode
	.syntax unified
	.thumb
	.thumb_func
	.type	MLX90640_SetChessMode, %function
MLX90640_SetChessMode:
.LFB12:
	.loc 1 358 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #16
	.cfi_def_cfa_offset 24
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	mov	r3, r0
	strb	r3, [r7, #7]
	.loc 1 363 13
	add	r3, r7, #8
	ldrb	r0, [r7, #7]	@ zero_extendqisi2
	movs	r2, #1
	movw	r1, #32781
	bl	MLX90640_I2CRead
	str	r0, [r7, #12]
	.loc 1 365 7
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L78
	.loc 1 367 15
	ldrh	r3, [r7, #8]
	orr	r3, r3, #4096
	strh	r3, [r7, #10]	@ movhi
	.loc 1 368 17
	ldrh	r2, [r7, #10]
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	movw	r1, #32781
	mov	r0, r3
	bl	MLX90640_I2CWrite
	str	r0, [r7, #12]
.L78:
	.loc 1 371 12
	ldr	r3, [r7, #12]
	.loc 1 372 1
	mov	r0, r3
	adds	r7, r7, #16
	.cfi_def_cfa_offset 8
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE12:
	.size	MLX90640_SetChessMode, .-MLX90640_SetChessMode
	.section	.text.MLX90640_GetCurMode,"ax",%progbits
	.align	1
	.global	MLX90640_GetCurMode
	.syntax unified
	.thumb
	.thumb_func
	.type	MLX90640_GetCurMode, %function
MLX90640_GetCurMode:
.LFB13:
	.loc 1 377 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #24
	.cfi_def_cfa_offset 32
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	mov	r3, r0
	strb	r3, [r7, #7]
	.loc 1 382 13
	add	r3, r7, #14
	ldrb	r0, [r7, #7]	@ zero_extendqisi2
	movs	r2, #1
	movw	r1, #32781
	bl	MLX90640_I2CRead
	str	r0, [r7, #20]
	.loc 1 383 7
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L81
	.loc 1 385 16
	ldr	r3, [r7, #20]
	b	.L83
.L81:
	.loc 1 387 50
	ldrh	r3, [r7, #14]
	lsrs	r3, r3, #12
	.loc 1 387 13
	and	r3, r3, #1
	str	r3, [r7, #16]
	.loc 1 389 12
	ldr	r3, [r7, #16]
.L83:
	.loc 1 390 1 discriminator 1
	mov	r0, r3
	adds	r7, r7, #24
	.cfi_def_cfa_offset 8
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE13:
	.size	MLX90640_GetCurMode, .-MLX90640_GetCurMode
	.global	__aeabi_f2d
	.global	__aeabi_dadd
	.global	__aeabi_d2f
	.global	__aeabi_ui2d
	.global	__aeabi_dsub
	.global	__aeabi_dmul
	.global	__aeabi_i2d
	.global	__aeabi_ddiv
	.section	.text.MLX90640_CalculateTo,"ax",%progbits
	.align	1
	.global	MLX90640_CalculateTo
	.syntax unified
	.thumb
	.thumb_func
	.type	MLX90640_CalculateTo, %function
MLX90640_CalculateTo:
.LFB14:
	.loc 1 395 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 128
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 32
	.cfi_offset 4, -32
	.cfi_offset 5, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	sub	sp, sp, #128
	.cfi_def_cfa_offset 160
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #20]
	str	r1, [r7, #16]
	vstr.32	s0, [r7, #12]
	vstr.32	s1, [r7, #8]
	str	r2, [r7, #4]
	.loc 1 421 13
	ldr	r3, [r7, #20]
	ldrh	r3, [r3, #1666]	@ movhi
	strh	r3, [r7, #114]	@ movhi
	.loc 1 422 11
	ldr	r1, [r7, #16]
	ldr	r0, [r7, #20]
	bl	MLX90640_GetVdd
	vstr.32	s0, [r7, #108]
	.loc 1 423 10
	ldr	r1, [r7, #16]
	ldr	r0, [r7, #20]
	bl	MLX90640_GetTa
	vstr.32	s0, [r7, #104]
	.loc 1 425 15
	ldr	r0, [r7, #104]	@ float
	bl	__aeabi_f2d
	adr	r3, .L112+24
	ldrd	r2, [r3]
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	.loc 1 425 9
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_d2f
	mov	r3, r0	@ float
	str	r3, [r7, #100]	@ float
	.loc 1 426 9
	vldr.32	s15, [r7, #100]
	vmul.f32	s15, s15, s15
	vstr.32	s15, [r7, #100]
	.loc 1 427 9
	vldr.32	s15, [r7, #100]
	vmul.f32	s15, s15, s15
	vstr.32	s15, [r7, #100]
	.loc 1 428 15
	ldr	r0, [r7, #8]	@ float
	bl	__aeabi_f2d
	adr	r3, .L112+24
	ldrd	r2, [r3]
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	.loc 1 428 9
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_d2f
	mov	r3, r0	@ float
	str	r3, [r7, #96]	@ float
	.loc 1 429 9
	vldr.32	s15, [r7, #96]
	vmul.f32	s15, s15, s15
	vstr.32	s15, [r7, #96]
	.loc 1 430 9
	vldr.32	s15, [r7, #96]
	vmul.f32	s15, s15, s15
	vstr.32	s15, [r7, #96]
	.loc 1 431 22
	vldr.32	s14, [r7, #96]
	vldr.32	s15, [r7, #100]
	vsub.f32	s13, s14, s15
	.loc 1 431 27
	vldr.32	s14, [r7, #12]
	vdiv.f32	s15, s13, s14
	.loc 1 431 10
	vldr.32	s14, [r7, #96]
	vsub.f32	s15, s14, s15
	vstr.32	s15, [r7, #92]
	.loc 1 433 37
	ldr	r3, [r7, #16]
	ldrb	r3, [r3, #3916]	@ zero_extendqisi2
	.loc 1 433 16
	mov	r0, r3
	bl	__aeabi_ui2d
	mov	r2, r0
	mov	r3, r1
	vmov	d1, r2, r3
	vldr.64	d0, .L112
	bl	pow
	vmov	r2, r3, d0
	.loc 1 433 14
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_d2f
	mov	r3, r0	@ float
	str	r3, [r7, #88]	@ float
	.loc 1 434 36
	ldr	r3, [r7, #16]
	add	r3, r3, #4096
	ldrb	r3, [r3, #589]	@ zero_extendqisi2
	.loc 1 434 15
	mov	r0, r3
	bl	__aeabi_ui2d
	mov	r2, r0
	mov	r3, r1
	vmov	d1, r2, r3
	vldr.64	d0, .L112
	bl	pow
	vmov	r2, r3, d0
	.loc 1 434 13
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_d2f
	mov	r3, r0	@ float
	str	r3, [r7, #84]	@ float
	.loc 1 435 39
	ldr	r3, [r7, #16]
	ldrb	r3, [r3, #1610]	@ zero_extendqisi2
	.loc 1 435 18
	mov	r0, r3
	bl	__aeabi_ui2d
	mov	r2, r0
	mov	r3, r1
	vmov	d1, r2, r3
	vldr.64	d0, .L112
	bl	pow
	vmov	r2, r3, d0
	.loc 1 435 16
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_d2f
	mov	r3, r0	@ float
	str	r3, [r7, #80]	@ float
	.loc 1 437 42
	ldr	r3, [r7, #16]
	vldr.32	s15, [r3, #44]
	.loc 1 437 46
	vldr.32	s14, .L112+16
	vmul.f32	s15, s15, s14
	.loc 1 437 28
	vmov.f32	s14, #1.0e+0
	vadd.f32	s14, s15, s14
	.loc 1 437 23
	vmov.f32	s13, #1.0e+0
	vdiv.f32	s15, s13, s14
	.loc 1 437 19
	vstr.32	s15, [r7, #28]
	.loc 1 438 19
	mov	r3, #1065353216
	str	r3, [r7, #32]	@ float
	.loc 1 439 38
	ldr	r3, [r7, #16]
	vldr.32	s14, [r3, #48]
	.loc 1 439 54
	ldr	r3, [r7, #16]
	ldrsh	r3, [r3, #68]
	.loc 1 439 42
	vmov	s15, r3	@ int
	vcvt.f32.s32	s15, s15
	vmul.f32	s15, s14, s15
	.loc 1 439 24
	vmov.f32	s14, #1.0e+0
	vadd.f32	s15, s15, s14
	.loc 1 439 19
	vstr.32	s15, [r7, #36]
	.loc 1 440 31
	vldr.32	s14, [r7, #36]
	.loc 1 440 54
	ldr	r3, [r7, #16]
	vldr.32	s13, [r3, #52]
	.loc 1 440 71
	ldr	r3, [r7, #16]
	ldrsh	r3, [r3, #70]
	mov	r2, r3
	.loc 1 440 87
	ldr	r3, [r7, #16]
	ldrsh	r3, [r3, #68]
	.loc 1 440 75
	subs	r3, r2, r3
	.loc 1 440 58
	vmov	s15, r3	@ int
	vcvt.f32.s32	s15, s15
	vmul.f32	s15, s13, s15
	.loc 1 440 40
	vmov.f32	s13, #1.0e+0
	vadd.f32	s15, s15, s13
	.loc 1 440 35
	vmul.f32	s15, s14, s15
	.loc 1 440 19
	vstr.32	s15, [r7, #40]
	.loc 1 444 25
	ldr	r3, [r7, #16]
	ldrsh	r3, [r3, #20]
	.loc 1 444 12
	vmov	s15, r3	@ int
	vcvt.f32.s32	s13, s15
	.loc 1 444 54
	ldr	r3, [r7, #20]
	addw	r3, r3, #1556
	ldrh	r3, [r3]
	.loc 1 444 36
	sxth	r3, r3
	.loc 1 444 34
	vmov	s15, r3	@ int
	vcvt.f32.s32	s14, s15
	.loc 1 444 10
	vdiv.f32	s15, s13, s14
	vstr.32	s15, [r7, #76]
	.loc 1 447 22
	ldr	r3, [r7, #20]
	add	r3, r3, #1664
	ldrh	r3, [r3]
	.loc 1 447 45
	lsrs	r3, r3, #5
	uxtb	r3, r3
	.loc 1 447 10
	bic	r3, r3, #127
	strb	r3, [r7, #75]
	.loc 1 449 37
	ldr	r3, [r7, #20]
	add	r3, r3, #1552
	ldrh	r3, [r3]
	.loc 1 449 19
	sxth	r3, r3
	.loc 1 449 43
	vmov	s15, r3	@ int
	vcvt.f32.s32	s14, s15
	vldr.32	s15, [r7, #76]
	vmul.f32	s15, s14, s15
	.loc 1 449 17
	vstr.32	s15, [r7, #44]
	.loc 1 450 37
	ldr	r3, [r7, #20]
	add	r3, r3, #1616
	ldrh	r3, [r3]
	.loc 1 450 19
	sxth	r3, r3
	.loc 1 450 43
	vmov	s15, r3	@ int
	vcvt.f32.s32	s14, s15
	vldr.32	s15, [r7, #76]
	vmul.f32	s15, s14, s15
	.loc 1 450 17
	vstr.32	s15, [r7, #48]
	.loc 1 452 27
	ldr	r3, [r7, #44]	@ float
	mov	r0, r3	@ float
	bl	__aeabi_f2d
	mov	r4, r0
	mov	r5, r1
	.loc 1 452 49
	ldr	r3, [r7, #16]
	add	r3, r3, #4096
	ldrsh	r3, [r3, #600]
	.loc 1 452 53
	vmov	s15, r3	@ int
	vcvt.f32.s32	s14, s15
	.loc 1 452 66
	ldr	r3, [r7, #16]
	vldr.32	s13, [r3, #32]
	.loc 1 452 80
	vldr.32	s15, [r7, #104]
	vmov.f32	s12, #2.5e+1
	vsub.f32	s15, s15, s12
	.loc 1 452 74
	vmul.f32	s15, s13, s15
	.loc 1 452 58
	vmov.f32	s13, #1.0e+0
	vadd.f32	s15, s15, s13
	.loc 1 452 53
	vmul.f32	s15, s14, s15
	vmov	r0, s15
	bl	__aeabi_f2d
	mov	r8, r0
	mov	r9, r1
	.loc 1 452 100
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #28]	@ float
	mov	r0, r3	@ float
	bl	__aeabi_f2d
	mov	r10, r0
	mov	fp, r1
	.loc 1 452 114
	ldr	r0, [r7, #108]	@ float
	bl	__aeabi_f2d
	adr	r3, .L112+8
	ldrd	r2, [r3]
	bl	__aeabi_dsub
	mov	r2, r0
	mov	r3, r1
	.loc 1 452 107
	mov	r0, r10
	mov	r1, fp
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	.loc 1 452 92
	mov	r2, #0
	ldr	r3, .L112+20
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	.loc 1 452 87
	mov	r0, r8
	mov	r1, r9
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	.loc 1 452 31
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dsub
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_d2f
	mov	r3, r0	@ float
	.loc 1 452 17
	str	r3, [r7, #44]	@ float
	.loc 1 453 23
	ldr	r3, [r7, #16]
	ldrb	r3, [r3, #37]	@ zero_extendqisi2
	.loc 1 453 7
	ldrb	r2, [r7, #75]	@ zero_extendqisi2
	cmp	r2, r3
	bne	.L85
	.loc 1 455 31
	ldr	r3, [r7, #48]	@ float
	mov	r0, r3	@ float
	bl	__aeabi_f2d
	mov	r4, r0
	mov	r5, r1
	.loc 1 455 53
	ldr	r3, [r7, #16]
	add	r3, r3, #4096
	ldrsh	r3, [r3, #602]
	.loc 1 455 57
	vmov	s15, r3	@ int
	vcvt.f32.s32	s14, s15
	.loc 1 455 70
	ldr	r3, [r7, #16]
	vldr.32	s13, [r3, #32]
	.loc 1 455 84
	vldr.32	s15, [r7, #104]
	vmov.f32	s12, #2.5e+1
	vsub.f32	s15, s15, s12
	.loc 1 455 78
	vmul.f32	s15, s13, s15
	.loc 1 455 62
	vmov.f32	s13, #1.0e+0
	vadd.f32	s15, s15, s13
	.loc 1 455 57
	vmul.f32	s15, s14, s15
	vmov	r0, s15
	bl	__aeabi_f2d
	mov	r8, r0
	mov	r9, r1
	.loc 1 455 104
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #28]	@ float
	mov	r0, r3	@ float
	bl	__aeabi_f2d
	mov	r10, r0
	mov	fp, r1
	.loc 1 455 118
	ldr	r0, [r7, #108]	@ float
	bl	__aeabi_f2d
	adr	r3, .L112+8
	ldrd	r2, [r3]
	bl	__aeabi_dsub
	mov	r2, r0
	mov	r3, r1
	.loc 1 455 111
	mov	r0, r10
	mov	r1, fp
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	.loc 1 455 96
	mov	r2, #0
	ldr	r3, .L112+20
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	.loc 1 455 91
	mov	r0, r8
	mov	r1, r9
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	.loc 1 455 35
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dsub
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_d2f
	mov	r3, r0	@ float
	.loc 1 455 21
	str	r3, [r7, #48]	@ float
	b	.L86
.L113:
	.align	3
.L112:
	.word	0
	.word	1073741824
	.word	1717986918
	.word	1074423398
	.word	1109393408
	.word	1072693248
	.word	1717986918
	.word	1081152102
.L85:
	.loc 1 459 29
	ldr	r3, [r7, #48]	@ float
	mov	r0, r3	@ float
	bl	__aeabi_f2d
	mov	r4, r0
	mov	r5, r1
	.loc 1 459 52
	ldr	r3, [r7, #16]
	add	r3, r3, #4096
	ldrsh	r3, [r3, #602]
	.loc 1 459 56
	vmov	s15, r3	@ int
	vcvt.f32.s32	s14, s15
	.loc 1 459 74
	ldr	r3, [r7, #16]
	add	r3, r3, #4096
	vldr.32	s15, [r3, #604]
	.loc 1 459 56
	vadd.f32	s14, s14, s15
	.loc 1 459 92
	ldr	r3, [r7, #16]
	vldr.32	s13, [r3, #32]
	.loc 1 459 106
	vldr.32	s15, [r7, #104]
	vmov.f32	s12, #2.5e+1
	vsub.f32	s15, s15, s12
	.loc 1 459 100
	vmul.f32	s15, s13, s15
	.loc 1 459 84
	vmov.f32	s13, #1.0e+0
	vadd.f32	s15, s15, s13
	.loc 1 459 79
	vmul.f32	s15, s14, s15
	vmov	r0, s15
	bl	__aeabi_f2d
	mov	r8, r0
	mov	r9, r1
	.loc 1 459 126
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #28]	@ float
	mov	r0, r3	@ float
	bl	__aeabi_f2d
	mov	r10, r0
	mov	fp, r1
	.loc 1 459 140
	ldr	r0, [r7, #108]	@ float
	bl	__aeabi_f2d
	adr	r3, .L114
	ldrd	r2, [r3]
	bl	__aeabi_dsub
	mov	r2, r0
	mov	r3, r1
	.loc 1 459 133
	mov	r0, r10
	mov	r1, fp
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	.loc 1 459 118
	mov	r2, #0
	ldr	r3, .L114+8
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	.loc 1 459 113
	mov	r0, r8
	mov	r1, r9
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	.loc 1 459 33
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dsub
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_d2f
	mov	r3, r0	@ float
	.loc 1 459 19
	str	r3, [r7, #48]	@ float
.L86:
.LBB9:
	.loc 1 462 14
	movs	r3, #0
	str	r3, [r7, #116]
	.loc 1 462 5
	b	.L87
.L105:
	.loc 1 464 33
	ldr	r3, [r7, #116]
	cmp	r3, #0
	bge	.L88
	adds	r3, r3, #31
.L88:
	asrs	r3, r3, #5
	.loc 1 464 38
	uxtb	r2, r3
	.loc 1 464 53
	ldr	r3, [r7, #116]
	cmp	r3, #0
	bge	.L89
	adds	r3, r3, #63
.L89:
	asrs	r3, r3, #6
	.loc 1 464 38
	uxtb	r3, r3
	lsls	r3, r3, #1
	uxtb	r3, r3
	subs	r3, r2, r3
	uxtb	r3, r3
	.loc 1 464 19
	strb	r3, [r7, #74]
	.loc 1 465 49
	ldr	r3, [r7, #116]
	cmp	r3, #0
	and	r3, r3, #1
	it	lt
	rsblt	r3, r3, #0
	.loc 1 465 34
	sxtb	r2, r3
	.loc 1 465 22
	ldrb	r3, [r7, #74]
	eors	r3, r3, r2
	strb	r3, [r7, #73]
	.loc 1 466 43
	ldr	r3, [r7, #116]
	adds	r3, r3, #2
	.loc 1 466 48
	cmp	r3, #0
	bge	.L90
	adds	r3, r3, #3
.L90:
	asrs	r3, r3, #2
	mov	r2, r3
	.loc 1 466 67
	ldr	r3, [r7, #116]
	adds	r3, r3, #3
	.loc 1 466 72
	cmp	r3, #0
	bge	.L91
	adds	r3, r3, #3
.L91:
	asrs	r3, r3, #2
	rsbs	r3, r3, #0
	.loc 1 466 52
	add	r2, r2, r3
	.loc 1 466 91
	ldr	r3, [r7, #116]
	adds	r3, r3, #1
	.loc 1 466 96
	cmp	r3, #0
	bge	.L92
	adds	r3, r3, #3
.L92:
	asrs	r3, r3, #2
	.loc 1 466 76
	add	r2, r2, r3
	.loc 1 466 114
	ldr	r3, [r7, #116]
	cmp	r3, #0
	bge	.L93
	adds	r3, r3, #3
.L93:
	asrs	r3, r3, #2
	rsbs	r3, r3, #0
	.loc 1 466 100
	add	r3, r3, r2
	.loc 1 466 27
	uxtb	r2, r3
	.loc 1 466 128
	ldrsb	r3, [r7, #74]
	lsls	r3, r3, #1
	.loc 1 466 124
	rsb	r3, r3, #1
	.loc 1 466 27
	uxtb	r3, r3
	smulbb	r3, r2, r3
	uxtb	r3, r3
	strb	r3, [r7, #72]
	.loc 1 468 11
	ldrb	r3, [r7, #75]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L94
	.loc 1 470 19
	ldrb	r3, [r7, #74]
	strb	r3, [r7, #123]
	b	.L95
.L115:
	.align	3
.L114:
	.word	1717986918
	.word	1074423398
	.word	1072693248
.L94:
	.loc 1 474 19
	ldrb	r3, [r7, #73]
	strb	r3, [r7, #123]
.L95:
	.loc 1 477 20
	ldrsb	r3, [r7, #123]
	.loc 1 477 32
	ldr	r2, [r7, #20]
	addw	r2, r2, #1666
	ldrh	r2, [r2]
	.loc 1 477 11
	cmp	r3, r2
	bne	.L96
	.loc 1 479 40
	ldr	r3, [r7, #116]
	lsls	r3, r3, #1
	ldr	r2, [r7, #20]
	add	r3, r3, r2
	ldrh	r3, [r3]
	.loc 1 479 22
	sxth	r3, r3
	.loc 1 479 54
	vmov	s15, r3	@ int
	vcvt.f32.s32	s15, s15
	.loc 1 479 20
	vldr.32	s14, [r7, #76]
	vmul.f32	s15, s14, s15
	vstr.32	s15, [r7, #124]
	.loc 1 481 30
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #116]
	add	r3, r3, r2
	addw	r3, r3, #3148
	ldrsb	r3, [r3]
	.loc 1 481 43
	vmov	s15, r3	@ int
	vcvt.f32.s32	s13, s15
	.loc 1 481 17
	vldr.32	s14, [r7, #88]
	vdiv.f32	s15, s13, s14
	vstr.32	s15, [r7, #68]
	.loc 1 482 28
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #116]
	add	r3, r3, r2
	addw	r3, r3, #3917
	ldrsb	r3, [r3]
	.loc 1 482 41
	vmov	s15, r3	@ int
	vcvt.f32.s32	s13, s15
	.loc 1 482 16
	vldr.32	s14, [r7, #84]
	vdiv.f32	s15, s13, s14
	vstr.32	s15, [r7, #64]
	.loc 1 483 29
	ldr	r0, [r7, #124]	@ float
	bl	__aeabi_f2d
	mov	r4, r0
	mov	r5, r1
	.loc 1 483 45
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #116]
	add	r3, r3, #804
	lsls	r3, r3, #1
	add	r3, r3, r2
	ldrsh	r3, [r3, #4]
	.loc 1 483 58
	vmov	s15, r3	@ int
	vcvt.f32.s32	s14, s15
	.loc 1 483 72
	vldr.32	s15, [r7, #104]
	vmov.f32	s13, #2.5e+1
	vsub.f32	s13, s15, s13
	.loc 1 483 67
	vldr.32	s15, [r7, #68]
	vmul.f32	s15, s13, s15
	.loc 1 483 62
	vmov.f32	s13, #1.0e+0
	vadd.f32	s15, s15, s13
	.loc 1 483 58
	vmul.f32	s15, s14, s15
	vmov	r0, s15
	bl	__aeabi_f2d
	mov	r8, r0
	mov	r9, r1
	.loc 1 483 86
	ldr	r0, [r7, #64]	@ float
	bl	__aeabi_f2d
	mov	r10, r0
	mov	fp, r1
	.loc 1 483 92
	ldr	r0, [r7, #108]	@ float
	bl	__aeabi_f2d
	adr	r3, .L116+20
	ldrd	r2, [r3]
	bl	__aeabi_dsub
	mov	r2, r0
	mov	r3, r1
	.loc 1 483 86
	mov	r0, r10
	mov	r1, fp
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	.loc 1 483 82
	mov	r2, #0
	ldr	r3, .L116+16
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	.loc 1 483 78
	mov	r0, r8
	mov	r1, r9
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	.loc 1 483 29
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dsub
	mov	r2, r0
	mov	r3, r1
	.loc 1 483 20
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_d2f
	mov	r3, r0	@ float
	str	r3, [r7, #124]	@ float
	.loc 1 485 30
	ldr	r3, [r7, #16]
	ldrb	r3, [r3, #37]	@ zero_extendqisi2
	.loc 1 485 15
	ldrb	r2, [r7, #75]	@ zero_extendqisi2
	cmp	r2, r3
	beq	.L97
	.loc 1 487 49
	ldr	r3, [r7, #16]
	add	r3, r3, #4096
	vldr.32	s14, [r3, #612]
	.loc 1 487 58
	ldrsb	r3, [r7, #74]
	lsls	r3, r3, #1
	.loc 1 487 70
	subs	r3, r3, #1
	.loc 1 487 53
	vmov	s15, r3	@ int
	vcvt.f32.s32	s15, s15
	vmul.f32	s14, s14, s15
	.loc 1 487 31
	vldr.32	s15, [r7, #124]
	vadd.f32	s14, s14, s15
	.loc 1 487 93
	ldr	r3, [r7, #16]
	add	r3, r3, #4096
	vldr.32	s13, [r3, #608]
	.loc 1 487 97
	ldrsb	r3, [r7, #72]
	vmov	s15, r3	@ int
	vcvt.f32.s32	s15, s15
	vmul.f32	s15, s13, s15
	.loc 1 487 22
	vsub.f32	s15, s14, s15
	vstr.32	s15, [r7, #124]
.L97:
	.loc 1 490 37
	ldr	r3, [r7, #16]
	vldr.32	s14, [r3, #24]
	.loc 1 490 53
	ldrh	r3, [r7, #114]
	lsls	r3, r3, #2
	adds	r3, r3, #128
	add	r3, r3, r7
	subs	r3, r3, #84
	vldr.32	s15, [r3]
	.loc 1 490 43
	vmul.f32	s15, s14, s15
	.loc 1 490 20
	vldr.32	s14, [r7, #124]
	vsub.f32	s15, s14, s15
	vstr.32	s15, [r7, #124]
	.loc 1 491 20
	vldr.32	s13, [r7, #124]
	vldr.32	s14, [r7, #12]
	vdiv.f32	s15, s13, s14
	vstr.32	s15, [r7, #124]
	.loc 1 493 40
	ldr	r0, [r7, #80]	@ float
	bl	__aeabi_f2d
	adr	r3, .L116
	ldrd	r2, [r3]
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	mov	r4, r2
	mov	r5, r3
	.loc 1 493 65
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #116]
	adds	r3, r3, #36
	lsls	r3, r3, #1
	add	r3, r3, r2
	ldrh	r3, [r3, #2]
	.loc 1 493 51
	mov	r0, r3
	bl	__aeabi_i2d
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_ddiv
	mov	r2, r0
	mov	r3, r1
	.loc 1 493 30
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_d2f
	mov	r3, r0	@ float
	str	r3, [r7, #60]	@ float
	.loc 1 494 60
	ldr	r3, [r7, #16]
	vldr.32	s14, [r3, #40]
	.loc 1 494 73
	vldr.32	s15, [r7, #104]
	vmov.f32	s13, #2.5e+1
	vsub.f32	s15, s15, s13
	.loc 1 494 67
	vmul.f32	s15, s14, s15
	.loc 1 494 52
	vmov.f32	s14, #1.0e+0
	vadd.f32	s15, s15, s14
	.loc 1 494 30
	vldr.32	s14, [r7, #60]
	vmul.f32	s15, s14, s15
	vstr.32	s15, [r7, #60]
	.loc 1 496 35
	vldr.32	s15, [r7, #60]
	vmul.f32	s14, s15, s15
	.loc 1 496 54
	vldr.32	s15, [r7, #60]
	vmul.f32	s14, s14, s15
	.loc 1 496 102
	vldr.32	s13, [r7, #60]
	vldr.32	s15, [r7, #92]
	vmul.f32	s13, s13, s15
	.loc 1 496 83
	vldr.32	s15, [r7, #124]
	vadd.f32	s15, s13, s15
	.loc 1 496 16
	vmul.f32	s15, s14, s15
	vstr.32	s15, [r7, #56]
	.loc 1 497 18
	ldr	r0, [r7, #56]	@ float
	bl	__aeabi_f2d
	mov	r2, r0
	mov	r3, r1
	vmov	d0, r2, r3
	bl	sqrt
	vmov.f32	s14, s0
	vmov.f32	s15, s1
	vmov.f32	s0, s14
	vmov.f32	s1, s15
	bl	sqrt
	vmov	r4, r5, d0
	.loc 1 497 47
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #48]	@ float
	mov	r0, r3	@ float
	bl	__aeabi_f2d
	mov	r2, r0
	mov	r3, r1
	.loc 1 497 33
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	.loc 1 497 16
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_d2f
	mov	r3, r0	@ float
	str	r3, [r7, #56]	@ float
	.loc 1 499 34
	ldr	r0, [r7, #124]	@ float
	bl	__aeabi_f2d
	mov	r4, r0
	mov	r5, r1
	.loc 1 499 53
	ldr	r0, [r7, #60]	@ float
	bl	__aeabi_f2d
	mov	r8, r0
	mov	r9, r1
	.loc 1 499 72
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #48]	@ float
	mov	r0, r3	@ float
	bl	__aeabi_f2d
	.loc 1 499 76
	adr	r3, .L116+8
	ldrd	r2, [r3]
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	.loc 1 499 58
	mov	r0, #0
	ldr	r1, .L116+16
	bl	__aeabi_dsub
	mov	r2, r0
	mov	r3, r1
	.loc 1 499 53
	mov	r0, r8
	mov	r1, r9
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	mov	r8, r2
	mov	r9, r3
	.loc 1 499 86
	ldr	r0, [r7, #56]	@ float
	bl	__aeabi_f2d
	mov	r2, r0
	mov	r3, r1
	mov	r0, r8
	mov	r1, r9
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	.loc 1 499 34
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_ddiv
	mov	r2, r0
	mov	r3, r1
	mov	r4, r2
	mov	r5, r3
	.loc 1 499 18
	ldr	r0, [r7, #92]	@ float
	bl	__aeabi_f2d
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	vmov	d7, r2, r3
	vmov.f32	s0, s14
	vmov.f32	s1, s15
	bl	sqrt
	vmov.f32	s14, s0
	vmov.f32	s15, s1
	vmov.f32	s0, s14
	vmov.f32	s1, s15
	bl	sqrt
	vmov	r0, r1, d0
	.loc 1 499 101
	adr	r3, .L116+8
	ldrd	r2, [r3]
	bl	__aeabi_dsub
	mov	r2, r0
	mov	r3, r1
	.loc 1 499 16
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_d2f
	mov	r3, r0	@ float
	str	r3, [r7, #52]	@ float
	.loc 1 501 31
	ldr	r3, [r7, #16]
	ldrsh	r3, [r3, #66]
	.loc 1 501 19
	vmov	s15, r3	@ int
	vcvt.f32.s32	s15, s15
	.loc 1 501 15
	vldr.32	s14, [r7, #52]
	vcmpe.f32	s14, s15
	vmrs	APSR_nzcv, FPSCR
	bpl	.L109
	.loc 1 503 23
	movs	r3, #0
	strb	r3, [r7, #122]
	b	.L100
.L109:
	.loc 1 505 36
	ldr	r3, [r7, #16]
	ldrsh	r3, [r3, #68]
	.loc 1 505 24
	vmov	s15, r3	@ int
	vcvt.f32.s32	s15, s15
	.loc 1 505 20
	vldr.32	s14, [r7, #52]
	vcmpe.f32	s14, s15
	vmrs	APSR_nzcv, FPSCR
	bpl	.L110
	.loc 1 507 23
	movs	r3, #1
	strb	r3, [r7, #122]
	b	.L100
.L110:
	.loc 1 509 36
	ldr	r3, [r7, #16]
	ldrsh	r3, [r3, #70]
	.loc 1 509 24
	vmov	s15, r3	@ int
	vcvt.f32.s32	s15, s15
	.loc 1 509 20
	vldr.32	s14, [r7, #52]
	vcmpe.f32	s14, s15
	vmrs	APSR_nzcv, FPSCR
	bpl	.L111
	.loc 1 511 23
	movs	r3, #2
	strb	r3, [r7, #122]
	b	.L100
.L117:
	.align	3
.L116:
	.word	-1598689907
	.word	1051772663
	.word	1717986918
	.word	1081152102
	.word	1072693248
	.word	1717986918
	.word	1074423398
.L111:
	.loc 1 515 23
	movs	r3, #3
	strb	r3, [r7, #122]
.L100:
	.loc 1 518 67
	ldrsb	r3, [r7, #122]
	lsls	r3, r3, #2
	adds	r3, r3, #128
	add	r3, r3, r7
	subs	r3, r3, #100
	vldr.32	s14, [r3]
	.loc 1 518 55
	vldr.32	s15, [r7, #60]
	vmul.f32	s14, s14, s15
	.loc 1 518 94
	ldrsb	r3, [r7, #122]
	ldr	r2, [r7, #16]
	adds	r3, r3, #10
	lsls	r3, r3, #2
	add	r3, r3, r2
	adds	r3, r3, #4
	vldr.32	s13, [r3]
	.loc 1 518 120
	ldrsb	r2, [r7, #122]
	ldr	r3, [r7, #16]
	adds	r2, r2, #32
	ldrsh	r3, [r3, r2, lsl #1]
	.loc 1 518 108
	vmov	s15, r3	@ int
	vcvt.f32.s32	s15, s15
	vldr.32	s12, [r7, #52]
	vsub.f32	s15, s12, s15
	.loc 1 518 102
	vmul.f32	s15, s13, s15
	.loc 1 518 80
	vmov.f32	s13, #1.0e+0
	vadd.f32	s15, s15, s13
	.loc 1 518 75
	vmul.f32	s15, s14, s15
	.loc 1 518 35
	vldr.32	s13, [r7, #124]
	vdiv.f32	s14, s13, s15
	.loc 1 518 131
	vldr.32	s15, [r7, #92]
	vadd.f32	s15, s14, s15
	.loc 1 518 18
	vmov	r0, s15
	bl	__aeabi_f2d
	mov	r2, r0
	mov	r3, r1
	vmov	d0, r2, r3
	bl	sqrt
	vmov.f32	s14, s0
	vmov.f32	s15, s1
	vmov.f32	s0, s14
	vmov.f32	s1, s15
	bl	sqrt
	vmov	r0, r1, d0
	.loc 1 518 140
	adr	r3, .L118
	ldrd	r2, [r3]
	bl	__aeabi_dsub
	mov	r2, r0
	mov	r3, r1
	.loc 1 518 16
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_d2f
	mov	r3, r0	@ float
	str	r3, [r7, #52]	@ float
	.loc 1 520 19
	ldr	r3, [r7, #116]
	lsls	r3, r3, #2
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	.loc 1 520 33
	ldr	r2, [r7, #52]	@ float
	str	r2, [r3]	@ float
.L96:
	.loc 1 462 61 discriminator 2
	ldr	r3, [r7, #116]
	adds	r3, r3, #1
	str	r3, [r7, #116]
.L87:
	.loc 1 462 43 discriminator 1
	ldr	r3, [r7, #116]
	cmp	r3, #768
	blt	.L105
.LBE9:
	.loc 1 523 1
	nop
	nop
	adds	r7, r7, #128
	.cfi_def_cfa_offset 32
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r4, r5, r7, r8, r9, r10, fp, pc}
.L119:
	.align	3
.L118:
	.word	1717986918
	.word	1081152102
	.cfi_endproc
.LFE14:
	.size	MLX90640_CalculateTo, .-MLX90640_CalculateTo
	.section	.text.MLX90640_GetImage,"ax",%progbits
	.align	1
	.global	MLX90640_GetImage
	.syntax unified
	.thumb
	.thumb_func
	.type	MLX90640_GetImage, %function
MLX90640_GetImage:
.LFB15:
	.loc 1 528 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 80
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 32
	.cfi_offset 4, -32
	.cfi_offset 5, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	sub	sp, sp, #80
	.cfi_def_cfa_offset 112
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	.loc 1 547 13
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #1666]	@ movhi
	strh	r3, [r7, #66]	@ movhi
	.loc 1 548 11
	ldr	r1, [r7, #8]
	ldr	r0, [r7, #12]
	bl	MLX90640_GetVdd
	vstr.32	s0, [r7, #60]
	.loc 1 549 10
	ldr	r1, [r7, #8]
	ldr	r0, [r7, #12]
	bl	MLX90640_GetTa
	vstr.32	s0, [r7, #56]
	.loc 1 551 37
	ldr	r3, [r7, #8]
	ldrb	r3, [r3, #3916]	@ zero_extendqisi2
	.loc 1 551 16
	mov	r0, r3
	bl	__aeabi_ui2d
	mov	r2, r0
	mov	r3, r1
	vmov	d1, r2, r3
	vldr.64	d0, .L135
	bl	pow
	vmov	r2, r3, d0
	.loc 1 551 14
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_d2f
	mov	r3, r0	@ float
	str	r3, [r7, #52]	@ float
	.loc 1 552 36
	ldr	r3, [r7, #8]
	add	r3, r3, #4096
	ldrb	r3, [r3, #589]	@ zero_extendqisi2
	.loc 1 552 15
	mov	r0, r3
	bl	__aeabi_ui2d
	mov	r2, r0
	mov	r3, r1
	vmov	d1, r2, r3
	vldr.64	d0, .L135
	bl	pow
	vmov	r2, r3, d0
	.loc 1 552 13
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_d2f
	mov	r3, r0	@ float
	str	r3, [r7, #48]	@ float
	.loc 1 556 25
	ldr	r3, [r7, #8]
	ldrsh	r3, [r3, #20]
	.loc 1 556 12
	vmov	s15, r3	@ int
	vcvt.f32.s32	s13, s15
	.loc 1 556 54
	ldr	r3, [r7, #12]
	addw	r3, r3, #1556
	ldrh	r3, [r3]
	.loc 1 556 36
	sxth	r3, r3
	.loc 1 556 34
	vmov	s15, r3	@ int
	vcvt.f32.s32	s14, s15
	.loc 1 556 10
	vdiv.f32	s15, s13, s14
	vstr.32	s15, [r7, #44]
	.loc 1 560 22
	ldr	r3, [r7, #12]
	add	r3, r3, #1664
	ldrh	r3, [r3]
	.loc 1 560 45
	lsrs	r3, r3, #5
	uxtb	r3, r3
	.loc 1 560 10
	bic	r3, r3, #127
	strb	r3, [r7, #43]
	.loc 1 562 37
	ldr	r3, [r7, #12]
	add	r3, r3, #1552
	ldrh	r3, [r3]
	.loc 1 562 19
	sxth	r3, r3
	.loc 1 562 43
	vmov	s15, r3	@ int
	vcvt.f32.s32	s14, s15
	vldr.32	s15, [r7, #44]
	vmul.f32	s15, s14, s15
	.loc 1 562 17
	vstr.32	s15, [r7, #16]
	.loc 1 563 37
	ldr	r3, [r7, #12]
	add	r3, r3, #1616
	ldrh	r3, [r3]
	.loc 1 563 19
	sxth	r3, r3
	.loc 1 563 43
	vmov	s15, r3	@ int
	vcvt.f32.s32	s14, s15
	vldr.32	s15, [r7, #44]
	vmul.f32	s15, s14, s15
	.loc 1 563 17
	vstr.32	s15, [r7, #20]
	.loc 1 565 27
	ldr	r3, [r7, #16]	@ float
	mov	r0, r3	@ float
	bl	__aeabi_f2d
	mov	r4, r0
	mov	r5, r1
	.loc 1 565 49
	ldr	r3, [r7, #8]
	add	r3, r3, #4096
	ldrsh	r3, [r3, #600]
	.loc 1 565 53
	vmov	s15, r3	@ int
	vcvt.f32.s32	s14, s15
	.loc 1 565 66
	ldr	r3, [r7, #8]
	vldr.32	s13, [r3, #32]
	.loc 1 565 80
	vldr.32	s15, [r7, #56]
	vmov.f32	s12, #2.5e+1
	vsub.f32	s15, s15, s12
	.loc 1 565 74
	vmul.f32	s15, s13, s15
	.loc 1 565 58
	vmov.f32	s13, #1.0e+0
	vadd.f32	s15, s15, s13
	.loc 1 565 53
	vmul.f32	s15, s14, s15
	vmov	r0, s15
	bl	__aeabi_f2d
	mov	r8, r0
	mov	r9, r1
	.loc 1 565 100
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #28]	@ float
	mov	r0, r3	@ float
	bl	__aeabi_f2d
	mov	r10, r0
	mov	fp, r1
	.loc 1 565 114
	ldr	r0, [r7, #60]	@ float
	bl	__aeabi_f2d
	adr	r3, .L135+8
	ldrd	r2, [r3]
	bl	__aeabi_dsub
	mov	r2, r0
	mov	r3, r1
	.loc 1 565 107
	mov	r0, r10
	mov	r1, fp
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	.loc 1 565 92
	mov	r2, #0
	ldr	r3, .L135+16
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	.loc 1 565 87
	mov	r0, r8
	mov	r1, r9
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	.loc 1 565 31
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dsub
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_d2f
	mov	r3, r0	@ float
	.loc 1 565 17
	str	r3, [r7, #16]	@ float
	.loc 1 566 23
	ldr	r3, [r7, #8]
	ldrb	r3, [r3, #37]	@ zero_extendqisi2
	.loc 1 566 7
	ldrb	r2, [r7, #43]	@ zero_extendqisi2
	cmp	r2, r3
	bne	.L121
	.loc 1 568 31
	ldr	r3, [r7, #20]	@ float
	mov	r0, r3	@ float
	bl	__aeabi_f2d
	mov	r4, r0
	mov	r5, r1
	.loc 1 568 53
	ldr	r3, [r7, #8]
	add	r3, r3, #4096
	ldrsh	r3, [r3, #602]
	.loc 1 568 57
	vmov	s15, r3	@ int
	vcvt.f32.s32	s14, s15
	.loc 1 568 70
	ldr	r3, [r7, #8]
	vldr.32	s13, [r3, #32]
	.loc 1 568 84
	vldr.32	s15, [r7, #56]
	vmov.f32	s12, #2.5e+1
	vsub.f32	s15, s15, s12
	.loc 1 568 78
	vmul.f32	s15, s13, s15
	.loc 1 568 62
	vmov.f32	s13, #1.0e+0
	vadd.f32	s15, s15, s13
	.loc 1 568 57
	vmul.f32	s15, s14, s15
	vmov	r0, s15
	bl	__aeabi_f2d
	mov	r8, r0
	mov	r9, r1
	.loc 1 568 104
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #28]	@ float
	mov	r0, r3	@ float
	bl	__aeabi_f2d
	mov	r10, r0
	mov	fp, r1
	.loc 1 568 118
	ldr	r0, [r7, #60]	@ float
	bl	__aeabi_f2d
	adr	r3, .L135+8
	ldrd	r2, [r3]
	bl	__aeabi_dsub
	mov	r2, r0
	mov	r3, r1
	.loc 1 568 111
	mov	r0, r10
	mov	r1, fp
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	.loc 1 568 96
	mov	r2, #0
	ldr	r3, .L135+16
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	.loc 1 568 91
	mov	r0, r8
	mov	r1, r9
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	.loc 1 568 35
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dsub
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_d2f
	mov	r3, r0	@ float
	.loc 1 568 21
	str	r3, [r7, #20]	@ float
	b	.L122
.L121:
	.loc 1 572 29
	ldr	r3, [r7, #20]	@ float
	mov	r0, r3	@ float
	bl	__aeabi_f2d
	mov	r4, r0
	mov	r5, r1
	.loc 1 572 52
	ldr	r3, [r7, #8]
	add	r3, r3, #4096
	ldrsh	r3, [r3, #602]
	.loc 1 572 56
	vmov	s15, r3	@ int
	vcvt.f32.s32	s14, s15
	.loc 1 572 74
	ldr	r3, [r7, #8]
	add	r3, r3, #4096
	vldr.32	s15, [r3, #604]
	.loc 1 572 56
	vadd.f32	s14, s14, s15
	.loc 1 572 92
	ldr	r3, [r7, #8]
	vldr.32	s13, [r3, #32]
	.loc 1 572 106
	vldr.32	s15, [r7, #56]
	vmov.f32	s12, #2.5e+1
	vsub.f32	s15, s15, s12
	.loc 1 572 100
	vmul.f32	s15, s13, s15
	.loc 1 572 84
	vmov.f32	s13, #1.0e+0
	vadd.f32	s15, s15, s13
	.loc 1 572 79
	vmul.f32	s15, s14, s15
	vmov	r0, s15
	bl	__aeabi_f2d
	mov	r8, r0
	mov	r9, r1
	.loc 1 572 126
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #28]	@ float
	mov	r0, r3	@ float
	bl	__aeabi_f2d
	mov	r10, r0
	mov	fp, r1
	.loc 1 572 140
	ldr	r0, [r7, #60]	@ float
	bl	__aeabi_f2d
	adr	r3, .L135+8
	ldrd	r2, [r3]
	bl	__aeabi_dsub
	mov	r2, r0
	mov	r3, r1
	.loc 1 572 133
	mov	r0, r10
	mov	r1, fp
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	.loc 1 572 118
	mov	r2, #0
	ldr	r3, .L135+16
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	.loc 1 572 113
	mov	r0, r8
	mov	r1, r9
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	.loc 1 572 33
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dsub
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_d2f
	mov	r3, r0	@ float
	.loc 1 572 19
	str	r3, [r7, #20]	@ float
.L122:
.LBB10:
	.loc 1 575 14
	movs	r3, #0
	str	r3, [r7, #68]
	.loc 1 575 5
	b	.L123
.L136:
	.align	3
.L135:
	.word	0
	.word	1073741824
	.word	1717986918
	.word	1074423398
	.word	1072693248
.L134:
	.loc 1 577 33
	ldr	r3, [r7, #68]
	cmp	r3, #0
	bge	.L124
	adds	r3, r3, #31
.L124:
	asrs	r3, r3, #5
	.loc 1 577 38
	uxtb	r2, r3
	.loc 1 577 53
	ldr	r3, [r7, #68]
	cmp	r3, #0
	bge	.L125
	adds	r3, r3, #63
.L125:
	asrs	r3, r3, #6
	.loc 1 577 38
	uxtb	r3, r3
	lsls	r3, r3, #1
	uxtb	r3, r3
	subs	r3, r2, r3
	uxtb	r3, r3
	.loc 1 577 19
	strb	r3, [r7, #42]
	.loc 1 578 49
	ldr	r3, [r7, #68]
	cmp	r3, #0
	and	r3, r3, #1
	it	lt
	rsblt	r3, r3, #0
	.loc 1 578 34
	sxtb	r2, r3
	.loc 1 578 22
	ldrb	r3, [r7, #42]
	eors	r3, r3, r2
	strb	r3, [r7, #41]
	.loc 1 579 43
	ldr	r3, [r7, #68]
	adds	r3, r3, #2
	.loc 1 579 48
	cmp	r3, #0
	bge	.L126
	adds	r3, r3, #3
.L126:
	asrs	r3, r3, #2
	mov	r2, r3
	.loc 1 579 67
	ldr	r3, [r7, #68]
	adds	r3, r3, #3
	.loc 1 579 72
	cmp	r3, #0
	bge	.L127
	adds	r3, r3, #3
.L127:
	asrs	r3, r3, #2
	rsbs	r3, r3, #0
	.loc 1 579 52
	add	r2, r2, r3
	.loc 1 579 91
	ldr	r3, [r7, #68]
	adds	r3, r3, #1
	.loc 1 579 96
	cmp	r3, #0
	bge	.L128
	adds	r3, r3, #3
.L128:
	asrs	r3, r3, #2
	.loc 1 579 76
	add	r2, r2, r3
	.loc 1 579 114
	ldr	r3, [r7, #68]
	cmp	r3, #0
	bge	.L129
	adds	r3, r3, #3
.L129:
	asrs	r3, r3, #2
	rsbs	r3, r3, #0
	.loc 1 579 100
	add	r3, r3, r2
	.loc 1 579 27
	uxtb	r2, r3
	.loc 1 579 128
	ldrsb	r3, [r7, #42]
	lsls	r3, r3, #1
	.loc 1 579 124
	rsb	r3, r3, #1
	.loc 1 579 27
	uxtb	r3, r3
	smulbb	r3, r2, r3
	uxtb	r3, r3
	strb	r3, [r7, #40]
	.loc 1 581 11
	ldrb	r3, [r7, #43]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L130
	.loc 1 583 19
	ldrb	r3, [r7, #42]
	strb	r3, [r7, #75]
	b	.L131
.L130:
	.loc 1 587 19
	ldrb	r3, [r7, #41]
	strb	r3, [r7, #75]
.L131:
	.loc 1 590 20
	ldrsb	r3, [r7, #75]
	.loc 1 590 32
	ldr	r2, [r7, #12]
	addw	r2, r2, #1666
	ldrh	r2, [r2]
	.loc 1 590 11
	cmp	r3, r2
	bne	.L132
	.loc 1 592 40
	ldr	r3, [r7, #68]
	lsls	r3, r3, #1
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	ldrh	r3, [r3]
	.loc 1 592 22
	sxth	r3, r3
	.loc 1 592 54
	vmov	s15, r3	@ int
	vcvt.f32.s32	s15, s15
	.loc 1 592 20
	vldr.32	s14, [r7, #44]
	vmul.f32	s15, s14, s15
	vstr.32	s15, [r7, #76]
	.loc 1 594 30
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #68]
	add	r3, r3, r2
	addw	r3, r3, #3148
	ldrsb	r3, [r3]
	.loc 1 594 43
	vmov	s15, r3	@ int
	vcvt.f32.s32	s13, s15
	.loc 1 594 17
	vldr.32	s14, [r7, #52]
	vdiv.f32	s15, s13, s14
	vstr.32	s15, [r7, #36]
	.loc 1 595 28
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #68]
	add	r3, r3, r2
	addw	r3, r3, #3917
	ldrsb	r3, [r3]
	.loc 1 595 41
	vmov	s15, r3	@ int
	vcvt.f32.s32	s13, s15
	.loc 1 595 16
	vldr.32	s14, [r7, #48]
	vdiv.f32	s15, s13, s14
	vstr.32	s15, [r7, #32]
	.loc 1 596 29
	ldr	r0, [r7, #76]	@ float
	bl	__aeabi_f2d
	mov	r4, r0
	mov	r5, r1
	.loc 1 596 45
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #68]
	add	r3, r3, #804
	lsls	r3, r3, #1
	add	r3, r3, r2
	ldrsh	r3, [r3, #4]
	.loc 1 596 58
	vmov	s15, r3	@ int
	vcvt.f32.s32	s14, s15
	.loc 1 596 72
	vldr.32	s15, [r7, #56]
	vmov.f32	s13, #2.5e+1
	vsub.f32	s13, s15, s13
	.loc 1 596 67
	vldr.32	s15, [r7, #36]
	vmul.f32	s15, s13, s15
	.loc 1 596 62
	vmov.f32	s13, #1.0e+0
	vadd.f32	s15, s15, s13
	.loc 1 596 58
	vmul.f32	s15, s14, s15
	vmov	r0, s15
	bl	__aeabi_f2d
	mov	r8, r0
	mov	r9, r1
	.loc 1 596 86
	ldr	r0, [r7, #32]	@ float
	bl	__aeabi_f2d
	mov	r10, r0
	mov	fp, r1
	.loc 1 596 92
	ldr	r0, [r7, #60]	@ float
	bl	__aeabi_f2d
	adr	r3, .L137+4
	ldrd	r2, [r3]
	bl	__aeabi_dsub
	mov	r2, r0
	mov	r3, r1
	.loc 1 596 86
	mov	r0, r10
	mov	r1, fp
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	.loc 1 596 82
	mov	r2, #0
	ldr	r3, .L137
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	.loc 1 596 78
	mov	r0, r8
	mov	r1, r9
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	.loc 1 596 29
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dsub
	mov	r2, r0
	mov	r3, r1
	.loc 1 596 20
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_d2f
	mov	r3, r0	@ float
	str	r3, [r7, #76]	@ float
	.loc 1 598 30
	ldr	r3, [r7, #8]
	ldrb	r3, [r3, #37]	@ zero_extendqisi2
	.loc 1 598 15
	ldrb	r2, [r7, #43]	@ zero_extendqisi2
	cmp	r2, r3
	beq	.L133
	.loc 1 600 49
	ldr	r3, [r7, #8]
	add	r3, r3, #4096
	vldr.32	s14, [r3, #612]
	.loc 1 600 58
	ldrsb	r3, [r7, #42]
	lsls	r3, r3, #1
	.loc 1 600 70
	subs	r3, r3, #1
	.loc 1 600 53
	vmov	s15, r3	@ int
	vcvt.f32.s32	s15, s15
	vmul.f32	s14, s14, s15
	.loc 1 600 31
	vldr.32	s15, [r7, #76]
	vadd.f32	s14, s14, s15
	.loc 1 600 93
	ldr	r3, [r7, #8]
	add	r3, r3, #4096
	vldr.32	s13, [r3, #608]
	.loc 1 600 97
	ldrsb	r3, [r7, #40]
	vmov	s15, r3	@ int
	vcvt.f32.s32	s15, s15
	vmul.f32	s15, s13, s15
	.loc 1 600 22
	vsub.f32	s15, s14, s15
	vstr.32	s15, [r7, #76]
.L133:
	.loc 1 603 37
	ldr	r3, [r7, #8]
	vldr.32	s14, [r3, #24]
	.loc 1 603 53
	ldrh	r3, [r7, #66]
	lsls	r3, r3, #2
	adds	r3, r3, #80
	add	r3, r3, r7
	subs	r3, r3, #64
	vldr.32	s15, [r3]
	.loc 1 603 43
	vmul.f32	s15, s14, s15
	.loc 1 603 20
	vldr.32	s14, [r7, #76]
	vsub.f32	s15, s14, s15
	vstr.32	s15, [r7, #76]
	.loc 1 605 45
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #68]
	adds	r3, r3, #36
	lsls	r3, r3, #1
	add	r3, r3, r2
	ldrh	r3, [r3, #2]
	.loc 1 605 30
	vmov	s15, r3	@ int
	vcvt.f32.u32	s15, s15
	vstr.32	s15, [r7, #28]
	.loc 1 607 19
	vldr.32	s14, [r7, #76]
	vldr.32	s15, [r7, #28]
	vmul.f32	s15, s14, s15
	vstr.32	s15, [r7, #24]
	.loc 1 609 19
	ldr	r3, [r7, #68]
	lsls	r3, r3, #2
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	.loc 1 609 33
	ldr	r2, [r7, #24]	@ float
	str	r2, [r3]	@ float
.L132:
	.loc 1 575 61 discriminator 2
	ldr	r3, [r7, #68]
	adds	r3, r3, #1
	str	r3, [r7, #68]
.L123:
	.loc 1 575 43 discriminator 1
	ldr	r3, [r7, #68]
	cmp	r3, #768
	blt	.L134
.LBE10:
	.loc 1 612 1
	nop
	nop
	adds	r7, r7, #80
	.cfi_def_cfa_offset 32
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r4, r5, r7, r8, r9, r10, fp, pc}
.L138:
	.align	3
.L137:
	.word	1072693248
	.word	1717986918
	.word	1074423398
	.cfi_endproc
.LFE15:
	.size	MLX90640_GetImage, .-MLX90640_GetImage
	.section	.text.MLX90640_GetVdd,"ax",%progbits
	.align	1
	.global	MLX90640_GetVdd
	.syntax unified
	.thumb
	.thumb_func
	.type	MLX90640_GetVdd, %function
MLX90640_GetVdd:
.LFB16:
	.loc 1 617 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #24
	.cfi_def_cfa_offset 40
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	str	r1, [r7]
	.loc 1 623 31
	ldr	r3, [r7, #4]
	add	r3, r3, #1664
	ldrh	r3, [r3]
	.loc 1 623 69
	lsrs	r3, r3, #10
	uxth	r3, r3
	.loc 1 623 19
	and	r3, r3, #3
	strh	r3, [r7, #22]	@ movhi
	.loc 1 624 49
	ldr	r3, [r7]
	ldrb	r3, [r3, #36]	@ zero_extendqisi2
	.loc 1 624 28
	mov	r0, r3
	bl	__aeabi_ui2d
	mov	r2, r0
	mov	r3, r1
	vmov	d1, r2, r3
	vldr.64	d0, .L141
	bl	pow
	vmov	r4, r5, d0
	.loc 1 624 67
	ldrh	r3, [r7, #22]
	mov	r0, r3
	bl	__aeabi_ui2d
	mov	r2, r0
	mov	r3, r1
	vmov	d1, r2, r3
	vldr.64	d0, .L141
	bl	pow
	vmov	r2, r3, d0
	.loc 1 624 65
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_ddiv
	mov	r2, r0
	mov	r3, r1
	.loc 1 624 26
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_d2f
	mov	r3, r0	@ float
	str	r3, [r7, #16]	@ float
	.loc 1 625 53
	ldr	r3, [r7, #4]
	addw	r3, r3, #1620
	ldrh	r3, [r3]
	.loc 1 625 35
	sxth	r3, r3
	.loc 1 625 33
	vmov	s15, r3	@ int
	vcvt.f32.s32	s14, s15
	vldr.32	s15, [r7, #16]
	vmul.f32	s14, s14, s15
	.loc 1 625 67
	ldr	r3, [r7]
	ldrsh	r3, [r3, #2]
	.loc 1 625 59
	vmov	s15, r3	@ int
	vcvt.f32.s32	s15, s15
	vsub.f32	s14, s14, s15
	.loc 1 625 84
	ldr	r3, [r7]
	ldrsh	r3, [r3]
	.loc 1 625 76
	vmov	s15, r3	@ int
	vcvt.f32.s32	s15, s15
	vdiv.f32	s13, s14, s15
	vmov	r0, s13
	bl	__aeabi_f2d
	.loc 1 625 91
	adr	r3, .L141+8
	ldrd	r2, [r3]
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	.loc 1 625 9
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_d2f
	mov	r3, r0	@ float
	str	r3, [r7, #12]	@ float
	.loc 1 627 12
	ldr	r3, [r7, #12]	@ float
	vmov	s15, r3
	.loc 1 628 1
	vmov.f32	s0, s15
	adds	r7, r7, #24
	.cfi_def_cfa_offset 16
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r4, r5, r7, pc}
.L142:
	.align	3
.L141:
	.word	0
	.word	1073741824
	.word	1717986918
	.word	1074423398
	.cfi_endproc
.LFE16:
	.size	MLX90640_GetVdd, .-MLX90640_GetVdd
	.section	.text.MLX90640_GetTa,"ax",%progbits
	.align	1
	.global	MLX90640_GetTa
	.syntax unified
	.thumb
	.thumb_func
	.type	MLX90640_GetTa, %function
MLX90640_GetTa:
.LFB17:
	.loc 1 633 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, r8, r9, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	.cfi_offset 5, -20
	.cfi_offset 7, -16
	.cfi_offset 8, -12
	.cfi_offset 9, -8
	.cfi_offset 14, -4
	sub	sp, sp, #24
	.cfi_def_cfa_offset 48
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	str	r1, [r7]
	.loc 1 639 11
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	bl	MLX90640_GetVdd
	vstr.32	s0, [r7, #20]
	.loc 1 641 30
	ldr	r3, [r7, #4]
	add	r3, r3, #1600
	ldrh	r3, [r3]
	.loc 1 641 10
	strh	r3, [r7, #18]	@ movhi
	.loc 1 643 21
	ldrsh	r3, [r7, #18]
	vmov	s15, r3	@ int
	vcvt.f32.s32	s13, s15
	.loc 1 643 29
	ldrsh	r3, [r7, #18]
	vmov	s15, r3	@ int
	vcvt.f32.s32	s14, s15
	.loc 1 643 37
	ldr	r3, [r7]
	vldr.32	s15, [r3, #16]
	.loc 1 643 29
	vmul.f32	s14, s14, s15
	.loc 1 643 69
	ldr	r3, [r7, #4]
	add	r3, r3, #1536
	ldrh	r3, [r3]
	.loc 1 643 51
	sxth	r3, r3
	.loc 1 643 49
	vmov	s15, r3	@ int
	vcvt.f32.s32	s15, s15
	vadd.f32	s14, s14, s15
	.loc 1 643 21
	vdiv.f32	s15, s13, s14
	.loc 1 643 13
	vldr.32	s14, .L145+8
	vmul.f32	s15, s15, s14
	vstr.32	s15, [r7, #12]
	.loc 1 645 19
	ldr	r0, [r7, #12]	@ float
	bl	__aeabi_f2d
	mov	r4, r0
	mov	r5, r1
	.loc 1 645 32
	ldr	r3, [r7]
	ldr	r3, [r3, #4]	@ float
	mov	r0, r3	@ float
	bl	__aeabi_f2d
	mov	r8, r0
	mov	r9, r1
	.loc 1 645 48
	ldr	r0, [r7, #20]	@ float
	bl	__aeabi_f2d
	adr	r3, .L145
	ldrd	r2, [r3]
	bl	__aeabi_dsub
	mov	r2, r0
	mov	r3, r1
	.loc 1 645 41
	mov	r0, r8
	mov	r1, r9
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	.loc 1 645 24
	mov	r2, #0
	ldr	r3, .L145+12
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	.loc 1 645 19
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_ddiv
	mov	r2, r0
	mov	r3, r1
	mov	r4, r2
	mov	r5, r3
	.loc 1 645 64
	ldr	r3, [r7]
	ldrh	r3, [r3, #12]
	.loc 1 645 56
	mov	r0, r3
	bl	__aeabi_i2d
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dsub
	mov	r2, r0
	mov	r3, r1
	.loc 1 645 8
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_d2f
	mov	r3, r0	@ float
	str	r3, [r7, #8]	@ float
	.loc 1 646 21
	ldr	r3, [r7]
	vldr.32	s14, [r3, #8]
	.loc 1 646 13
	vldr.32	s13, [r7, #8]
	vdiv.f32	s15, s13, s14
	.loc 1 646 8
	vmov.f32	s14, #2.5e+1
	vadd.f32	s15, s15, s14
	vstr.32	s15, [r7, #8]
	.loc 1 648 12
	ldr	r3, [r7, #8]	@ float
	vmov	s15, r3
	.loc 1 649 1
	vmov.f32	s0, s15
	adds	r7, r7, #24
	.cfi_def_cfa_offset 24
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r4, r5, r7, r8, r9, pc}
.L146:
	.align	3
.L145:
	.word	1717986918
	.word	1074423398
	.word	1216348160
	.word	1072693248
	.cfi_endproc
.LFE17:
	.size	MLX90640_GetTa, .-MLX90640_GetTa
	.section	.text.MLX90640_GetSubPageNumber,"ax",%progbits
	.align	1
	.global	MLX90640_GetSubPageNumber
	.syntax unified
	.thumb
	.thumb_func
	.type	MLX90640_GetSubPageNumber, %function
MLX90640_GetSubPageNumber:
.LFB18:
	.loc 1 654 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	sub	sp, sp, #12
	.cfi_def_cfa_offset 16
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	.loc 1 655 21
	ldr	r3, [r7, #4]
	addw	r3, r3, #1666
	ldrh	r3, [r3]
	.loc 1 657 1
	mov	r0, r3
	adds	r7, r7, #12
	.cfi_def_cfa_offset 4
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	ldr	r7, [sp], #4
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE18:
	.size	MLX90640_GetSubPageNumber, .-MLX90640_GetSubPageNumber
	.section	.text.MLX90640_BadPixelsCorrection,"ax",%progbits
	.align	1
	.global	MLX90640_BadPixelsCorrection
	.syntax unified
	.thumb
	.thumb_func
	.type	MLX90640_BadPixelsCorrection, %function
MLX90640_BadPixelsCorrection:
.LFB19:
	.loc 1 661 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #44
	.cfi_def_cfa_offset 56
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	.loc 1 667 9
	movs	r3, #0
	strb	r3, [r7, #39]
	.loc 1 668 10
	b	.L150
.L169:
	.loc 1 670 22
	ldrb	r3, [r7, #39]	@ zero_extendqisi2
	lsls	r3, r3, #1
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	ldrh	r3, [r3]
	.loc 1 670 14
	lsrs	r3, r3, #5
	uxth	r3, r3
	strb	r3, [r7, #38]
	.loc 1 671 24
	ldrb	r3, [r7, #39]	@ zero_extendqisi2
	lsls	r3, r3, #1
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	ldrh	r3, [r3]
	.loc 1 671 30
	uxtb	r2, r3
	.loc 1 671 37
	ldrb	r3, [r7, #38]
	lsls	r3, r3, #5
	uxtb	r3, r3
	.loc 1 671 16
	subs	r3, r2, r3
	strb	r3, [r7, #37]
	.loc 1 673 11
	ldr	r3, [r7, #4]
	cmp	r3, #1
	bne	.L151
	.loc 1 675 15
	ldrb	r3, [r7, #38]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L152
	.loc 1 677 19
	ldrb	r3, [r7, #37]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L153
	.loc 1 679 30
	ldrb	r3, [r7, #39]	@ zero_extendqisi2
	lsls	r3, r3, #1
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	ldrh	r3, [r3]
	.loc 1 679 23
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	.loc 1 679 37
	ldr	r2, [r7, #8]
	ldr	r2, [r2, #132]	@ float
	str	r2, [r3]	@ float
	b	.L154
.L153:
	.loc 1 681 24
	ldrb	r3, [r7, #37]	@ zero_extendqisi2
	cmp	r3, #31
	bne	.L155
	.loc 1 683 30
	ldrb	r3, [r7, #39]	@ zero_extendqisi2
	lsls	r3, r3, #1
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	ldrh	r3, [r3]
	.loc 1 683 23
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	.loc 1 683 37
	ldr	r2, [r7, #8]
	ldr	r2, [r2, #248]	@ float
	str	r2, [r3]	@ float
	b	.L154
.L155:
	.loc 1 687 49
	ldrb	r3, [r7, #39]	@ zero_extendqisi2
	lsls	r3, r3, #1
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	ldrh	r3, [r3]
	.loc 1 687 42
	adds	r3, r3, #31
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	vldr.32	s14, [r3]
	.loc 1 687 70
	ldrb	r3, [r7, #39]	@ zero_extendqisi2
	lsls	r3, r3, #1
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	ldrh	r3, [r3]
	.loc 1 687 63
	adds	r3, r3, #33
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	vldr.32	s15, [r3]
	.loc 1 687 59
	vadd.f32	s14, s14, s15
	.loc 1 687 30
	ldrb	r3, [r7, #39]	@ zero_extendqisi2
	lsls	r3, r3, #1
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	ldrh	r3, [r3]
	.loc 1 687 23
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	.loc 1 687 80
	vmov.f32	s13, #2.0e+0
	vdiv.f32	s15, s14, s13
	.loc 1 687 37
	vstr.32	s15, [r3]
	b	.L154
.L152:
	.loc 1 690 20
	ldrb	r3, [r7, #38]	@ zero_extendqisi2
	cmp	r3, #23
	bne	.L156
	.loc 1 692 19
	ldrb	r3, [r7, #37]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L157
	.loc 1 694 30
	ldrb	r3, [r7, #39]	@ zero_extendqisi2
	lsls	r3, r3, #1
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	ldrh	r3, [r3]
	.loc 1 694 23
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	.loc 1 694 37
	ldr	r2, [r7, #8]
	addw	r2, r2, #2820
	ldr	r2, [r2]	@ float
	str	r2, [r3]	@ float
	b	.L154
.L157:
	.loc 1 696 24
	ldrb	r3, [r7, #37]	@ zero_extendqisi2
	cmp	r3, #31
	bne	.L158
	.loc 1 698 30
	ldrb	r3, [r7, #39]	@ zero_extendqisi2
	lsls	r3, r3, #1
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	ldrh	r3, [r3]
	.loc 1 698 23
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	.loc 1 698 37
	ldr	r2, [r7, #8]
	addw	r2, r2, #2936
	ldr	r2, [r2]	@ float
	str	r2, [r3]	@ float
	b	.L154
.L158:
	.loc 1 702 49
	ldrb	r3, [r7, #39]	@ zero_extendqisi2
	lsls	r3, r3, #1
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	ldrh	r3, [r3]
	.loc 1 702 42
	add	r3, r3, #1073741824
	subs	r3, r3, #33
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	vldr.32	s14, [r3]
	.loc 1 702 70
	ldrb	r3, [r7, #39]	@ zero_extendqisi2
	lsls	r3, r3, #1
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	ldrh	r3, [r3]
	.loc 1 702 63
	add	r3, r3, #1073741824
	subs	r3, r3, #31
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	vldr.32	s15, [r3]
	.loc 1 702 59
	vadd.f32	s14, s14, s15
	.loc 1 702 30
	ldrb	r3, [r7, #39]	@ zero_extendqisi2
	lsls	r3, r3, #1
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	ldrh	r3, [r3]
	.loc 1 702 23
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	.loc 1 702 80
	vmov.f32	s13, #2.0e+0
	vdiv.f32	s15, s14, s13
	.loc 1 702 37
	vstr.32	s15, [r3]
	b	.L154
.L156:
	.loc 1 705 20
	ldrb	r3, [r7, #37]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L159
	.loc 1 707 45
	ldrb	r3, [r7, #39]	@ zero_extendqisi2
	lsls	r3, r3, #1
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	ldrh	r3, [r3]
	.loc 1 707 38
	add	r3, r3, #1073741824
	subs	r3, r3, #31
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	vldr.32	s14, [r3]
	.loc 1 707 66
	ldrb	r3, [r7, #39]	@ zero_extendqisi2
	lsls	r3, r3, #1
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	ldrh	r3, [r3]
	.loc 1 707 59
	adds	r3, r3, #33
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	vldr.32	s15, [r3]
	.loc 1 707 55
	vadd.f32	s14, s14, s15
	.loc 1 707 26
	ldrb	r3, [r7, #39]	@ zero_extendqisi2
	lsls	r3, r3, #1
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	ldrh	r3, [r3]
	.loc 1 707 19
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	.loc 1 707 76
	vmov.f32	s13, #2.0e+0
	vdiv.f32	s15, s14, s13
	.loc 1 707 33
	vstr.32	s15, [r3]
	b	.L154
.L159:
	.loc 1 709 20
	ldrb	r3, [r7, #37]	@ zero_extendqisi2
	cmp	r3, #31
	bne	.L160
	.loc 1 711 45
	ldrb	r3, [r7, #39]	@ zero_extendqisi2
	lsls	r3, r3, #1
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	ldrh	r3, [r3]
	.loc 1 711 38
	add	r3, r3, #1073741824
	subs	r3, r3, #33
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	vldr.32	s14, [r3]
	.loc 1 711 66
	ldrb	r3, [r7, #39]	@ zero_extendqisi2
	lsls	r3, r3, #1
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	ldrh	r3, [r3]
	.loc 1 711 59
	adds	r3, r3, #31
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	vldr.32	s15, [r3]
	.loc 1 711 55
	vadd.f32	s14, s14, s15
	.loc 1 711 26
	ldrb	r3, [r7, #39]	@ zero_extendqisi2
	lsls	r3, r3, #1
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	ldrh	r3, [r3]
	.loc 1 711 19
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	.loc 1 711 76
	vmov.f32	s13, #2.0e+0
	vdiv.f32	s15, s14, s13
	.loc 1 711 33
	vstr.32	s15, [r3]
	b	.L154
.L160:
	.loc 1 715 34
	ldrb	r3, [r7, #39]	@ zero_extendqisi2
	lsls	r3, r3, #1
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	ldrh	r3, [r3]
	.loc 1 715 27
	add	r3, r3, #1073741824
	subs	r3, r3, #33
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r3, [r3]	@ float
	.loc 1 715 23
	str	r3, [r7, #20]	@ float
	.loc 1 716 34
	ldrb	r3, [r7, #39]	@ zero_extendqisi2
	lsls	r3, r3, #1
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	ldrh	r3, [r3]
	.loc 1 716 27
	add	r3, r3, #1073741824
	subs	r3, r3, #31
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r3, [r3]	@ float
	.loc 1 716 23
	str	r3, [r7, #24]	@ float
	.loc 1 717 34
	ldrb	r3, [r7, #39]	@ zero_extendqisi2
	lsls	r3, r3, #1
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	ldrh	r3, [r3]
	.loc 1 717 27
	adds	r3, r3, #31
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r3, [r3]	@ float
	.loc 1 717 23
	str	r3, [r7, #28]	@ float
	.loc 1 718 34
	ldrb	r3, [r7, #39]	@ zero_extendqisi2
	lsls	r3, r3, #1
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	ldrh	r3, [r3]
	.loc 1 718 27
	adds	r3, r3, #33
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r3, [r3]	@ float
	.loc 1 718 23
	str	r3, [r7, #32]	@ float
	.loc 1 719 26
	ldrb	r3, [r7, #39]	@ zero_extendqisi2
	lsls	r3, r3, #1
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	ldrh	r3, [r3]
	.loc 1 719 19
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	adds	r4, r2, r3
	.loc 1 719 35
	add	r3, r7, #20
	movs	r1, #4
	mov	r0, r3
	bl	GetMedian
	vmov.f32	s15, s0
	.loc 1 719 33
	vstr.32	s15, [r4]
	b	.L154
.L151:
	.loc 1 724 15
	ldrb	r3, [r7, #37]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L161
	.loc 1 726 44
	ldrb	r3, [r7, #39]	@ zero_extendqisi2
	lsls	r3, r3, #1
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	ldrh	r3, [r3]
	.loc 1 726 37
	adds	r3, r3, #1
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r2, r2, r3
	.loc 1 726 26
	ldrb	r3, [r7, #39]	@ zero_extendqisi2
	lsls	r3, r3, #1
	ldr	r1, [r7, #12]
	add	r3, r3, r1
	ldrh	r3, [r3]
	.loc 1 726 19
	lsls	r3, r3, #2
	ldr	r1, [r7, #8]
	add	r3, r3, r1
	.loc 1 726 37
	ldr	r2, [r2]	@ float
	.loc 1 726 33
	str	r2, [r3]	@ float
	b	.L154
.L161:
	.loc 1 728 20
	ldrb	r3, [r7, #37]	@ zero_extendqisi2
	cmp	r3, #1
	beq	.L162
	.loc 1 728 33 discriminator 1
	ldrb	r3, [r7, #37]	@ zero_extendqisi2
	cmp	r3, #30
	bne	.L163
.L162:
	.loc 1 730 45
	ldrb	r3, [r7, #39]	@ zero_extendqisi2
	lsls	r3, r3, #1
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	ldrh	r3, [r3]
	.loc 1 730 38
	add	r3, r3, #1073741824
	subs	r3, r3, #1
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	vldr.32	s14, [r3]
	.loc 1 730 63
	ldrb	r3, [r7, #39]	@ zero_extendqisi2
	lsls	r3, r3, #1
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	ldrh	r3, [r3]
	.loc 1 730 56
	adds	r3, r3, #1
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	vldr.32	s15, [r3]
	.loc 1 730 53
	vadd.f32	s14, s14, s15
	.loc 1 730 26
	ldrb	r3, [r7, #39]	@ zero_extendqisi2
	lsls	r3, r3, #1
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	ldrh	r3, [r3]
	.loc 1 730 19
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	.loc 1 730 72
	vmov.f32	s13, #2.0e+0
	vdiv.f32	s15, s14, s13
	.loc 1 730 33
	vstr.32	s15, [r3]
	b	.L154
.L163:
	.loc 1 732 20
	ldrb	r3, [r7, #37]	@ zero_extendqisi2
	cmp	r3, #31
	bne	.L164
	.loc 1 734 44
	ldrb	r3, [r7, #39]	@ zero_extendqisi2
	lsls	r3, r3, #1
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	ldrh	r3, [r3]
	.loc 1 734 37
	add	r3, r3, #1073741824
	subs	r3, r3, #1
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r2, r2, r3
	.loc 1 734 26
	ldrb	r3, [r7, #39]	@ zero_extendqisi2
	lsls	r3, r3, #1
	ldr	r1, [r7, #12]
	add	r3, r3, r1
	ldrh	r3, [r3]
	.loc 1 734 19
	lsls	r3, r3, #2
	ldr	r1, [r7, #8]
	add	r3, r3, r1
	.loc 1 734 37
	ldr	r2, [r2]	@ float
	.loc 1 734 33
	str	r2, [r3]	@ float
	b	.L154
.L164:
	.loc 1 738 37
	ldrb	r3, [r7, #39]	@ zero_extendqisi2
	lsls	r3, r3, #1
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	ldrh	r3, [r3]
	.loc 1 738 20
	subs	r3, r3, #2
	uxth	r3, r3
	ldr	r1, [r7]
	mov	r0, r3
	bl	IsPixelBad
	mov	r3, r0
	.loc 1 738 19
	cmp	r3, #0
	bne	.L165
	.loc 1 738 78 discriminator 1
	ldrb	r3, [r7, #39]	@ zero_extendqisi2
	lsls	r3, r3, #1
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	ldrh	r3, [r3]
	.loc 1 738 61 discriminator 1
	adds	r3, r3, #2
	uxth	r3, r3
	ldr	r1, [r7]
	mov	r0, r3
	bl	IsPixelBad
	mov	r3, r0
	.loc 1 738 58 discriminator 1
	cmp	r3, #0
	bne	.L165
	.loc 1 740 38
	ldrb	r3, [r7, #39]	@ zero_extendqisi2
	lsls	r3, r3, #1
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	ldrh	r3, [r3]
	.loc 1 740 31
	adds	r3, r3, #1
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	vldr.32	s14, [r3]
	.loc 1 740 58
	ldrb	r3, [r7, #39]	@ zero_extendqisi2
	lsls	r3, r3, #1
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	ldrh	r3, [r3]
	.loc 1 740 51
	adds	r3, r3, #2
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	vldr.32	s15, [r3]
	.loc 1 740 47
	vsub.f32	s15, s14, s15
	.loc 1 740 27
	vstr.32	s15, [r7, #20]
	.loc 1 741 38
	ldrb	r3, [r7, #39]	@ zero_extendqisi2
	lsls	r3, r3, #1
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	ldrh	r3, [r3]
	.loc 1 741 31
	add	r3, r3, #1073741824
	subs	r3, r3, #1
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	vldr.32	s14, [r3]
	.loc 1 741 58
	ldrb	r3, [r7, #39]	@ zero_extendqisi2
	lsls	r3, r3, #1
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	ldrh	r3, [r3]
	.loc 1 741 51
	add	r3, r3, #1073741824
	subs	r3, r3, #2
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	vldr.32	s15, [r3]
	.loc 1 741 47
	vsub.f32	s15, s14, s15
	.loc 1 741 27
	vstr.32	s15, [r7, #24]
	.loc 1 742 31
	vldr.32	s15, [r7, #20]
	.loc 1 742 24
	vabs.f32	s14, s15
	.loc 1 742 45
	vldr.32	s15, [r7, #24]
	.loc 1 742 38
	vabs.f32	s15, s15
	.loc 1 742 23
	vcmpe.f32	s14, s15
	vmrs	APSR_nzcv, FPSCR
	ble	.L171
	.loc 1 744 52
	ldrb	r3, [r7, #39]	@ zero_extendqisi2
	lsls	r3, r3, #1
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	ldrh	r3, [r3]
	.loc 1 744 45
	add	r3, r3, #1073741824
	subs	r3, r3, #1
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	vldr.32	s14, [r3]
	.loc 1 744 65
	vldr.32	s15, [r7, #24]
	.loc 1 744 34
	ldrb	r3, [r7, #39]	@ zero_extendqisi2
	lsls	r3, r3, #1
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	ldrh	r3, [r3]
	.loc 1 744 27
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	.loc 1 744 61
	vadd.f32	s15, s14, s15
	.loc 1 744 41
	vstr.32	s15, [r3]
	.loc 1 742 23
	b	.L154
.L171:
	.loc 1 748 52
	ldrb	r3, [r7, #39]	@ zero_extendqisi2
	lsls	r3, r3, #1
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	ldrh	r3, [r3]
	.loc 1 748 45
	adds	r3, r3, #1
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	vldr.32	s14, [r3]
	.loc 1 748 65
	vldr.32	s15, [r7, #20]
	.loc 1 748 34
	ldrb	r3, [r7, #39]	@ zero_extendqisi2
	lsls	r3, r3, #1
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	ldrh	r3, [r3]
	.loc 1 748 27
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	.loc 1 748 61
	vadd.f32	s15, s14, s15
	.loc 1 748 41
	vstr.32	s15, [r3]
	.loc 1 742 23
	b	.L154
.L165:
	.loc 1 753 49
	ldrb	r3, [r7, #39]	@ zero_extendqisi2
	lsls	r3, r3, #1
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	ldrh	r3, [r3]
	.loc 1 753 42
	add	r3, r3, #1073741824
	subs	r3, r3, #1
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	vldr.32	s14, [r3]
	.loc 1 753 67
	ldrb	r3, [r7, #39]	@ zero_extendqisi2
	lsls	r3, r3, #1
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	ldrh	r3, [r3]
	.loc 1 753 60
	adds	r3, r3, #1
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	vldr.32	s15, [r3]
	.loc 1 753 57
	vadd.f32	s14, s14, s15
	.loc 1 753 30
	ldrb	r3, [r7, #39]	@ zero_extendqisi2
	lsls	r3, r3, #1
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	ldrh	r3, [r3]
	.loc 1 753 23
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	.loc 1 753 76
	vmov.f32	s13, #2.0e+0
	vdiv.f32	s15, s14, s13
	.loc 1 753 37
	vstr.32	s15, [r3]
.L154:
	.loc 1 757 13
	ldrb	r3, [r7, #39]
	adds	r3, r3, #1
	strb	r3, [r7, #39]
.L150:
	.loc 1 668 17
	ldrb	r3, [r7, #39]	@ zero_extendqisi2
	lsls	r3, r3, #1
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	ldrh	r3, [r3]
	.loc 1 668 23
	movw	r2, #65535
	cmp	r3, r2
	bne	.L169
	.loc 1 759 1
	nop
	nop
	adds	r7, r7, #44
	.cfi_def_cfa_offset 12
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r4, r7, pc}
	.cfi_endproc
.LFE19:
	.size	MLX90640_BadPixelsCorrection, .-MLX90640_BadPixelsCorrection
	.section	.text.ExtractVDDParameters,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	ExtractVDDParameters, %function
ExtractVDDParameters:
.LFB20:
	.loc 1 764 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	sub	sp, sp, #20
	.cfi_def_cfa_offset 24
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	str	r1, [r7]
	.loc 1 768 20
	ldr	r3, [r7, #4]
	adds	r3, r3, #102
	ldrh	r3, [r3]
	.loc 1 768 35
	lsrs	r3, r3, #8
	uxth	r3, r3
	.loc 1 768 10
	strb	r3, [r7, #15]
	.loc 1 770 20
	ldr	r3, [r7, #4]
	adds	r3, r3, #102
	ldrh	r3, [r3]
	sxth	r3, r3
	.loc 1 770 11
	uxtb	r3, r3
	strh	r3, [r7, #12]	@ movhi
	.loc 1 771 21
	ldrh	r3, [r7, #12]
	sub	r3, r3, #256
	uxth	r3, r3
	.loc 1 771 28
	lsls	r3, r3, #5
	uxth	r3, r3
	.loc 1 771 34
	sub	r3, r3, #8192
	uxth	r3, r3
	.loc 1 771 11
	strh	r3, [r7, #12]	@ movhi
	.loc 1 773 25
	ldrsb	r3, [r7, #15]
	uxth	r3, r3
	lsls	r3, r3, #5
	uxth	r3, r3
	sxth	r2, r3
	.loc 1 773 20
	ldr	r3, [r7]
	strh	r2, [r3]	@ movhi
	.loc 1 774 21
	ldr	r3, [r7]
	ldrh	r2, [r7, #12]	@ movhi
	strh	r2, [r3, #2]	@ movhi
	.loc 1 775 1
	nop
	adds	r7, r7, #20
	.cfi_def_cfa_offset 4
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	ldr	r7, [sp], #4
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE20:
	.size	ExtractVDDParameters, .-ExtractVDDParameters
	.section	.text.ExtractPTATParameters,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	ExtractPTATParameters, %function
ExtractPTATParameters:
.LFB21:
	.loc 1 780 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #24
	.cfi_def_cfa_offset 32
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	str	r1, [r7]
	.loc 1 786 21
	ldr	r3, [r7, #4]
	adds	r3, r3, #100
	ldrh	r3, [r3]
	.loc 1 786 36
	lsrs	r3, r3, #10
	uxth	r3, r3
	vmov	s15, r3	@ int
	.loc 1 786 12
	vcvt.f32.s32	s15, s15
	vstr.32	s15, [r7, #20]
	.loc 1 787 7
	vldr.32	s15, [r7, #20]
	vmov.f32	s14, #3.1e+1
	vcmpe.f32	s15, s14
	vmrs	APSR_nzcv, FPSCR
	ble	.L174
	.loc 1 789 16
	vldr.32	s15, [r7, #20]
	vldr.32	s14, .L180
	vsub.f32	s15, s15, s14
	vstr.32	s15, [r7, #20]
.L174:
	.loc 1 791 12
	vldr.32	s14, [r7, #20]
	vldr.32	s13, .L180+4
	vdiv.f32	s15, s14, s13
	vstr.32	s15, [r7, #20]
	.loc 1 793 20
	ldr	r3, [r7, #4]
	adds	r3, r3, #100
	ldrh	r3, [r3]
	.loc 1 793 25
	ubfx	r3, r3, #0, #10
	.loc 1 793 12
	vmov	s15, r3	@ int
	vcvt.f32.s32	s15, s15
	vstr.32	s15, [r7, #16]
	.loc 1 794 7
	vldr.32	s15, [r7, #16]
	vldr.32	s14, .L180+8
	vcmpe.f32	s15, s14
	vmrs	APSR_nzcv, FPSCR
	ble	.L176
	.loc 1 796 16
	vldr.32	s15, [r7, #16]
	vldr.32	s14, .L180+12
	vsub.f32	s15, s15, s14
	vstr.32	s15, [r7, #16]
.L176:
	.loc 1 798 12
	vldr.32	s14, [r7, #16]
	vmov.f32	s13, #8.0e+0
	vdiv.f32	s15, s14, s13
	vstr.32	s15, [r7, #16]
	.loc 1 800 21
	ldr	r3, [r7, #4]
	adds	r3, r3, #98
	ldrh	r3, [r3]
	.loc 1 800 13
	strh	r3, [r7, #14]	@ movhi
	.loc 1 802 24
	ldr	r3, [r7, #4]
	adds	r3, r3, #32
	ldrh	r3, [r3]
	.loc 1 802 29
	and	r3, r3, #61440
	.loc 1 802 39
	mov	r0, r3
	bl	__aeabi_i2d
	mov	r2, #0
	ldr	r3, .L180+16
	bl	__aeabi_ddiv
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	.loc 1 802 60
	mov	r2, #0
	ldr	r3, .L180+20
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	.loc 1 802 15
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_d2f
	mov	r3, r0	@ float
	str	r3, [r7, #8]	@ float
	.loc 1 804 22
	ldr	r3, [r7]
	ldr	r2, [r7, #20]	@ float
	str	r2, [r3, #4]	@ float
	.loc 1 805 22
	ldr	r3, [r7]
	ldr	r2, [r7, #16]	@ float
	str	r2, [r3, #8]	@ float
	.loc 1 806 23
	ldrh	r2, [r7, #14]
	ldr	r3, [r7]
	strh	r2, [r3, #12]	@ movhi
	.loc 1 807 25
	ldr	r3, [r7]
	ldr	r2, [r7, #8]	@ float
	str	r2, [r3, #16]	@ float
	.loc 1 808 1
	nop
	adds	r7, r7, #24
	.cfi_def_cfa_offset 8
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
.L181:
	.align	2
.L180:
	.word	1115684864
	.word	1166016512
	.word	1140817920
	.word	1149239296
	.word	1087373312
	.word	1075838976
	.cfi_endproc
.LFE21:
	.size	ExtractPTATParameters, .-ExtractPTATParameters
	.section	.text.ExtractGainParameters,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	ExtractGainParameters, %function
ExtractGainParameters:
.LFB22:
	.loc 1 813 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	sub	sp, sp, #12
	.cfi_def_cfa_offset 16
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	str	r1, [r7]
	.loc 1 814 39
	ldr	r3, [r7, #4]
	adds	r3, r3, #96
	ldrh	r3, [r3]
	.loc 1 814 24
	sxth	r2, r3
	.loc 1 814 22
	ldr	r3, [r7]
	strh	r2, [r3, #20]	@ movhi
	.loc 1 815 1
	nop
	adds	r7, r7, #12
	.cfi_def_cfa_offset 4
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	ldr	r7, [sp], #4
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE22:
	.size	ExtractGainParameters, .-ExtractGainParameters
	.section	.text.ExtractTgcParameters,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	ExtractTgcParameters, %function
ExtractTgcParameters:
.LFB23:
	.loc 1 820 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	sub	sp, sp, #12
	.cfi_def_cfa_offset 16
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	str	r1, [r7]
	.loc 1 821 36
	ldr	r3, [r7, #4]
	adds	r3, r3, #120
	ldrh	r3, [r3]
	.loc 1 821 21
	sxtb	r3, r3
	.loc 1 821 51
	vmov	s15, r3	@ int
	vcvt.f32.s32	s14, s15
	vldr.32	s13, .L184
	vdiv.f32	s15, s14, s13
	.loc 1 821 19
	ldr	r3, [r7]
	vstr.32	s15, [r3, #24]
	.loc 1 822 1
	nop
	adds	r7, r7, #12
	.cfi_def_cfa_offset 4
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	ldr	r7, [sp], #4
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr
.L185:
	.align	2
.L184:
	.word	1107296256
	.cfi_endproc
.LFE23:
	.size	ExtractTgcParameters, .-ExtractTgcParameters
	.section	.text.ExtractResolutionParameters,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	ExtractResolutionParameters, %function
ExtractResolutionParameters:
.LFB24:
	.loc 1 827 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	sub	sp, sp, #20
	.cfi_def_cfa_offset 24
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	str	r1, [r7]
	.loc 1 829 27
	ldr	r3, [r7, #4]
	adds	r3, r3, #112
	ldrh	r3, [r3]
	.loc 1 829 42
	asrs	r3, r3, #12
	uxtb	r3, r3
	.loc 1 829 18
	and	r3, r3, #3
	strb	r3, [r7, #15]
	.loc 1 831 28
	ldr	r3, [r7]
	ldrb	r2, [r7, #15]
	strb	r2, [r3, #36]
	.loc 1 832 1
	nop
	adds	r7, r7, #20
	.cfi_def_cfa_offset 4
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	ldr	r7, [sp], #4
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE24:
	.size	ExtractResolutionParameters, .-ExtractResolutionParameters
	.section	.text.ExtractKsTaParameters,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	ExtractKsTaParameters, %function
ExtractKsTaParameters:
.LFB25:
	.loc 1 837 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	sub	sp, sp, #12
	.cfi_def_cfa_offset 16
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	str	r1, [r7]
	.loc 1 838 38
	ldr	r3, [r7, #4]
	adds	r3, r3, #120
	ldrh	r3, [r3]
	.loc 1 838 53
	lsrs	r3, r3, #8
	uxth	r3, r3
	.loc 1 838 22
	sxtb	r3, r3
	.loc 1 838 59
	vmov	s15, r3	@ int
	vcvt.f32.s32	s14, s15
	vldr.32	s13, .L188
	vdiv.f32	s15, s14, s13
	.loc 1 838 20
	ldr	r3, [r7]
	vstr.32	s15, [r3, #40]
	.loc 1 839 1
	nop
	adds	r7, r7, #12
	.cfi_def_cfa_offset 4
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	ldr	r7, [sp], #4
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr
.L189:
	.align	2
.L188:
	.word	1174405120
	.cfi_endproc
.LFE25:
	.size	ExtractKsTaParameters, .-ExtractKsTaParameters
	.section	.text.ExtractKsToParameters,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	ExtractKsToParameters, %function
ExtractKsToParameters:
.LFB26:
	.loc 1 844 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	sub	sp, sp, #20
	.cfi_def_cfa_offset 24
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	str	r1, [r7]
	.loc 1 848 20
	ldr	r3, [r7, #4]
	adds	r3, r3, #126
	ldrh	r3, [r3]
	.loc 1 848 35
	asrs	r3, r3, #12
	.loc 1 848 10
	uxtb	r3, r3
	and	r3, r3, #3
	uxtb	r3, r3
	mov	r2, r3
	lsls	r2, r2, #2
	add	r3, r3, r2
	lsls	r3, r3, #1
	uxtb	r3, r3
	strb	r3, [r7, #15]
	.loc 1 850 21
	ldr	r3, [r7]
	movw	r2, #65496
	strh	r2, [r3, #64]	@ movhi
	.loc 1 851 21
	ldr	r3, [r7]
	movs	r2, #0
	strh	r2, [r3, #66]	@ movhi
	.loc 1 852 31
	ldr	r3, [r7, #4]
	adds	r3, r3, #126
	ldrh	r3, [r3]
	.loc 1 852 46
	asrs	r3, r3, #4
	sxth	r3, r3
	and	r3, r3, #15
	sxth	r2, r3
	.loc 1 852 21
	ldr	r3, [r7]
	strh	r2, [r3, #68]	@ movhi
	.loc 1 853 31
	ldr	r3, [r7, #4]
	adds	r3, r3, #126
	ldrh	r3, [r3]
	.loc 1 853 46
	asrs	r3, r3, #8
	sxth	r3, r3
	and	r3, r3, #15
	sxth	r2, r3
	.loc 1 853 21
	ldr	r3, [r7]
	strh	r2, [r3, #70]	@ movhi
	.loc 1 855 35
	ldr	r3, [r7]
	ldrsh	r3, [r3, #68]
	uxth	r2, r3
	.loc 1 855 38
	ldrsb	r3, [r7, #15]
	uxth	r3, r3
	smulbb	r3, r2, r3
	uxth	r3, r3
	sxth	r2, r3
	.loc 1 855 21
	ldr	r3, [r7]
	strh	r2, [r3, #68]	@ movhi
	.loc 1 856 35
	ldr	r3, [r7]
	ldrsh	r3, [r3, #68]
	uxth	r2, r3
	.loc 1 856 53
	ldr	r3, [r7]
	ldrsh	r3, [r3, #70]
	uxth	r1, r3
	.loc 1 856 56
	ldrsb	r3, [r7, #15]
	uxth	r3, r3
	smulbb	r3, r1, r3
	uxth	r3, r3
	.loc 1 856 39
	add	r3, r3, r2
	uxth	r3, r3
	sxth	r2, r3
	.loc 1 856 21
	ldr	r3, [r7]
	strh	r2, [r3, #70]	@ movhi
	.loc 1 857 21
	ldr	r3, [r7]
	mov	r2, #400
	strh	r2, [r3, #72]	@ movhi
	.loc 1 859 25
	ldr	r3, [r7, #4]
	adds	r3, r3, #126
	ldrh	r3, [r3]
	.loc 1 859 30
	and	r3, r3, #15
	.loc 1 859 15
	adds	r3, r3, #8
	str	r3, [r7, #8]
	.loc 1 860 21
	movs	r2, #1
	ldr	r3, [r7, #8]
	lsl	r3, r2, r3
	.loc 1 860 15
	str	r3, [r7, #8]
	.loc 1 862 40
	ldr	r3, [r7, #4]
	adds	r3, r3, #122
	ldrh	r3, [r3]
	.loc 1 862 25
	sxtb	r3, r3
	.loc 1 862 55
	vmov	s15, r3	@ int
	vcvt.f32.s32	s13, s15
	.loc 1 862 57
	ldr	r3, [r7, #8]
	vmov	s15, r3	@ int
	vcvt.f32.s32	s14, s15
	.loc 1 862 55
	vdiv.f32	s15, s13, s14
	.loc 1 862 23
	ldr	r3, [r7]
	vstr.32	s15, [r3, #44]
	.loc 1 863 41
	ldr	r3, [r7, #4]
	adds	r3, r3, #122
	ldrh	r3, [r3]
	.loc 1 863 56
	lsrs	r3, r3, #8
	uxth	r3, r3
	.loc 1 863 25
	sxtb	r3, r3
	.loc 1 863 62
	vmov	s15, r3	@ int
	vcvt.f32.s32	s13, s15
	.loc 1 863 64
	ldr	r3, [r7, #8]
	vmov	s15, r3	@ int
	vcvt.f32.s32	s14, s15
	.loc 1 863 62
	vdiv.f32	s15, s13, s14
	.loc 1 863 23
	ldr	r3, [r7]
	vstr.32	s15, [r3, #48]
	.loc 1 864 40
	ldr	r3, [r7, #4]
	adds	r3, r3, #124
	ldrh	r3, [r3]
	.loc 1 864 25
	sxtb	r3, r3
	.loc 1 864 55
	vmov	s15, r3	@ int
	vcvt.f32.s32	s13, s15
	.loc 1 864 57
	ldr	r3, [r7, #8]
	vmov	s15, r3	@ int
	vcvt.f32.s32	s14, s15
	.loc 1 864 55
	vdiv.f32	s15, s13, s14
	.loc 1 864 23
	ldr	r3, [r7]
	vstr.32	s15, [r3, #52]
	.loc 1 865 41
	ldr	r3, [r7, #4]
	adds	r3, r3, #124
	ldrh	r3, [r3]
	.loc 1 865 56
	lsrs	r3, r3, #8
	uxth	r3, r3
	.loc 1 865 25
	sxtb	r3, r3
	.loc 1 865 62
	vmov	s15, r3	@ int
	vcvt.f32.s32	s13, s15
	.loc 1 865 64
	ldr	r3, [r7, #8]
	vmov	s15, r3	@ int
	vcvt.f32.s32	s14, s15
	.loc 1 865 62
	vdiv.f32	s15, s13, s14
	.loc 1 865 23
	ldr	r3, [r7]
	vstr.32	s15, [r3, #56]
	.loc 1 866 23
	ldr	r3, [r7]
	ldr	r2, .L191
	str	r2, [r3, #60]	@ float
	.loc 1 867 1
	nop
	adds	r7, r7, #20
	.cfi_def_cfa_offset 4
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	ldr	r7, [sp], #4
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr
.L192:
	.align	2
.L191:
	.word	-1185827049
	.cfi_endproc
.LFE26:
	.size	ExtractKsToParameters, .-ExtractKsToParameters
	.global	__aeabi_dcmplt
	.global	__aeabi_d2uiz
	.section	.text.ExtractAlphaParameters,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	ExtractAlphaParameters, %function
ExtractAlphaParameters:
.LFB27:
	.loc 1 872 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 3360
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #3360
	.cfi_def_cfa_offset 3376
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	add	r3, r7, #3360
	subw	r3, r3, #3356
	str	r0, [r3]
	add	r3, r7, #3360
	sub	r3, r3, #3360
	str	r1, [r3]
	.loc 1 875 9
	movs	r3, #0
	str	r3, [r7, #3316]
	.loc 1 885 27
	add	r3, r7, #3360
	subw	r3, r3, #3356
	ldr	r3, [r3]
	adds	r3, r3, #64
	ldrh	r3, [r3]
	.loc 1 885 32
	uxtb	r3, r3
	.loc 1 885 17
	and	r3, r3, #15
	strb	r3, [r7, #3315]
	.loc 1 886 30
	add	r3, r7, #3360
	subw	r3, r3, #3356
	ldr	r3, [r3]
	adds	r3, r3, #64
	ldrh	r3, [r3]
	.loc 1 886 45
	asrs	r3, r3, #4
	uxtb	r3, r3
	.loc 1 886 20
	and	r3, r3, #15
	strb	r3, [r7, #3314]
	.loc 1 887 27
	add	r3, r7, #3360
	subw	r3, r3, #3356
	ldr	r3, [r3]
	adds	r3, r3, #64
	ldrh	r3, [r3]
	.loc 1 887 42
	asrs	r3, r3, #8
	uxtb	r3, r3
	.loc 1 887 17
	and	r3, r3, #15
	strb	r3, [r7, #3313]
	.loc 1 888 26
	add	r3, r7, #3360
	subw	r3, r3, #3356
	ldr	r3, [r3]
	adds	r3, r3, #64
	ldrh	r3, [r3]
	.loc 1 888 41
	lsrs	r3, r3, #12
	uxth	r3, r3
	.loc 1 888 48
	uxtb	r3, r3
	.loc 1 888 16
	adds	r3, r3, #30
	strb	r3, [r7, #3359]
	.loc 1 889 22
	add	r3, r7, #3360
	subw	r3, r3, #3356
	ldr	r3, [r3]
	adds	r3, r3, #66
	ldrh	r3, [r3]
	.loc 1 889 14
	str	r3, [r7, #3308]
.LBB11:
	.loc 1 891 13
	movs	r3, #0
	str	r3, [r7, #3348]
	.loc 1 891 5
	b	.L194
.L195:
	.loc 1 893 11 discriminator 3
	ldr	r3, [r7, #3348]
	lsls	r3, r3, #2
	str	r3, [r7, #3316]
	.loc 1 894 37 discriminator 3
	ldr	r3, [r7, #3348]
	adds	r3, r3, #34
	.loc 1 894 33 discriminator 3
	lsls	r3, r3, #1
	add	r2, r7, #3360
	subw	r2, r2, #3356
	ldr	r2, [r2]
	add	r3, r3, r2
	ldrh	r3, [r3]
	.loc 1 894 42 discriminator 3
	and	r2, r3, #15
	.loc 1 894 23 discriminator 3
	ldr	r3, [r7, #3316]
	lsls	r3, r3, #2
	add	r3, r3, #3360
	add	r3, r3, r7
	str	r2, [r3, #-148]
	.loc 1 895 37 discriminator 3
	ldr	r3, [r7, #3348]
	adds	r3, r3, #34
	.loc 1 895 33 discriminator 3
	lsls	r3, r3, #1
	add	r2, r7, #3360
	subw	r2, r2, #3356
	ldr	r2, [r2]
	add	r3, r3, r2
	ldrh	r3, [r3]
	.loc 1 895 52 discriminator 3
	asrs	r2, r3, #4
	.loc 1 895 18 discriminator 3
	ldr	r3, [r7, #3316]
	adds	r3, r3, #1
	.loc 1 895 52 discriminator 3
	and	r2, r2, #15
	.loc 1 895 23 discriminator 3
	lsls	r3, r3, #2
	add	r3, r3, #3360
	add	r3, r3, r7
	str	r2, [r3, #-148]
	.loc 1 896 37 discriminator 3
	ldr	r3, [r7, #3348]
	adds	r3, r3, #34
	.loc 1 896 33 discriminator 3
	lsls	r3, r3, #1
	add	r2, r7, #3360
	subw	r2, r2, #3356
	ldr	r2, [r2]
	add	r3, r3, r2
	ldrh	r3, [r3]
	.loc 1 896 52 discriminator 3
	asrs	r2, r3, #8
	.loc 1 896 18 discriminator 3
	ldr	r3, [r7, #3316]
	adds	r3, r3, #2
	.loc 1 896 52 discriminator 3
	and	r2, r2, #15
	.loc 1 896 23 discriminator 3
	lsls	r3, r3, #2
	add	r3, r3, #3360
	add	r3, r3, r7
	str	r2, [r3, #-148]
	.loc 1 897 37 discriminator 3
	ldr	r3, [r7, #3348]
	adds	r3, r3, #34
	.loc 1 897 33 discriminator 3
	lsls	r3, r3, #1
	add	r2, r7, #3360
	subw	r2, r2, #3356
	ldr	r2, [r2]
	add	r3, r3, r2
	ldrh	r3, [r3]
	.loc 1 897 52 discriminator 3
	lsrs	r3, r3, #12
	uxth	r2, r3
	.loc 1 897 18 discriminator 3
	ldr	r3, [r7, #3316]
	adds	r3, r3, #3
	.loc 1 897 23 discriminator 3
	lsls	r3, r3, #2
	add	r3, r3, #3360
	add	r3, r3, r7
	str	r2, [r3, #-148]
	.loc 1 891 28 discriminator 3
	ldr	r3, [r7, #3348]
	adds	r3, r3, #1
	str	r3, [r7, #3348]
.L194:
	.loc 1 891 22 discriminator 1
	ldr	r3, [r7, #3348]
	cmp	r3, #5
	ble	.L195
.LBE11:
.LBB12:
	.loc 1 900 13
	movs	r3, #0
	str	r3, [r7, #3344]
	.loc 1 900 5
	b	.L196
.L198:
	.loc 1 902 19
	ldr	r3, [r7, #3344]
	lsls	r3, r3, #2
	add	r3, r3, #3360
	add	r3, r3, r7
	ldr	r3, [r3, #-148]
	.loc 1 902 12
	cmp	r3, #7
	ble	.L197
	.loc 1 904 31
	ldr	r3, [r7, #3344]
	lsls	r3, r3, #2
	add	r3, r3, #3360
	add	r3, r3, r7
	ldr	r3, [r3, #-148]
	.loc 1 904 35
	sub	r2, r3, #16
	.loc 1 904 23
	ldr	r3, [r7, #3344]
	lsls	r3, r3, #2
	add	r3, r3, #3360
	add	r3, r3, r7
	str	r2, [r3, #-148]
.L197:
	.loc 1 900 29 discriminator 2
	ldr	r3, [r7, #3344]
	adds	r3, r3, #1
	str	r3, [r7, #3344]
.L196:
	.loc 1 900 22 discriminator 1
	ldr	r3, [r7, #3344]
	cmp	r3, #23
	ble	.L198
.LBE12:
.LBB13:
	.loc 1 908 13
	movs	r3, #0
	str	r3, [r7, #3340]
	.loc 1 908 5
	b	.L199
.L200:
	.loc 1 910 11 discriminator 3
	ldr	r3, [r7, #3340]
	lsls	r3, r3, #2
	str	r3, [r7, #3316]
	.loc 1 911 40 discriminator 3
	ldr	r3, [r7, #3340]
	adds	r3, r3, #40
	.loc 1 911 36 discriminator 3
	lsls	r3, r3, #1
	add	r2, r7, #3360
	subw	r2, r2, #3356
	ldr	r2, [r2]
	add	r3, r3, r2
	ldrh	r3, [r3]
	.loc 1 911 45 discriminator 3
	and	r1, r3, #15
	.loc 1 911 26 discriminator 3
	add	r3, r7, #3360
	sub	r3, r3, #276
	ldr	r2, [r7, #3316]
	str	r1, [r3, r2, lsl #2]
	.loc 1 912 40 discriminator 3
	ldr	r3, [r7, #3340]
	adds	r3, r3, #40
	.loc 1 912 36 discriminator 3
	lsls	r3, r3, #1
	add	r2, r7, #3360
	subw	r2, r2, #3356
	ldr	r2, [r2]
	add	r3, r3, r2
	ldrh	r3, [r3]
	.loc 1 912 55 discriminator 3
	asrs	r3, r3, #4
	.loc 1 912 21 discriminator 3
	ldr	r2, [r7, #3316]
	adds	r2, r2, #1
	.loc 1 912 55 discriminator 3
	and	r1, r3, #15
	.loc 1 912 26 discriminator 3
	add	r3, r7, #3360
	sub	r3, r3, #276
	str	r1, [r3, r2, lsl #2]
	.loc 1 913 40 discriminator 3
	ldr	r3, [r7, #3340]
	adds	r3, r3, #40
	.loc 1 913 36 discriminator 3
	lsls	r3, r3, #1
	add	r2, r7, #3360
	subw	r2, r2, #3356
	ldr	r2, [r2]
	add	r3, r3, r2
	ldrh	r3, [r3]
	.loc 1 913 55 discriminator 3
	asrs	r3, r3, #8
	.loc 1 913 21 discriminator 3
	ldr	r2, [r7, #3316]
	adds	r2, r2, #2
	.loc 1 913 55 discriminator 3
	and	r1, r3, #15
	.loc 1 913 26 discriminator 3
	add	r3, r7, #3360
	sub	r3, r3, #276
	str	r1, [r3, r2, lsl #2]
	.loc 1 914 40 discriminator 3
	ldr	r3, [r7, #3340]
	adds	r3, r3, #40
	.loc 1 914 36 discriminator 3
	lsls	r3, r3, #1
	add	r2, r7, #3360
	subw	r2, r2, #3356
	ldr	r2, [r2]
	add	r3, r3, r2
	ldrh	r3, [r3]
	.loc 1 914 55 discriminator 3
	lsrs	r3, r3, #12
	uxth	r1, r3
	.loc 1 914 21 discriminator 3
	ldr	r3, [r7, #3316]
	adds	r2, r3, #3
	.loc 1 914 26 discriminator 3
	add	r3, r7, #3360
	sub	r3, r3, #276
	str	r1, [r3, r2, lsl #2]
	.loc 1 908 28 discriminator 3
	ldr	r3, [r7, #3340]
	adds	r3, r3, #1
	str	r3, [r7, #3340]
.L199:
	.loc 1 908 22 discriminator 1
	ldr	r3, [r7, #3340]
	cmp	r3, #7
	ble	.L200
.LBE13:
.LBB14:
	.loc 1 917 13
	movs	r3, #0
	str	r3, [r7, #3336]
	.loc 1 917 5
	b	.L201
.L203:
	.loc 1 919 22
	add	r3, r7, #3360
	sub	r3, r3, #276
	ldr	r2, [r7, #3336]
	ldr	r3, [r3, r2, lsl #2]
	.loc 1 919 12
	cmp	r3, #7
	ble	.L202
	.loc 1 921 37
	add	r3, r7, #3360
	sub	r3, r3, #276
	ldr	r2, [r7, #3336]
	ldr	r3, [r3, r2, lsl #2]
	.loc 1 921 41
	sub	r1, r3, #16
	.loc 1 921 26
	add	r3, r7, #3360
	sub	r3, r3, #276
	ldr	r2, [r7, #3336]
	str	r1, [r3, r2, lsl #2]
.L202:
	.loc 1 917 29 discriminator 2
	ldr	r3, [r7, #3336]
	adds	r3, r3, #1
	str	r3, [r7, #3336]
.L201:
	.loc 1 917 22 discriminator 1
	ldr	r3, [r7, #3336]
	cmp	r3, #31
	ble	.L203
.LBE14:
.LBB15:
	.loc 1 925 13
	movs	r3, #0
	str	r3, [r7, #3332]
	.loc 1 925 5
	b	.L204
.L209:
.LBB16:
	.loc 1 927 17
	movs	r3, #0
	str	r3, [r7, #3328]
	.loc 1 927 9
	b	.L205
.L208:
	.loc 1 929 20
	ldr	r3, [r7, #3332]
	lsls	r3, r3, #5
	.loc 1 929 15
	ldr	r2, [r7, #3328]
	add	r3, r3, r2
	str	r3, [r7, #3316]
	.loc 1 930 39
	ldr	r3, [r7, #3316]
	adds	r3, r3, #64
	.loc 1 930 35
	lsls	r3, r3, #1
	add	r2, r7, #3360
	subw	r2, r2, #3356
	ldr	r2, [r2]
	add	r3, r3, r2
	ldrh	r3, [r3]
	.loc 1 930 54
	asrs	r3, r3, #4
	and	r3, r3, #63
	.loc 1 930 26
	vmov	s15, r3	@ int
	vcvt.f32.s32	s15, s15
	add	r3, r7, #3360
	subw	r2, r3, #3348
	ldr	r3, [r7, #3316]
	lsls	r3, r3, #2
	add	r3, r3, r2
	vstr.32	s15, [r3]
	.loc 1 931 26
	add	r3, r7, #3360
	subw	r2, r3, #3348
	ldr	r3, [r7, #3316]
	lsls	r3, r3, #2
	add	r3, r3, r2
	vldr.32	s15, [r3]
	.loc 1 931 16
	vmov.f32	s14, #3.1e+1
	vcmpe.f32	s15, s14
	vmrs	APSR_nzcv, FPSCR
	ble	.L206
	.loc 1 933 41
	add	r3, r7, #3360
	subw	r2, r3, #3348
	ldr	r3, [r7, #3316]
	lsls	r3, r3, #2
	add	r3, r3, r2
	vldr.32	s15, [r3]
	.loc 1 933 45
	vldr.32	s14, .L220+24
	vsub.f32	s15, s15, s14
	.loc 1 933 30
	add	r3, r7, #3360
	subw	r2, r3, #3348
	ldr	r3, [r7, #3316]
	lsls	r3, r3, #2
	add	r3, r3, r2
	vstr.32	s15, [r3]
.L206:
	.loc 1 935 37 discriminator 2
	add	r3, r7, #3360
	subw	r2, r3, #3348
	ldr	r3, [r7, #3316]
	lsls	r3, r3, #2
	add	r3, r3, r2
	vldr.32	s14, [r3]
	.loc 1 935 44 discriminator 2
	ldrb	r3, [r7, #3315]	@ zero_extendqisi2
	movs	r2, #1
	lsl	r3, r2, r3
	.loc 1 935 40 discriminator 2
	vmov	s15, r3	@ int
	vcvt.f32.s32	s15, s15
	vmul.f32	s15, s14, s15
	.loc 1 935 26 discriminator 2
	add	r3, r7, #3360
	subw	r2, r3, #3348
	ldr	r3, [r7, #3316]
	lsls	r3, r3, #2
	add	r3, r3, r2
	vstr.32	s15, [r3]
	.loc 1 936 47 discriminator 2
	ldr	r3, [r7, #3332]
	lsls	r3, r3, #2
	add	r3, r3, #3360
	add	r3, r3, r7
	ldr	r2, [r3, #-148]
	.loc 1 936 51 discriminator 2
	ldrb	r3, [r7, #3313]	@ zero_extendqisi2
	lsls	r2, r2, r3
	.loc 1 936 38 discriminator 2
	ldr	r3, [r7, #3308]
	add	r2, r2, r3
	.loc 1 936 79 discriminator 2
	add	r3, r7, #3360
	sub	r3, r3, #276
	ldr	r1, [r7, #3328]
	ldr	r1, [r3, r1, lsl #2]
	.loc 1 936 83 discriminator 2
	ldrb	r3, [r7, #3314]	@ zero_extendqisi2
	lsl	r3, r1, r3
	.loc 1 936 67 discriminator 2
	add	r3, r3, r2
	.loc 1 936 102 discriminator 2
	vmov	s15, r3	@ int
	vcvt.f32.s32	s14, s15
	.loc 1 936 113 discriminator 2
	add	r3, r7, #3360
	subw	r2, r3, #3348
	ldr	r3, [r7, #3316]
	lsls	r3, r3, #2
	add	r3, r3, r2
	vldr.32	s15, [r3]
	.loc 1 936 102 discriminator 2
	vadd.f32	s15, s14, s15
	.loc 1 936 26 discriminator 2
	add	r3, r7, #3360
	subw	r2, r3, #3348
	ldr	r3, [r7, #3316]
	lsls	r3, r3, #2
	add	r3, r3, r2
	vstr.32	s15, [r3]
	.loc 1 937 37 discriminator 2
	add	r3, r7, #3360
	subw	r2, r3, #3348
	ldr	r3, [r7, #3316]
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3]	@ float
	mov	r0, r3	@ float
	bl	__aeabi_f2d
	mov	r4, r0
	mov	r5, r1
	.loc 1 937 43 discriminator 2
	ldrb	r3, [r7, #3359]	@ zero_extendqisi2
	mov	r0, r3
	bl	__aeabi_ui2d
	mov	r2, r0
	mov	r3, r1
	vmov	d1, r2, r3
	vldr.64	d0, .L220
	bl	pow
	vmov	r2, r3, d0
	.loc 1 937 41 discriminator 2
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_ddiv
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_d2f
	mov	r1, r0	@ float
	.loc 1 937 26 discriminator 2
	add	r3, r7, #3360
	subw	r2, r3, #3348
	ldr	r3, [r7, #3316]
	lsls	r3, r3, #2
	add	r3, r3, r2
	str	r1, [r3]	@ float
	.loc 1 938 37 discriminator 2
	add	r3, r7, #3360
	subw	r2, r3, #3348
	ldr	r3, [r7, #3316]
	lsls	r3, r3, #2
	add	r3, r3, r2
	vldr.32	s14, [r3]
	.loc 1 938 51 discriminator 2
	add	r3, r7, #3360
	sub	r3, r3, #3360
	ldr	r3, [r3]
	vldr.32	s13, [r3, #24]
	.loc 1 938 77 discriminator 2
	add	r3, r7, #3360
	sub	r3, r3, #3360
	ldr	r3, [r3]
	add	r3, r3, #4096
	vldr.32	s12, [r3, #592]
	.loc 1 938 100 discriminator 2
	add	r3, r7, #3360
	sub	r3, r3, #3360
	ldr	r3, [r3]
	add	r3, r3, #4096
	vldr.32	s15, [r3, #596]
	.loc 1 938 81 discriminator 2
	vadd.f32	s15, s12, s15
	.loc 1 938 57 discriminator 2
	vmul.f32	s13, s13, s15
	.loc 1 938 104 discriminator 2
	vmov.f32	s12, #2.0e+0
	vdiv.f32	s15, s13, s12
	.loc 1 938 41 discriminator 2
	vsub.f32	s15, s14, s15
	.loc 1 938 26 discriminator 2
	add	r3, r7, #3360
	subw	r2, r3, #3348
	ldr	r3, [r7, #3316]
	lsls	r3, r3, #2
	add	r3, r3, r2
	vstr.32	s15, [r3]
	.loc 1 939 46 discriminator 2
	add	r3, r7, #3360
	subw	r2, r3, #3348
	ldr	r3, [r7, #3316]
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3]	@ float
	mov	r0, r3	@ float
	bl	__aeabi_f2d
	mov	r2, r0
	mov	r3, r1
	.loc 1 939 36 discriminator 2
	adr	r1, .L220+8
	ldrd	r0, [r1]
	bl	__aeabi_ddiv
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_d2f
	mov	r1, r0	@ float
	.loc 1 939 26 discriminator 2
	add	r3, r7, #3360
	subw	r2, r3, #3348
	ldr	r3, [r7, #3316]
	lsls	r3, r3, #2
	add	r3, r3, r2
	str	r1, [r3]	@ float
	.loc 1 927 34 discriminator 2
	ldr	r3, [r7, #3328]
	adds	r3, r3, #1
	str	r3, [r7, #3328]
.L205:
	.loc 1 927 26 discriminator 1
	ldr	r3, [r7, #3328]
	cmp	r3, #31
	ble	.L208
.LBE16:
	.loc 1 925 29 discriminator 2
	ldr	r3, [r7, #3332]
	adds	r3, r3, #1
	str	r3, [r7, #3332]
.L204:
	.loc 1 925 22 discriminator 1
	ldr	r3, [r7, #3332]
	cmp	r3, #23
	ble	.L209
.LBE15:
	.loc 1 943 10
	add	r3, r7, #3360
	subw	r3, r3, #3348
	ldr	r3, [r3]	@ float
	addw	r2, r7, #3352
	str	r3, [r2]	@ float
.LBB17:
	.loc 1 944 13
	movs	r3, #1
	str	r3, [r7, #3324]
	.loc 1 944 5
	b	.L210
.L213:
	.loc 1 946 22
	add	r3, r7, #3360
	subw	r2, r3, #3348
	ldr	r3, [r7, #3324]
	lsls	r3, r3, #2
	add	r3, r3, r2
	vldr.32	s15, [r3]
	.loc 1 946 12
	addw	r3, r7, #3352
	vldr.32	s14, [r3]
	vcmpe.f32	s14, s15
	vmrs	APSR_nzcv, FPSCR
	bpl	.L211
	.loc 1 948 18
	add	r3, r7, #3360
	subw	r2, r3, #3348
	ldr	r3, [r7, #3324]
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3]	@ float
	addw	r2, r7, #3352
	str	r3, [r2]	@ float
.L211:
	.loc 1 944 30 discriminator 2
	ldr	r3, [r7, #3324]
	adds	r3, r3, #1
	str	r3, [r7, #3324]
.L210:
	.loc 1 944 22 discriminator 1
	ldr	r3, [r7, #3324]
	cmp	r3, #768
	blt	.L213
.LBE17:
	.loc 1 952 16
	movs	r3, #0
	strb	r3, [r7, #3359]
	.loc 1 953 10
	b	.L214
.L215:
	.loc 1 955 14
	addw	r3, r7, #3352
	vldr.32	s15, [r3]
	vadd.f32	s15, s15, s15
	addw	r3, r7, #3352
	vstr.32	s15, [r3]
	.loc 1 956 20
	ldrb	r3, [r7, #3359]
	adds	r3, r3, #1
	strb	r3, [r7, #3359]
.L214:
	.loc 1 953 16
	addw	r3, r7, #3352
	ldr	r0, [r3]	@ float
	bl	__aeabi_f2d
	adr	r3, .L220+16
	ldrd	r2, [r3]
	bl	__aeabi_dcmplt
	mov	r3, r0
	cmp	r3, #0
	bne	.L215
.LBB18:
	.loc 1 959 13
	movs	r3, #0
	str	r3, [r7, #3320]
	.loc 1 959 5
	b	.L216
.L217:
	.loc 1 961 25 discriminator 3
	add	r3, r7, #3360
	subw	r2, r3, #3348
	ldr	r3, [r7, #3320]
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3]	@ float
	mov	r0, r3	@ float
	bl	__aeabi_f2d
	mov	r4, r0
	mov	r5, r1
	.loc 1 961 31 discriminator 3
	ldrb	r3, [r7, #3359]	@ zero_extendqisi2
	mov	r0, r3
	bl	__aeabi_ui2d
	mov	r2, r0
	mov	r3, r1
	vmov	d1, r2, r3
	vldr.64	d0, .L220
	bl	pow
	vmov	r2, r3, d0
	.loc 1 961 29 discriminator 3
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	.loc 1 961 14 discriminator 3
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_d2f
	mov	r3, r0	@ float
	addw	r2, r7, #3352
	str	r3, [r2]	@ float
	.loc 1 962 36 discriminator 3
	addw	r3, r7, #3352
	ldr	r0, [r3]	@ float
	bl	__aeabi_f2d
	mov	r2, #0
	ldr	r3, .L220+28
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	.loc 1 962 28 discriminator 3
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_d2uiz
	mov	r3, r0
	uxth	r1, r3
	add	r3, r7, #3360
	sub	r3, r3, #3360
	ldr	r2, [r3]
	ldr	r3, [r7, #3320]
	adds	r3, r3, #36
	lsls	r3, r3, #1
	add	r3, r3, r2
	mov	r2, r1	@ movhi
	strh	r2, [r3, #2]	@ movhi
	.loc 1 959 30 discriminator 3
	ldr	r3, [r7, #3320]
	adds	r3, r3, #1
	str	r3, [r7, #3320]
.L216:
	.loc 1 959 22 discriminator 1
	ldr	r3, [r7, #3320]
	cmp	r3, #768
	blt	.L217
.LBE18:
	.loc 1 966 26
	add	r3, r7, #3360
	sub	r3, r3, #3360
	ldr	r3, [r3]
	ldrb	r2, [r7, #3359]
	strb	r2, [r3, #1610]
	.loc 1 968 1
	nop
	add	r7, r7, #3360
	.cfi_def_cfa_offset 16
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r4, r5, r7, pc}
.L221:
	.align	3
.L220:
	.word	0
	.word	1073741824
	.word	-1598689907
	.word	1051772663
	.word	-1717986918
	.word	1088421849
	.word	1115684864
	.word	1071644672
	.cfi_endproc
.LFE27:
	.size	ExtractAlphaParameters, .-ExtractAlphaParameters
	.section	.text.ExtractOffsetParameters,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	ExtractOffsetParameters, %function
ExtractOffsetParameters:
.LFB28:
	.loc 1 973 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 272
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	sub	sp, sp, #276
	.cfi_def_cfa_offset 280
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	add	r3, r7, #272
	sub	r3, r3, #268
	str	r0, [r3]
	add	r3, r7, #272
	sub	r3, r3, #272
	str	r1, [r3]
	.loc 1 976 9
	movs	r3, #0
	str	r3, [r7, #244]
	.loc 1 983 27
	add	r3, r7, #272
	sub	r3, r3, #268
	ldr	r3, [r3]
	adds	r3, r3, #32
	ldrh	r3, [r3]
	.loc 1 983 32
	uxtb	r3, r3
	.loc 1 983 17
	and	r3, r3, #15
	strb	r3, [r7, #243]
	.loc 1 984 30
	add	r3, r7, #272
	sub	r3, r3, #268
	ldr	r3, [r3]
	adds	r3, r3, #32
	ldrh	r3, [r3]
	.loc 1 984 45
	asrs	r3, r3, #4
	uxtb	r3, r3
	.loc 1 984 20
	and	r3, r3, #15
	strb	r3, [r7, #242]
	.loc 1 985 27
	add	r3, r7, #272
	sub	r3, r3, #268
	ldr	r3, [r3]
	adds	r3, r3, #32
	ldrh	r3, [r3]
	.loc 1 985 42
	asrs	r3, r3, #8
	uxtb	r3, r3
	.loc 1 985 17
	and	r3, r3, #15
	strb	r3, [r7, #241]
	.loc 1 986 32
	add	r3, r7, #272
	sub	r3, r3, #268
	ldr	r3, [r3]
	adds	r3, r3, #34
	ldrh	r3, [r3]
	.loc 1 986 15
	strh	r3, [r7, #238]	@ movhi
.LBB19:
	.loc 1 988 13
	movs	r3, #0
	str	r3, [r7, #268]
	.loc 1 988 5
	b	.L223
.L224:
	.loc 1 990 11 discriminator 3
	ldr	r3, [r7, #268]
	lsls	r3, r3, #2
	str	r3, [r7, #244]
	.loc 1 991 37 discriminator 3
	ldr	r3, [r7, #268]
	adds	r3, r3, #18
	.loc 1 991 33 discriminator 3
	lsls	r3, r3, #1
	add	r2, r7, #272
	sub	r2, r2, #268
	ldr	r2, [r2]
	add	r3, r3, r2
	ldrh	r3, [r3]
	.loc 1 991 42 discriminator 3
	and	r2, r3, #15
	.loc 1 991 23 discriminator 3
	ldr	r3, [r7, #244]
	lsls	r3, r3, #2
	add	r3, r3, #272
	add	r3, r3, r7
	str	r2, [r3, #-132]
	.loc 1 992 37 discriminator 3
	ldr	r3, [r7, #268]
	adds	r3, r3, #18
	.loc 1 992 33 discriminator 3
	lsls	r3, r3, #1
	add	r2, r7, #272
	sub	r2, r2, #268
	ldr	r2, [r2]
	add	r3, r3, r2
	ldrh	r3, [r3]
	.loc 1 992 52 discriminator 3
	asrs	r2, r3, #4
	.loc 1 992 18 discriminator 3
	ldr	r3, [r7, #244]
	adds	r3, r3, #1
	.loc 1 992 52 discriminator 3
	and	r2, r2, #15
	.loc 1 992 23 discriminator 3
	lsls	r3, r3, #2
	add	r3, r3, #272
	add	r3, r3, r7
	str	r2, [r3, #-132]
	.loc 1 993 37 discriminator 3
	ldr	r3, [r7, #268]
	adds	r3, r3, #18
	.loc 1 993 33 discriminator 3
	lsls	r3, r3, #1
	add	r2, r7, #272
	sub	r2, r2, #268
	ldr	r2, [r2]
	add	r3, r3, r2
	ldrh	r3, [r3]
	.loc 1 993 52 discriminator 3
	asrs	r2, r3, #8
	.loc 1 993 18 discriminator 3
	ldr	r3, [r7, #244]
	adds	r3, r3, #2
	.loc 1 993 52 discriminator 3
	and	r2, r2, #15
	.loc 1 993 23 discriminator 3
	lsls	r3, r3, #2
	add	r3, r3, #272
	add	r3, r3, r7
	str	r2, [r3, #-132]
	.loc 1 994 37 discriminator 3
	ldr	r3, [r7, #268]
	adds	r3, r3, #18
	.loc 1 994 33 discriminator 3
	lsls	r3, r3, #1
	add	r2, r7, #272
	sub	r2, r2, #268
	ldr	r2, [r2]
	add	r3, r3, r2
	ldrh	r3, [r3]
	.loc 1 994 52 discriminator 3
	lsrs	r3, r3, #12
	uxth	r2, r3
	.loc 1 994 18 discriminator 3
	ldr	r3, [r7, #244]
	adds	r3, r3, #3
	.loc 1 994 23 discriminator 3
	lsls	r3, r3, #2
	add	r3, r3, #272
	add	r3, r3, r7
	str	r2, [r3, #-132]
	.loc 1 988 28 discriminator 3
	ldr	r3, [r7, #268]
	adds	r3, r3, #1
	str	r3, [r7, #268]
.L223:
	.loc 1 988 22 discriminator 1
	ldr	r3, [r7, #268]
	cmp	r3, #5
	ble	.L224
.LBE19:
.LBB20:
	.loc 1 997 13
	movs	r3, #0
	str	r3, [r7, #264]
	.loc 1 997 5
	b	.L225
.L227:
	.loc 1 999 19
	ldr	r3, [r7, #264]
	lsls	r3, r3, #2
	add	r3, r3, #272
	add	r3, r3, r7
	ldr	r3, [r3, #-132]
	.loc 1 999 12
	cmp	r3, #7
	ble	.L226
	.loc 1 1001 31
	ldr	r3, [r7, #264]
	lsls	r3, r3, #2
	add	r3, r3, #272
	add	r3, r3, r7
	ldr	r3, [r3, #-132]
	.loc 1 1001 35
	sub	r2, r3, #16
	.loc 1 1001 23
	ldr	r3, [r7, #264]
	lsls	r3, r3, #2
	add	r3, r3, #272
	add	r3, r3, r7
	str	r2, [r3, #-132]
.L226:
	.loc 1 997 29 discriminator 2
	ldr	r3, [r7, #264]
	adds	r3, r3, #1
	str	r3, [r7, #264]
.L225:
	.loc 1 997 22 discriminator 1
	ldr	r3, [r7, #264]
	cmp	r3, #23
	ble	.L227
.LBE20:
.LBB21:
	.loc 1 1005 13
	movs	r3, #0
	str	r3, [r7, #260]
	.loc 1 1005 5
	b	.L228
.L229:
	.loc 1 1007 11 discriminator 3
	ldr	r3, [r7, #260]
	lsls	r3, r3, #2
	str	r3, [r7, #244]
	.loc 1 1008 40 discriminator 3
	ldr	r3, [r7, #260]
	adds	r3, r3, #24
	.loc 1 1008 36 discriminator 3
	lsls	r3, r3, #1
	add	r2, r7, #272
	sub	r2, r2, #268
	ldr	r2, [r2]
	add	r3, r3, r2
	ldrh	r3, [r3]
	.loc 1 1008 45 discriminator 3
	and	r1, r3, #15
	.loc 1 1008 26 discriminator 3
	add	r3, r7, #272
	sub	r3, r3, #260
	ldr	r2, [r7, #244]
	str	r1, [r3, r2, lsl #2]
	.loc 1 1009 40 discriminator 3
	ldr	r3, [r7, #260]
	adds	r3, r3, #24
	.loc 1 1009 36 discriminator 3
	lsls	r3, r3, #1
	add	r2, r7, #272
	sub	r2, r2, #268
	ldr	r2, [r2]
	add	r3, r3, r2
	ldrh	r3, [r3]
	.loc 1 1009 55 discriminator 3
	asrs	r3, r3, #4
	.loc 1 1009 21 discriminator 3
	ldr	r2, [r7, #244]
	adds	r2, r2, #1
	.loc 1 1009 55 discriminator 3
	and	r1, r3, #15
	.loc 1 1009 26 discriminator 3
	add	r3, r7, #272
	sub	r3, r3, #260
	str	r1, [r3, r2, lsl #2]
	.loc 1 1010 40 discriminator 3
	ldr	r3, [r7, #260]
	adds	r3, r3, #24
	.loc 1 1010 36 discriminator 3
	lsls	r3, r3, #1
	add	r2, r7, #272
	sub	r2, r2, #268
	ldr	r2, [r2]
	add	r3, r3, r2
	ldrh	r3, [r3]
	.loc 1 1010 55 discriminator 3
	asrs	r3, r3, #8
	.loc 1 1010 21 discriminator 3
	ldr	r2, [r7, #244]
	adds	r2, r2, #2
	.loc 1 1010 55 discriminator 3
	and	r1, r3, #15
	.loc 1 1010 26 discriminator 3
	add	r3, r7, #272
	sub	r3, r3, #260
	str	r1, [r3, r2, lsl #2]
	.loc 1 1011 40 discriminator 3
	ldr	r3, [r7, #260]
	adds	r3, r3, #24
	.loc 1 1011 36 discriminator 3
	lsls	r3, r3, #1
	add	r2, r7, #272
	sub	r2, r2, #268
	ldr	r2, [r2]
	add	r3, r3, r2
	ldrh	r3, [r3]
	.loc 1 1011 55 discriminator 3
	lsrs	r3, r3, #12
	uxth	r1, r3
	.loc 1 1011 21 discriminator 3
	ldr	r3, [r7, #244]
	adds	r2, r3, #3
	.loc 1 1011 26 discriminator 3
	add	r3, r7, #272
	sub	r3, r3, #260
	str	r1, [r3, r2, lsl #2]
	.loc 1 1005 28 discriminator 3
	ldr	r3, [r7, #260]
	adds	r3, r3, #1
	str	r3, [r7, #260]
.L228:
	.loc 1 1005 22 discriminator 1
	ldr	r3, [r7, #260]
	cmp	r3, #7
	ble	.L229
.LBE21:
.LBB22:
	.loc 1 1014 13
	movs	r3, #0
	str	r3, [r7, #256]
	.loc 1 1014 5
	b	.L230
.L232:
	.loc 1 1016 22
	add	r3, r7, #272
	sub	r3, r3, #260
	ldr	r2, [r7, #256]
	ldr	r3, [r3, r2, lsl #2]
	.loc 1 1016 12
	cmp	r3, #7
	ble	.L231
	.loc 1 1018 37
	add	r3, r7, #272
	sub	r3, r3, #260
	ldr	r2, [r7, #256]
	ldr	r3, [r3, r2, lsl #2]
	.loc 1 1018 41
	sub	r1, r3, #16
	.loc 1 1018 26
	add	r3, r7, #272
	sub	r3, r3, #260
	ldr	r2, [r7, #256]
	str	r1, [r3, r2, lsl #2]
.L231:
	.loc 1 1014 30 discriminator 2
	ldr	r3, [r7, #256]
	adds	r3, r3, #1
	str	r3, [r7, #256]
.L230:
	.loc 1 1014 22 discriminator 1
	ldr	r3, [r7, #256]
	cmp	r3, #31
	ble	.L232
.LBE22:
.LBB23:
	.loc 1 1022 13
	movs	r3, #0
	str	r3, [r7, #252]
	.loc 1 1022 5
	b	.L233
.L237:
.LBB24:
	.loc 1 1024 17
	movs	r3, #0
	str	r3, [r7, #248]
	.loc 1 1024 9
	b	.L234
.L236:
	.loc 1 1026 20
	ldr	r3, [r7, #252]
	lsls	r3, r3, #5
	.loc 1 1026 15
	ldr	r2, [r7, #248]
	add	r3, r3, r2
	str	r3, [r7, #244]
	.loc 1 1027 46
	ldr	r3, [r7, #244]
	adds	r3, r3, #64
	.loc 1 1027 42
	lsls	r3, r3, #1
	add	r2, r7, #272
	sub	r2, r2, #268
	ldr	r2, [r2]
	add	r3, r3, r2
	ldrh	r3, [r3]
	.loc 1 1027 61
	lsrs	r3, r3, #10
	uxth	r3, r3
	sxth	r1, r3
	.loc 1 1027 33
	add	r3, r7, #272
	sub	r3, r3, #272
	ldr	r2, [r3]
	ldr	r3, [r7, #244]
	add	r3, r3, #804
	lsls	r3, r3, #1
	add	r3, r3, r2
	mov	r2, r1	@ movhi
	strh	r2, [r3, #4]	@ movhi
	.loc 1 1028 33
	add	r3, r7, #272
	sub	r3, r3, #272
	ldr	r2, [r3]
	ldr	r3, [r7, #244]
	add	r3, r3, #804
	lsls	r3, r3, #1
	add	r3, r3, r2
	ldrsh	r3, [r3, #4]
	.loc 1 1028 16
	cmp	r3, #31
	ble	.L235
	.loc 1 1030 55
	add	r3, r7, #272
	sub	r3, r3, #272
	ldr	r2, [r3]
	ldr	r3, [r7, #244]
	add	r3, r3, #804
	lsls	r3, r3, #1
	add	r3, r3, r2
	ldrsh	r3, [r3, #4]
	uxth	r3, r3
	.loc 1 1030 59
	subs	r3, r3, #64
	uxth	r3, r3
	sxth	r1, r3
	.loc 1 1030 37
	add	r3, r7, #272
	sub	r3, r3, #272
	ldr	r2, [r3]
	ldr	r3, [r7, #244]
	add	r3, r3, #804
	lsls	r3, r3, #1
	add	r3, r3, r2
	mov	r2, r1	@ movhi
	strh	r2, [r3, #4]	@ movhi
.L235:
	.loc 1 1032 51 discriminator 2
	add	r3, r7, #272
	sub	r3, r3, #272
	ldr	r2, [r3]
	ldr	r3, [r7, #244]
	add	r3, r3, #804
	lsls	r3, r3, #1
	add	r3, r3, r2
	ldrsh	r3, [r3, #4]
	mov	r2, r3
	.loc 1 1032 54 discriminator 2
	ldrb	r3, [r7, #243]	@ zero_extendqisi2
	lsl	r3, r2, r3
	.loc 1 1032 33 discriminator 2
	sxth	r1, r3
	add	r3, r7, #272
	sub	r3, r3, #272
	ldr	r2, [r3]
	ldr	r3, [r7, #244]
	add	r3, r3, #804
	lsls	r3, r3, #1
	add	r3, r3, r2
	mov	r2, r1	@ movhi
	strh	r2, [r3, #4]	@ movhi
	.loc 1 1033 55 discriminator 2
	ldr	r3, [r7, #252]
	lsls	r3, r3, #2
	add	r3, r3, #272
	add	r3, r3, r7
	ldr	r2, [r3, #-132]
	.loc 1 1033 59 discriminator 2
	ldrb	r3, [r7, #241]	@ zero_extendqisi2
	lsl	r3, r2, r3
	.loc 1 1033 46 discriminator 2
	uxth	r2, r3
	ldrh	r3, [r7, #238]
	add	r3, r3, r2
	uxth	r2, r3
	.loc 1 1033 87 discriminator 2
	add	r3, r7, #272
	sub	r3, r3, #260
	ldr	r1, [r7, #248]
	ldr	r1, [r3, r1, lsl #2]
	.loc 1 1033 91 discriminator 2
	ldrb	r3, [r7, #242]	@ zero_extendqisi2
	lsl	r3, r1, r3
	.loc 1 1033 75 discriminator 2
	uxth	r3, r3
	add	r3, r3, r2
	uxth	r2, r3
	.loc 1 1033 128 discriminator 2
	add	r3, r7, #272
	sub	r3, r3, #272
	ldr	r1, [r3]
	ldr	r3, [r7, #244]
	add	r3, r3, #804
	lsls	r3, r3, #1
	add	r3, r3, r1
	ldrsh	r3, [r3, #4]
	uxth	r3, r3
	.loc 1 1033 110 discriminator 2
	add	r3, r3, r2
	uxth	r3, r3
	sxth	r1, r3
	.loc 1 1033 33 discriminator 2
	add	r3, r7, #272
	sub	r3, r3, #272
	ldr	r2, [r3]
	ldr	r3, [r7, #244]
	add	r3, r3, #804
	lsls	r3, r3, #1
	add	r3, r3, r2
	mov	r2, r1	@ movhi
	strh	r2, [r3, #4]	@ movhi
	.loc 1 1024 34 discriminator 2
	ldr	r3, [r7, #248]
	adds	r3, r3, #1
	str	r3, [r7, #248]
.L234:
	.loc 1 1024 26 discriminator 1
	ldr	r3, [r7, #248]
	cmp	r3, #31
	ble	.L236
.LBE24:
	.loc 1 1022 29 discriminator 2
	ldr	r3, [r7, #252]
	adds	r3, r3, #1
	str	r3, [r7, #252]
.L233:
	.loc 1 1022 22 discriminator 1
	ldr	r3, [r7, #252]
	cmp	r3, #23
	ble	.L237
.LBE23:
	.loc 1 1036 1
	nop
	nop
	add	r7, r7, #276
	.cfi_def_cfa_offset 4
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	ldr	r7, [sp], #4
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE28:
	.size	ExtractOffsetParameters, .-ExtractOffsetParameters
	.global	__aeabi_d2iz
	.section	.text.ExtractKtaPixelParameters,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	ExtractKtaPixelParameters, %function
ExtractKtaPixelParameters:
.LFB29:
	.loc 1 1041 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 3120
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #3120
	.cfi_def_cfa_offset 3136
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	add	r3, r7, #3120
	subw	r3, r3, #3116
	str	r0, [r3]
	add	r3, r7, #3120
	sub	r3, r3, #3120
	str	r1, [r3]
	.loc 1 1042 9
	movs	r3, #0
	str	r3, [r7, #3092]
	.loc 1 1050 32
	add	r3, r7, #3120
	subw	r3, r3, #3116
	ldr	r3, [r3]
	adds	r3, r3, #108
	ldrh	r3, [r3]
	.loc 1 1050 47
	lsrs	r3, r3, #8
	uxth	r3, r3
	.loc 1 1050 16
	sxtb	r3, r3
	.loc 1 1050 14
	strb	r3, [r7, #3084]
	.loc 1 1051 31
	add	r3, r7, #3120
	subw	r3, r3, #3116
	ldr	r3, [r3]
	adds	r3, r3, #108
	ldrh	r3, [r3]
	.loc 1 1051 16
	sxtb	r3, r3
	.loc 1 1051 14
	strb	r3, [r7, #3086]
	.loc 1 1052 32
	add	r3, r7, #3120
	subw	r3, r3, #3116
	ldr	r3, [r3]
	adds	r3, r3, #110
	ldrh	r3, [r3]
	.loc 1 1052 47
	lsrs	r3, r3, #8
	uxth	r3, r3
	.loc 1 1052 16
	sxtb	r3, r3
	.loc 1 1052 14
	strb	r3, [r7, #3085]
	.loc 1 1053 31
	add	r3, r7, #3120
	subw	r3, r3, #3116
	ldr	r3, [r3]
	adds	r3, r3, #110
	ldrh	r3, [r3]
	.loc 1 1053 16
	sxtb	r3, r3
	.loc 1 1053 14
	strb	r3, [r7, #3087]
	.loc 1 1055 25
	add	r3, r7, #3120
	subw	r3, r3, #3116
	ldr	r3, [r3]
	adds	r3, r3, #112
	ldrh	r3, [r3]
	.loc 1 1055 40
	asrs	r3, r3, #4
	uxtb	r3, r3
	and	r3, r3, #15
	uxtb	r3, r3
	.loc 1 1055 15
	adds	r3, r3, #8
	strb	r3, [r7, #3119]
	.loc 1 1056 25
	add	r3, r7, #3120
	subw	r3, r3, #3116
	ldr	r3, [r3]
	adds	r3, r3, #112
	ldrh	r3, [r3]
	.loc 1 1056 30
	uxtb	r3, r3
	.loc 1 1056 15
	and	r3, r3, #15
	strb	r3, [r7, #3091]
.LBB25:
	.loc 1 1058 13
	movs	r3, #0
	str	r3, [r7, #3108]
	.loc 1 1058 5
	b	.L239
.L246:
.LBB26:
	.loc 1 1060 17
	movs	r3, #0
	str	r3, [r7, #3104]
	.loc 1 1060 9
	b	.L240
.L245:
	.loc 1 1062 20
	ldr	r3, [r7, #3108]
	lsls	r3, r3, #5
	.loc 1 1062 15
	ldr	r2, [r7, #3104]
	add	r3, r3, r2
	str	r3, [r7, #3092]
	.loc 1 1063 25
	ldr	r3, [r7, #3092]
	cmp	r3, #0
	bge	.L241
	adds	r3, r3, #31
.L241:
	asrs	r3, r3, #5
	mov	r2, r3
	.loc 1 1063 33
	ldr	r3, [r7, #3092]
	cmp	r3, #0
	bge	.L242
	adds	r3, r3, #63
.L242:
	asrs	r3, r3, #6
	.loc 1 1063 37
	lsls	r3, r3, #1
	.loc 1 1063 29
	subs	r3, r2, r3
	.loc 1 1063 41
	uxtb	r3, r3
	lsls	r3, r3, #1
	uxtb	r2, r3
	.loc 1 1063 44
	ldr	r3, [r7, #3092]
	cmp	r3, #0
	and	r3, r3, #1
	it	lt
	rsblt	r3, r3, #0
	.loc 1 1063 41
	uxtb	r3, r3
	.loc 1 1063 19
	add	r3, r3, r2
	strb	r3, [r7, #3090]
	.loc 1 1064 37
	ldr	r3, [r7, #3092]
	adds	r3, r3, #64
	.loc 1 1064 33
	lsls	r3, r3, #1
	add	r2, r7, #3120
	subw	r2, r2, #3116
	ldr	r2, [r2]
	add	r3, r3, r2
	ldrh	r3, [r3]
	.loc 1 1064 52
	asrs	r3, r3, #1
	and	r3, r3, #7
	.loc 1 1064 24
	vmov	s15, r3	@ int
	vcvt.f32.s32	s15, s15
	add	r3, r7, #3120
	subw	r2, r3, #3108
	ldr	r3, [r7, #3092]
	lsls	r3, r3, #2
	add	r3, r3, r2
	vstr.32	s15, [r3]
	.loc 1 1065 24
	add	r3, r7, #3120
	subw	r2, r3, #3108
	ldr	r3, [r7, #3092]
	lsls	r3, r3, #2
	add	r3, r3, r2
	vldr.32	s15, [r3]
	.loc 1 1065 16
	vmov.f32	s14, #3.0e+0
	vcmpe.f32	s15, s14
	vmrs	APSR_nzcv, FPSCR
	ble	.L243
	.loc 1 1067 37
	add	r3, r7, #3120
	subw	r2, r3, #3108
	ldr	r3, [r7, #3092]
	lsls	r3, r3, #2
	add	r3, r3, r2
	vldr.32	s15, [r3]
	.loc 1 1067 41
	vmov.f32	s14, #8.0e+0
	vsub.f32	s15, s15, s14
	.loc 1 1067 28
	add	r3, r7, #3120
	subw	r2, r3, #3108
	ldr	r3, [r7, #3092]
	lsls	r3, r3, #2
	add	r3, r3, r2
	vstr.32	s15, [r3]
.L243:
	.loc 1 1069 33 discriminator 2
	add	r3, r7, #3120
	subw	r2, r3, #3108
	ldr	r3, [r7, #3092]
	lsls	r3, r3, #2
	add	r3, r3, r2
	vldr.32	s14, [r3]
	.loc 1 1069 42 discriminator 2
	ldrb	r3, [r7, #3091]	@ zero_extendqisi2
	movs	r2, #1
	lsl	r3, r2, r3
	.loc 1 1069 37 discriminator 2
	vmov	s15, r3	@ int
	vcvt.f32.s32	s15, s15
	vmul.f32	s15, s14, s15
	.loc 1 1069 24 discriminator 2
	add	r3, r7, #3120
	subw	r2, r3, #3108
	ldr	r3, [r7, #3092]
	lsls	r3, r3, #2
	add	r3, r3, r2
	vstr.32	s15, [r3]
	.loc 1 1070 31 discriminator 2
	ldrb	r3, [r7, #3090]	@ zero_extendqisi2
	add	r3, r3, #3120
	add	r3, r3, r7
	ldrsb	r3, [r3, #-36]
	.loc 1 1070 39 discriminator 2
	vmov	s15, r3	@ int
	vcvt.f32.s32	s14, s15
	.loc 1 1070 48 discriminator 2
	add	r3, r7, #3120
	subw	r2, r3, #3108
	ldr	r3, [r7, #3092]
	lsls	r3, r3, #2
	add	r3, r3, r2
	vldr.32	s15, [r3]
	.loc 1 1070 39 discriminator 2
	vadd.f32	s15, s14, s15
	.loc 1 1070 24 discriminator 2
	add	r3, r7, #3120
	subw	r2, r3, #3108
	ldr	r3, [r7, #3092]
	lsls	r3, r3, #2
	add	r3, r3, r2
	vstr.32	s15, [r3]
	.loc 1 1071 33 discriminator 2
	add	r3, r7, #3120
	subw	r2, r3, #3108
	ldr	r3, [r7, #3092]
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3]	@ float
	mov	r0, r3	@ float
	bl	__aeabi_f2d
	mov	r4, r0
	mov	r5, r1
	.loc 1 1071 39 discriminator 2
	ldrb	r3, [r7, #3119]	@ zero_extendqisi2
	mov	r0, r3
	bl	__aeabi_ui2d
	mov	r2, r0
	mov	r3, r1
	vmov	d1, r2, r3
	vldr.64	d0, .L262
	bl	pow
	vmov	r2, r3, d0
	.loc 1 1071 37 discriminator 2
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_ddiv
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_d2f
	mov	r1, r0	@ float
	.loc 1 1071 24 discriminator 2
	add	r3, r7, #3120
	subw	r2, r3, #3108
	ldr	r3, [r7, #3092]
	lsls	r3, r3, #2
	add	r3, r3, r2
	str	r1, [r3]	@ float
	.loc 1 1060 34 discriminator 2
	ldr	r3, [r7, #3104]
	adds	r3, r3, #1
	str	r3, [r7, #3104]
.L240:
	.loc 1 1060 26 discriminator 1
	ldr	r3, [r7, #3104]
	cmp	r3, #31
	ble	.L245
.LBE26:
	.loc 1 1058 29 discriminator 2
	ldr	r3, [r7, #3108]
	adds	r3, r3, #1
	str	r3, [r7, #3108]
.L239:
	.loc 1 1058 22 discriminator 1
	ldr	r3, [r7, #3108]
	cmp	r3, #23
	ble	.L246
.LBE25:
	.loc 1 1076 24
	add	r3, r7, #3120
	subw	r3, r3, #3108
	vldr.32	s15, [r3]
	.loc 1 1076 10
	vabs.f32	s15, s15
	addw	r3, r7, #3112
	vstr.32	s15, [r3]
.LBB27:
	.loc 1 1077 13
	movs	r3, #1
	str	r3, [r7, #3100]
	.loc 1 1077 5
	b	.L247
.L250:
	.loc 1 1079 25
	add	r3, r7, #3120
	subw	r2, r3, #3108
	ldr	r3, [r7, #3100]
	lsls	r3, r3, #2
	add	r3, r3, r2
	vldr.32	s15, [r3]
	.loc 1 1079 13
	vabs.f32	s15, s15
	.loc 1 1079 12
	addw	r3, r7, #3112
	vldr.32	s14, [r3]
	vcmpe.f32	s14, s15
	vmrs	APSR_nzcv, FPSCR
	bpl	.L248
	.loc 1 1081 32
	add	r3, r7, #3120
	subw	r2, r3, #3108
	ldr	r3, [r7, #3100]
	lsls	r3, r3, #2
	add	r3, r3, r2
	vldr.32	s15, [r3]
	.loc 1 1081 18
	vabs.f32	s15, s15
	addw	r3, r7, #3112
	vstr.32	s15, [r3]
.L248:
	.loc 1 1077 30 discriminator 2
	ldr	r3, [r7, #3100]
	adds	r3, r3, #1
	str	r3, [r7, #3100]
.L247:
	.loc 1 1077 22 discriminator 1
	ldr	r3, [r7, #3100]
	cmp	r3, #768
	blt	.L250
.LBE27:
	.loc 1 1085 15
	movs	r3, #0
	strb	r3, [r7, #3119]
	.loc 1 1086 10
	b	.L251
.L252:
	.loc 1 1088 14
	addw	r3, r7, #3112
	vldr.32	s15, [r3]
	vadd.f32	s15, s15, s15
	addw	r3, r7, #3112
	vstr.32	s15, [r3]
	.loc 1 1089 19
	ldrb	r3, [r7, #3119]
	adds	r3, r3, #1
	strb	r3, [r7, #3119]
.L251:
	.loc 1 1086 16
	addw	r3, r7, #3112
	ldr	r0, [r3]	@ float
	bl	__aeabi_f2d
	adr	r3, .L262+12
	ldrd	r2, [r3]
	bl	__aeabi_dcmplt
	mov	r3, r0
	cmp	r3, #0
	bne	.L252
.LBB28:
	.loc 1 1092 13
	movs	r3, #0
	str	r3, [r7, #3096]
	.loc 1 1092 5
	b	.L253
.L257:
	.loc 1 1094 23
	add	r3, r7, #3120
	subw	r2, r3, #3108
	ldr	r3, [r7, #3096]
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3]	@ float
	mov	r0, r3	@ float
	bl	__aeabi_f2d
	mov	r4, r0
	mov	r5, r1
	.loc 1 1094 29
	ldrb	r3, [r7, #3119]	@ zero_extendqisi2
	mov	r0, r3
	bl	__aeabi_ui2d
	mov	r2, r0
	mov	r3, r1
	vmov	d1, r2, r3
	vldr.64	d0, .L262
	bl	pow
	vmov	r2, r3, d0
	.loc 1 1094 27
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	.loc 1 1094 14
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_d2f
	mov	r3, r0	@ float
	addw	r2, r7, #3112
	str	r3, [r2]	@ float
	.loc 1 1095 12
	addw	r3, r7, #3112
	vldr.32	s15, [r3]
	vcmpe.f32	s15, #0
	vmrs	APSR_nzcv, FPSCR
	bpl	.L261
	.loc 1 1097 38
	addw	r3, r7, #3112
	ldr	r0, [r3]	@ float
	bl	__aeabi_f2d
	mov	r2, #0
	ldr	r3, .L262+8
	bl	__aeabi_dsub
	mov	r2, r0
	mov	r3, r1
	.loc 1 1097 30
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_d2iz
	mov	r3, r0
	sxtb	r1, r3
	add	r3, r7, #3120
	sub	r3, r3, #3120
	ldr	r2, [r3]
	ldr	r3, [r7, #3096]
	add	r3, r3, r2
	addw	r3, r3, #3148
	mov	r2, r1
	strb	r2, [r3]
	b	.L256
.L261:
	.loc 1 1101 38
	addw	r3, r7, #3112
	ldr	r0, [r3]	@ float
	bl	__aeabi_f2d
	mov	r2, #0
	ldr	r3, .L262+8
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	.loc 1 1101 30
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_d2iz
	mov	r3, r0
	sxtb	r1, r3
	add	r3, r7, #3120
	sub	r3, r3, #3120
	ldr	r2, [r3]
	ldr	r3, [r7, #3096]
	add	r3, r3, r2
	addw	r3, r3, #3148
	mov	r2, r1
	strb	r2, [r3]
.L256:
	.loc 1 1092 30 discriminator 2
	ldr	r3, [r7, #3096]
	adds	r3, r3, #1
	str	r3, [r7, #3096]
.L253:
	.loc 1 1092 22 discriminator 1
	ldr	r3, [r7, #3096]
	cmp	r3, #768
	blt	.L257
.LBE28:
	.loc 1 1106 24
	add	r3, r7, #3120
	sub	r3, r3, #3120
	ldr	r3, [r3]
	ldrb	r2, [r7, #3119]
	strb	r2, [r3, #3916]
	.loc 1 1107 1
	nop
	add	r7, r7, #3120
	.cfi_def_cfa_offset 16
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r4, r5, r7, pc}
.L263:
	.align	3
.L262:
	.word	0
	.word	1073741824
	.word	1071644672
	.word	858993459
	.word	1078965043
	.cfi_endproc
.LFE29:
	.size	ExtractKtaPixelParameters, .-ExtractKtaPixelParameters
	.section	.text.ExtractKvPixelParameters,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	ExtractKvPixelParameters, %function
ExtractKvPixelParameters:
.LFB30:
	.loc 1 1113 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 3120
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #3120
	.cfi_def_cfa_offset 3136
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	add	r3, r7, #3120
	subw	r3, r3, #3116
	str	r0, [r3]
	add	r3, r7, #3120
	sub	r3, r3, #3120
	str	r1, [r3]
	.loc 1 1114 9
	movs	r3, #0
	str	r3, [r7, #3088]
	.loc 1 1125 22
	add	r3, r7, #3120
	subw	r3, r3, #3116
	ldr	r3, [r3]
	adds	r3, r3, #104
	ldrh	r3, [r3]
	.loc 1 1125 37
	lsrs	r3, r3, #12
	uxth	r3, r3
	.loc 1 1125 12
	strb	r3, [r7, #3119]
	.loc 1 1126 8
	ldrsb	r3, [r7, #3119]
	cmp	r3, #7
	ble	.L265
	.loc 1 1128 25
	ldrb	r3, [r7, #3119]	@ zero_extendqisi2
	subs	r3, r3, #16
	uxtb	r3, r3
	.loc 1 1128 16
	strb	r3, [r7, #3119]
.L265:
	.loc 1 1130 12
	ldrb	r3, [r7, #3119]
	strb	r3, [r7, #3080]
	.loc 1 1132 22
	add	r3, r7, #3120
	subw	r3, r3, #3116
	ldr	r3, [r3]
	adds	r3, r3, #104
	ldrh	r3, [r3]
	.loc 1 1132 37
	asrs	r3, r3, #8
	sxtb	r3, r3
	.loc 1 1132 12
	and	r3, r3, #15
	strb	r3, [r7, #3117]
	.loc 1 1133 8
	ldrsb	r3, [r7, #3117]
	cmp	r3, #7
	ble	.L266
	.loc 1 1135 25
	ldrb	r3, [r7, #3117]	@ zero_extendqisi2
	subs	r3, r3, #16
	uxtb	r3, r3
	.loc 1 1135 16
	strb	r3, [r7, #3117]
.L266:
	.loc 1 1137 12
	ldrb	r3, [r7, #3117]
	strb	r3, [r7, #3082]
	.loc 1 1139 22
	add	r3, r7, #3120
	subw	r3, r3, #3116
	ldr	r3, [r3]
	adds	r3, r3, #104
	ldrh	r3, [r3]
	.loc 1 1139 37
	asrs	r3, r3, #4
	sxtb	r3, r3
	.loc 1 1139 12
	and	r3, r3, #15
	strb	r3, [r7, #3118]
	.loc 1 1140 8
	ldrsb	r3, [r7, #3118]
	cmp	r3, #7
	ble	.L267
	.loc 1 1142 25
	ldrb	r3, [r7, #3118]	@ zero_extendqisi2
	subs	r3, r3, #16
	uxtb	r3, r3
	.loc 1 1142 16
	strb	r3, [r7, #3118]
.L267:
	.loc 1 1144 12
	ldrb	r3, [r7, #3118]
	strb	r3, [r7, #3081]
	.loc 1 1146 22
	add	r3, r7, #3120
	subw	r3, r3, #3116
	ldr	r3, [r3]
	adds	r3, r3, #104
	ldrh	r3, [r3]
	.loc 1 1146 27
	sxtb	r3, r3
	.loc 1 1146 12
	and	r3, r3, #15
	strb	r3, [r7, #3116]
	.loc 1 1147 8
	ldrsb	r3, [r7, #3116]
	cmp	r3, #7
	ble	.L268
	.loc 1 1149 25
	ldrb	r3, [r7, #3116]	@ zero_extendqisi2
	subs	r3, r3, #16
	uxtb	r3, r3
	.loc 1 1149 16
	strb	r3, [r7, #3116]
.L268:
	.loc 1 1151 12
	ldrb	r3, [r7, #3116]
	strb	r3, [r7, #3083]
	.loc 1 1153 23
	add	r3, r7, #3120
	subw	r3, r3, #3116
	ldr	r3, [r3]
	adds	r3, r3, #112
	ldrh	r3, [r3]
	.loc 1 1153 38
	asrs	r3, r3, #8
	uxtb	r3, r3
	.loc 1 1153 13
	and	r3, r3, #15
	strb	r3, [r7, #3115]
.LBB29:
	.loc 1 1156 13
	movs	r3, #0
	str	r3, [r7, #3104]
	.loc 1 1156 5
	b	.L269
.L274:
.LBB30:
	.loc 1 1158 17
	movs	r3, #0
	str	r3, [r7, #3100]
	.loc 1 1158 9
	b	.L270
.L273:
	.loc 1 1160 20 discriminator 3
	ldr	r3, [r7, #3104]
	lsls	r3, r3, #5
	.loc 1 1160 15 discriminator 3
	ldr	r2, [r7, #3100]
	add	r3, r3, r2
	str	r3, [r7, #3088]
	.loc 1 1161 25 discriminator 3
	ldr	r3, [r7, #3088]
	cmp	r3, #0
	bge	.L271
	adds	r3, r3, #31
.L271:
	asrs	r3, r3, #5
	mov	r2, r3
	.loc 1 1161 33 discriminator 3
	ldr	r3, [r7, #3088]
	cmp	r3, #0
	bge	.L272
	adds	r3, r3, #63
.L272:
	asrs	r3, r3, #6
	.loc 1 1161 37 discriminator 3
	lsls	r3, r3, #1
	.loc 1 1161 29 discriminator 3
	subs	r3, r2, r3
	.loc 1 1161 41 discriminator 3
	uxtb	r3, r3
	lsls	r3, r3, #1
	uxtb	r2, r3
	.loc 1 1161 44 discriminator 3
	ldr	r3, [r7, #3088]
	cmp	r3, #0
	and	r3, r3, #1
	it	lt
	rsblt	r3, r3, #0
	.loc 1 1161 41 discriminator 3
	uxtb	r3, r3
	.loc 1 1161 19 discriminator 3
	add	r3, r3, r2
	strb	r3, [r7, #3087]
	.loc 1 1162 28 discriminator 3
	ldrb	r3, [r7, #3087]	@ zero_extendqisi2
	add	r3, r3, #3120
	add	r3, r3, r7
	ldrsb	r3, [r3, #-40]
	.loc 1 1162 23 discriminator 3
	vmov	s15, r3	@ int
	vcvt.f32.s32	s15, s15
	add	r3, r7, #3120
	subw	r2, r3, #3112
	ldr	r3, [r7, #3088]
	lsls	r3, r3, #2
	add	r3, r3, r2
	vstr.32	s15, [r3]
	.loc 1 1163 31 discriminator 3
	add	r3, r7, #3120
	subw	r2, r3, #3112
	ldr	r3, [r7, #3088]
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3]	@ float
	mov	r0, r3	@ float
	bl	__aeabi_f2d
	mov	r4, r0
	mov	r5, r1
	.loc 1 1163 37 discriminator 3
	ldrb	r3, [r7, #3115]	@ zero_extendqisi2
	mov	r0, r3
	bl	__aeabi_ui2d
	mov	r2, r0
	mov	r3, r1
	vmov	d1, r2, r3
	vldr.64	d0, .L289
	bl	pow
	vmov	r2, r3, d0
	.loc 1 1163 35 discriminator 3
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_ddiv
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_d2f
	mov	r1, r0	@ float
	.loc 1 1163 23 discriminator 3
	add	r3, r7, #3120
	subw	r2, r3, #3112
	ldr	r3, [r7, #3088]
	lsls	r3, r3, #2
	add	r3, r3, r2
	str	r1, [r3]	@ float
	.loc 1 1158 34 discriminator 3
	ldr	r3, [r7, #3100]
	adds	r3, r3, #1
	str	r3, [r7, #3100]
.L270:
	.loc 1 1158 26 discriminator 1
	ldr	r3, [r7, #3100]
	cmp	r3, #31
	ble	.L273
.LBE30:
	.loc 1 1156 29 discriminator 2
	ldr	r3, [r7, #3104]
	adds	r3, r3, #1
	str	r3, [r7, #3104]
.L269:
	.loc 1 1156 22 discriminator 1
	ldr	r3, [r7, #3104]
	cmp	r3, #23
	ble	.L274
.LBE29:
	.loc 1 1167 23
	add	r3, r7, #3120
	subw	r3, r3, #3112
	vldr.32	s15, [r3]
	.loc 1 1167 10
	vabs.f32	s15, s15
	addw	r3, r7, #3108
	vstr.32	s15, [r3]
.LBB31:
	.loc 1 1168 13
	movs	r3, #1
	str	r3, [r7, #3096]
	.loc 1 1168 5
	b	.L275
.L278:
	.loc 1 1170 24
	add	r3, r7, #3120
	subw	r2, r3, #3112
	ldr	r3, [r7, #3096]
	lsls	r3, r3, #2
	add	r3, r3, r2
	vldr.32	s15, [r3]
	.loc 1 1170 13
	vabs.f32	s15, s15
	.loc 1 1170 12
	addw	r3, r7, #3108
	vldr.32	s14, [r3]
	vcmpe.f32	s14, s15
	vmrs	APSR_nzcv, FPSCR
	bpl	.L276
	.loc 1 1172 31
	add	r3, r7, #3120
	subw	r2, r3, #3112
	ldr	r3, [r7, #3096]
	lsls	r3, r3, #2
	add	r3, r3, r2
	vldr.32	s15, [r3]
	.loc 1 1172 18
	vabs.f32	s15, s15
	addw	r3, r7, #3108
	vstr.32	s15, [r3]
.L276:
	.loc 1 1168 30 discriminator 2
	ldr	r3, [r7, #3096]
	adds	r3, r3, #1
	str	r3, [r7, #3096]
.L275:
	.loc 1 1168 22 discriminator 1
	ldr	r3, [r7, #3096]
	cmp	r3, #768
	blt	.L278
.LBE31:
	.loc 1 1176 13
	movs	r3, #0
	strb	r3, [r7, #3115]
	.loc 1 1177 10
	b	.L279
.L280:
	.loc 1 1179 14
	addw	r3, r7, #3108
	vldr.32	s15, [r3]
	vadd.f32	s15, s15, s15
	addw	r3, r7, #3108
	vstr.32	s15, [r3]
	.loc 1 1180 17
	ldrb	r3, [r7, #3115]
	adds	r3, r3, #1
	strb	r3, [r7, #3115]
.L279:
	.loc 1 1177 16
	addw	r3, r7, #3108
	ldr	r0, [r3]	@ float
	bl	__aeabi_f2d
	adr	r3, .L289+12
	ldrd	r2, [r3]
	bl	__aeabi_dcmplt
	mov	r3, r0
	cmp	r3, #0
	bne	.L280
.LBB32:
	.loc 1 1183 13
	movs	r3, #0
	str	r3, [r7, #3092]
	.loc 1 1183 5
	b	.L281
.L285:
	.loc 1 1185 22
	add	r3, r7, #3120
	subw	r2, r3, #3112
	ldr	r3, [r7, #3092]
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3]	@ float
	mov	r0, r3	@ float
	bl	__aeabi_f2d
	mov	r4, r0
	mov	r5, r1
	.loc 1 1185 28
	ldrb	r3, [r7, #3115]	@ zero_extendqisi2
	mov	r0, r3
	bl	__aeabi_ui2d
	mov	r2, r0
	mov	r3, r1
	vmov	d1, r2, r3
	vldr.64	d0, .L289
	bl	pow
	vmov	r2, r3, d0
	.loc 1 1185 26
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	.loc 1 1185 14
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_d2f
	mov	r3, r0	@ float
	addw	r2, r7, #3108
	str	r3, [r2]	@ float
	.loc 1 1186 12
	addw	r3, r7, #3108
	vldr.32	s15, [r3]
	vcmpe.f32	s15, #0
	vmrs	APSR_nzcv, FPSCR
	bpl	.L288
	.loc 1 1188 37
	addw	r3, r7, #3108
	ldr	r0, [r3]	@ float
	bl	__aeabi_f2d
	mov	r2, #0
	ldr	r3, .L289+8
	bl	__aeabi_dsub
	mov	r2, r0
	mov	r3, r1
	.loc 1 1188 29
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_d2iz
	mov	r3, r0
	sxtb	r1, r3
	add	r3, r7, #3120
	sub	r3, r3, #3120
	ldr	r2, [r3]
	ldr	r3, [r7, #3092]
	add	r3, r3, r2
	addw	r3, r3, #3917
	mov	r2, r1
	strb	r2, [r3]
	b	.L284
.L288:
	.loc 1 1192 37
	addw	r3, r7, #3108
	ldr	r0, [r3]	@ float
	bl	__aeabi_f2d
	mov	r2, #0
	ldr	r3, .L289+8
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	.loc 1 1192 29
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_d2iz
	mov	r3, r0
	sxtb	r1, r3
	add	r3, r7, #3120
	sub	r3, r3, #3120
	ldr	r2, [r3]
	ldr	r3, [r7, #3092]
	add	r3, r3, r2
	addw	r3, r3, #3917
	mov	r2, r1
	strb	r2, [r3]
.L284:
	.loc 1 1183 30 discriminator 2
	ldr	r3, [r7, #3092]
	adds	r3, r3, #1
	str	r3, [r7, #3092]
.L281:
	.loc 1 1183 22 discriminator 1
	ldr	r3, [r7, #3092]
	cmp	r3, #768
	blt	.L285
.LBE32:
	.loc 1 1197 23
	add	r3, r7, #3120
	sub	r3, r3, #3120
	ldr	r3, [r3]
	add	r3, r3, #4096
	mov	r2, r3
	ldrb	r3, [r7, #3115]
	strb	r3, [r2, #589]
	.loc 1 1198 1
	nop
	add	r7, r7, #3120
	.cfi_def_cfa_offset 16
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r4, r5, r7, pc}
.L290:
	.align	3
.L289:
	.word	0
	.word	1073741824
	.word	1071644672
	.word	858993459
	.word	1078965043
	.cfi_endproc
.LFE30:
	.size	ExtractKvPixelParameters, .-ExtractKvPixelParameters
	.section	.text.ExtractCPParameters,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	ExtractCPParameters, %function
ExtractCPParameters:
.LFB31:
	.loc 1 1203 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #40
	.cfi_def_cfa_offset 56
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	str	r1, [r7]
	.loc 1 1212 26
	ldr	r3, [r7, #4]
	adds	r3, r3, #64
	ldrh	r3, [r3]
	.loc 1 1212 41
	lsrs	r3, r3, #12
	uxth	r3, r3
	.loc 1 1212 48
	uxtb	r3, r3
	.loc 1 1212 16
	adds	r3, r3, #27
	strb	r3, [r7, #39]
	.loc 1 1214 26
	ldr	r3, [r7, #4]
	adds	r3, r3, #116
	ldrh	r3, [r3]
	sxth	r3, r3
	.loc 1 1214 31
	ubfx	r3, r3, #0, #10
	sxth	r3, r3
	.loc 1 1214 17
	strh	r3, [r7, #8]	@ movhi
	.loc 1 1215 17
	ldrsh	r3, [r7, #8]
	.loc 1 1215 8
	cmp	r3, #512
	blt	.L292
	.loc 1 1217 31
	ldrsh	r3, [r7, #8]
	uxth	r3, r3
	.loc 1 1217 35
	sub	r3, r3, #1024
	uxth	r3, r3
	sxth	r3, r3
	.loc 1 1217 21
	strh	r3, [r7, #8]	@ movhi
.L292:
	.loc 1 1220 26
	ldr	r3, [r7, #4]
	adds	r3, r3, #116
	ldrh	r3, [r3]
	.loc 1 1220 41
	lsrs	r3, r3, #10
	uxth	r3, r3
	sxth	r3, r3
	.loc 1 1220 17
	strh	r3, [r7, #10]	@ movhi
	.loc 1 1221 17
	ldrsh	r3, [r7, #10]
	.loc 1 1221 8
	cmp	r3, #31
	ble	.L293
	.loc 1 1223 31
	ldrsh	r3, [r7, #10]
	uxth	r3, r3
	.loc 1 1223 35
	subs	r3, r3, #64
	uxth	r3, r3
	sxth	r3, r3
	.loc 1 1223 21
	strh	r3, [r7, #10]	@ movhi
.L293:
	.loc 1 1225 27
	ldrsh	r3, [r7, #10]
	uxth	r2, r3
	.loc 1 1225 41
	ldrsh	r3, [r7, #8]
	uxth	r3, r3
	.loc 1 1225 31
	add	r3, r3, r2
	uxth	r3, r3
	sxth	r3, r3
	.loc 1 1225 17
	strh	r3, [r7, #10]	@ movhi
	.loc 1 1227 25
	ldr	r3, [r7, #4]
	adds	r3, r3, #114
	ldrh	r3, [r3]
	.loc 1 1227 30
	ubfx	r3, r3, #0, #10
	.loc 1 1227 16
	vmov	s15, r3	@ int
	vcvt.f32.s32	s15, s15
	vstr.32	s15, [r7, #12]
	.loc 1 1228 16
	vldr.32	s15, [r7, #12]
	.loc 1 1228 8
	vldr.32	s14, .L300+8
	vcmpe.f32	s15, s14
	vmrs	APSR_nzcv, FPSCR
	ble	.L294
	.loc 1 1230 29
	vldr.32	s15, [r7, #12]
	.loc 1 1230 33
	vldr.32	s14, .L300+12
	vsub.f32	s15, s15, s14
	.loc 1 1230 20
	vstr.32	s15, [r7, #12]
.L294:
	.loc 1 1232 25
	ldr	r3, [r7, #12]	@ float
	mov	r0, r3	@ float
	bl	__aeabi_f2d
	mov	r4, r0
	mov	r5, r1
	.loc 1 1232 31
	ldrb	r3, [r7, #39]	@ zero_extendqisi2
	mov	r0, r3
	bl	__aeabi_ui2d
	mov	r2, r0
	mov	r3, r1
	vmov	d1, r2, r3
	vldr.64	d0, .L300
	bl	pow
	vmov	r2, r3, d0
	.loc 1 1232 29
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_ddiv
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_d2f
	mov	r3, r0	@ float
	.loc 1 1232 16
	str	r3, [r7, #12]	@ float
	.loc 1 1234 25
	ldr	r3, [r7, #4]
	adds	r3, r3, #114
	ldrh	r3, [r3]
	.loc 1 1234 40
	lsrs	r3, r3, #10
	uxth	r3, r3
	vmov	s15, r3	@ int
	.loc 1 1234 16
	vcvt.f32.s32	s15, s15
	vstr.32	s15, [r7, #16]
	.loc 1 1235 16
	vldr.32	s15, [r7, #16]
	.loc 1 1235 8
	vmov.f32	s14, #3.1e+1
	vcmpe.f32	s15, s14
	vmrs	APSR_nzcv, FPSCR
	ble	.L296
	.loc 1 1237 29
	vldr.32	s15, [r7, #16]
	.loc 1 1237 33
	vldr.32	s14, .L300+16
	vsub.f32	s15, s15, s14
	.loc 1 1237 20
	vstr.32	s15, [r7, #16]
.L296:
	.loc 1 1239 30
	vldr.32	s14, [r7, #16]
	.loc 1 1239 33
	vldr.32	s13, .L300+20
	vdiv.f32	s15, s14, s13
	.loc 1 1239 21
	vmov.f32	s14, #1.0e+0
	vadd.f32	s14, s15, s14
	.loc 1 1239 48
	vldr.32	s15, [r7, #12]
	.loc 1 1239 39
	vmul.f32	s15, s14, s15
	.loc 1 1239 16
	vstr.32	s15, [r7, #16]
	.loc 1 1241 28
	ldr	r3, [r7, #4]
	adds	r3, r3, #118
	ldrh	r3, [r3]
	.loc 1 1241 13
	sxtb	r3, r3
	.loc 1 1241 11
	vmov	s15, r3	@ int
	vcvt.f32.s32	s15, s15
	vstr.32	s15, [r7, #32]
	.loc 1 1243 25
	ldr	r3, [r7, #4]
	adds	r3, r3, #112
	ldrh	r3, [r3]
	.loc 1 1243 40
	asrs	r3, r3, #4
	uxtb	r3, r3
	and	r3, r3, #15
	uxtb	r3, r3
	.loc 1 1243 15
	adds	r3, r3, #8
	strb	r3, [r7, #31]
	.loc 1 1244 29
	ldr	r0, [r7, #32]	@ float
	bl	__aeabi_f2d
	mov	r4, r0
	mov	r5, r1
	.loc 1 1244 31
	ldrb	r3, [r7, #31]	@ zero_extendqisi2
	mov	r0, r3
	bl	__aeabi_ui2d
	mov	r2, r0
	mov	r3, r1
	vmov	d1, r2, r3
	vldr.64	d0, .L300
	bl	pow
	vmov	r2, r3, d0
	.loc 1 1244 29
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_ddiv
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_d2f
	mov	r2, r0	@ float
	.loc 1 1244 21
	ldr	r3, [r7]
	str	r2, [r3, #32]	@ float
	.loc 1 1246 28
	ldr	r3, [r7, #4]
	adds	r3, r3, #118
	ldrh	r3, [r3]
	.loc 1 1246 43
	lsrs	r3, r3, #8
	uxth	r3, r3
	.loc 1 1246 12
	sxtb	r3, r3
	.loc 1 1246 10
	vmov	s15, r3	@ int
	vcvt.f32.s32	s15, s15
	vstr.32	s15, [r7, #24]
	.loc 1 1248 23
	ldr	r3, [r7, #4]
	adds	r3, r3, #112
	ldrh	r3, [r3]
	.loc 1 1248 38
	asrs	r3, r3, #8
	uxtb	r3, r3
	.loc 1 1248 13
	and	r3, r3, #15
	strb	r3, [r7, #23]
	.loc 1 1249 27
	ldr	r0, [r7, #24]	@ float
	bl	__aeabi_f2d
	mov	r4, r0
	mov	r5, r1
	.loc 1 1249 29
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	mov	r0, r3
	bl	__aeabi_ui2d
	mov	r2, r0
	mov	r3, r1
	vmov	d1, r2, r3
	vldr.64	d0, .L300
	bl	pow
	vmov	r2, r3, d0
	.loc 1 1249 27
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_ddiv
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_d2f
	mov	r2, r0	@ float
	.loc 1 1249 20
	ldr	r3, [r7]
	str	r2, [r3, #28]	@ float
	.loc 1 1251 35
	ldr	r3, [r7, #12]	@ float
	.loc 1 1251 26
	ldr	r2, [r7]
	add	r2, r2, #4096
	str	r3, [r2, #592]	@ float
	.loc 1 1252 35
	ldr	r3, [r7, #16]	@ float
	.loc 1 1252 26
	ldr	r2, [r7]
	add	r2, r2, #4096
	str	r3, [r2, #596]	@ float
	.loc 1 1253 37
	ldrsh	r2, [r7, #8]
	.loc 1 1253 27
	ldr	r3, [r7]
	add	r3, r3, #4096
	strh	r2, [r3, #600]	@ movhi
	.loc 1 1254 37
	ldrsh	r2, [r7, #10]
	.loc 1 1254 27
	ldr	r3, [r7]
	add	r3, r3, #4096
	strh	r2, [r3, #602]	@ movhi
	.loc 1 1255 1
	nop
	adds	r7, r7, #40
	.cfi_def_cfa_offset 16
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r4, r5, r7, pc}
.L301:
	.align	3
.L300:
	.word	0
	.word	1073741824
	.word	1140817920
	.word	1149239296
	.word	1115684864
	.word	1124073472
	.cfi_endproc
.LFE31:
	.size	ExtractCPParameters, .-ExtractCPParameters
	.section	.text.ExtractCILCParameters,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	ExtractCILCParameters, %function
ExtractCILCParameters:
.LFB32:
	.loc 1 1260 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	sub	sp, sp, #28
	.cfi_def_cfa_offset 32
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	str	r1, [r7]
	.loc 1 1264 32
	ldr	r3, [r7, #4]
	adds	r3, r3, #20
	ldrh	r3, [r3]
	.loc 1 1264 47
	asrs	r3, r3, #4
	uxtb	r3, r3
	.loc 1 1264 23
	bic	r3, r3, #127
	strb	r3, [r7, #23]
	.loc 1 1265 23
	ldrb	r3, [r7, #23]
	eor	r3, r3, #127
	mvns	r3, r3
	strb	r3, [r7, #23]
	.loc 1 1267 26
	ldr	r3, [r7, #4]
	adds	r3, r3, #106
	ldrh	r3, [r3]
	.loc 1 1267 31
	and	r3, r3, #63
	.loc 1 1267 17
	vmov	s15, r3	@ int
	vcvt.f32.s32	s15, s15
	vstr.32	s15, [r7, #8]
	.loc 1 1268 17
	vldr.32	s15, [r7, #8]
	.loc 1 1268 8
	vmov.f32	s14, #3.1e+1
	vcmpe.f32	s15, s14
	vmrs	APSR_nzcv, FPSCR
	ble	.L303
	.loc 1 1270 31
	vldr.32	s15, [r7, #8]
	.loc 1 1270 35
	vldr.32	s14, .L312
	vsub.f32	s15, s15, s14
	.loc 1 1270 21
	vstr.32	s15, [r7, #8]
.L303:
	.loc 1 1272 27
	vldr.32	s14, [r7, #8]
	.loc 1 1272 31
	vmov.f32	s13, #1.6e+1
	vdiv.f32	s15, s14, s13
	.loc 1 1272 17
	vstr.32	s15, [r7, #8]
	.loc 1 1274 26
	ldr	r3, [r7, #4]
	adds	r3, r3, #106
	ldrh	r3, [r3]
	.loc 1 1274 41
	asrs	r3, r3, #6
	and	r3, r3, #31
	.loc 1 1274 17
	vmov	s15, r3	@ int
	vcvt.f32.s32	s15, s15
	vstr.32	s15, [r7, #12]
	.loc 1 1275 17
	vldr.32	s15, [r7, #12]
	.loc 1 1275 8
	vmov.f32	s14, #1.5e+1
	vcmpe.f32	s15, s14
	vmrs	APSR_nzcv, FPSCR
	ble	.L305
	.loc 1 1277 31
	vldr.32	s15, [r7, #12]
	.loc 1 1277 35
	vldr.32	s14, .L312+4
	vsub.f32	s15, s15, s14
	.loc 1 1277 21
	vstr.32	s15, [r7, #12]
.L305:
	.loc 1 1279 27
	vldr.32	s14, [r7, #12]
	.loc 1 1279 31
	vmov.f32	s13, #2.0e+0
	vdiv.f32	s15, s14, s13
	.loc 1 1279 17
	vstr.32	s15, [r7, #12]
	.loc 1 1281 26
	ldr	r3, [r7, #4]
	adds	r3, r3, #106
	ldrh	r3, [r3]
	.loc 1 1281 41
	lsrs	r3, r3, #11
	uxth	r3, r3
	vmov	s15, r3	@ int
	.loc 1 1281 17
	vcvt.f32.s32	s15, s15
	vstr.32	s15, [r7, #16]
	.loc 1 1282 17
	vldr.32	s15, [r7, #16]
	.loc 1 1282 8
	vmov.f32	s14, #1.5e+1
	vcmpe.f32	s15, s14
	vmrs	APSR_nzcv, FPSCR
	ble	.L307
	.loc 1 1284 31
	vldr.32	s15, [r7, #16]
	.loc 1 1284 35
	vldr.32	s14, .L312+4
	vsub.f32	s15, s15, s14
	.loc 1 1284 21
	vstr.32	s15, [r7, #16]
.L307:
	.loc 1 1286 27
	vldr.32	s14, [r7, #16]
	.loc 1 1286 31
	vmov.f32	s13, #8.0e+0
	vdiv.f32	s15, s14, s13
	.loc 1 1286 17
	vstr.32	s15, [r7, #16]
	.loc 1 1288 33
	ldr	r3, [r7]
	ldrb	r2, [r7, #23]
	strb	r2, [r3, #37]
	.loc 1 1289 37
	ldr	r3, [r7, #8]	@ float
	.loc 1 1289 27
	ldr	r2, [r7]
	add	r2, r2, #4096
	str	r3, [r2, #604]	@ float
	.loc 1 1290 37
	ldr	r3, [r7, #12]	@ float
	.loc 1 1290 27
	ldr	r2, [r7]
	add	r2, r2, #4096
	str	r3, [r2, #608]	@ float
	.loc 1 1291 37
	ldr	r3, [r7, #16]	@ float
	.loc 1 1291 27
	ldr	r2, [r7]
	add	r2, r2, #4096
	str	r3, [r2, #612]	@ float
	.loc 1 1292 1
	nop
	adds	r7, r7, #28
	.cfi_def_cfa_offset 4
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	ldr	r7, [sp], #4
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr
.L313:
	.align	2
.L312:
	.word	1115684864
	.word	1107296256
	.cfi_endproc
.LFE32:
	.size	ExtractCILCParameters, .-ExtractCILCParameters
	.section	.text.ExtractDeviatingPixels,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	ExtractDeviatingPixels, %function
ExtractDeviatingPixels:
.LFB33:
	.loc 1 1297 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #24
	.cfi_def_cfa_offset 32
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	str	r1, [r7]
	.loc 1 1298 14
	movs	r3, #0
	strh	r3, [r7, #22]	@ movhi
	.loc 1 1299 14
	movs	r3, #0
	strh	r3, [r7, #20]	@ movhi
	.loc 1 1300 14
	movs	r3, #0
	strh	r3, [r7, #18]	@ movhi
	.loc 1 1301 9
	movs	r3, #0
	str	r3, [r7, #12]
	.loc 1 1304 16
	movs	r3, #0
	strh	r3, [r7, #22]	@ movhi
	.loc 1 1304 5
	b	.L315
.L316:
	.loc 1 1306 31 discriminator 3
	ldrh	r2, [r7, #22]
	.loc 1 1306 40 discriminator 3
	ldr	r3, [r7]
	addw	r2, r2, #2356
	movw	r1, #65535
	strh	r1, [r3, r2, lsl #1]	@ movhi
	.loc 1 1307 32 discriminator 3
	ldrh	r3, [r7, #22]
	.loc 1 1307 41 discriminator 3
	ldr	r2, [r7]
	addw	r3, r3, #2360
	lsls	r3, r3, #1
	add	r3, r3, r2
	movw	r2, #65535
	strh	r2, [r3, #2]	@ movhi
	.loc 1 1304 37 discriminator 3
	ldrh	r3, [r7, #22]
	adds	r3, r3, #1
	strh	r3, [r7, #22]	@ movhi
.L315:
	.loc 1 1304 27 discriminator 1
	ldrh	r3, [r7, #22]
	cmp	r3, #4
	bls	.L316
	.loc 1 1310 12
	movs	r3, #0
	strh	r3, [r7, #22]	@ movhi
	.loc 1 1311 11
	b	.L317
.L321:
	.loc 1 1313 18
	ldrh	r3, [r7, #22]
	adds	r3, r3, #64
	lsls	r3, r3, #1
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	ldrh	r3, [r3]
	.loc 1 1313 11
	cmp	r3, #0
	bne	.L318
	.loc 1 1315 35
	ldrh	r2, [r7, #20]
	.loc 1 1315 50
	ldr	r3, [r7]
	addw	r2, r2, #2356
	ldrh	r1, [r7, #22]	@ movhi
	strh	r1, [r3, r2, lsl #1]	@ movhi
	.loc 1 1316 26
	ldrh	r3, [r7, #20]	@ movhi
	adds	r3, r3, #1
	strh	r3, [r7, #20]	@ movhi
	b	.L319
.L318:
	.loc 1 1318 24
	ldrh	r3, [r7, #22]
	adds	r3, r3, #64
	lsls	r3, r3, #1
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	ldrh	r3, [r3]
	.loc 1 1318 36
	and	r3, r3, #1
	.loc 1 1318 16
	cmp	r3, #0
	beq	.L319
	.loc 1 1320 36
	ldrh	r3, [r7, #18]
	.loc 1 1320 52
	ldr	r2, [r7]
	addw	r3, r3, #2360
	lsls	r3, r3, #1
	add	r3, r3, r2
	ldrh	r2, [r7, #22]	@ movhi
	strh	r2, [r3, #2]	@ movhi
	.loc 1 1321 27
	ldrh	r3, [r7, #18]	@ movhi
	adds	r3, r3, #1
	strh	r3, [r7, #18]	@ movhi
.L319:
	.loc 1 1324 16
	ldrh	r3, [r7, #22]	@ movhi
	adds	r3, r3, #1
	strh	r3, [r7, #22]	@ movhi
.L317:
	.loc 1 1311 45
	ldrh	r3, [r7, #22]
	cmp	r3, #768
	bcs	.L320
	.loc 1 1311 25 discriminator 1
	ldrh	r3, [r7, #20]
	cmp	r3, #4
	bhi	.L320
	.loc 1 1311 45 discriminator 2
	ldrh	r3, [r7, #18]
	cmp	r3, #4
	bls	.L321
.L320:
	.loc 1 1328 7
	ldrh	r3, [r7, #20]
	cmp	r3, #4
	bls	.L322
	.loc 1 1330 14
	mvn	r3, #2
	str	r3, [r7, #12]
	b	.L323
.L322:
	.loc 1 1332 12
	ldrh	r3, [r7, #18]
	cmp	r3, #4
	bls	.L324
	.loc 1 1334 14
	mvn	r3, #3
	str	r3, [r7, #12]
	b	.L323
.L324:
	.loc 1 1336 27
	ldrh	r2, [r7, #20]
	ldrh	r3, [r7, #18]
	add	r3, r3, r2
	.loc 1 1336 12
	cmp	r3, #4
	ble	.L325
	.loc 1 1338 14
	mvn	r3, #4
	str	r3, [r7, #12]
	b	.L323
.L325:
	.loc 1 1342 19
	movs	r3, #0
	strh	r3, [r7, #22]	@ movhi
	.loc 1 1342 9
	b	.L326
.L331:
	.loc 1 1344 25
	ldrh	r3, [r7, #22]
	.loc 1 1344 18
	adds	r3, r3, #1
	str	r3, [r7, #8]
	.loc 1 1344 13
	b	.L327
.L330:
	.loc 1 1346 24
	ldrh	r2, [r7, #22]
	ldr	r3, [r7]
	addw	r2, r2, #2356
	ldrh	r0, [r3, r2, lsl #1]
	ldr	r3, [r7]
	ldr	r2, [r7, #8]
	addw	r2, r2, #2356
	ldrh	r3, [r3, r2, lsl #1]
	mov	r1, r3
	bl	CheckAdjacentPixels
	str	r0, [r7, #12]
	.loc 1 1347 19
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L328
	.loc 1 1349 28
	ldr	r3, [r7, #12]
	b	.L329
.L328:
	.loc 1 1344 46 discriminator 2
	ldr	r3, [r7, #8]
	adds	r3, r3, #1
	str	r3, [r7, #8]
.L327:
	.loc 1 1344 30 discriminator 1
	ldrh	r3, [r7, #20]
	ldr	r2, [r7, #8]
	cmp	r2, r3
	blt	.L330
	.loc 1 1342 50 discriminator 2
	ldrh	r3, [r7, #22]
	adds	r3, r3, #1
	strh	r3, [r7, #22]	@ movhi
.L326:
	.loc 1 1342 29 discriminator 1
	ldrh	r2, [r7, #22]
	ldrh	r3, [r7, #20]
	cmp	r2, r3
	bcc	.L331
	.loc 1 1354 19
	movs	r3, #0
	strh	r3, [r7, #22]	@ movhi
	.loc 1 1354 9
	b	.L332
.L336:
	.loc 1 1356 25
	ldrh	r3, [r7, #22]
	.loc 1 1356 18
	adds	r3, r3, #1
	str	r3, [r7, #8]
	.loc 1 1356 13
	b	.L333
.L335:
	.loc 1 1358 24
	ldrh	r3, [r7, #22]
	ldr	r2, [r7]
	addw	r3, r3, #2360
	lsls	r3, r3, #1
	add	r3, r3, r2
	ldrh	r0, [r3, #2]
	ldr	r2, [r7]
	ldr	r3, [r7, #8]
	addw	r3, r3, #2360
	lsls	r3, r3, #1
	add	r3, r3, r2
	ldrh	r3, [r3, #2]
	mov	r1, r3
	bl	CheckAdjacentPixels
	str	r0, [r7, #12]
	.loc 1 1359 19
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L334
	.loc 1 1361 28
	ldr	r3, [r7, #12]
	b	.L329
.L334:
	.loc 1 1356 47 discriminator 2
	ldr	r3, [r7, #8]
	adds	r3, r3, #1
	str	r3, [r7, #8]
.L333:
	.loc 1 1356 30 discriminator 1
	ldrh	r3, [r7, #18]
	ldr	r2, [r7, #8]
	cmp	r2, r3
	blt	.L335
	.loc 1 1354 51 discriminator 2
	ldrh	r3, [r7, #22]
	adds	r3, r3, #1
	strh	r3, [r7, #22]	@ movhi
.L332:
	.loc 1 1354 29 discriminator 1
	ldrh	r2, [r7, #22]
	ldrh	r3, [r7, #18]
	cmp	r2, r3
	bcc	.L336
	.loc 1 1366 19
	movs	r3, #0
	strh	r3, [r7, #22]	@ movhi
	.loc 1 1366 9
	b	.L337
.L341:
	.loc 1 1368 18
	movs	r3, #0
	str	r3, [r7, #8]
	.loc 1 1368 13
	b	.L338
.L340:
	.loc 1 1370 24
	ldrh	r2, [r7, #22]
	ldr	r3, [r7]
	addw	r2, r2, #2356
	ldrh	r0, [r3, r2, lsl #1]
	ldr	r2, [r7]
	ldr	r3, [r7, #8]
	addw	r3, r3, #2360
	lsls	r3, r3, #1
	add	r3, r3, r2
	ldrh	r3, [r3, #2]
	mov	r1, r3
	bl	CheckAdjacentPixels
	str	r0, [r7, #12]
	.loc 1 1371 19
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L339
	.loc 1 1373 28
	ldr	r3, [r7, #12]
	b	.L329
.L339:
	.loc 1 1368 40 discriminator 2
	ldr	r3, [r7, #8]
	adds	r3, r3, #1
	str	r3, [r7, #8]
.L338:
	.loc 1 1368 23 discriminator 1
	ldrh	r3, [r7, #18]
	ldr	r2, [r7, #8]
	cmp	r2, r3
	blt	.L340
	.loc 1 1366 50 discriminator 2
	ldrh	r3, [r7, #22]
	adds	r3, r3, #1
	strh	r3, [r7, #22]	@ movhi
.L337:
	.loc 1 1366 29 discriminator 1
	ldrh	r2, [r7, #22]
	ldrh	r3, [r7, #20]
	cmp	r2, r3
	bcc	.L341
.L323:
	.loc 1 1381 12
	ldr	r3, [r7, #12]
.L329:
	.loc 1 1383 1
	mov	r0, r3
	adds	r7, r7, #24
	.cfi_def_cfa_offset 8
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE33:
	.size	ExtractDeviatingPixels, .-ExtractDeviatingPixels
	.section	.text.CheckAdjacentPixels,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	CheckAdjacentPixels, %function
CheckAdjacentPixels:
.LFB34:
	.loc 1 1388 2
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	sub	sp, sp, #20
	.cfi_def_cfa_offset 24
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	mov	r3, r0
	mov	r2, r1
	strh	r3, [r7, #6]	@ movhi
	mov	r3, r2	@ movhi
	strh	r3, [r7, #4]	@ movhi
	.loc 1 1391 23
	ldrh	r2, [r7, #6]
	ldrh	r3, [r7, #4]
	.loc 1 1391 16
	subs	r3, r2, r3
	str	r3, [r7, #12]
	.loc 1 1392 8
	ldr	r3, [r7, #12]
	cmn	r3, #33
	blt	.L343
	.loc 1 1392 25 discriminator 1
	ldr	r3, [r7, #12]
	cmn	r3, #30
	bge	.L343
	.loc 1 1394 17
	mvn	r3, #5
	b	.L344
.L343:
	.loc 1 1396 8
	ldr	r3, [r7, #12]
	cmp	r3, #-1
	blt	.L345
	.loc 1 1396 24 discriminator 1
	ldr	r3, [r7, #12]
	cmp	r3, #1
	bgt	.L345
	.loc 1 1398 17
	mvn	r3, #5
	b	.L344
.L345:
	.loc 1 1400 8
	ldr	r3, [r7, #12]
	cmp	r3, #30
	ble	.L346
	.loc 1 1400 24 discriminator 1
	ldr	r3, [r7, #12]
	cmp	r3, #33
	bgt	.L346
	.loc 1 1402 17
	mvn	r3, #5
	b	.L344
.L346:
	.loc 1 1405 13
	movs	r3, #0
.L344:
	.loc 1 1406 2
	mov	r0, r3
	adds	r7, r7, #20
	.cfi_def_cfa_offset 4
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	ldr	r7, [sp], #4
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE34:
	.size	CheckAdjacentPixels, .-CheckAdjacentPixels
	.section	.text.GetMedian,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	GetMedian, %function
GetMedian:
.LFB35:
	.loc 1 1411 2
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	sub	sp, sp, #28
	.cfi_def_cfa_offset 32
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	str	r1, [r7]
.LBB33:
	.loc 1 1414 13
	movs	r3, #0
	str	r3, [r7, #20]
	.loc 1 1414 5
	b	.L348
.L353:
.LBB34:
	.loc 1 1416 17
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #16]
	.loc 1 1416 9
	b	.L349
.L352:
	.loc 1 1418 22
	ldr	r3, [r7, #16]
	lsls	r3, r3, #2
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	vldr.32	s14, [r3]
	.loc 1 1418 34
	ldr	r3, [r7, #20]
	lsls	r3, r3, #2
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	vldr.32	s15, [r3]
	.loc 1 1418 15
	vcmpe.f32	s14, s15
	vmrs	APSR_nzcv, FPSCR
	bpl	.L350
	.loc 1 1420 30
	ldr	r3, [r7, #20]
	lsls	r3, r3, #2
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	.loc 1 1420 22
	ldr	r3, [r3]	@ float
	str	r3, [r7, #12]	@ float
	.loc 1 1421 35
	ldr	r3, [r7, #16]
	lsls	r3, r3, #2
	ldr	r2, [r7, #4]
	add	r2, r2, r3
	.loc 1 1421 23
	ldr	r3, [r7, #20]
	lsls	r3, r3, #2
	ldr	r1, [r7, #4]
	add	r3, r3, r1
	.loc 1 1421 35
	ldr	r2, [r2]	@ float
	.loc 1 1421 27
	str	r2, [r3]	@ float
	.loc 1 1422 23
	ldr	r3, [r7, #16]
	lsls	r3, r3, #2
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	.loc 1 1422 27
	ldr	r2, [r7, #12]	@ float
	str	r2, [r3]	@ float
.L350:
	.loc 1 1416 30 discriminator 2
	ldr	r3, [r7, #16]
	adds	r3, r3, #1
	str	r3, [r7, #16]
.L349:
	.loc 1 1416 25 discriminator 1
	ldr	r2, [r7, #16]
	ldr	r3, [r7]
	cmp	r2, r3
	blt	.L352
.LBE34:
	.loc 1 1414 26 discriminator 2
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L348:
	.loc 1 1414 21 discriminator 1
	ldr	r3, [r7]
	subs	r3, r3, #1
	.loc 1 1414 19 discriminator 1
	ldr	r2, [r7, #20]
	cmp	r2, r3
	blt	.L353
.LBE33:
	.loc 1 1427 11
	ldr	r3, [r7]
	and	r3, r3, #1
	.loc 1 1427 7
	cmp	r3, #0
	bne	.L354
	.loc 1 1429 26
	ldr	r3, [r7]
	lsrs	r2, r3, #31
	add	r3, r3, r2
	asrs	r3, r3, #1
	.loc 1 1429 24
	lsls	r3, r3, #2
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	vldr.32	s14, [r3]
	.loc 1 1429 40
	ldr	r3, [r7]
	lsrs	r2, r3, #31
	add	r3, r3, r2
	asrs	r3, r3, #1
	.loc 1 1429 38
	add	r3, r3, #1073741824
	subs	r3, r3, #1
	lsls	r3, r3, #2
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	vldr.32	s15, [r3]
	.loc 1 1429 30
	vadd.f32	s14, s14, s15
	.loc 1 1429 49
	vmov.f32	s13, #2.0e+0
	vdiv.f32	s15, s14, s13
	b	.L355
.L354:
	.loc 1 1434 24
	ldr	r3, [r7]
	lsrs	r2, r3, #31
	add	r3, r3, r2
	asrs	r3, r3, #1
	.loc 1 1434 22
	lsls	r3, r3, #2
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	vldr.32	s15, [r3]
.L355:
	.loc 1 1437 2
	vmov.f32	s0, s15
	adds	r7, r7, #28
	.cfi_def_cfa_offset 4
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	ldr	r7, [sp], #4
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE35:
	.size	GetMedian, .-GetMedian
	.section	.text.IsPixelBad,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	IsPixelBad, %function
IsPixelBad:
.LFB36:
	.loc 1 1442 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	sub	sp, sp, #20
	.cfi_def_cfa_offset 24
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	mov	r3, r0
	str	r1, [r7]
	strh	r3, [r7, #6]	@ movhi
.LBB35:
	.loc 1 1443 13
	movs	r3, #0
	str	r3, [r7, #12]
	.loc 1 1443 5
	b	.L358
.L362:
	.loc 1 1445 42
	ldr	r2, [r7]
	ldr	r3, [r7, #12]
	addw	r3, r3, #2360
	lsls	r3, r3, #1
	add	r3, r3, r2
	ldrh	r3, [r3, #2]
	.loc 1 1445 11
	ldrh	r2, [r7, #6]
	cmp	r2, r3
	beq	.L359
	.loc 1 1445 78 discriminator 1
	ldr	r3, [r7]
	ldr	r2, [r7, #12]
	addw	r2, r2, #2356
	ldrh	r3, [r3, r2, lsl #1]
	.loc 1 1445 46 discriminator 1
	ldrh	r2, [r7, #6]
	cmp	r2, r3
	bne	.L360
.L359:
	.loc 1 1447 20
	movs	r3, #1
	b	.L361
.L360:
	.loc 1 1443 24 discriminator 2
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L358:
	.loc 1 1443 19 discriminator 1
	ldr	r3, [r7, #12]
	cmp	r3, #4
	ble	.L362
.LBE35:
	.loc 1 1451 12
	movs	r3, #0
.L361:
	.loc 1 1452 1
	mov	r0, r3
	adds	r7, r7, #20
	.cfi_def_cfa_offset 4
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	ldr	r7, [sp], #4
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE36:
	.size	IsPixelBad, .-IsPixelBad
	.text
.Letext0:
	.file 2 "C:\\Program Files\\STM32CubeIDE_1.13.0\\STM32CubeIDE\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.11.3.rel1.win32_1.1.0.202305231506\\tools\\arm-none-eabi\\include\\machine\\_default_types.h"
	.file 3 "C:\\Program Files\\STM32CubeIDE_1.13.0\\STM32CubeIDE\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.11.3.rel1.win32_1.1.0.202305231506\\tools\\bin/../lib/gcc/arm-none-eabi/11.3.1/../../../../arm-none-eabi/include/sys/_stdint.h"
	.file 4 "D:/Workspace/stm32/ThermalBridge3/Hardware/headers/MLX90640_API.h"
	.file 5 "C:\\Program Files\\STM32CubeIDE_1.13.0\\STM32CubeIDE\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.11.3.rel1.win32_1.1.0.202305231506\\tools\\bin/../lib/gcc/arm-none-eabi/11.3.1/../../../../arm-none-eabi/include/math.h"
	.file 6 "D:/Workspace/stm32/ThermalBridge3/Hardware/headers/MLX90640_I2C_Driver.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x1763
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x1d
	.4byte	.LASF1217
	.byte	0x1d
	.4byte	.LASF1218
	.4byte	.LASF1219
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.4byte	.Ldebug_macro0
	.uleb128 0xa
	.4byte	.LASF1054
	.byte	0x2
	.byte	0x29
	.byte	0x15
	.4byte	0x36
	.uleb128 0x8
	.byte	0x1
	.byte	0x6
	.4byte	.LASF1056
	.uleb128 0xa
	.4byte	.LASF1055
	.byte	0x2
	.byte	0x2b
	.byte	0x17
	.4byte	0x49
	.uleb128 0x8
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1057
	.uleb128 0xa
	.4byte	.LASF1058
	.byte	0x2
	.byte	0x37
	.byte	0x13
	.4byte	0x5c
	.uleb128 0x8
	.byte	0x2
	.byte	0x5
	.4byte	.LASF1059
	.uleb128 0xa
	.4byte	.LASF1060
	.byte	0x2
	.byte	0x39
	.byte	0x1c
	.4byte	0x6f
	.uleb128 0x8
	.byte	0x2
	.byte	0x7
	.4byte	.LASF1061
	.uleb128 0xa
	.4byte	.LASF1062
	.byte	0x2
	.byte	0x4d
	.byte	0x12
	.4byte	0x82
	.uleb128 0x8
	.byte	0x4
	.byte	0x5
	.4byte	.LASF1063
	.uleb128 0x8
	.byte	0x4
	.byte	0x7
	.4byte	.LASF1064
	.uleb128 0x8
	.byte	0x8
	.byte	0x5
	.4byte	.LASF1065
	.uleb128 0x8
	.byte	0x8
	.byte	0x7
	.4byte	.LASF1066
	.uleb128 0x1e
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x8
	.byte	0x4
	.byte	0x7
	.4byte	.LASF1067
	.uleb128 0xa
	.4byte	.LASF1068
	.byte	0x3
	.byte	0x14
	.byte	0x12
	.4byte	0x2a
	.uleb128 0xa
	.4byte	.LASF1069
	.byte	0x3
	.byte	0x18
	.byte	0x13
	.4byte	0x3d
	.uleb128 0xa
	.4byte	.LASF1070
	.byte	0x3
	.byte	0x20
	.byte	0x13
	.4byte	0x50
	.uleb128 0xa
	.4byte	.LASF1071
	.byte	0x3
	.byte	0x24
	.byte	0x14
	.4byte	0x63
	.uleb128 0xa
	.4byte	.LASF1072
	.byte	0x3
	.byte	0x2c
	.byte	0x13
	.4byte	0x76
	.uleb128 0x1f
	.2byte	0x127c
	.byte	0x4
	.byte	0x50
	.byte	0x9
	.4byte	0x23e
	.uleb128 0x7
	.4byte	.LASF1073
	.byte	0x52
	.byte	0x11
	.4byte	0xc4
	.byte	0
	.uleb128 0x7
	.4byte	.LASF1074
	.byte	0x53
	.byte	0x11
	.4byte	0xc4
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF1075
	.byte	0x54
	.byte	0xf
	.4byte	0x23e
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF1076
	.byte	0x55
	.byte	0xf
	.4byte	0x23e
	.byte	0x8
	.uleb128 0x7
	.4byte	.LASF1077
	.byte	0x56
	.byte	0x12
	.4byte	0xd0
	.byte	0xc
	.uleb128 0x7
	.4byte	.LASF1078
	.byte	0x57
	.byte	0xf
	.4byte	0x23e
	.byte	0x10
	.uleb128 0x7
	.4byte	.LASF1079
	.byte	0x58
	.byte	0x11
	.4byte	0xc4
	.byte	0x14
	.uleb128 0x1a
	.ascii	"tgc\000"
	.byte	0x59
	.byte	0xf
	.4byte	0x23e
	.byte	0x18
	.uleb128 0x7
	.4byte	.LASF1080
	.byte	0x5a
	.byte	0xf
	.4byte	0x23e
	.byte	0x1c
	.uleb128 0x7
	.4byte	.LASF1081
	.byte	0x5b
	.byte	0xf
	.4byte	0x23e
	.byte	0x20
	.uleb128 0x7
	.4byte	.LASF1082
	.byte	0x5c
	.byte	0x11
	.4byte	0xb8
	.byte	0x24
	.uleb128 0x7
	.4byte	.LASF1083
	.byte	0x5d
	.byte	0x11
	.4byte	0xb8
	.byte	0x25
	.uleb128 0x7
	.4byte	.LASF1084
	.byte	0x5e
	.byte	0xf
	.4byte	0x23e
	.byte	0x28
	.uleb128 0x7
	.4byte	.LASF1085
	.byte	0x5f
	.byte	0xf
	.4byte	0x245
	.byte	0x2c
	.uleb128 0x1a
	.ascii	"ct\000"
	.byte	0x60
	.byte	0x11
	.4byte	0x255
	.byte	0x40
	.uleb128 0x7
	.4byte	.LASF1086
	.byte	0x61
	.byte	0x12
	.4byte	0x265
	.byte	0x4a
	.uleb128 0xe
	.4byte	.LASF1087
	.byte	0x62
	.byte	0x11
	.4byte	0xb8
	.2byte	0x64a
	.uleb128 0xe
	.4byte	.LASF1088
	.byte	0x63
	.byte	0x11
	.4byte	0x274
	.2byte	0x64c
	.uleb128 0x1b
	.ascii	"kta\000"
	.byte	0x64
	.4byte	0x283
	.2byte	0xc4c
	.uleb128 0xe
	.4byte	.LASF1089
	.byte	0x65
	.byte	0x11
	.4byte	0xb8
	.2byte	0xf4c
	.uleb128 0x1b
	.ascii	"kv\000"
	.byte	0x66
	.4byte	0x283
	.2byte	0xf4d
	.uleb128 0xe
	.4byte	.LASF1090
	.byte	0x67
	.byte	0x11
	.4byte	0xb8
	.2byte	0x124d
	.uleb128 0xe
	.4byte	.LASF1091
	.byte	0x68
	.byte	0xf
	.4byte	0x292
	.2byte	0x1250
	.uleb128 0xe
	.4byte	.LASF1092
	.byte	0x69
	.byte	0x11
	.4byte	0x2a2
	.2byte	0x1258
	.uleb128 0xe
	.4byte	.LASF1093
	.byte	0x6a
	.byte	0xf
	.4byte	0x2b2
	.2byte	0x125c
	.uleb128 0xe
	.4byte	.LASF1094
	.byte	0x6b
	.byte	0x12
	.4byte	0x2c2
	.2byte	0x1268
	.uleb128 0xe
	.4byte	.LASF1095
	.byte	0x6c
	.byte	0x12
	.4byte	0x2c2
	.2byte	0x1272
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.byte	0x4
	.4byte	.LASF1096
	.uleb128 0x5
	.4byte	0x23e
	.4byte	0x255
	.uleb128 0xb
	.4byte	0xa5
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.4byte	0xc4
	.4byte	0x265
	.uleb128 0xb
	.4byte	0xa5
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.4byte	0xd0
	.4byte	0x274
	.uleb128 0x13
	.4byte	0xa5
	.byte	0
	.uleb128 0x5
	.4byte	0xc4
	.4byte	0x283
	.uleb128 0x13
	.4byte	0xa5
	.byte	0
	.uleb128 0x5
	.4byte	0xac
	.4byte	0x292
	.uleb128 0x13
	.4byte	0xa5
	.byte	0
	.uleb128 0x5
	.4byte	0x23e
	.4byte	0x2a2
	.uleb128 0xb
	.4byte	0xa5
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.4byte	0xc4
	.4byte	0x2b2
	.uleb128 0xb
	.4byte	0xa5
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.4byte	0x23e
	.4byte	0x2c2
	.uleb128 0xb
	.4byte	0xa5
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.4byte	0xd0
	.4byte	0x2d2
	.uleb128 0xb
	.4byte	0xa5
	.byte	0x4
	.byte	0
	.uleb128 0xa
	.4byte	.LASF1097
	.byte	0x4
	.byte	0x6d
	.byte	0x7
	.4byte	0xe8
	.uleb128 0x20
	.4byte	0x2d2
	.uleb128 0x8
	.byte	0x8
	.byte	0x4
	.4byte	.LASF1098
	.uleb128 0x8
	.byte	0x1
	.byte	0x8
	.4byte	.LASF499
	.uleb128 0x8
	.byte	0x8
	.byte	0x4
	.4byte	.LASF1099
	.uleb128 0x16
	.4byte	.LASF1100
	.byte	0x5
	.byte	0x70
	.byte	0xf
	.4byte	0x2f1
	.4byte	0x30e
	.uleb128 0xc
	.4byte	0x2f1
	.byte	0
	.uleb128 0x21
	.ascii	"pow\000"
	.byte	0x5
	.byte	0x6f
	.byte	0xf
	.4byte	0x2f1
	.4byte	0x329
	.uleb128 0xc
	.4byte	0x2f1
	.uleb128 0xc
	.4byte	0x2f1
	.byte	0
	.uleb128 0x22
	.4byte	.LASF1220
	.byte	0x6
	.byte	0x18
	.byte	0x10
	.4byte	0x9e
	.uleb128 0x16
	.4byte	.LASF1101
	.byte	0x6
	.byte	0x1a
	.byte	0x10
	.4byte	0x9e
	.4byte	0x355
	.uleb128 0xc
	.4byte	0xb8
	.uleb128 0xc
	.4byte	0xd0
	.uleb128 0xc
	.4byte	0xd0
	.byte	0
	.uleb128 0x16
	.4byte	.LASF1102
	.byte	0x6
	.byte	0x19
	.byte	0x10
	.4byte	0x9e
	.4byte	0x37a
	.uleb128 0xc
	.4byte	0xb8
	.uleb128 0xc
	.4byte	0xd0
	.uleb128 0xc
	.4byte	0xd0
	.uleb128 0xc
	.4byte	0x37a
	.byte	0
	.uleb128 0x14
	.4byte	0xd0
	.uleb128 0x17
	.4byte	.LASF1105
	.2byte	0x5a1
	.byte	0xc
	.4byte	0x9e
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3cf
	.uleb128 0x2
	.4byte	.LASF1103
	.2byte	0x5a1
	.byte	0x20
	.4byte	0xd0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x2
	.4byte	.LASF1104
	.2byte	0x5a1
	.byte	0x36
	.4byte	0x3cf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x6
	.4byte	.LBB35
	.4byte	.LBE35-.LBB35
	.uleb128 0x3
	.ascii	"i\000"
	.2byte	0x5a3
	.byte	0xd
	.4byte	0x9e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	0x2d2
	.uleb128 0x17
	.4byte	.LASF1106
	.2byte	0x582
	.byte	0xe
	.4byte	0x23e
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x448
	.uleb128 0x2
	.4byte	.LASF1107
	.2byte	0x582
	.byte	0x1f
	.4byte	0x448
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x18
	.ascii	"n\000"
	.2byte	0x582
	.byte	0x2b
	.4byte	0x9e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1
	.4byte	.LASF1108
	.2byte	0x584
	.byte	0xb
	.4byte	0x23e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.4byte	.LBB33
	.4byte	.LBE33-.LBB33
	.uleb128 0x3
	.ascii	"i\000"
	.2byte	0x586
	.byte	0xd
	.4byte	0x9e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x6
	.4byte	.LBB34
	.4byte	.LBE34-.LBB34
	.uleb128 0x3
	.ascii	"j\000"
	.2byte	0x588
	.byte	0x11
	.4byte	0x9e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	0x23e
	.uleb128 0x17
	.4byte	.LASF1109
	.2byte	0x56b
	.byte	0xd
	.4byte	0x9e
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x495
	.uleb128 0x2
	.4byte	.LASF1110
	.2byte	0x56b
	.byte	0x2a
	.4byte	0xd0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x2
	.4byte	.LASF1111
	.2byte	0x56b
	.byte	0x39
	.4byte	0xd0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF1112
	.2byte	0x56d
	.byte	0xa
	.4byte	0x9e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x23
	.4byte	.LASF1113
	.byte	0x1
	.2byte	0x510
	.byte	0xc
	.4byte	0x9e
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x518
	.uleb128 0x2
	.4byte	.LASF1114
	.2byte	0x510
	.byte	0x2d
	.4byte	0x37a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2
	.4byte	.LASF1115
	.2byte	0x510
	.byte	0x45
	.4byte	0x3cf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1
	.4byte	.LASF1116
	.2byte	0x512
	.byte	0xe
	.4byte	0xd0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x1
	.4byte	.LASF1117
	.2byte	0x513
	.byte	0xe
	.4byte	0xd0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1
	.4byte	.LASF1118
	.2byte	0x514
	.byte	0xe
	.4byte	0xd0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -14
	.uleb128 0x1
	.4byte	.LASF1119
	.2byte	0x515
	.byte	0x9
	.4byte	0x9e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.ascii	"i\000"
	.2byte	0x516
	.byte	0x9
	.4byte	0x9e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x10
	.4byte	.LASF1120
	.2byte	0x4eb
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x56a
	.uleb128 0x2
	.4byte	.LASF1114
	.2byte	0x4eb
	.byte	0x2d
	.4byte	0x37a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2
	.4byte	.LASF1115
	.2byte	0x4eb
	.byte	0x45
	.4byte	0x3cf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1
	.4byte	.LASF1093
	.2byte	0x4ed
	.byte	0xb
	.4byte	0x2b2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.4byte	.LASF1083
	.2byte	0x4ee
	.byte	0xd
	.4byte	0xb8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x12
	.4byte	.LASF1121
	.2byte	0x4b2
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x607
	.uleb128 0x2
	.4byte	.LASF1114
	.2byte	0x4b2
	.byte	0x2b
	.4byte	0x37a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2
	.4byte	.LASF1115
	.2byte	0x4b2
	.byte	0x43
	.4byte	0x3cf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1
	.4byte	.LASF1122
	.2byte	0x4b4
	.byte	0xb
	.4byte	0x292
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.4byte	.LASF1123
	.2byte	0x4b5
	.byte	0xd
	.4byte	0x2a2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1
	.4byte	.LASF1080
	.2byte	0x4b6
	.byte	0xb
	.4byte	0x23e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1
	.4byte	.LASF1081
	.2byte	0x4b7
	.byte	0xb
	.4byte	0x23e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.4byte	.LASF1087
	.2byte	0x4b8
	.byte	0xd
	.4byte	0xb8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x1
	.4byte	.LASF1124
	.2byte	0x4b9
	.byte	0xd
	.4byte	0xb8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0x1
	.4byte	.LASF1090
	.2byte	0x4ba
	.byte	0xd
	.4byte	0xb8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.byte	0
	.uleb128 0x12
	.4byte	.LASF1125
	.2byte	0x458
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x736
	.uleb128 0x2
	.4byte	.LASF1114
	.2byte	0x458
	.byte	0x30
	.4byte	0x37a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -3132
	.uleb128 0x2
	.4byte	.LASF1115
	.2byte	0x458
	.byte	0x48
	.4byte	0x3cf
	.uleb128 0x3
	.byte	0x91
	.sleb128 -3136
	.uleb128 0x3
	.ascii	"p\000"
	.2byte	0x45a
	.byte	0x9
	.4byte	0x9e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3
	.ascii	"KvT\000"
	.2byte	0x45b
	.byte	0xc
	.4byte	0x736
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1
	.4byte	.LASF1126
	.2byte	0x45c
	.byte	0xc
	.4byte	0xac
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x1
	.4byte	.LASF1127
	.2byte	0x45d
	.byte	0xc
	.4byte	0xac
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x1
	.4byte	.LASF1128
	.2byte	0x45e
	.byte	0xc
	.4byte	0xac
	.uleb128 0x2
	.byte	0x91
	.sleb128 -19
	.uleb128 0x1
	.4byte	.LASF1129
	.2byte	0x45f
	.byte	0xc
	.4byte	0xac
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF1090
	.2byte	0x460
	.byte	0xd
	.4byte	0xb8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x1
	.4byte	.LASF1130
	.2byte	0x461
	.byte	0xd
	.4byte	0xb8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -49
	.uleb128 0x1
	.4byte	.LASF1131
	.2byte	0x462
	.byte	0xb
	.4byte	0x746
	.uleb128 0x3
	.byte	0x91
	.sleb128 -3128
	.uleb128 0x1
	.4byte	.LASF1108
	.2byte	0x463
	.byte	0xb
	.4byte	0x23e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x4
	.4byte	.LBB29
	.4byte	.LBE29-.LBB29
	.4byte	0x703
	.uleb128 0x3
	.ascii	"i\000"
	.2byte	0x484
	.byte	0xd
	.4byte	0x9e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x6
	.4byte	.LBB30
	.4byte	.LBE30-.LBB30
	.uleb128 0x3
	.ascii	"j\000"
	.2byte	0x486
	.byte	0x11
	.4byte	0x9e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.byte	0
	.uleb128 0x4
	.4byte	.LBB31
	.4byte	.LBE31-.LBB31
	.4byte	0x71e
	.uleb128 0x3
	.ascii	"i\000"
	.2byte	0x490
	.byte	0xd
	.4byte	0x9e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x6
	.4byte	.LBB32
	.4byte	.LBE32-.LBB32
	.uleb128 0x3
	.ascii	"i\000"
	.2byte	0x49f
	.byte	0xd
	.4byte	0x9e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.byte	0
	.uleb128 0x5
	.4byte	0xac
	.4byte	0x746
	.uleb128 0xb
	.4byte	0xa5
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.4byte	0x23e
	.4byte	0x755
	.uleb128 0x13
	.4byte	0xa5
	.byte	0
	.uleb128 0x12
	.4byte	.LASF1132
	.2byte	0x410
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x857
	.uleb128 0x2
	.4byte	.LASF1114
	.2byte	0x410
	.byte	0x31
	.4byte	0x37a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -3132
	.uleb128 0x2
	.4byte	.LASF1115
	.2byte	0x410
	.byte	0x49
	.4byte	0x3cf
	.uleb128 0x3
	.byte	0x91
	.sleb128 -3136
	.uleb128 0x3
	.ascii	"p\000"
	.2byte	0x412
	.byte	0x9
	.4byte	0x9e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.4byte	.LASF1133
	.2byte	0x413
	.byte	0xc
	.4byte	0x736
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1
	.4byte	.LASF1124
	.2byte	0x414
	.byte	0xd
	.4byte	0xb8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x1
	.4byte	.LASF1134
	.2byte	0x415
	.byte	0xd
	.4byte	0xb8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -45
	.uleb128 0x1
	.4byte	.LASF1130
	.2byte	0x416
	.byte	0xd
	.4byte	0xb8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -46
	.uleb128 0x1
	.4byte	.LASF1135
	.2byte	0x417
	.byte	0xb
	.4byte	0x746
	.uleb128 0x3
	.byte	0x91
	.sleb128 -3124
	.uleb128 0x1
	.4byte	.LASF1108
	.2byte	0x418
	.byte	0xb
	.4byte	0x23e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x4
	.4byte	.LBB25
	.4byte	.LBE25-.LBB25
	.4byte	0x824
	.uleb128 0x3
	.ascii	"i\000"
	.2byte	0x422
	.byte	0xd
	.4byte	0x9e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x6
	.4byte	.LBB26
	.4byte	.LBE26-.LBB26
	.uleb128 0x3
	.ascii	"j\000"
	.2byte	0x424
	.byte	0x11
	.4byte	0x9e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x4
	.4byte	.LBB27
	.4byte	.LBE27-.LBB27
	.4byte	0x83f
	.uleb128 0x3
	.ascii	"i\000"
	.2byte	0x435
	.byte	0xd
	.4byte	0x9e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x6
	.4byte	.LBB28
	.4byte	.LBE28-.LBB28
	.uleb128 0x3
	.ascii	"i\000"
	.2byte	0x444
	.byte	0xd
	.4byte	0x9e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	.LASF1136
	.2byte	0x3cc
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x990
	.uleb128 0x2
	.4byte	.LASF1114
	.2byte	0x3cc
	.byte	0x2f
	.4byte	0x37a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -276
	.uleb128 0x2
	.4byte	.LASF1115
	.2byte	0x3cc
	.byte	0x47
	.4byte	0x3cf
	.uleb128 0x3
	.byte	0x91
	.sleb128 -280
	.uleb128 0x1
	.4byte	.LASF1137
	.2byte	0x3ce
	.byte	0x9
	.4byte	0x990
	.uleb128 0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x1
	.4byte	.LASF1138
	.2byte	0x3cf
	.byte	0x9
	.4byte	0x9a0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -268
	.uleb128 0x3
	.ascii	"p\000"
	.2byte	0x3d0
	.byte	0x9
	.4byte	0x9e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF1139
	.2byte	0x3d1
	.byte	0xd
	.4byte	0xc4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -42
	.uleb128 0x1
	.4byte	.LASF1140
	.2byte	0x3d2
	.byte	0xd
	.4byte	0xb8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -39
	.uleb128 0x1
	.4byte	.LASF1141
	.2byte	0x3d3
	.byte	0xd
	.4byte	0xb8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -38
	.uleb128 0x1
	.4byte	.LASF1142
	.2byte	0x3d4
	.byte	0xd
	.4byte	0xb8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0x4
	.4byte	.LBB19
	.4byte	.LBE19-.LBB19
	.4byte	0x910
	.uleb128 0x3
	.ascii	"i\000"
	.2byte	0x3dc
	.byte	0xd
	.4byte	0x9e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x4
	.4byte	.LBB20
	.4byte	.LBE20-.LBB20
	.4byte	0x92b
	.uleb128 0x3
	.ascii	"i\000"
	.2byte	0x3e5
	.byte	0xd
	.4byte	0x9e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x4
	.4byte	.LBB21
	.4byte	.LBE21-.LBB21
	.4byte	0x946
	.uleb128 0x3
	.ascii	"i\000"
	.2byte	0x3ed
	.byte	0xd
	.4byte	0x9e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.4byte	.LBB22
	.4byte	.LBE22-.LBB22
	.4byte	0x961
	.uleb128 0x3
	.ascii	"i\000"
	.2byte	0x3f6
	.byte	0xd
	.4byte	0x9e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x6
	.4byte	.LBB23
	.4byte	.LBE23-.LBB23
	.uleb128 0x3
	.ascii	"i\000"
	.2byte	0x3fe
	.byte	0xd
	.4byte	0x9e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x6
	.4byte	.LBB24
	.4byte	.LBE24-.LBB24
	.uleb128 0x3
	.ascii	"j\000"
	.2byte	0x400
	.byte	0x11
	.4byte	0x9e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.4byte	0x9e
	.4byte	0x9a0
	.uleb128 0xb
	.4byte	0xa5
	.byte	0x17
	.byte	0
	.uleb128 0x5
	.4byte	0x9e
	.4byte	0x9b0
	.uleb128 0xb
	.4byte	0xa5
	.byte	0x1f
	.byte	0
	.uleb128 0x12
	.4byte	.LASF1143
	.2byte	0x367
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb4e
	.uleb128 0x2
	.4byte	.LASF1114
	.2byte	0x367
	.byte	0x2e
	.4byte	0x37a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -3372
	.uleb128 0x2
	.4byte	.LASF1115
	.2byte	0x367
	.byte	0x46
	.4byte	0x3cf
	.uleb128 0x3
	.byte	0x91
	.sleb128 -3376
	.uleb128 0x1
	.4byte	.LASF1144
	.2byte	0x369
	.byte	0x9
	.4byte	0x990
	.uleb128 0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x1
	.4byte	.LASF1145
	.2byte	0x36a
	.byte	0x9
	.4byte	0x9a0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -292
	.uleb128 0x3
	.ascii	"p\000"
	.2byte	0x36b
	.byte	0x9
	.4byte	0x9e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1
	.4byte	.LASF1146
	.2byte	0x36c
	.byte	0x9
	.4byte	0x9e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x1
	.4byte	.LASF1087
	.2byte	0x36d
	.byte	0xd
	.4byte	0xb8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x1
	.4byte	.LASF1147
	.2byte	0x36e
	.byte	0xd
	.4byte	0xb8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -63
	.uleb128 0x1
	.4byte	.LASF1148
	.2byte	0x36f
	.byte	0xd
	.4byte	0xb8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -62
	.uleb128 0x1
	.4byte	.LASF1149
	.2byte	0x370
	.byte	0xd
	.4byte	0xb8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -61
	.uleb128 0x1
	.4byte	.LASF1150
	.2byte	0x371
	.byte	0xb
	.4byte	0x746
	.uleb128 0x3
	.byte	0x91
	.sleb128 -3364
	.uleb128 0x1
	.4byte	.LASF1108
	.2byte	0x372
	.byte	0xb
	.4byte	0x23e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x4
	.4byte	.LBB11
	.4byte	.LBE11-.LBB11
	.4byte	0xa98
	.uleb128 0x3
	.ascii	"i\000"
	.2byte	0x37b
	.byte	0xd
	.4byte	0x9e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x4
	.4byte	.LBB12
	.4byte	.LBE12-.LBB12
	.4byte	0xab3
	.uleb128 0x3
	.ascii	"i\000"
	.2byte	0x384
	.byte	0xd
	.4byte	0x9e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x4
	.4byte	.LBB13
	.4byte	.LBE13-.LBB13
	.4byte	0xace
	.uleb128 0x3
	.ascii	"i\000"
	.2byte	0x38c
	.byte	0xd
	.4byte	0x9e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x4
	.4byte	.LBB14
	.4byte	.LBE14-.LBB14
	.4byte	0xae9
	.uleb128 0x3
	.ascii	"i\000"
	.2byte	0x395
	.byte	0xd
	.4byte	0x9e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x4
	.4byte	.LBB15
	.4byte	.LBE15-.LBB15
	.4byte	0xb1b
	.uleb128 0x3
	.ascii	"i\000"
	.2byte	0x39d
	.byte	0xd
	.4byte	0x9e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x6
	.4byte	.LBB16
	.4byte	.LBE16-.LBB16
	.uleb128 0x3
	.ascii	"j\000"
	.2byte	0x39f
	.byte	0x11
	.4byte	0x9e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x4
	.4byte	.LBB17
	.4byte	.LBE17-.LBB17
	.4byte	0xb36
	.uleb128 0x3
	.ascii	"i\000"
	.2byte	0x3b0
	.byte	0xd
	.4byte	0x9e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x6
	.4byte	.LBB18
	.4byte	.LBE18-.LBB18
	.uleb128 0x3
	.ascii	"i\000"
	.2byte	0x3bf
	.byte	0xd
	.4byte	0x9e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	.LASF1151
	.2byte	0x34b
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xba0
	.uleb128 0x2
	.4byte	.LASF1114
	.2byte	0x34b
	.byte	0x2d
	.4byte	0x37a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF1115
	.2byte	0x34b
	.byte	0x45
	.4byte	0x3cf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.4byte	.LASF1152
	.2byte	0x34d
	.byte	0xd
	.4byte	0xdc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1
	.4byte	.LASF1153
	.2byte	0x34e
	.byte	0xc
	.4byte	0xac
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x10
	.4byte	.LASF1154
	.2byte	0x344
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbd4
	.uleb128 0x2
	.4byte	.LASF1114
	.2byte	0x344
	.byte	0x2d
	.4byte	0x37a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x2
	.4byte	.LASF1115
	.2byte	0x344
	.byte	0x45
	.4byte	0x3cf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x10
	.4byte	.LASF1155
	.2byte	0x33a
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc17
	.uleb128 0x2
	.4byte	.LASF1114
	.2byte	0x33a
	.byte	0x33
	.4byte	0x37a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF1115
	.2byte	0x33a
	.byte	0x4b
	.4byte	0x3cf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.4byte	.LASF1082
	.2byte	0x33c
	.byte	0xd
	.4byte	0xb8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x10
	.4byte	.LASF1156
	.2byte	0x333
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc4b
	.uleb128 0x2
	.4byte	.LASF1114
	.2byte	0x333
	.byte	0x2c
	.4byte	0x37a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x2
	.4byte	.LASF1115
	.2byte	0x333
	.byte	0x44
	.4byte	0x3cf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x10
	.4byte	.LASF1157
	.2byte	0x32c
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc7f
	.uleb128 0x2
	.4byte	.LASF1114
	.2byte	0x32c
	.byte	0x2d
	.4byte	0x37a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x2
	.4byte	.LASF1115
	.2byte	0x32c
	.byte	0x45
	.4byte	0x3cf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x12
	.4byte	.LASF1158
	.2byte	0x30b
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xcef
	.uleb128 0x2
	.4byte	.LASF1114
	.2byte	0x30b
	.byte	0x2d
	.4byte	0x37a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2
	.4byte	.LASF1115
	.2byte	0x30b
	.byte	0x45
	.4byte	0x3cf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1
	.4byte	.LASF1075
	.2byte	0x30d
	.byte	0xb
	.4byte	0x23e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1
	.4byte	.LASF1076
	.2byte	0x30e
	.byte	0xb
	.4byte	0x23e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1
	.4byte	.LASF1077
	.2byte	0x30f
	.byte	0xd
	.4byte	0xc4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x1
	.4byte	.LASF1078
	.2byte	0x310
	.byte	0xb
	.4byte	0x23e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x10
	.4byte	.LASF1159
	.2byte	0x2fb
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd41
	.uleb128 0x2
	.4byte	.LASF1114
	.2byte	0x2fb
	.byte	0x2c
	.4byte	0x37a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF1115
	.2byte	0x2fb
	.byte	0x44
	.4byte	0x3cf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.4byte	.LASF1073
	.2byte	0x2fd
	.byte	0xc
	.4byte	0xac
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x1
	.4byte	.LASF1074
	.2byte	0x2fe
	.byte	0xd
	.4byte	0xc4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x19
	.4byte	.LASF1172
	.2byte	0x294
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xdcd
	.uleb128 0x2
	.4byte	.LASF1160
	.2byte	0x294
	.byte	0x2d
	.4byte	0x37a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x18
	.ascii	"to\000"
	.2byte	0x294
	.byte	0x3c
	.4byte	0x448
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2
	.4byte	.LASF1161
	.2byte	0x294
	.byte	0x44
	.4byte	0x9e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2
	.4byte	.LASF1104
	.2byte	0x294
	.byte	0x5a
	.4byte	0x3cf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x3
	.ascii	"ap\000"
	.2byte	0x296
	.byte	0xb
	.4byte	0xdcd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.ascii	"pix\000"
	.2byte	0x297
	.byte	0xd
	.4byte	0xb8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x1
	.4byte	.LASF1162
	.2byte	0x298
	.byte	0xd
	.4byte	0xb8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x1
	.4byte	.LASF1163
	.2byte	0x299
	.byte	0xd
	.4byte	0xb8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -19
	.byte	0
	.uleb128 0x5
	.4byte	0x23e
	.4byte	0xddd
	.uleb128 0xb
	.4byte	0xa5
	.byte	0x3
	.byte	0
	.uleb128 0x24
	.4byte	.LASF1165
	.byte	0x1
	.2byte	0x28d
	.byte	0x5
	.4byte	0x9e
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe08
	.uleb128 0x2
	.4byte	.LASF1164
	.2byte	0x28d
	.byte	0x29
	.4byte	0x37a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0xf
	.4byte	.LASF1166
	.2byte	0x278
	.byte	0x7
	.4byte	0x23e
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe7c
	.uleb128 0x2
	.4byte	.LASF1164
	.2byte	0x278
	.byte	0x20
	.4byte	0x37a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.4byte	.LASF1104
	.2byte	0x278
	.byte	0x41
	.4byte	0xe7c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1
	.4byte	.LASF1167
	.2byte	0x27a
	.byte	0xd
	.4byte	0xc4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -30
	.uleb128 0x1
	.4byte	.LASF1168
	.2byte	0x27b
	.byte	0xb
	.4byte	0x23e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.ascii	"vdd\000"
	.2byte	0x27c
	.byte	0xb
	.4byte	0x23e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3
	.ascii	"ta\000"
	.2byte	0x27d
	.byte	0xb
	.4byte	0x23e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x14
	.4byte	0x2de
	.uleb128 0xf
	.4byte	.LASF1169
	.2byte	0x268
	.byte	0x7
	.4byte	0x23e
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xee7
	.uleb128 0x2
	.4byte	.LASF1164
	.2byte	0x268
	.byte	0x21
	.4byte	0x37a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF1104
	.2byte	0x268
	.byte	0x42
	.4byte	0xe7c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.ascii	"vdd\000"
	.2byte	0x26a
	.byte	0xb
	.4byte	0x23e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1
	.4byte	.LASF1170
	.2byte	0x26b
	.byte	0xb
	.4byte	0x23e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.4byte	.LASF1171
	.2byte	0x26d
	.byte	0xe
	.4byte	0xd0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.byte	0
	.uleb128 0x19
	.4byte	.LASF1173
	.2byte	0x20f
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x104d
	.uleb128 0x2
	.4byte	.LASF1164
	.2byte	0x20f
	.byte	0x22
	.4byte	0x37a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x2
	.4byte	.LASF1104
	.2byte	0x20f
	.byte	0x43
	.4byte	0xe7c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2
	.4byte	.LASF1174
	.2byte	0x20f
	.byte	0x52
	.4byte	0x448
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x3
	.ascii	"vdd\000"
	.2byte	0x211
	.byte	0xb
	.4byte	0x23e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x3
	.ascii	"ta\000"
	.2byte	0x212
	.byte	0xb
	.4byte	0x23e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1
	.4byte	.LASF1175
	.2byte	0x213
	.byte	0xb
	.4byte	0x23e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x1
	.4byte	.LASF1176
	.2byte	0x214
	.byte	0xb
	.4byte	0x292
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1
	.4byte	.LASF1177
	.2byte	0x215
	.byte	0xb
	.4byte	0x23e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF1178
	.2byte	0x216
	.byte	0xb
	.4byte	0x23e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x1
	.4byte	.LASF1161
	.2byte	0x217
	.byte	0xd
	.4byte	0xb8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -69
	.uleb128 0x1
	.4byte	.LASF1179
	.2byte	0x218
	.byte	0xc
	.4byte	0xac
	.uleb128 0x3
	.byte	0x91
	.sleb128 -70
	.uleb128 0x1
	.4byte	.LASF1180
	.2byte	0x219
	.byte	0xc
	.4byte	0xac
	.uleb128 0x3
	.byte	0x91
	.sleb128 -71
	.uleb128 0x1
	.4byte	.LASF1181
	.2byte	0x21a
	.byte	0xc
	.4byte	0xac
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0x1
	.4byte	.LASF1182
	.2byte	0x21b
	.byte	0xc
	.4byte	0xac
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1
	.4byte	.LASF1183
	.2byte	0x21c
	.byte	0xb
	.4byte	0x23e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x1
	.4byte	.LASF1184
	.2byte	0x21d
	.byte	0xe
	.4byte	0xd0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -46
	.uleb128 0x1
	.4byte	.LASF1089
	.2byte	0x21e
	.byte	0xb
	.4byte	0x23e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1
	.4byte	.LASF1090
	.2byte	0x21f
	.byte	0xb
	.4byte	0x23e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x3
	.ascii	"kta\000"
	.2byte	0x220
	.byte	0xb
	.4byte	0x23e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x3
	.ascii	"kv\000"
	.2byte	0x221
	.byte	0xb
	.4byte	0x23e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x6
	.4byte	.LBB10
	.4byte	.LBE10-.LBB10
	.uleb128 0x1
	.4byte	.LASF1185
	.2byte	0x23f
	.byte	0xe
	.4byte	0x9e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.LASF1186
	.2byte	0x18a
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x123f
	.uleb128 0x2
	.4byte	.LASF1164
	.2byte	0x18a
	.byte	0x25
	.4byte	0x37a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x2
	.4byte	.LASF1104
	.2byte	0x18a
	.byte	0x46
	.4byte	0xe7c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x2
	.4byte	.LASF1187
	.2byte	0x18a
	.byte	0x54
	.4byte	0x23e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x18
	.ascii	"tr\000"
	.2byte	0x18a
	.byte	0x66
	.4byte	0x23e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x2
	.4byte	.LASF1174
	.2byte	0x18a
	.byte	0x71
	.4byte	0x448
	.uleb128 0x3
	.byte	0x91
	.sleb128 -156
	.uleb128 0x3
	.ascii	"vdd\000"
	.2byte	0x18c
	.byte	0xb
	.4byte	0x23e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x3
	.ascii	"ta\000"
	.2byte	0x18d
	.byte	0xb
	.4byte	0x23e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x3
	.ascii	"ta4\000"
	.2byte	0x18e
	.byte	0xb
	.4byte	0x23e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x3
	.ascii	"tr4\000"
	.2byte	0x18f
	.byte	0xb
	.4byte	0x23e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1
	.4byte	.LASF1188
	.2byte	0x190
	.byte	0xb
	.4byte	0x23e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x1
	.4byte	.LASF1175
	.2byte	0x191
	.byte	0xb
	.4byte	0x23e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x1
	.4byte	.LASF1176
	.2byte	0x192
	.byte	0xb
	.4byte	0x292
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x1
	.4byte	.LASF1177
	.2byte	0x193
	.byte	0xb
	.4byte	0x23e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF1178
	.2byte	0x194
	.byte	0xb
	.4byte	0x23e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x1
	.4byte	.LASF1161
	.2byte	0x195
	.byte	0xd
	.4byte	0xb8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -85
	.uleb128 0x1
	.4byte	.LASF1179
	.2byte	0x196
	.byte	0xc
	.4byte	0xac
	.uleb128 0x3
	.byte	0x91
	.sleb128 -86
	.uleb128 0x1
	.4byte	.LASF1180
	.2byte	0x197
	.byte	0xc
	.4byte	0xac
	.uleb128 0x3
	.byte	0x91
	.sleb128 -87
	.uleb128 0x1
	.4byte	.LASF1181
	.2byte	0x198
	.byte	0xc
	.4byte	0xac
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0x1
	.4byte	.LASF1182
	.2byte	0x199
	.byte	0xc
	.4byte	0xac
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x3
	.ascii	"Sx\000"
	.2byte	0x19a
	.byte	0xb
	.4byte	0x23e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x3
	.ascii	"To\000"
	.2byte	0x19b
	.byte	0xb
	.4byte	0x23e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x1
	.4byte	.LASF1189
	.2byte	0x19c
	.byte	0xb
	.4byte	0xdcd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x1
	.4byte	.LASF1190
	.2byte	0x19d
	.byte	0xc
	.4byte	0xac
	.uleb128 0x2
	.byte	0x91
	.sleb128 -38
	.uleb128 0x1
	.4byte	.LASF1184
	.2byte	0x19e
	.byte	0xe
	.4byte	0xd0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -46
	.uleb128 0x1
	.4byte	.LASF1089
	.2byte	0x19f
	.byte	0xb
	.4byte	0x23e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1
	.4byte	.LASF1090
	.2byte	0x1a0
	.byte	0xb
	.4byte	0x23e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x1
	.4byte	.LASF1087
	.2byte	0x1a1
	.byte	0xb
	.4byte	0x23e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x3
	.ascii	"kta\000"
	.2byte	0x1a2
	.byte	0xb
	.4byte	0x23e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x3
	.ascii	"kv\000"
	.2byte	0x1a3
	.byte	0xb
	.4byte	0x23e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x6
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.uleb128 0x1
	.4byte	.LASF1185
	.2byte	0x1ce
	.byte	0xe
	.4byte	0x9e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	.LASF1191
	.2byte	0x178
	.byte	0x5
	.4byte	0x9e
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1296
	.uleb128 0x2
	.4byte	.LASF1192
	.2byte	0x178
	.byte	0x21
	.4byte	0xb8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0x1
	.4byte	.LASF1193
	.2byte	0x17a
	.byte	0xe
	.4byte	0xd0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x1
	.4byte	.LASF1194
	.2byte	0x17b
	.byte	0x9
	.4byte	0x9e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1
	.4byte	.LASF1195
	.2byte	0x17c
	.byte	0x9
	.4byte	0x9e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0xf
	.4byte	.LASF1196
	.2byte	0x165
	.byte	0x5
	.4byte	0x9e
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x12ed
	.uleb128 0x2
	.4byte	.LASF1192
	.2byte	0x165
	.byte	0x23
	.4byte	0xb8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x1
	.4byte	.LASF1193
	.2byte	0x167
	.byte	0xe
	.4byte	0xd0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1
	.4byte	.LASF1197
	.2byte	0x168
	.byte	0xe
	.4byte	0xd0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -14
	.uleb128 0x1
	.4byte	.LASF1195
	.2byte	0x169
	.byte	0x9
	.4byte	0x9e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0xf
	.4byte	.LASF1198
	.2byte	0x152
	.byte	0x5
	.4byte	0x9e
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1344
	.uleb128 0x2
	.4byte	.LASF1192
	.2byte	0x152
	.byte	0x29
	.4byte	0xb8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x1
	.4byte	.LASF1193
	.2byte	0x154
	.byte	0xe
	.4byte	0xd0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1
	.4byte	.LASF1197
	.2byte	0x155
	.byte	0xe
	.4byte	0xd0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -14
	.uleb128 0x1
	.4byte	.LASF1195
	.2byte	0x156
	.byte	0x9
	.4byte	0x9e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0xf
	.4byte	.LASF1199
	.2byte	0x140
	.byte	0x5
	.4byte	0x9e
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x139b
	.uleb128 0x2
	.4byte	.LASF1192
	.2byte	0x140
	.byte	0x25
	.4byte	0xb8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0x1
	.4byte	.LASF1193
	.2byte	0x142
	.byte	0xe
	.4byte	0xd0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x1
	.4byte	.LASF1200
	.2byte	0x143
	.byte	0x9
	.4byte	0x9e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1
	.4byte	.LASF1195
	.2byte	0x144
	.byte	0x9
	.4byte	0x9e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0xf
	.4byte	.LASF1201
	.2byte	0x12a
	.byte	0x5
	.4byte	0x9e
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1401
	.uleb128 0x2
	.4byte	.LASF1192
	.2byte	0x12a
	.byte	0x25
	.4byte	0xb8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x2
	.4byte	.LASF1200
	.2byte	0x12a
	.byte	0x38
	.4byte	0xb8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x1
	.4byte	.LASF1193
	.2byte	0x12c
	.byte	0xe
	.4byte	0xd0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1
	.4byte	.LASF1197
	.2byte	0x12d
	.byte	0xe
	.4byte	0xd0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -14
	.uleb128 0x1
	.4byte	.LASF1195
	.2byte	0x12e
	.byte	0x9
	.4byte	0x9e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0xf
	.4byte	.LASF1202
	.2byte	0x118
	.byte	0x5
	.4byte	0x9e
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1458
	.uleb128 0x2
	.4byte	.LASF1192
	.2byte	0x118
	.byte	0x27
	.4byte	0xb8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0x1
	.4byte	.LASF1193
	.2byte	0x11a
	.byte	0xe
	.4byte	0xd0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x1
	.4byte	.LASF1171
	.2byte	0x11b
	.byte	0x9
	.4byte	0x9e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1
	.4byte	.LASF1195
	.2byte	0x11c
	.byte	0x9
	.4byte	0x9e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0xf
	.4byte	.LASF1203
	.2byte	0x101
	.byte	0x5
	.4byte	0x9e
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x14be
	.uleb128 0x2
	.4byte	.LASF1192
	.2byte	0x101
	.byte	0x24
	.4byte	0xb8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x2
	.4byte	.LASF1204
	.2byte	0x101
	.byte	0x37
	.4byte	0xb8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x1
	.4byte	.LASF1193
	.2byte	0x103
	.byte	0xe
	.4byte	0xd0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1
	.4byte	.LASF1197
	.2byte	0x104
	.byte	0xe
	.4byte	0xd0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -14
	.uleb128 0x1
	.4byte	.LASF1195
	.2byte	0x105
	.byte	0x9
	.4byte	0x9e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x15
	.4byte	.LASF1205
	.byte	0xe8
	.4byte	0x9e
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1501
	.uleb128 0xd
	.4byte	.LASF1114
	.byte	0xe8
	.byte	0x2a
	.4byte	0x37a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xd
	.4byte	.LASF1115
	.byte	0xe8
	.byte	0x42
	.4byte	0x3cf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x9
	.4byte	.LASF1195
	.byte	0xea
	.byte	0x9
	.4byte	0x9e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF1206
	.byte	0xc1
	.4byte	0x9e
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x15ba
	.uleb128 0xd
	.4byte	.LASF1207
	.byte	0xc1
	.byte	0x26
	.4byte	0x37a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x4
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.4byte	0x1540
	.uleb128 0x11
	.ascii	"i\000"
	.byte	0xc6
	.4byte	0x9e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x4
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.4byte	0x1559
	.uleb128 0x11
	.ascii	"i\000"
	.byte	0xcb
	.4byte	0x9e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x4
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.4byte	0x1572
	.uleb128 0x11
	.ascii	"i\000"
	.byte	0xd0
	.4byte	0x9e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.4byte	0x158b
	.uleb128 0x11
	.ascii	"i\000"
	.byte	0xd5
	.4byte	0x9e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x4
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.4byte	0x15a4
	.uleb128 0x11
	.ascii	"i\000"
	.byte	0xda
	.4byte	0x9e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x6
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.uleb128 0x11
	.ascii	"i\000"
	.byte	0xdf
	.4byte	0x9e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF1208
	.byte	0xb4
	.4byte	0x9e
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1604
	.uleb128 0xd
	.4byte	.LASF1164
	.byte	0xb4
	.byte	0x28
	.4byte	0x37a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x9
	.4byte	.LASF1162
	.byte	0xb6
	.byte	0xd
	.4byte	0xb8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x6
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0x11
	.ascii	"i\000"
	.byte	0xb8
	.4byte	0x9e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LASF1209
	.byte	0x72
	.4byte	0x9e
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x168f
	.uleb128 0xd
	.4byte	.LASF1192
	.byte	0x72
	.byte	0x23
	.4byte	0xb8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -153
	.uleb128 0xd
	.4byte	.LASF1164
	.byte	0x72
	.byte	0x38
	.4byte	0x37a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x9
	.4byte	.LASF1210
	.byte	0x74
	.byte	0xe
	.4byte	0xd0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x9
	.4byte	.LASF1193
	.byte	0x75
	.byte	0xe
	.4byte	0xd0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x9
	.4byte	.LASF1211
	.byte	0x76
	.byte	0xe
	.4byte	0xd0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x9
	.4byte	.LASF1195
	.byte	0x77
	.byte	0x9
	.4byte	0x9e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x9
	.4byte	.LASF1212
	.byte	0x78
	.byte	0xe
	.4byte	0x168f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x11
	.ascii	"cnt\000"
	.byte	0x79
	.4byte	0xb8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -11
	.byte	0
	.uleb128 0x5
	.4byte	0xd0
	.4byte	0x169f
	.uleb128 0xb
	.4byte	0xa5
	.byte	0x3f
	.byte	0
	.uleb128 0x15
	.4byte	.LASF1213
	.byte	0x48
	.4byte	0x9e
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x16e2
	.uleb128 0xd
	.4byte	.LASF1192
	.byte	0x48
	.byte	0x29
	.4byte	0xb8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x9
	.4byte	.LASF1195
	.byte	0x4a
	.byte	0x9
	.4byte	0x9e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x9
	.4byte	.LASF1214
	.byte	0x4b
	.byte	0xe
	.4byte	0xd0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -14
	.byte	0
	.uleb128 0x15
	.4byte	.LASF1215
	.byte	0x2e
	.4byte	0x9e
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1733
	.uleb128 0xd
	.4byte	.LASF1192
	.byte	0x2e
	.byte	0x21
	.4byte	0xb8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0x9
	.4byte	.LASF1210
	.byte	0x30
	.byte	0xe
	.4byte	0xd0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x9
	.4byte	.LASF1211
	.byte	0x31
	.byte	0xe
	.4byte	0xd0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x9
	.4byte	.LASF1195
	.byte	0x32
	.byte	0x9
	.4byte	0x9e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x25
	.4byte	.LASF1216
	.byte	0x1
	.byte	0x29
	.byte	0x5
	.4byte	0x9e
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xd
	.4byte	.LASF1192
	.byte	0x29
	.byte	0x1d
	.4byte	0xb8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0xd
	.4byte	.LASF1114
	.byte	0x29
	.byte	0x32
	.4byte	0x37a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0x5
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
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
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
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 13
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 13
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 13
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x21
	.sleb128 767
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 5
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
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
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
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 16
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 12
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
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x17
	.uleb128 0x79
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
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
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
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
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x39
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
	.uleb128 0x7c
	.uleb128 0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x13c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.4byte	0
	.4byte	0
	.section	.debug_rnglists,"",%progbits
.Ldebug_ranges0:
	.4byte	.Ldebug_ranges3-.Ldebug_ranges2
.Ldebug_ranges2:
	.2byte	0x5
	.byte	0x4
	.byte	0
	.4byte	0
.LLRL0:
	.byte	0x7
	.4byte	.LFB0
	.uleb128 .LFE0-.LFB0
	.byte	0x7
	.4byte	.LFB1
	.uleb128 .LFE1-.LFB1
	.byte	0x7
	.4byte	.LFB2
	.uleb128 .LFE2-.LFB2
	.byte	0x7
	.4byte	.LFB3
	.uleb128 .LFE3-.LFB3
	.byte	0x7
	.4byte	.LFB4
	.uleb128 .LFE4-.LFB4
	.byte	0x7
	.4byte	.LFB5
	.uleb128 .LFE5-.LFB5
	.byte	0x7
	.4byte	.LFB6
	.uleb128 .LFE6-.LFB6
	.byte	0x7
	.4byte	.LFB7
	.uleb128 .LFE7-.LFB7
	.byte	0x7
	.4byte	.LFB8
	.uleb128 .LFE8-.LFB8
	.byte	0x7
	.4byte	.LFB9
	.uleb128 .LFE9-.LFB9
	.byte	0x7
	.4byte	.LFB10
	.uleb128 .LFE10-.LFB10
	.byte	0x7
	.4byte	.LFB11
	.uleb128 .LFE11-.LFB11
	.byte	0x7
	.4byte	.LFB12
	.uleb128 .LFE12-.LFB12
	.byte	0x7
	.4byte	.LFB13
	.uleb128 .LFE13-.LFB13
	.byte	0x7
	.4byte	.LFB14
	.uleb128 .LFE14-.LFB14
	.byte	0x7
	.4byte	.LFB15
	.uleb128 .LFE15-.LFB15
	.byte	0x7
	.4byte	.LFB16
	.uleb128 .LFE16-.LFB16
	.byte	0x7
	.4byte	.LFB17
	.uleb128 .LFE17-.LFB17
	.byte	0x7
	.4byte	.LFB18
	.uleb128 .LFE18-.LFB18
	.byte	0x7
	.4byte	.LFB19
	.uleb128 .LFE19-.LFB19
	.byte	0x7
	.4byte	.LFB20
	.uleb128 .LFE20-.LFB20
	.byte	0x7
	.4byte	.LFB21
	.uleb128 .LFE21-.LFB21
	.byte	0x7
	.4byte	.LFB22
	.uleb128 .LFE22-.LFB22
	.byte	0x7
	.4byte	.LFB23
	.uleb128 .LFE23-.LFB23
	.byte	0x7
	.4byte	.LFB24
	.uleb128 .LFE24-.LFB24
	.byte	0x7
	.4byte	.LFB25
	.uleb128 .LFE25-.LFB25
	.byte	0x7
	.4byte	.LFB26
	.uleb128 .LFE26-.LFB26
	.byte	0x7
	.4byte	.LFB27
	.uleb128 .LFE27-.LFB27
	.byte	0x7
	.4byte	.LFB28
	.uleb128 .LFE28-.LFB28
	.byte	0x7
	.4byte	.LFB29
	.uleb128 .LFE29-.LFB29
	.byte	0x7
	.4byte	.LFB30
	.uleb128 .LFE30-.LFB30
	.byte	0x7
	.4byte	.LFB31
	.uleb128 .LFE31-.LFB31
	.byte	0x7
	.4byte	.LFB32
	.uleb128 .LFE32-.LFB32
	.byte	0x7
	.4byte	.LFB33
	.uleb128 .LFE33-.LFB33
	.byte	0x7
	.4byte	.LFB34
	.uleb128 .LFE34-.LFB34
	.byte	0x7
	.4byte	.LFB35
	.uleb128 .LFE35-.LFB35
	.byte	0x7
	.4byte	.LFB36
	.uleb128 .LFE36-.LFB36
	.byte	0
.Ldebug_ranges3:
	.section	.debug_macro,"",%progbits
.Ldebug_macro0:
	.2byte	0x5
	.byte	0x2
	.4byte	.Ldebug_line0
	.byte	0x3
	.uleb128 0
	.uleb128 0x1
	.byte	0x5
	.uleb128 0
	.4byte	.LASF0
	.byte	0x5
	.uleb128 0
	.4byte	.LASF1
	.byte	0x5
	.uleb128 0
	.4byte	.LASF2
	.byte	0x5
	.uleb128 0
	.4byte	.LASF3
	.byte	0x5
	.uleb128 0
	.4byte	.LASF4
	.byte	0x5
	.uleb128 0
	.4byte	.LASF5
	.byte	0x5
	.uleb128 0
	.4byte	.LASF6
	.byte	0x5
	.uleb128 0
	.4byte	.LASF7
	.byte	0x5
	.uleb128 0
	.4byte	.LASF8
	.byte	0x5
	.uleb128 0
	.4byte	.LASF9
	.byte	0x5
	.uleb128 0
	.4byte	.LASF10
	.byte	0x5
	.uleb128 0
	.4byte	.LASF11
	.byte	0x5
	.uleb128 0
	.4byte	.LASF12
	.byte	0x5
	.uleb128 0
	.4byte	.LASF13
	.byte	0x5
	.uleb128 0
	.4byte	.LASF14
	.byte	0x5
	.uleb128 0
	.4byte	.LASF15
	.byte	0x5
	.uleb128 0
	.4byte	.LASF16
	.byte	0x5
	.uleb128 0
	.4byte	.LASF17
	.byte	0x5
	.uleb128 0
	.4byte	.LASF18
	.byte	0x5
	.uleb128 0
	.4byte	.LASF19
	.byte	0x5
	.uleb128 0
	.4byte	.LASF20
	.byte	0x5
	.uleb128 0
	.4byte	.LASF21
	.byte	0x5
	.uleb128 0
	.4byte	.LASF22
	.byte	0x5
	.uleb128 0
	.4byte	.LASF23
	.byte	0x5
	.uleb128 0
	.4byte	.LASF24
	.byte	0x5
	.uleb128 0
	.4byte	.LASF25
	.byte	0x5
	.uleb128 0
	.4byte	.LASF26
	.byte	0x5
	.uleb128 0
	.4byte	.LASF27
	.byte	0x5
	.uleb128 0
	.4byte	.LASF28
	.byte	0x5
	.uleb128 0
	.4byte	.LASF29
	.byte	0x5
	.uleb128 0
	.4byte	.LASF30
	.byte	0x5
	.uleb128 0
	.4byte	.LASF31
	.byte	0x5
	.uleb128 0
	.4byte	.LASF32
	.byte	0x5
	.uleb128 0
	.4byte	.LASF33
	.byte	0x5
	.uleb128 0
	.4byte	.LASF34
	.byte	0x5
	.uleb128 0
	.4byte	.LASF35
	.byte	0x5
	.uleb128 0
	.4byte	.LASF36
	.byte	0x5
	.uleb128 0
	.4byte	.LASF37
	.byte	0x5
	.uleb128 0
	.4byte	.LASF38
	.byte	0x5
	.uleb128 0
	.4byte	.LASF39
	.byte	0x5
	.uleb128 0
	.4byte	.LASF40
	.byte	0x5
	.uleb128 0
	.4byte	.LASF41
	.byte	0x5
	.uleb128 0
	.4byte	.LASF42
	.byte	0x5
	.uleb128 0
	.4byte	.LASF43
	.byte	0x5
	.uleb128 0
	.4byte	.LASF44
	.byte	0x5
	.uleb128 0
	.4byte	.LASF45
	.byte	0x5
	.uleb128 0
	.4byte	.LASF46
	.byte	0x5
	.uleb128 0
	.4byte	.LASF47
	.byte	0x5
	.uleb128 0
	.4byte	.LASF48
	.byte	0x5
	.uleb128 0
	.4byte	.LASF49
	.byte	0x5
	.uleb128 0
	.4byte	.LASF50
	.byte	0x5
	.uleb128 0
	.4byte	.LASF51
	.byte	0x5
	.uleb128 0
	.4byte	.LASF52
	.byte	0x5
	.uleb128 0
	.4byte	.LASF53
	.byte	0x5
	.uleb128 0
	.4byte	.LASF54
	.byte	0x5
	.uleb128 0
	.4byte	.LASF55
	.byte	0x5
	.uleb128 0
	.4byte	.LASF56
	.byte	0x5
	.uleb128 0
	.4byte	.LASF57
	.byte	0x5
	.uleb128 0
	.4byte	.LASF58
	.byte	0x5
	.uleb128 0
	.4byte	.LASF59
	.byte	0x5
	.uleb128 0
	.4byte	.LASF60
	.byte	0x5
	.uleb128 0
	.4byte	.LASF61
	.byte	0x5
	.uleb128 0
	.4byte	.LASF62
	.byte	0x5
	.uleb128 0
	.4byte	.LASF63
	.byte	0x5
	.uleb128 0
	.4byte	.LASF64
	.byte	0x5
	.uleb128 0
	.4byte	.LASF65
	.byte	0x5
	.uleb128 0
	.4byte	.LASF66
	.byte	0x5
	.uleb128 0
	.4byte	.LASF67
	.byte	0x5
	.uleb128 0
	.4byte	.LASF68
	.byte	0x5
	.uleb128 0
	.4byte	.LASF69
	.byte	0x5
	.uleb128 0
	.4byte	.LASF70
	.byte	0x5
	.uleb128 0
	.4byte	.LASF71
	.byte	0x5
	.uleb128 0
	.4byte	.LASF72
	.byte	0x5
	.uleb128 0
	.4byte	.LASF73
	.byte	0x5
	.uleb128 0
	.4byte	.LASF74
	.byte	0x5
	.uleb128 0
	.4byte	.LASF75
	.byte	0x5
	.uleb128 0
	.4byte	.LASF76
	.byte	0x5
	.uleb128 0
	.4byte	.LASF77
	.byte	0x5
	.uleb128 0
	.4byte	.LASF78
	.byte	0x5
	.uleb128 0
	.4byte	.LASF79
	.byte	0x5
	.uleb128 0
	.4byte	.LASF80
	.byte	0x5
	.uleb128 0
	.4byte	.LASF81
	.byte	0x5
	.uleb128 0
	.4byte	.LASF82
	.byte	0x5
	.uleb128 0
	.4byte	.LASF83
	.byte	0x5
	.uleb128 0
	.4byte	.LASF84
	.byte	0x5
	.uleb128 0
	.4byte	.LASF85
	.byte	0x5
	.uleb128 0
	.4byte	.LASF86
	.byte	0x5
	.uleb128 0
	.4byte	.LASF87
	.byte	0x5
	.uleb128 0
	.4byte	.LASF88
	.byte	0x5
	.uleb128 0
	.4byte	.LASF89
	.byte	0x5
	.uleb128 0
	.4byte	.LASF90
	.byte	0x5
	.uleb128 0
	.4byte	.LASF91
	.byte	0x5
	.uleb128 0
	.4byte	.LASF92
	.byte	0x5
	.uleb128 0
	.4byte	.LASF93
	.byte	0x5
	.uleb128 0
	.4byte	.LASF94
	.byte	0x5
	.uleb128 0
	.4byte	.LASF95
	.byte	0x5
	.uleb128 0
	.4byte	.LASF96
	.byte	0x5
	.uleb128 0
	.4byte	.LASF97
	.byte	0x5
	.uleb128 0
	.4byte	.LASF98
	.byte	0x5
	.uleb128 0
	.4byte	.LASF99
	.byte	0x5
	.uleb128 0
	.4byte	.LASF100
	.byte	0x5
	.uleb128 0
	.4byte	.LASF101
	.byte	0x5
	.uleb128 0
	.4byte	.LASF102
	.byte	0x5
	.uleb128 0
	.4byte	.LASF103
	.byte	0x5
	.uleb128 0
	.4byte	.LASF104
	.byte	0x5
	.uleb128 0
	.4byte	.LASF105
	.byte	0x5
	.uleb128 0
	.4byte	.LASF106
	.byte	0x5
	.uleb128 0
	.4byte	.LASF107
	.byte	0x5
	.uleb128 0
	.4byte	.LASF108
	.byte	0x5
	.uleb128 0
	.4byte	.LASF109
	.byte	0x5
	.uleb128 0
	.4byte	.LASF110
	.byte	0x5
	.uleb128 0
	.4byte	.LASF111
	.byte	0x5
	.uleb128 0
	.4byte	.LASF112
	.byte	0x5
	.uleb128 0
	.4byte	.LASF113
	.byte	0x5
	.uleb128 0
	.4byte	.LASF114
	.byte	0x5
	.uleb128 0
	.4byte	.LASF115
	.byte	0x5
	.uleb128 0
	.4byte	.LASF116
	.byte	0x5
	.uleb128 0
	.4byte	.LASF117
	.byte	0x5
	.uleb128 0
	.4byte	.LASF118
	.byte	0x5
	.uleb128 0
	.4byte	.LASF119
	.byte	0x5
	.uleb128 0
	.4byte	.LASF120
	.byte	0x5
	.uleb128 0
	.4byte	.LASF121
	.byte	0x5
	.uleb128 0
	.4byte	.LASF122
	.byte	0x5
	.uleb128 0
	.4byte	.LASF123
	.byte	0x5
	.uleb128 0
	.4byte	.LASF124
	.byte	0x5
	.uleb128 0
	.4byte	.LASF125
	.byte	0x5
	.uleb128 0
	.4byte	.LASF126
	.byte	0x5
	.uleb128 0
	.4byte	.LASF127
	.byte	0x5
	.uleb128 0
	.4byte	.LASF128
	.byte	0x5
	.uleb128 0
	.4byte	.LASF129
	.byte	0x5
	.uleb128 0
	.4byte	.LASF130
	.byte	0x5
	.uleb128 0
	.4byte	.LASF131
	.byte	0x5
	.uleb128 0
	.4byte	.LASF132
	.byte	0x5
	.uleb128 0
	.4byte	.LASF133
	.byte	0x5
	.uleb128 0
	.4byte	.LASF134
	.byte	0x5
	.uleb128 0
	.4byte	.LASF135
	.byte	0x5
	.uleb128 0
	.4byte	.LASF136
	.byte	0x5
	.uleb128 0
	.4byte	.LASF137
	.byte	0x5
	.uleb128 0
	.4byte	.LASF138
	.byte	0x5
	.uleb128 0
	.4byte	.LASF139
	.byte	0x5
	.uleb128 0
	.4byte	.LASF140
	.byte	0x5
	.uleb128 0
	.4byte	.LASF141
	.byte	0x5
	.uleb128 0
	.4byte	.LASF142
	.byte	0x5
	.uleb128 0
	.4byte	.LASF143
	.byte	0x5
	.uleb128 0
	.4byte	.LASF144
	.byte	0x5
	.uleb128 0
	.4byte	.LASF145
	.byte	0x5
	.uleb128 0
	.4byte	.LASF146
	.byte	0x5
	.uleb128 0
	.4byte	.LASF147
	.byte	0x5
	.uleb128 0
	.4byte	.LASF148
	.byte	0x5
	.uleb128 0
	.4byte	.LASF149
	.byte	0x5
	.uleb128 0
	.4byte	.LASF150
	.byte	0x5
	.uleb128 0
	.4byte	.LASF151
	.byte	0x5
	.uleb128 0
	.4byte	.LASF152
	.byte	0x5
	.uleb128 0
	.4byte	.LASF153
	.byte	0x5
	.uleb128 0
	.4byte	.LASF154
	.byte	0x5
	.uleb128 0
	.4byte	.LASF155
	.byte	0x5
	.uleb128 0
	.4byte	.LASF156
	.byte	0x5
	.uleb128 0
	.4byte	.LASF157
	.byte	0x5
	.uleb128 0
	.4byte	.LASF158
	.byte	0x5
	.uleb128 0
	.4byte	.LASF159
	.byte	0x5
	.uleb128 0
	.4byte	.LASF160
	.byte	0x5
	.uleb128 0
	.4byte	.LASF161
	.byte	0x5
	.uleb128 0
	.4byte	.LASF162
	.byte	0x5
	.uleb128 0
	.4byte	.LASF163
	.byte	0x5
	.uleb128 0
	.4byte	.LASF164
	.byte	0x5
	.uleb128 0
	.4byte	.LASF165
	.byte	0x5
	.uleb128 0
	.4byte	.LASF166
	.byte	0x5
	.uleb128 0
	.4byte	.LASF167
	.byte	0x5
	.uleb128 0
	.4byte	.LASF168
	.byte	0x5
	.uleb128 0
	.4byte	.LASF169
	.byte	0x5
	.uleb128 0
	.4byte	.LASF170
	.byte	0x5
	.uleb128 0
	.4byte	.LASF171
	.byte	0x5
	.uleb128 0
	.4byte	.LASF172
	.byte	0x5
	.uleb128 0
	.4byte	.LASF173
	.byte	0x5
	.uleb128 0
	.4byte	.LASF174
	.byte	0x5
	.uleb128 0
	.4byte	.LASF175
	.byte	0x5
	.uleb128 0
	.4byte	.LASF176
	.byte	0x5
	.uleb128 0
	.4byte	.LASF177
	.byte	0x5
	.uleb128 0
	.4byte	.LASF178
	.byte	0x5
	.uleb128 0
	.4byte	.LASF179
	.byte	0x5
	.uleb128 0
	.4byte	.LASF180
	.byte	0x5
	.uleb128 0
	.4byte	.LASF181
	.byte	0x5
	.uleb128 0
	.4byte	.LASF182
	.byte	0x5
	.uleb128 0
	.4byte	.LASF183
	.byte	0x5
	.uleb128 0
	.4byte	.LASF184
	.byte	0x5
	.uleb128 0
	.4byte	.LASF185
	.byte	0x5
	.uleb128 0
	.4byte	.LASF186
	.byte	0x5
	.uleb128 0
	.4byte	.LASF187
	.byte	0x5
	.uleb128 0
	.4byte	.LASF188
	.byte	0x5
	.uleb128 0
	.4byte	.LASF189
	.byte	0x5
	.uleb128 0
	.4byte	.LASF190
	.byte	0x5
	.uleb128 0
	.4byte	.LASF191
	.byte	0x5
	.uleb128 0
	.4byte	.LASF192
	.byte	0x5
	.uleb128 0
	.4byte	.LASF193
	.byte	0x5
	.uleb128 0
	.4byte	.LASF194
	.byte	0x5
	.uleb128 0
	.4byte	.LASF195
	.byte	0x5
	.uleb128 0
	.4byte	.LASF196
	.byte	0x5
	.uleb128 0
	.4byte	.LASF197
	.byte	0x5
	.uleb128 0
	.4byte	.LASF198
	.byte	0x5
	.uleb128 0
	.4byte	.LASF199
	.byte	0x5
	.uleb128 0
	.4byte	.LASF200
	.byte	0x5
	.uleb128 0
	.4byte	.LASF201
	.byte	0x5
	.uleb128 0
	.4byte	.LASF202
	.byte	0x5
	.uleb128 0
	.4byte	.LASF203
	.byte	0x5
	.uleb128 0
	.4byte	.LASF204
	.byte	0x5
	.uleb128 0
	.4byte	.LASF205
	.byte	0x5
	.uleb128 0
	.4byte	.LASF206
	.byte	0x5
	.uleb128 0
	.4byte	.LASF207
	.byte	0x5
	.uleb128 0
	.4byte	.LASF208
	.byte	0x5
	.uleb128 0
	.4byte	.LASF209
	.byte	0x5
	.uleb128 0
	.4byte	.LASF210
	.byte	0x5
	.uleb128 0
	.4byte	.LASF211
	.byte	0x5
	.uleb128 0
	.4byte	.LASF212
	.byte	0x5
	.uleb128 0
	.4byte	.LASF213
	.byte	0x5
	.uleb128 0
	.4byte	.LASF214
	.byte	0x5
	.uleb128 0
	.4byte	.LASF215
	.byte	0x5
	.uleb128 0
	.4byte	.LASF216
	.byte	0x5
	.uleb128 0
	.4byte	.LASF217
	.byte	0x5
	.uleb128 0
	.4byte	.LASF218
	.byte	0x5
	.uleb128 0
	.4byte	.LASF219
	.byte	0x5
	.uleb128 0
	.4byte	.LASF220
	.byte	0x5
	.uleb128 0
	.4byte	.LASF221
	.byte	0x5
	.uleb128 0
	.4byte	.LASF222
	.byte	0x5
	.uleb128 0
	.4byte	.LASF223
	.byte	0x5
	.uleb128 0
	.4byte	.LASF224
	.byte	0x5
	.uleb128 0
	.4byte	.LASF225
	.byte	0x5
	.uleb128 0
	.4byte	.LASF226
	.byte	0x5
	.uleb128 0
	.4byte	.LASF227
	.byte	0x5
	.uleb128 0
	.4byte	.LASF228
	.byte	0x5
	.uleb128 0
	.4byte	.LASF229
	.byte	0x5
	.uleb128 0
	.4byte	.LASF230
	.byte	0x5
	.uleb128 0
	.4byte	.LASF231
	.byte	0x5
	.uleb128 0
	.4byte	.LASF232
	.byte	0x5
	.uleb128 0
	.4byte	.LASF233
	.byte	0x5
	.uleb128 0
	.4byte	.LASF234
	.byte	0x5
	.uleb128 0
	.4byte	.LASF235
	.byte	0x5
	.uleb128 0
	.4byte	.LASF236
	.byte	0x5
	.uleb128 0
	.4byte	.LASF237
	.byte	0x5
	.uleb128 0
	.4byte	.LASF238
	.byte	0x5
	.uleb128 0
	.4byte	.LASF239
	.byte	0x5
	.uleb128 0
	.4byte	.LASF240
	.byte	0x5
	.uleb128 0
	.4byte	.LASF241
	.byte	0x5
	.uleb128 0
	.4byte	.LASF242
	.byte	0x5
	.uleb128 0
	.4byte	.LASF243
	.byte	0x5
	.uleb128 0
	.4byte	.LASF244
	.byte	0x5
	.uleb128 0
	.4byte	.LASF245
	.byte	0x5
	.uleb128 0
	.4byte	.LASF246
	.byte	0x5
	.uleb128 0
	.4byte	.LASF247
	.byte	0x5
	.uleb128 0
	.4byte	.LASF248
	.byte	0x5
	.uleb128 0
	.4byte	.LASF249
	.byte	0x5
	.uleb128 0
	.4byte	.LASF250
	.byte	0x5
	.uleb128 0
	.4byte	.LASF251
	.byte	0x5
	.uleb128 0
	.4byte	.LASF252
	.byte	0x5
	.uleb128 0
	.4byte	.LASF253
	.byte	0x5
	.uleb128 0
	.4byte	.LASF254
	.byte	0x5
	.uleb128 0
	.4byte	.LASF255
	.byte	0x5
	.uleb128 0
	.4byte	.LASF256
	.byte	0x5
	.uleb128 0
	.4byte	.LASF257
	.byte	0x5
	.uleb128 0
	.4byte	.LASF258
	.byte	0x5
	.uleb128 0
	.4byte	.LASF259
	.byte	0x5
	.uleb128 0
	.4byte	.LASF260
	.byte	0x5
	.uleb128 0
	.4byte	.LASF261
	.byte	0x5
	.uleb128 0
	.4byte	.LASF262
	.byte	0x5
	.uleb128 0
	.4byte	.LASF263
	.byte	0x5
	.uleb128 0
	.4byte	.LASF264
	.byte	0x5
	.uleb128 0
	.4byte	.LASF265
	.byte	0x5
	.uleb128 0
	.4byte	.LASF266
	.byte	0x5
	.uleb128 0
	.4byte	.LASF267
	.byte	0x5
	.uleb128 0
	.4byte	.LASF268
	.byte	0x5
	.uleb128 0
	.4byte	.LASF269
	.byte	0x5
	.uleb128 0
	.4byte	.LASF270
	.byte	0x5
	.uleb128 0
	.4byte	.LASF271
	.byte	0x5
	.uleb128 0
	.4byte	.LASF272
	.byte	0x5
	.uleb128 0
	.4byte	.LASF273
	.byte	0x5
	.uleb128 0
	.4byte	.LASF274
	.byte	0x5
	.uleb128 0
	.4byte	.LASF275
	.byte	0x5
	.uleb128 0
	.4byte	.LASF276
	.byte	0x5
	.uleb128 0
	.4byte	.LASF277
	.byte	0x5
	.uleb128 0
	.4byte	.LASF278
	.byte	0x5
	.uleb128 0
	.4byte	.LASF279
	.byte	0x5
	.uleb128 0
	.4byte	.LASF280
	.byte	0x5
	.uleb128 0
	.4byte	.LASF281
	.byte	0x5
	.uleb128 0
	.4byte	.LASF282
	.byte	0x5
	.uleb128 0
	.4byte	.LASF283
	.byte	0x5
	.uleb128 0
	.4byte	.LASF284
	.byte	0x5
	.uleb128 0
	.4byte	.LASF285
	.byte	0x5
	.uleb128 0
	.4byte	.LASF286
	.byte	0x5
	.uleb128 0
	.4byte	.LASF287
	.byte	0x5
	.uleb128 0
	.4byte	.LASF288
	.byte	0x5
	.uleb128 0
	.4byte	.LASF289
	.byte	0x5
	.uleb128 0
	.4byte	.LASF290
	.byte	0x5
	.uleb128 0
	.4byte	.LASF291
	.byte	0x5
	.uleb128 0
	.4byte	.LASF292
	.byte	0x5
	.uleb128 0
	.4byte	.LASF293
	.byte	0x5
	.uleb128 0
	.4byte	.LASF294
	.byte	0x5
	.uleb128 0
	.4byte	.LASF295
	.byte	0x5
	.uleb128 0
	.4byte	.LASF296
	.byte	0x5
	.uleb128 0
	.4byte	.LASF297
	.byte	0x5
	.uleb128 0
	.4byte	.LASF298
	.byte	0x5
	.uleb128 0
	.4byte	.LASF299
	.byte	0x5
	.uleb128 0
	.4byte	.LASF300
	.byte	0x5
	.uleb128 0
	.4byte	.LASF301
	.byte	0x5
	.uleb128 0
	.4byte	.LASF302
	.byte	0x5
	.uleb128 0
	.4byte	.LASF303
	.byte	0x5
	.uleb128 0
	.4byte	.LASF304
	.byte	0x5
	.uleb128 0
	.4byte	.LASF305
	.byte	0x5
	.uleb128 0
	.4byte	.LASF306
	.byte	0x5
	.uleb128 0
	.4byte	.LASF307
	.byte	0x5
	.uleb128 0
	.4byte	.LASF308
	.byte	0x5
	.uleb128 0
	.4byte	.LASF309
	.byte	0x5
	.uleb128 0
	.4byte	.LASF310
	.byte	0x5
	.uleb128 0
	.4byte	.LASF311
	.byte	0x5
	.uleb128 0
	.4byte	.LASF312
	.byte	0x5
	.uleb128 0
	.4byte	.LASF313
	.byte	0x5
	.uleb128 0
	.4byte	.LASF314
	.byte	0x5
	.uleb128 0
	.4byte	.LASF315
	.byte	0x5
	.uleb128 0
	.4byte	.LASF316
	.byte	0x5
	.uleb128 0
	.4byte	.LASF317
	.byte	0x5
	.uleb128 0
	.4byte	.LASF318
	.byte	0x5
	.uleb128 0
	.4byte	.LASF319
	.byte	0x5
	.uleb128 0
	.4byte	.LASF320
	.byte	0x5
	.uleb128 0
	.4byte	.LASF321
	.byte	0x5
	.uleb128 0
	.4byte	.LASF322
	.byte	0x5
	.uleb128 0
	.4byte	.LASF323
	.byte	0x5
	.uleb128 0
	.4byte	.LASF324
	.byte	0x5
	.uleb128 0
	.4byte	.LASF325
	.byte	0x5
	.uleb128 0
	.4byte	.LASF326
	.byte	0x5
	.uleb128 0
	.4byte	.LASF327
	.byte	0x5
	.uleb128 0
	.4byte	.LASF328
	.byte	0x5
	.uleb128 0
	.4byte	.LASF329
	.byte	0x5
	.uleb128 0
	.4byte	.LASF330
	.byte	0x5
	.uleb128 0
	.4byte	.LASF331
	.byte	0x5
	.uleb128 0
	.4byte	.LASF332
	.byte	0x5
	.uleb128 0
	.4byte	.LASF333
	.byte	0x5
	.uleb128 0
	.4byte	.LASF334
	.byte	0x5
	.uleb128 0
	.4byte	.LASF335
	.byte	0x5
	.uleb128 0
	.4byte	.LASF336
	.byte	0x5
	.uleb128 0
	.4byte	.LASF337
	.byte	0x5
	.uleb128 0
	.4byte	.LASF338
	.byte	0x5
	.uleb128 0
	.4byte	.LASF339
	.byte	0x5
	.uleb128 0
	.4byte	.LASF340
	.byte	0x5
	.uleb128 0
	.4byte	.LASF341
	.byte	0x5
	.uleb128 0
	.4byte	.LASF342
	.byte	0x5
	.uleb128 0
	.4byte	.LASF343
	.byte	0x5
	.uleb128 0
	.4byte	.LASF344
	.byte	0x5
	.uleb128 0
	.4byte	.LASF345
	.byte	0x5
	.uleb128 0
	.4byte	.LASF346
	.byte	0x5
	.uleb128 0
	.4byte	.LASF347
	.byte	0x5
	.uleb128 0
	.4byte	.LASF348
	.byte	0x5
	.uleb128 0
	.4byte	.LASF349
	.byte	0x5
	.uleb128 0
	.4byte	.LASF350
	.byte	0x5
	.uleb128 0
	.4byte	.LASF351
	.byte	0x5
	.uleb128 0
	.4byte	.LASF352
	.byte	0x5
	.uleb128 0
	.4byte	.LASF353
	.byte	0x5
	.uleb128 0
	.4byte	.LASF354
	.byte	0x5
	.uleb128 0
	.4byte	.LASF355
	.byte	0x5
	.uleb128 0
	.4byte	.LASF356
	.byte	0x5
	.uleb128 0
	.4byte	.LASF357
	.byte	0x5
	.uleb128 0
	.4byte	.LASF358
	.byte	0x5
	.uleb128 0
	.4byte	.LASF359
	.byte	0x5
	.uleb128 0
	.4byte	.LASF360
	.byte	0x5
	.uleb128 0
	.4byte	.LASF361
	.byte	0x5
	.uleb128 0
	.4byte	.LASF362
	.byte	0x5
	.uleb128 0
	.4byte	.LASF363
	.byte	0x5
	.uleb128 0
	.4byte	.LASF364
	.byte	0x5
	.uleb128 0
	.4byte	.LASF365
	.byte	0x5
	.uleb128 0
	.4byte	.LASF366
	.byte	0x5
	.uleb128 0
	.4byte	.LASF367
	.byte	0x5
	.uleb128 0
	.4byte	.LASF368
	.byte	0x5
	.uleb128 0
	.4byte	.LASF369
	.byte	0x5
	.uleb128 0
	.4byte	.LASF370
	.byte	0x5
	.uleb128 0
	.4byte	.LASF371
	.byte	0x5
	.uleb128 0
	.4byte	.LASF372
	.byte	0x5
	.uleb128 0
	.4byte	.LASF373
	.byte	0x5
	.uleb128 0
	.4byte	.LASF374
	.byte	0x5
	.uleb128 0
	.4byte	.LASF375
	.byte	0x5
	.uleb128 0
	.4byte	.LASF376
	.byte	0x5
	.uleb128 0
	.4byte	.LASF377
	.byte	0x5
	.uleb128 0
	.4byte	.LASF378
	.byte	0x5
	.uleb128 0
	.4byte	.LASF379
	.byte	0x5
	.uleb128 0
	.4byte	.LASF380
	.byte	0x5
	.uleb128 0
	.4byte	.LASF381
	.byte	0x5
	.uleb128 0
	.4byte	.LASF382
	.byte	0x5
	.uleb128 0
	.4byte	.LASF383
	.byte	0x5
	.uleb128 0
	.4byte	.LASF384
	.byte	0x5
	.uleb128 0
	.4byte	.LASF385
	.byte	0x5
	.uleb128 0
	.4byte	.LASF386
	.byte	0x5
	.uleb128 0
	.4byte	.LASF387
	.byte	0x5
	.uleb128 0
	.4byte	.LASF388
	.byte	0x5
	.uleb128 0
	.4byte	.LASF389
	.byte	0x6
	.uleb128 0
	.4byte	.LASF390
	.byte	0x5
	.uleb128 0
	.4byte	.LASF391
	.byte	0x6
	.uleb128 0
	.4byte	.LASF392
	.byte	0x6
	.uleb128 0
	.4byte	.LASF393
	.byte	0x6
	.uleb128 0
	.4byte	.LASF394
	.byte	0x6
	.uleb128 0
	.4byte	.LASF395
	.byte	0x5
	.uleb128 0
	.4byte	.LASF396
	.byte	0x6
	.uleb128 0
	.4byte	.LASF397
	.byte	0x6
	.uleb128 0
	.4byte	.LASF398
	.byte	0x6
	.uleb128 0
	.4byte	.LASF399
	.byte	0x5
	.uleb128 0
	.4byte	.LASF400
	.byte	0x5
	.uleb128 0
	.4byte	.LASF401
	.byte	0x6
	.uleb128 0
	.4byte	.LASF402
	.byte	0x5
	.uleb128 0
	.4byte	.LASF403
	.byte	0x5
	.uleb128 0
	.4byte	.LASF404
	.byte	0x5
	.uleb128 0
	.4byte	.LASF405
	.byte	0x6
	.uleb128 0
	.4byte	.LASF406
	.byte	0x5
	.uleb128 0
	.4byte	.LASF407
	.byte	0x5
	.uleb128 0
	.4byte	.LASF408
	.byte	0x6
	.uleb128 0
	.4byte	.LASF409
	.byte	0x5
	.uleb128 0
	.4byte	.LASF410
	.byte	0x5
	.uleb128 0
	.4byte	.LASF411
	.byte	0x5
	.uleb128 0
	.4byte	.LASF412
	.byte	0x5
	.uleb128 0
	.4byte	.LASF413
	.byte	0x5
	.uleb128 0
	.4byte	.LASF414
	.byte	0x5
	.uleb128 0
	.4byte	.LASF415
	.byte	0x6
	.uleb128 0
	.4byte	.LASF416
	.byte	0x5
	.uleb128 0
	.4byte	.LASF417
	.byte	0x5
	.uleb128 0
	.4byte	.LASF418
	.byte	0x5
	.uleb128 0
	.4byte	.LASF419
	.byte	0x6
	.uleb128 0
	.4byte	.LASF420
	.byte	0x5
	.uleb128 0
	.4byte	.LASF421
	.byte	0x6
	.uleb128 0
	.4byte	.LASF422
	.byte	0x6
	.uleb128 0
	.4byte	.LASF423
	.byte	0x6
	.uleb128 0
	.4byte	.LASF424
	.byte	0x6
	.uleb128 0
	.4byte	.LASF425
	.byte	0x6
	.uleb128 0
	.4byte	.LASF426
	.byte	0x6
	.uleb128 0
	.4byte	.LASF427
	.byte	0x5
	.uleb128 0
	.4byte	.LASF428
	.byte	0x6
	.uleb128 0
	.4byte	.LASF429
	.byte	0x6
	.uleb128 0
	.4byte	.LASF430
	.byte	0x6
	.uleb128 0
	.4byte	.LASF431
	.byte	0x5
	.uleb128 0
	.4byte	.LASF432
	.byte	0x5
	.uleb128 0
	.4byte	.LASF433
	.byte	0x5
	.uleb128 0
	.4byte	.LASF434
	.byte	0x5
	.uleb128 0
	.4byte	.LASF435
	.byte	0x6
	.uleb128 0
	.4byte	.LASF436
	.byte	0x5
	.uleb128 0
	.4byte	.LASF437
	.byte	0x5
	.uleb128 0
	.4byte	.LASF438
	.byte	0x5
	.uleb128 0
	.4byte	.LASF439
	.byte	0x6
	.uleb128 0
	.4byte	.LASF440
	.byte	0x5
	.uleb128 0
	.4byte	.LASF441
	.byte	0x6
	.uleb128 0
	.4byte	.LASF442
	.byte	0x6
	.uleb128 0
	.4byte	.LASF443
	.byte	0x6
	.uleb128 0
	.4byte	.LASF444
	.byte	0x6
	.uleb128 0
	.4byte	.LASF445
	.byte	0x6
	.uleb128 0
	.4byte	.LASF446
	.byte	0x6
	.uleb128 0
	.4byte	.LASF447
	.byte	0x5
	.uleb128 0
	.4byte	.LASF448
	.byte	0x5
	.uleb128 0
	.4byte	.LASF449
	.byte	0x5
	.uleb128 0
	.4byte	.LASF450
	.byte	0x5
	.uleb128 0
	.4byte	.LASF451
	.byte	0x5
	.uleb128 0
	.4byte	.LASF452
	.byte	0x5
	.uleb128 0
	.4byte	.LASF453
	.byte	0x3
	.uleb128 0x11
	.uleb128 0x6
	.byte	0x5
	.uleb128 0x12
	.4byte	.LASF454
	.file 7 "C:\\Program Files\\STM32CubeIDE_1.13.0\\STM32CubeIDE\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.11.3.rel1.win32_1.1.0.202305231506\\tools\\bin/../lib/gcc/arm-none-eabi/11.3.1/include/stdint.h"
	.byte	0x3
	.uleb128 0x14
	.uleb128 0x7
	.file 8 "C:\\Program Files\\STM32CubeIDE_1.13.0\\STM32CubeIDE\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.11.3.rel1.win32_1.1.0.202305231506\\tools\\bin/../lib/gcc/arm-none-eabi/11.3.1/../../../../arm-none-eabi/include/stdint.h"
	.byte	0x3
	.uleb128 0x9
	.uleb128 0x8
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF455
	.byte	0x3
	.uleb128 0xc
	.uleb128 0x2
	.byte	0x5
	.uleb128 0x6
	.4byte	.LASF456
	.file 9 "C:\\Program Files\\STM32CubeIDE_1.13.0\\STM32CubeIDE\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.11.3.rel1.win32_1.1.0.202305231506\\tools\\bin/../lib/gcc/arm-none-eabi/11.3.1/../../../../arm-none-eabi/include/sys/features.h"
	.byte	0x3
	.uleb128 0x8
	.uleb128 0x9
	.byte	0x5
	.uleb128 0x16
	.4byte	.LASF457
	.file 10 "C:\\Program Files\\STM32CubeIDE_1.13.0\\STM32CubeIDE\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.11.3.rel1.win32_1.1.0.202305231506\\tools\\bin/../lib/gcc/arm-none-eabi/11.3.1/../../../../arm-none-eabi/include/_newlib_version.h"
	.byte	0x3
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0x7
	.4byte	.Ldebug_macro2
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro3
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro4
	.byte	0x4
	.file 11 "C:\\Program Files\\STM32CubeIDE_1.13.0\\STM32CubeIDE\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.11.3.rel1.win32_1.1.0.202305231506\\tools\\bin/../lib/gcc/arm-none-eabi/11.3.1/../../../../arm-none-eabi/include/sys/_intsup.h"
	.byte	0x3
	.uleb128 0xd
	.uleb128 0xb
	.byte	0x7
	.4byte	.Ldebug_macro5
	.byte	0x4
	.byte	0x3
	.uleb128 0xe
	.uleb128 0x3
	.byte	0x7
	.4byte	.Ldebug_macro6
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro7
	.byte	0x4
	.byte	0x5
	.uleb128 0xd
	.4byte	.LASF612
	.byte	0x4
	.byte	0x3
	.uleb128 0x15
	.uleb128 0x4
	.byte	0x7
	.4byte	.Ldebug_macro8
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x12
	.uleb128 0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x13
	.uleb128 0x5
	.byte	0x5
	.uleb128 0x3
	.4byte	.LASF667
	.file 12 "C:\\Program Files\\STM32CubeIDE_1.13.0\\STM32CubeIDE\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.11.3.rel1.win32_1.1.0.202305231506\\tools\\bin/../lib/gcc/arm-none-eabi/11.3.1/../../../../arm-none-eabi/include/sys/reent.h"
	.byte	0x3
	.uleb128 0x5
	.uleb128 0xc
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF668
	.file 13 "C:\\Program Files\\STM32CubeIDE_1.13.0\\STM32CubeIDE\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.11.3.rel1.win32_1.1.0.202305231506\\tools\\bin/../lib/gcc/arm-none-eabi/11.3.1/../../../../arm-none-eabi/include/_ansi.h"
	.byte	0x3
	.uleb128 0xd
	.uleb128 0xd
	.byte	0x5
	.uleb128 0x8
	.4byte	.LASF669
	.file 14 "C:\\Program Files\\STM32CubeIDE_1.13.0\\STM32CubeIDE\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.11.3.rel1.win32_1.1.0.202305231506\\tools\\bin/../arm-none-eabi/include/newlib-nano/newlib.h"
	.byte	0x3
	.uleb128 0xa
	.uleb128 0xe
	.byte	0x7
	.4byte	.Ldebug_macro9
	.byte	0x4
	.file 15 "C:\\Program Files\\STM32CubeIDE_1.13.0\\STM32CubeIDE\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.11.3.rel1.win32_1.1.0.202305231506\\tools\\bin/../lib/gcc/arm-none-eabi/11.3.1/../../../../arm-none-eabi/include/sys/config.h"
	.byte	0x3
	.uleb128 0xb
	.uleb128 0xf
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF684
	.file 16 "C:\\Program Files\\STM32CubeIDE_1.13.0\\STM32CubeIDE\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.11.3.rel1.win32_1.1.0.202305231506\\tools\\bin/../lib/gcc/arm-none-eabi/11.3.1/../../../../arm-none-eabi/include/machine/ieeefp.h"
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x10
	.byte	0x7
	.4byte	.Ldebug_macro10
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro11
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro12
	.byte	0x4
	.file 17 "C:\\Program Files\\STM32CubeIDE_1.13.0\\STM32CubeIDE\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.11.3.rel1.win32_1.1.0.202305231506\\tools\\bin/../lib/gcc/arm-none-eabi/11.3.1/include/stddef.h"
	.byte	0x3
	.uleb128 0xe
	.uleb128 0x11
	.byte	0x7
	.4byte	.Ldebug_macro13
	.byte	0x4
	.file 18 "C:\\Program Files\\STM32CubeIDE_1.13.0\\STM32CubeIDE\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.11.3.rel1.win32_1.1.0.202305231506\\tools\\bin/../lib/gcc/arm-none-eabi/11.3.1/../../../../arm-none-eabi/include/sys/_types.h"
	.byte	0x3
	.uleb128 0xf
	.uleb128 0x12
	.byte	0x7
	.4byte	.Ldebug_macro14
	.byte	0x3
	.uleb128 0x18
	.uleb128 0x11
	.byte	0x7
	.4byte	.Ldebug_macro15
	.byte	0x4
	.file 19 "C:\\Program Files\\STM32CubeIDE_1.13.0\\STM32CubeIDE\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.11.3.rel1.win32_1.1.0.202305231506\\tools\\bin/../lib/gcc/arm-none-eabi/11.3.1/../../../../arm-none-eabi/include/machine/_types.h"
	.byte	0x3
	.uleb128 0x1b
	.uleb128 0x13
	.byte	0x5
	.uleb128 0x6
	.4byte	.LASF766
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro16
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro17
	.file 20 "C:\\Program Files\\STM32CubeIDE_1.13.0\\STM32CubeIDE\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.11.3.rel1.win32_1.1.0.202305231506\\tools\\bin/../lib/gcc/arm-none-eabi/11.3.1/../../../../arm-none-eabi/include/sys/lock.h"
	.byte	0x3
	.uleb128 0x22
	.uleb128 0x14
	.byte	0x7
	.4byte	.Ldebug_macro18
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro19
	.file 21 "C:\\Program Files\\STM32CubeIDE_1.13.0\\STM32CubeIDE\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.11.3.rel1.win32_1.1.0.202305231506\\tools\\bin/../lib/gcc/arm-none-eabi/11.3.1/../../../../arm-none-eabi/include/assert.h"
	.byte	0x3
	.uleb128 0x1ba
	.uleb128 0x15
	.byte	0x3
	.uleb128 0x9
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro20
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro21
	.byte	0x4
	.file 22 "C:\\Program Files\\STM32CubeIDE_1.13.0\\STM32CubeIDE\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.11.3.rel1.win32_1.1.0.202305231506\\tools\\bin/../lib/gcc/arm-none-eabi/11.3.1/../../../../arm-none-eabi/include/sys/cdefs.h"
	.byte	0x3
	.uleb128 0x6
	.uleb128 0x16
	.byte	0x5
	.uleb128 0x2b
	.4byte	.LASF866
	.byte	0x3
	.uleb128 0x2f
	.uleb128 0x11
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro22
	.byte	0x4
	.byte	0x3
	.uleb128 0x7
	.uleb128 0x10
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro23
	.byte	0x4
	.byte	0x4
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4._newlib_version.h.4.529115dae5e4f67702b1de0b6e841f38,comdat
.Ldebug_macro2:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x4
	.4byte	.LASF458
	.byte	0x5
	.uleb128 0x6
	.4byte	.LASF459
	.byte	0x5
	.uleb128 0x7
	.4byte	.LASF460
	.byte	0x5
	.uleb128 0x8
	.4byte	.LASF461
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF462
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.features.h.33.3e67abe6fb64142d4f6fa9496796153c,comdat
.Ldebug_macro3:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x21
	.4byte	.LASF463
	.byte	0x5
	.uleb128 0x28
	.4byte	.LASF464
	.byte	0x6
	.uleb128 0x83
	.4byte	.LASF465
	.byte	0x5
	.uleb128 0x84
	.4byte	.LASF466
	.byte	0x6
	.uleb128 0x88
	.4byte	.LASF467
	.byte	0x5
	.uleb128 0x89
	.4byte	.LASF468
	.byte	0x6
	.uleb128 0x8a
	.4byte	.LASF469
	.byte	0x5
	.uleb128 0x8b
	.4byte	.LASF470
	.byte	0x6
	.uleb128 0x9e
	.4byte	.LASF471
	.byte	0x5
	.uleb128 0x9f
	.4byte	.LASF472
	.byte	0x5
	.uleb128 0xf7
	.4byte	.LASF473
	.byte	0x5
	.uleb128 0xfd
	.4byte	.LASF474
	.byte	0x5
	.uleb128 0x105
	.4byte	.LASF475
	.byte	0x5
	.uleb128 0x10a
	.4byte	.LASF476
	.byte	0x5
	.uleb128 0x115
	.4byte	.LASF477
	.byte	0x5
	.uleb128 0x119
	.4byte	.LASF478
	.byte	0x5
	.uleb128 0x11f
	.4byte	.LASF479
	.byte	0x5
	.uleb128 0x12f
	.4byte	.LASF480
	.byte	0x5
	.uleb128 0x13f
	.4byte	.LASF481
	.byte	0x5
	.uleb128 0x14b
	.4byte	.LASF482
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4._default_types.h.15.247e5cd201eca3442cbf5404108c4935,comdat
.Ldebug_macro4:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0xf
	.4byte	.LASF483
	.byte	0x5
	.uleb128 0x1a
	.4byte	.LASF484
	.byte	0x5
	.uleb128 0x21
	.4byte	.LASF485
	.byte	0x5
	.uleb128 0x2f
	.4byte	.LASF486
	.byte	0x5
	.uleb128 0x3d
	.4byte	.LASF487
	.byte	0x5
	.uleb128 0x53
	.4byte	.LASF488
	.byte	0x5
	.uleb128 0x6d
	.4byte	.LASF489
	.byte	0x5
	.uleb128 0x8c
	.4byte	.LASF490
	.byte	0x5
	.uleb128 0xa6
	.4byte	.LASF491
	.byte	0x5
	.uleb128 0xbc
	.4byte	.LASF492
	.byte	0x5
	.uleb128 0xce
	.4byte	.LASF493
	.byte	0x6
	.uleb128 0xf4
	.4byte	.LASF494
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4._intsup.h.10.48bafbb683905c4daa4565a85aeeb264,comdat
.Ldebug_macro5:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF495
	.byte	0x5
	.uleb128 0x10
	.4byte	.LASF496
	.byte	0x6
	.uleb128 0x2b
	.4byte	.LASF497
	.byte	0x6
	.uleb128 0x2c
	.4byte	.LASF498
	.byte	0x6
	.uleb128 0x2d
	.4byte	.LASF499
	.byte	0x6
	.uleb128 0x2e
	.4byte	.LASF500
	.byte	0x2
	.uleb128 0x2f
	.ascii	"int\000"
	.byte	0x6
	.uleb128 0x30
	.4byte	.LASF501
	.byte	0x6
	.uleb128 0x31
	.4byte	.LASF502
	.byte	0x6
	.uleb128 0x32
	.4byte	.LASF503
	.byte	0x5
	.uleb128 0x33
	.4byte	.LASF504
	.byte	0x5
	.uleb128 0x34
	.4byte	.LASF505
	.byte	0x5
	.uleb128 0x35
	.4byte	.LASF506
	.byte	0x5
	.uleb128 0x36
	.4byte	.LASF507
	.byte	0x5
	.uleb128 0x37
	.4byte	.LASF508
	.byte	0x5
	.uleb128 0x38
	.4byte	.LASF509
	.byte	0x5
	.uleb128 0x39
	.4byte	.LASF510
	.byte	0x5
	.uleb128 0x3a
	.4byte	.LASF511
	.byte	0x5
	.uleb128 0x43
	.4byte	.LASF512
	.byte	0x5
	.uleb128 0x4a
	.4byte	.LASF513
	.byte	0x5
	.uleb128 0x52
	.4byte	.LASF514
	.byte	0x5
	.uleb128 0x5d
	.4byte	.LASF515
	.byte	0x5
	.uleb128 0x68
	.4byte	.LASF516
	.byte	0x5
	.uleb128 0x71
	.4byte	.LASF517
	.byte	0x5
	.uleb128 0x78
	.4byte	.LASF518
	.byte	0x5
	.uleb128 0x81
	.4byte	.LASF519
	.byte	0x5
	.uleb128 0x88
	.4byte	.LASF520
	.byte	0x5
	.uleb128 0x93
	.4byte	.LASF521
	.byte	0x5
	.uleb128 0x97
	.4byte	.LASF522
	.byte	0x5
	.uleb128 0xa2
	.4byte	.LASF523
	.byte	0x5
	.uleb128 0xad
	.4byte	.LASF524
	.byte	0x5
	.uleb128 0xb6
	.4byte	.LASF525
	.byte	0x6
	.uleb128 0xb8
	.4byte	.LASF497
	.byte	0x6
	.uleb128 0xb9
	.4byte	.LASF498
	.byte	0x6
	.uleb128 0xba
	.4byte	.LASF499
	.byte	0x6
	.uleb128 0xbb
	.4byte	.LASF500
	.byte	0x2
	.uleb128 0xbc
	.ascii	"int\000"
	.byte	0x6
	.uleb128 0xbd
	.4byte	.LASF503
	.byte	0x6
	.uleb128 0xc2
	.4byte	.LASF501
	.byte	0x6
	.uleb128 0xc3
	.4byte	.LASF502
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4._stdint.h.10.c24fa3af3bc1706662bb5593a907e841,comdat
.Ldebug_macro6:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF526
	.byte	0x5
	.uleb128 0x15
	.4byte	.LASF527
	.byte	0x5
	.uleb128 0x19
	.4byte	.LASF528
	.byte	0x5
	.uleb128 0x1b
	.4byte	.LASF529
	.byte	0x5
	.uleb128 0x21
	.4byte	.LASF530
	.byte	0x5
	.uleb128 0x25
	.4byte	.LASF531
	.byte	0x5
	.uleb128 0x27
	.4byte	.LASF532
	.byte	0x5
	.uleb128 0x2d
	.4byte	.LASF533
	.byte	0x5
	.uleb128 0x31
	.4byte	.LASF534
	.byte	0x5
	.uleb128 0x33
	.4byte	.LASF535
	.byte	0x5
	.uleb128 0x39
	.4byte	.LASF536
	.byte	0x5
	.uleb128 0x3d
	.4byte	.LASF537
	.byte	0x5
	.uleb128 0x3f
	.4byte	.LASF538
	.byte	0x5
	.uleb128 0x44
	.4byte	.LASF539
	.byte	0x5
	.uleb128 0x49
	.4byte	.LASF540
	.byte	0x5
	.uleb128 0x4e
	.4byte	.LASF541
	.byte	0x5
	.uleb128 0x53
	.4byte	.LASF542
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.stdint.h.23.d53047a68f4a85177f80b422d52785ed,comdat
.Ldebug_macro7:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x17
	.4byte	.LASF543
	.byte	0x5
	.uleb128 0x1d
	.4byte	.LASF544
	.byte	0x5
	.uleb128 0x23
	.4byte	.LASF545
	.byte	0x5
	.uleb128 0x29
	.4byte	.LASF546
	.byte	0x5
	.uleb128 0x35
	.4byte	.LASF547
	.byte	0x5
	.uleb128 0x3f
	.4byte	.LASF548
	.byte	0x5
	.uleb128 0x49
	.4byte	.LASF549
	.byte	0x5
	.uleb128 0x53
	.4byte	.LASF550
	.byte	0x5
	.uleb128 0x80
	.4byte	.LASF551
	.byte	0x5
	.uleb128 0x81
	.4byte	.LASF552
	.byte	0x5
	.uleb128 0x82
	.4byte	.LASF553
	.byte	0x5
	.uleb128 0x98
	.4byte	.LASF554
	.byte	0x5
	.uleb128 0x99
	.4byte	.LASF555
	.byte	0x5
	.uleb128 0x9a
	.4byte	.LASF556
	.byte	0x5
	.uleb128 0xa2
	.4byte	.LASF557
	.byte	0x5
	.uleb128 0xa3
	.4byte	.LASF558
	.byte	0x5
	.uleb128 0xa4
	.4byte	.LASF559
	.byte	0x5
	.uleb128 0xae
	.4byte	.LASF560
	.byte	0x5
	.uleb128 0xaf
	.4byte	.LASF561
	.byte	0x5
	.uleb128 0xb0
	.4byte	.LASF562
	.byte	0x5
	.uleb128 0xb8
	.4byte	.LASF563
	.byte	0x5
	.uleb128 0xb9
	.4byte	.LASF564
	.byte	0x5
	.uleb128 0xba
	.4byte	.LASF565
	.byte	0x5
	.uleb128 0xc4
	.4byte	.LASF566
	.byte	0x5
	.uleb128 0xc5
	.4byte	.LASF567
	.byte	0x5
	.uleb128 0xc6
	.4byte	.LASF568
	.byte	0x5
	.uleb128 0xd4
	.4byte	.LASF569
	.byte	0x5
	.uleb128 0xd5
	.4byte	.LASF570
	.byte	0x5
	.uleb128 0xd6
	.4byte	.LASF571
	.byte	0x5
	.uleb128 0xe6
	.4byte	.LASF572
	.byte	0x5
	.uleb128 0xe7
	.4byte	.LASF573
	.byte	0x5
	.uleb128 0xe8
	.4byte	.LASF574
	.byte	0x5
	.uleb128 0xf6
	.4byte	.LASF575
	.byte	0x5
	.uleb128 0xf7
	.4byte	.LASF576
	.byte	0x5
	.uleb128 0xf8
	.4byte	.LASF577
	.byte	0x5
	.uleb128 0x106
	.4byte	.LASF578
	.byte	0x5
	.uleb128 0x107
	.4byte	.LASF579
	.byte	0x5
	.uleb128 0x108
	.4byte	.LASF580
	.byte	0x5
	.uleb128 0x116
	.4byte	.LASF581
	.byte	0x5
	.uleb128 0x117
	.4byte	.LASF582
	.byte	0x5
	.uleb128 0x118
	.4byte	.LASF583
	.byte	0x5
	.uleb128 0x126
	.4byte	.LASF584
	.byte	0x5
	.uleb128 0x127
	.4byte	.LASF585
	.byte	0x5
	.uleb128 0x128
	.4byte	.LASF586
	.byte	0x5
	.uleb128 0x136
	.4byte	.LASF587
	.byte	0x5
	.uleb128 0x137
	.4byte	.LASF588
	.byte	0x5
	.uleb128 0x138
	.4byte	.LASF589
	.byte	0x5
	.uleb128 0x146
	.4byte	.LASF590
	.byte	0x5
	.uleb128 0x147
	.4byte	.LASF591
	.byte	0x5
	.uleb128 0x14f
	.4byte	.LASF592
	.byte	0x5
	.uleb128 0x157
	.4byte	.LASF593
	.byte	0x5
	.uleb128 0x15d
	.4byte	.LASF594
	.byte	0x5
	.uleb128 0x15e
	.4byte	.LASF595
	.byte	0x5
	.uleb128 0x162
	.4byte	.LASF596
	.byte	0x5
	.uleb128 0x166
	.4byte	.LASF597
	.byte	0x5
	.uleb128 0x16b
	.4byte	.LASF598
	.byte	0x5
	.uleb128 0x176
	.4byte	.LASF599
	.byte	0x5
	.uleb128 0x180
	.4byte	.LASF600
	.byte	0x5
	.uleb128 0x185
	.4byte	.LASF601
	.byte	0x5
	.uleb128 0x18c
	.4byte	.LASF602
	.byte	0x5
	.uleb128 0x18d
	.4byte	.LASF603
	.byte	0x5
	.uleb128 0x198
	.4byte	.LASF604
	.byte	0x5
	.uleb128 0x199
	.4byte	.LASF605
	.byte	0x5
	.uleb128 0x1a4
	.4byte	.LASF606
	.byte	0x5
	.uleb128 0x1a5
	.4byte	.LASF607
	.byte	0x5
	.uleb128 0x1b1
	.4byte	.LASF608
	.byte	0x5
	.uleb128 0x1b2
	.4byte	.LASF609
	.byte	0x5
	.uleb128 0x1c1
	.4byte	.LASF610
	.byte	0x5
	.uleb128 0x1c2
	.4byte	.LASF611
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.MLX90640_API.h.18.08ac710f5871e12bedc2f311fcb91c68,comdat
.Ldebug_macro8:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x12
	.4byte	.LASF613
	.byte	0x5
	.uleb128 0x14
	.4byte	.LASF614
	.byte	0x5
	.uleb128 0x15
	.4byte	.LASF615
	.byte	0x5
	.uleb128 0x16
	.4byte	.LASF616
	.byte	0x5
	.uleb128 0x17
	.4byte	.LASF617
	.byte	0x5
	.uleb128 0x18
	.4byte	.LASF618
	.byte	0x5
	.uleb128 0x19
	.4byte	.LASF619
	.byte	0x5
	.uleb128 0x1a
	.4byte	.LASF620
	.byte	0x5
	.uleb128 0x1b
	.4byte	.LASF621
	.byte	0x5
	.uleb128 0x1c
	.4byte	.LASF622
	.byte	0x5
	.uleb128 0x1d
	.4byte	.LASF623
	.byte	0x5
	.uleb128 0x1f
	.4byte	.LASF624
	.byte	0x5
	.uleb128 0x20
	.4byte	.LASF625
	.byte	0x5
	.uleb128 0x22
	.4byte	.LASF626
	.byte	0x5
	.uleb128 0x23
	.4byte	.LASF627
	.byte	0x5
	.uleb128 0x24
	.4byte	.LASF628
	.byte	0x5
	.uleb128 0x25
	.4byte	.LASF629
	.byte	0x5
	.uleb128 0x26
	.4byte	.LASF630
	.byte	0x5
	.uleb128 0x27
	.4byte	.LASF631
	.byte	0x5
	.uleb128 0x28
	.4byte	.LASF632
	.byte	0x5
	.uleb128 0x29
	.4byte	.LASF633
	.byte	0x5
	.uleb128 0x2a
	.4byte	.LASF634
	.byte	0x5
	.uleb128 0x2b
	.4byte	.LASF635
	.byte	0x5
	.uleb128 0x2c
	.4byte	.LASF636
	.byte	0x5
	.uleb128 0x2d
	.4byte	.LASF637
	.byte	0x5
	.uleb128 0x2e
	.4byte	.LASF638
	.byte	0x5
	.uleb128 0x2f
	.4byte	.LASF639
	.byte	0x5
	.uleb128 0x30
	.4byte	.LASF640
	.byte	0x5
	.uleb128 0x31
	.4byte	.LASF641
	.byte	0x5
	.uleb128 0x33
	.4byte	.LASF642
	.byte	0x5
	.uleb128 0x34
	.4byte	.LASF643
	.byte	0x5
	.uleb128 0x35
	.4byte	.LASF644
	.byte	0x5
	.uleb128 0x36
	.4byte	.LASF645
	.byte	0x5
	.uleb128 0x37
	.4byte	.LASF646
	.byte	0x5
	.uleb128 0x38
	.4byte	.LASF647
	.byte	0x5
	.uleb128 0x39
	.4byte	.LASF648
	.byte	0x5
	.uleb128 0x3a
	.4byte	.LASF649
	.byte	0x5
	.uleb128 0x3c
	.4byte	.LASF650
	.byte	0x5
	.uleb128 0x3d
	.4byte	.LASF651
	.byte	0x5
	.uleb128 0x3e
	.4byte	.LASF652
	.byte	0x5
	.uleb128 0x3f
	.4byte	.LASF653
	.byte	0x5
	.uleb128 0x40
	.4byte	.LASF654
	.byte	0x5
	.uleb128 0x41
	.4byte	.LASF655
	.byte	0x5
	.uleb128 0x42
	.4byte	.LASF656
	.byte	0x5
	.uleb128 0x43
	.4byte	.LASF657
	.byte	0x5
	.uleb128 0x44
	.4byte	.LASF658
	.byte	0x5
	.uleb128 0x45
	.4byte	.LASF659
	.byte	0x5
	.uleb128 0x46
	.4byte	.LASF660
	.byte	0x5
	.uleb128 0x47
	.4byte	.LASF661
	.byte	0x5
	.uleb128 0x48
	.4byte	.LASF662
	.byte	0x5
	.uleb128 0x49
	.4byte	.LASF663
	.byte	0x5
	.uleb128 0x4a
	.4byte	.LASF664
	.byte	0x5
	.uleb128 0x4c
	.4byte	.LASF665
	.byte	0x5
	.uleb128 0x4e
	.4byte	.LASF666
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.newlib.h.7.74420a2563819a23b01928a4134a16df,comdat
.Ldebug_macro9:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x7
	.4byte	.LASF670
	.byte	0x5
	.uleb128 0x1b
	.4byte	.LASF671
	.byte	0x5
	.uleb128 0x27
	.4byte	.LASF672
	.byte	0x5
	.uleb128 0x2b
	.4byte	.LASF673
	.byte	0x5
	.uleb128 0x2e
	.4byte	.LASF674
	.byte	0x5
	.uleb128 0x163
	.4byte	.LASF675
	.byte	0x5
	.uleb128 0x166
	.4byte	.LASF676
	.byte	0x5
	.uleb128 0x16c
	.4byte	.LASF677
	.byte	0x5
	.uleb128 0x16f
	.4byte	.LASF678
	.byte	0x5
	.uleb128 0x172
	.4byte	.LASF679
	.byte	0x5
	.uleb128 0x175
	.4byte	.LASF680
	.byte	0x5
	.uleb128 0x178
	.4byte	.LASF681
	.byte	0x5
	.uleb128 0x191
	.4byte	.LASF682
	.byte	0x5
	.uleb128 0x19b
	.4byte	.LASF683
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.ieeefp.h.77.a4bd6f226817af8b3c6a684285826373,comdat
.Ldebug_macro10:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x4d
	.4byte	.LASF685
	.byte	0x5
	.uleb128 0x5b
	.4byte	.LASF686
	.byte	0x5
	.uleb128 0x62
	.4byte	.LASF687
	.byte	0x5
	.uleb128 0x63
	.4byte	.LASF688
	.byte	0x5
	.uleb128 0x1fe
	.4byte	.LASF689
	.byte	0x5
	.uleb128 0x201
	.4byte	.LASF690
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.config.h.224.88344135d9de3e7ea139102cd6493448,comdat
.Ldebug_macro11:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0xe0
	.4byte	.LASF691
	.byte	0x6
	.uleb128 0xe6
	.4byte	.LASF692
	.byte	0x5
	.uleb128 0xea
	.4byte	.LASF693
	.byte	0x5
	.uleb128 0xf8
	.4byte	.LASF694
	.byte	0x5
	.uleb128 0xfc
	.4byte	.LASF695
	.byte	0x5
	.uleb128 0x103
	.4byte	.LASF696
	.byte	0x5
	.uleb128 0x109
	.4byte	.LASF697
	.byte	0x5
	.uleb128 0x116
	.4byte	.LASF698
	.byte	0x5
	.uleb128 0x122
	.4byte	.LASF699
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4._ansi.h.31.de524f58584151836e90d8620a16f8e8,comdat
.Ldebug_macro12:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x1f
	.4byte	.LASF700
	.byte	0x5
	.uleb128 0x20
	.4byte	.LASF701
	.byte	0x5
	.uleb128 0x21
	.4byte	.LASF702
	.byte	0x5
	.uleb128 0x25
	.4byte	.LASF703
	.byte	0x5
	.uleb128 0x2b
	.4byte	.LASF704
	.byte	0x5
	.uleb128 0x45
	.4byte	.LASF705
	.byte	0x5
	.uleb128 0x49
	.4byte	.LASF706
	.byte	0x5
	.uleb128 0x4a
	.4byte	.LASF707
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.stddef.h.39.144cf5ddcd53cbfdac30259dc1a6c87f,comdat
.Ldebug_macro13:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x27
	.4byte	.LASF708
	.byte	0x5
	.uleb128 0x28
	.4byte	.LASF709
	.byte	0x5
	.uleb128 0x2a
	.4byte	.LASF710
	.byte	0x5
	.uleb128 0x83
	.4byte	.LASF711
	.byte	0x5
	.uleb128 0x84
	.4byte	.LASF712
	.byte	0x5
	.uleb128 0x85
	.4byte	.LASF713
	.byte	0x5
	.uleb128 0x86
	.4byte	.LASF714
	.byte	0x5
	.uleb128 0x87
	.4byte	.LASF715
	.byte	0x5
	.uleb128 0x88
	.4byte	.LASF716
	.byte	0x5
	.uleb128 0x89
	.4byte	.LASF717
	.byte	0x5
	.uleb128 0x8a
	.4byte	.LASF718
	.byte	0x5
	.uleb128 0x8b
	.4byte	.LASF719
	.byte	0x6
	.uleb128 0x9b
	.4byte	.LASF720
	.byte	0x5
	.uleb128 0xb5
	.4byte	.LASF721
	.byte	0x5
	.uleb128 0xb6
	.4byte	.LASF722
	.byte	0x5
	.uleb128 0xb7
	.4byte	.LASF723
	.byte	0x5
	.uleb128 0xb8
	.4byte	.LASF724
	.byte	0x5
	.uleb128 0xb9
	.4byte	.LASF725
	.byte	0x5
	.uleb128 0xba
	.4byte	.LASF726
	.byte	0x5
	.uleb128 0xbb
	.4byte	.LASF727
	.byte	0x5
	.uleb128 0xbc
	.4byte	.LASF728
	.byte	0x5
	.uleb128 0xbd
	.4byte	.LASF729
	.byte	0x5
	.uleb128 0xbe
	.4byte	.LASF730
	.byte	0x5
	.uleb128 0xbf
	.4byte	.LASF731
	.byte	0x5
	.uleb128 0xc0
	.4byte	.LASF732
	.byte	0x5
	.uleb128 0xc1
	.4byte	.LASF733
	.byte	0x5
	.uleb128 0xc2
	.4byte	.LASF734
	.byte	0x5
	.uleb128 0xc3
	.4byte	.LASF735
	.byte	0x5
	.uleb128 0xc4
	.4byte	.LASF736
	.byte	0x5
	.uleb128 0xcb
	.4byte	.LASF737
	.byte	0x6
	.uleb128 0xe7
	.4byte	.LASF738
	.byte	0x5
	.uleb128 0x104
	.4byte	.LASF739
	.byte	0x5
	.uleb128 0x105
	.4byte	.LASF740
	.byte	0x5
	.uleb128 0x106
	.4byte	.LASF741
	.byte	0x5
	.uleb128 0x107
	.4byte	.LASF742
	.byte	0x5
	.uleb128 0x108
	.4byte	.LASF743
	.byte	0x5
	.uleb128 0x109
	.4byte	.LASF744
	.byte	0x5
	.uleb128 0x10a
	.4byte	.LASF745
	.byte	0x5
	.uleb128 0x10b
	.4byte	.LASF746
	.byte	0x5
	.uleb128 0x10c
	.4byte	.LASF747
	.byte	0x5
	.uleb128 0x10d
	.4byte	.LASF748
	.byte	0x5
	.uleb128 0x10e
	.4byte	.LASF749
	.byte	0x5
	.uleb128 0x10f
	.4byte	.LASF750
	.byte	0x5
	.uleb128 0x110
	.4byte	.LASF751
	.byte	0x5
	.uleb128 0x111
	.4byte	.LASF752
	.byte	0x5
	.uleb128 0x112
	.4byte	.LASF753
	.byte	0x6
	.uleb128 0x11f
	.4byte	.LASF754
	.byte	0x6
	.uleb128 0x154
	.4byte	.LASF755
	.byte	0x6
	.uleb128 0x186
	.4byte	.LASF756
	.byte	0x5
	.uleb128 0x18b
	.4byte	.LASF757
	.byte	0x6
	.uleb128 0x191
	.4byte	.LASF758
	.byte	0x5
	.uleb128 0x196
	.4byte	.LASF759
	.byte	0x5
	.uleb128 0x19b
	.4byte	.LASF760
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4._types.h.20.dd0d04dca3800a0d2a6129b87f3adbb2,comdat
.Ldebug_macro14:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x14
	.4byte	.LASF761
	.byte	0x5
	.uleb128 0x16
	.4byte	.LASF762
	.byte	0x5
	.uleb128 0x17
	.4byte	.LASF763
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.stddef.h.155.3588ebfdd1e8c7ede80509bb9c3b8009,comdat
.Ldebug_macro15:
	.2byte	0x5
	.byte	0
	.byte	0x6
	.uleb128 0x9b
	.4byte	.LASF720
	.byte	0x6
	.uleb128 0xe7
	.4byte	.LASF738
	.byte	0x6
	.uleb128 0x154
	.4byte	.LASF755
	.byte	0x5
	.uleb128 0x159
	.4byte	.LASF764
	.byte	0x6
	.uleb128 0x160
	.4byte	.LASF765
	.byte	0x6
	.uleb128 0x186
	.4byte	.LASF756
	.byte	0x5
	.uleb128 0x18b
	.4byte	.LASF757
	.byte	0x6
	.uleb128 0x191
	.4byte	.LASF758
	.byte	0x5
	.uleb128 0x196
	.4byte	.LASF759
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4._types.h.127.3bdfe3ff8ea2d0985b03d9cbe93480e3,comdat
.Ldebug_macro16:
	.2byte	0x5
	.byte	0
	.byte	0x6
	.uleb128 0x7f
	.4byte	.LASF767
	.byte	0x5
	.uleb128 0x92
	.4byte	.LASF768
	.byte	0x6
	.uleb128 0x94
	.4byte	.LASF498
	.byte	0x5
	.uleb128 0xb3
	.4byte	.LASF769
	.byte	0x5
	.uleb128 0xbb
	.4byte	.LASF770
	.byte	0x5
	.uleb128 0xc0
	.4byte	.LASF771
	.byte	0x5
	.uleb128 0xc9
	.4byte	.LASF772
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.reent.h.17.e292bf8b0bec6c96e131a54347145a30,comdat
.Ldebug_macro17:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x11
	.4byte	.LASF773
	.byte	0x5
	.uleb128 0x15
	.4byte	.LASF774
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.lock.h.2.1461d1fff82dffe8bfddc23307f6484f,comdat
.Ldebug_macro18:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF775
	.byte	0x5
	.uleb128 0x23
	.4byte	.LASF776
	.byte	0x5
	.uleb128 0x25
	.4byte	.LASF777
	.byte	0x5
	.uleb128 0x27
	.4byte	.LASF778
	.byte	0x5
	.uleb128 0x2a
	.4byte	.LASF779
	.byte	0x5
	.uleb128 0x2c
	.4byte	.LASF780
	.byte	0x5
	.uleb128 0x2e
	.4byte	.LASF781
	.byte	0x5
	.uleb128 0x30
	.4byte	.LASF782
	.byte	0x5
	.uleb128 0x32
	.4byte	.LASF783
	.byte	0x5
	.uleb128 0x34
	.4byte	.LASF784
	.byte	0x5
	.uleb128 0x36
	.4byte	.LASF785
	.byte	0x5
	.uleb128 0x38
	.4byte	.LASF786
	.byte	0x5
	.uleb128 0x3b
	.4byte	.LASF787
	.byte	0x5
	.uleb128 0x3d
	.4byte	.LASF788
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.reent.h.77.9a0b3041eec9dd3dacc4a8e5d82a3da6,comdat
.Ldebug_macro19:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x4d
	.4byte	.LASF789
	.byte	0x5
	.uleb128 0x60
	.4byte	.LASF790
	.byte	0x5
	.uleb128 0x91
	.4byte	.LASF791
	.byte	0x5
	.uleb128 0x11a
	.4byte	.LASF792
	.byte	0x5
	.uleb128 0x11b
	.4byte	.LASF793
	.byte	0x5
	.uleb128 0x11c
	.4byte	.LASF794
	.byte	0x5
	.uleb128 0x11d
	.4byte	.LASF795
	.byte	0x5
	.uleb128 0x11e
	.4byte	.LASF796
	.byte	0x5
	.uleb128 0x11f
	.4byte	.LASF797
	.byte	0x5
	.uleb128 0x120
	.4byte	.LASF798
	.byte	0x5
	.uleb128 0x12c
	.4byte	.LASF799
	.byte	0x5
	.uleb128 0x12d
	.4byte	.LASF800
	.byte	0x5
	.uleb128 0x12e
	.4byte	.LASF801
	.byte	0x5
	.uleb128 0x139
	.4byte	.LASF802
	.byte	0x5
	.uleb128 0x13a
	.4byte	.LASF803
	.byte	0x5
	.uleb128 0x13b
	.4byte	.LASF804
	.byte	0x5
	.uleb128 0x13c
	.4byte	.LASF805
	.byte	0x5
	.uleb128 0x13d
	.4byte	.LASF806
	.byte	0x5
	.uleb128 0x198
	.4byte	.LASF807
	.byte	0x5
	.uleb128 0x1b2
	.4byte	.LASF808
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.assert.h.11.db24e541f16414db224bf986d21017e2,comdat
.Ldebug_macro20:
	.2byte	0x5
	.byte	0
	.byte	0x6
	.uleb128 0xb
	.4byte	.LASF809
	.byte	0x5
	.uleb128 0x10
	.4byte	.LASF810
	.byte	0x5
	.uleb128 0x1a
	.4byte	.LASF811
	.byte	0x5
	.uleb128 0x2d
	.4byte	.LASF812
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.reent.h.443.c4b3bd75b9403f255c25bbe52191b680,comdat
.Ldebug_macro21:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x1bb
	.4byte	.LASF813
	.byte	0x5
	.uleb128 0x1c5
	.4byte	.LASF814
	.byte	0x5
	.uleb128 0x1ce
	.4byte	.LASF815
	.byte	0x5
	.uleb128 0x1d2
	.4byte	.LASF816
	.byte	0x5
	.uleb128 0x1d7
	.4byte	.LASF817
	.byte	0x5
	.uleb128 0x1e2
	.4byte	.LASF818
	.byte	0x5
	.uleb128 0x1e5
	.4byte	.LASF819
	.byte	0x5
	.uleb128 0x1eb
	.4byte	.LASF820
	.byte	0x5
	.uleb128 0x1ee
	.4byte	.LASF821
	.byte	0x5
	.uleb128 0x1f1
	.4byte	.LASF822
	.byte	0x5
	.uleb128 0x207
	.4byte	.LASF823
	.byte	0x5
	.uleb128 0x20a
	.4byte	.LASF824
	.byte	0x5
	.uleb128 0x20d
	.4byte	.LASF825
	.byte	0x5
	.uleb128 0x20e
	.4byte	.LASF826
	.byte	0x5
	.uleb128 0x20f
	.4byte	.LASF827
	.byte	0x5
	.uleb128 0x210
	.4byte	.LASF828
	.byte	0x5
	.uleb128 0x211
	.4byte	.LASF829
	.byte	0x5
	.uleb128 0x212
	.4byte	.LASF830
	.byte	0x5
	.uleb128 0x213
	.4byte	.LASF831
	.byte	0x5
	.uleb128 0x214
	.4byte	.LASF832
	.byte	0x5
	.uleb128 0x215
	.4byte	.LASF833
	.byte	0x5
	.uleb128 0x216
	.4byte	.LASF834
	.byte	0x5
	.uleb128 0x217
	.4byte	.LASF835
	.byte	0x5
	.uleb128 0x218
	.4byte	.LASF836
	.byte	0x5
	.uleb128 0x219
	.4byte	.LASF837
	.byte	0x5
	.uleb128 0x21a
	.4byte	.LASF838
	.byte	0x5
	.uleb128 0x21b
	.4byte	.LASF839
	.byte	0x5
	.uleb128 0x21c
	.4byte	.LASF840
	.byte	0x5
	.uleb128 0x21d
	.4byte	.LASF841
	.byte	0x5
	.uleb128 0x21e
	.4byte	.LASF842
	.byte	0x5
	.uleb128 0x21f
	.4byte	.LASF843
	.byte	0x5
	.uleb128 0x220
	.4byte	.LASF844
	.byte	0x5
	.uleb128 0x221
	.4byte	.LASF845
	.byte	0x5
	.uleb128 0x222
	.4byte	.LASF846
	.byte	0x5
	.uleb128 0x223
	.4byte	.LASF847
	.byte	0x5
	.uleb128 0x2d3
	.4byte	.LASF848
	.byte	0x5
	.uleb128 0x2d4
	.4byte	.LASF849
	.byte	0x5
	.uleb128 0x2d5
	.4byte	.LASF850
	.byte	0x5
	.uleb128 0x2d6
	.4byte	.LASF851
	.byte	0x5
	.uleb128 0x2d7
	.4byte	.LASF852
	.byte	0x5
	.uleb128 0x2d8
	.4byte	.LASF853
	.byte	0x5
	.uleb128 0x2d9
	.4byte	.LASF854
	.byte	0x5
	.uleb128 0x2da
	.4byte	.LASF855
	.byte	0x5
	.uleb128 0x2db
	.4byte	.LASF856
	.byte	0x5
	.uleb128 0x2dc
	.4byte	.LASF857
	.byte	0x5
	.uleb128 0x2dd
	.4byte	.LASF858
	.byte	0x5
	.uleb128 0x2df
	.4byte	.LASF859
	.byte	0x5
	.uleb128 0x2ea
	.4byte	.LASF860
	.byte	0x5
	.uleb128 0x2f0
	.4byte	.LASF861
	.byte	0x5
	.uleb128 0x2fd
	.4byte	.LASF862
	.byte	0x5
	.uleb128 0x300
	.4byte	.LASF863
	.byte	0x5
	.uleb128 0x302
	.4byte	.LASF864
	.byte	0x5
	.uleb128 0x361
	.4byte	.LASF865
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.cdefs.h.49.f93868eb904b9ca05b5c0257d31128ca,comdat
.Ldebug_macro22:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x31
	.4byte	.LASF867
	.byte	0x5
	.uleb128 0x32
	.4byte	.LASF868
	.byte	0x5
	.uleb128 0x33
	.4byte	.LASF869
	.byte	0x5
	.uleb128 0x36
	.4byte	.LASF870
	.byte	0x5
	.uleb128 0x39
	.4byte	.LASF871
	.byte	0x5
	.uleb128 0x3a
	.4byte	.LASF872
	.byte	0x5
	.uleb128 0x3c
	.4byte	.LASF873
	.byte	0x5
	.uleb128 0x3d
	.4byte	.LASF874
	.byte	0x5
	.uleb128 0x3e
	.4byte	.LASF875
	.byte	0x5
	.uleb128 0x3f
	.4byte	.LASF876
	.byte	0x5
	.uleb128 0x42
	.4byte	.LASF877
	.byte	0x5
	.uleb128 0x43
	.4byte	.LASF878
	.byte	0x5
	.uleb128 0x44
	.4byte	.LASF879
	.byte	0x5
	.uleb128 0x4e
	.4byte	.LASF880
	.byte	0x5
	.uleb128 0x51
	.4byte	.LASF881
	.byte	0x5
	.uleb128 0x5e
	.4byte	.LASF882
	.byte	0x5
	.uleb128 0x5f
	.4byte	.LASF883
	.byte	0x5
	.uleb128 0x6b
	.4byte	.LASF884
	.byte	0x5
	.uleb128 0x6c
	.4byte	.LASF885
	.byte	0x5
	.uleb128 0x70
	.4byte	.LASF886
	.byte	0x5
	.uleb128 0x71
	.4byte	.LASF887
	.byte	0x5
	.uleb128 0x73
	.4byte	.LASF888
	.byte	0x5
	.uleb128 0x75
	.4byte	.LASF889
	.byte	0x5
	.uleb128 0x78
	.4byte	.LASF890
	.byte	0x5
	.uleb128 0x79
	.4byte	.LASF891
	.byte	0x5
	.uleb128 0x7a
	.4byte	.LASF892
	.byte	0x5
	.uleb128 0x7d
	.4byte	.LASF893
	.byte	0x5
	.uleb128 0x82
	.4byte	.LASF894
	.byte	0x5
	.uleb128 0x84
	.4byte	.LASF895
	.byte	0x5
	.uleb128 0x85
	.4byte	.LASF896
	.byte	0x5
	.uleb128 0x87
	.4byte	.LASF897
	.byte	0x5
	.uleb128 0x8a
	.4byte	.LASF898
	.byte	0x5
	.uleb128 0x8b
	.4byte	.LASF899
	.byte	0x5
	.uleb128 0x8c
	.4byte	.LASF900
	.byte	0x5
	.uleb128 0x8e
	.4byte	.LASF901
	.byte	0x5
	.uleb128 0x8f
	.4byte	.LASF902
	.byte	0x5
	.uleb128 0x91
	.4byte	.LASF903
	.byte	0x5
	.uleb128 0x93
	.4byte	.LASF904
	.byte	0x5
	.uleb128 0xa4
	.4byte	.LASF905
	.byte	0x5
	.uleb128 0xa5
	.4byte	.LASF906
	.byte	0x5
	.uleb128 0xa6
	.4byte	.LASF907
	.byte	0x5
	.uleb128 0xa7
	.4byte	.LASF908
	.byte	0x5
	.uleb128 0xa8
	.4byte	.LASF909
	.byte	0x5
	.uleb128 0xaa
	.4byte	.LASF910
	.byte	0x5
	.uleb128 0xab
	.4byte	.LASF911
	.byte	0x5
	.uleb128 0xac
	.4byte	.LASF912
	.byte	0x5
	.uleb128 0xd9
	.4byte	.LASF913
	.byte	0x5
	.uleb128 0xe6
	.4byte	.LASF914
	.byte	0x5
	.uleb128 0xe7
	.4byte	.LASF915
	.byte	0x5
	.uleb128 0xe8
	.4byte	.LASF916
	.byte	0x5
	.uleb128 0xe9
	.4byte	.LASF917
	.byte	0x5
	.uleb128 0xea
	.4byte	.LASF918
	.byte	0x5
	.uleb128 0xeb
	.4byte	.LASF919
	.byte	0x5
	.uleb128 0xec
	.4byte	.LASF920
	.byte	0x5
	.uleb128 0xef
	.4byte	.LASF921
	.byte	0x5
	.uleb128 0xf0
	.4byte	.LASF922
	.byte	0x5
	.uleb128 0xf6
	.4byte	.LASF923
	.byte	0x5
	.uleb128 0x14f
	.4byte	.LASF924
	.byte	0x5
	.uleb128 0x161
	.4byte	.LASF925
	.byte	0x5
	.uleb128 0x167
	.4byte	.LASF926
	.byte	0x5
	.uleb128 0x168
	.4byte	.LASF927
	.byte	0x5
	.uleb128 0x16f
	.4byte	.LASF928
	.byte	0x5
	.uleb128 0x175
	.4byte	.LASF929
	.byte	0x5
	.uleb128 0x17b
	.4byte	.LASF930
	.byte	0x5
	.uleb128 0x17c
	.4byte	.LASF931
	.byte	0x5
	.uleb128 0x183
	.4byte	.LASF932
	.byte	0x5
	.uleb128 0x184
	.4byte	.LASF933
	.byte	0x5
	.uleb128 0x18b
	.4byte	.LASF934
	.byte	0x5
	.uleb128 0x191
	.4byte	.LASF935
	.byte	0x5
	.uleb128 0x1a5
	.4byte	.LASF936
	.byte	0x5
	.uleb128 0x1c6
	.4byte	.LASF937
	.byte	0x5
	.uleb128 0x1c7
	.4byte	.LASF938
	.byte	0x5
	.uleb128 0x1ce
	.4byte	.LASF939
	.byte	0x5
	.uleb128 0x1cf
	.4byte	.LASF940
	.byte	0x5
	.uleb128 0x1d2
	.4byte	.LASF941
	.byte	0x5
	.uleb128 0x1dc
	.4byte	.LASF942
	.byte	0x5
	.uleb128 0x1dd
	.4byte	.LASF943
	.byte	0x5
	.uleb128 0x1e7
	.4byte	.LASF944
	.byte	0x5
	.uleb128 0x1fd
	.4byte	.LASF945
	.byte	0x5
	.uleb128 0x1ff
	.4byte	.LASF946
	.byte	0x5
	.uleb128 0x201
	.4byte	.LASF947
	.byte	0x5
	.uleb128 0x202
	.4byte	.LASF948
	.byte	0x5
	.uleb128 0x204
	.4byte	.LASF949
	.byte	0x5
	.uleb128 0x20e
	.4byte	.LASF950
	.byte	0x5
	.uleb128 0x212
	.4byte	.LASF951
	.byte	0x5
	.uleb128 0x216
	.4byte	.LASF952
	.byte	0x5
	.uleb128 0x219
	.4byte	.LASF953
	.byte	0x5
	.uleb128 0x21d
	.4byte	.LASF954
	.byte	0x5
	.uleb128 0x21f
	.4byte	.LASF955
	.byte	0x5
	.uleb128 0x242
	.4byte	.LASF956
	.byte	0x5
	.uleb128 0x246
	.4byte	.LASF957
	.byte	0x5
	.uleb128 0x24a
	.4byte	.LASF958
	.byte	0x5
	.uleb128 0x24e
	.4byte	.LASF959
	.byte	0x5
	.uleb128 0x252
	.4byte	.LASF960
	.byte	0x5
	.uleb128 0x256
	.4byte	.LASF961
	.byte	0x5
	.uleb128 0x25a
	.4byte	.LASF962
	.byte	0x5
	.uleb128 0x25e
	.4byte	.LASF963
	.byte	0x5
	.uleb128 0x265
	.4byte	.LASF964
	.byte	0x5
	.uleb128 0x266
	.4byte	.LASF965
	.byte	0x5
	.uleb128 0x267
	.4byte	.LASF966
	.byte	0x5
	.uleb128 0x268
	.4byte	.LASF967
	.byte	0x5
	.uleb128 0x269
	.4byte	.LASF968
	.byte	0x5
	.uleb128 0x27e
	.4byte	.LASF969
	.byte	0x5
	.uleb128 0x27f
	.4byte	.LASF970
	.byte	0x5
	.uleb128 0x291
	.4byte	.LASF971
	.byte	0x5
	.uleb128 0x297
	.4byte	.LASF972
	.byte	0x5
	.uleb128 0x29a
	.4byte	.LASF973
	.byte	0x5
	.uleb128 0x29c
	.4byte	.LASF974
	.byte	0x5
	.uleb128 0x2a0
	.4byte	.LASF975
	.byte	0x5
	.uleb128 0x2a2
	.4byte	.LASF976
	.byte	0x5
	.uleb128 0x2a6
	.4byte	.LASF977
	.byte	0x5
	.uleb128 0x2a9
	.4byte	.LASF978
	.byte	0x5
	.uleb128 0x2ab
	.4byte	.LASF979
	.byte	0x5
	.uleb128 0x2af
	.4byte	.LASF980
	.byte	0x5
	.uleb128 0x2b1
	.4byte	.LASF981
	.byte	0x5
	.uleb128 0x2b3
	.4byte	.LASF982
	.byte	0x5
	.uleb128 0x2b7
	.4byte	.LASF983
	.byte	0x5
	.uleb128 0x2c8
	.4byte	.LASF984
	.byte	0x5
	.uleb128 0x2c9
	.4byte	.LASF985
	.byte	0x5
	.uleb128 0x2ca
	.4byte	.LASF986
	.byte	0x5
	.uleb128 0x2ce
	.4byte	.LASF987
	.byte	0x5
	.uleb128 0x2cf
	.4byte	.LASF988
	.byte	0x5
	.uleb128 0x2d4
	.4byte	.LASF989
	.byte	0x5
	.uleb128 0x2d8
	.4byte	.LASF990
	.byte	0x5
	.uleb128 0x2dc
	.4byte	.LASF991
	.byte	0x5
	.uleb128 0x2e0
	.4byte	.LASF992
	.byte	0x5
	.uleb128 0x2e1
	.4byte	.LASF993
	.byte	0x5
	.uleb128 0x2e2
	.4byte	.LASF994
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.math.h.13.bfe99ddc722af958485a9476cb19e167,comdat
.Ldebug_macro23:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0xd
	.4byte	.LASF995
	.byte	0x5
	.uleb128 0x13
	.4byte	.LASF996
	.byte	0x5
	.uleb128 0x17
	.4byte	.LASF997
	.byte	0x5
	.uleb128 0x1b
	.4byte	.LASF998
	.byte	0x5
	.uleb128 0x1f
	.4byte	.LASF999
	.byte	0x5
	.uleb128 0x23
	.4byte	.LASF1000
	.byte	0x5
	.uleb128 0x91
	.4byte	.LASF1001
	.byte	0x5
	.uleb128 0x92
	.4byte	.LASF1002
	.byte	0x6
	.uleb128 0xbb
	.4byte	.LASF1003
	.byte	0x5
	.uleb128 0xbe
	.4byte	.LASF1004
	.byte	0x5
	.uleb128 0xbf
	.4byte	.LASF1005
	.byte	0x5
	.uleb128 0xc0
	.4byte	.LASF1006
	.byte	0x5
	.uleb128 0xc1
	.4byte	.LASF1007
	.byte	0x5
	.uleb128 0xc2
	.4byte	.LASF1008
	.byte	0x5
	.uleb128 0xc5
	.4byte	.LASF1009
	.byte	0x5
	.uleb128 0xc8
	.4byte	.LASF1010
	.byte	0x5
	.uleb128 0xcc
	.4byte	.LASF1011
	.byte	0x5
	.uleb128 0xcf
	.4byte	.LASF1012
	.byte	0x5
	.uleb128 0xd5
	.4byte	.LASF1013
	.byte	0x5
	.uleb128 0xd8
	.4byte	.LASF1014
	.byte	0x5
	.uleb128 0xdc
	.4byte	.LASF1015
	.byte	0x5
	.uleb128 0xf0
	.4byte	.LASF1016
	.byte	0x5
	.uleb128 0xf4
	.4byte	.LASF1017
	.byte	0x5
	.uleb128 0xf7
	.4byte	.LASF1018
	.byte	0x5
	.uleb128 0xfa
	.4byte	.LASF1019
	.byte	0x5
	.uleb128 0xfc
	.4byte	.LASF1020
	.byte	0x5
	.uleb128 0x111
	.4byte	.LASF1021
	.byte	0x5
	.uleb128 0x121
	.4byte	.LASF1022
	.byte	0x5
	.uleb128 0x122
	.4byte	.LASF1023
	.byte	0x5
	.uleb128 0x123
	.4byte	.LASF1024
	.byte	0x5
	.uleb128 0x124
	.4byte	.LASF1025
	.byte	0x5
	.uleb128 0x125
	.4byte	.LASF1026
	.byte	0x5
	.uleb128 0x126
	.4byte	.LASF1027
	.byte	0x5
	.uleb128 0x16a
	.4byte	.LASF1028
	.byte	0x5
	.uleb128 0x252
	.4byte	.LASF1029
	.byte	0x5
	.uleb128 0x256
	.4byte	.LASF1030
	.byte	0x5
	.uleb128 0x25d
	.4byte	.LASF1031
	.byte	0x5
	.uleb128 0x25f
	.4byte	.LASF1032
	.byte	0x5
	.uleb128 0x260
	.4byte	.LASF1033
	.byte	0x5
	.uleb128 0x261
	.4byte	.LASF1034
	.byte	0x5
	.uleb128 0x262
	.4byte	.LASF1035
	.byte	0x5
	.uleb128 0x263
	.4byte	.LASF1036
	.byte	0x5
	.uleb128 0x264
	.4byte	.LASF1037
	.byte	0x5
	.uleb128 0x265
	.4byte	.LASF1038
	.byte	0x5
	.uleb128 0x266
	.4byte	.LASF1039
	.byte	0x5
	.uleb128 0x267
	.4byte	.LASF1040
	.byte	0x5
	.uleb128 0x268
	.4byte	.LASF1041
	.byte	0x5
	.uleb128 0x269
	.4byte	.LASF1042
	.byte	0x5
	.uleb128 0x26a
	.4byte	.LASF1043
	.byte	0x5
	.uleb128 0x26b
	.4byte	.LASF1044
	.byte	0x5
	.uleb128 0x271
	.4byte	.LASF1045
	.byte	0x5
	.uleb128 0x272
	.4byte	.LASF1046
	.byte	0x5
	.uleb128 0x273
	.4byte	.LASF1047
	.byte	0x5
	.uleb128 0x274
	.4byte	.LASF1048
	.byte	0x5
	.uleb128 0x275
	.4byte	.LASF1049
	.byte	0x5
	.uleb128 0x276
	.4byte	.LASF1050
	.byte	0x5
	.uleb128 0x277
	.4byte	.LASF1051
	.byte	0x5
	.uleb128 0x278
	.4byte	.LASF1052
	.byte	0x5
	.uleb128 0x279
	.4byte	.LASF1053
	.byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF887:
	.ascii	"__GNUCLIKE___SECTION 1\000"
.LASF459:
	.ascii	"_NEWLIB_VERSION \"4.2.0\"\000"
.LASF601:
	.ascii	"WINT_MIN (__WINT_MIN__)\000"
.LASF186:
	.ascii	"__DECIMAL_DIG__ 17\000"
.LASF1120:
	.ascii	"ExtractCILCParameters\000"
.LASF354:
	.ascii	"__UHA_FBIT__ 8\000"
.LASF480:
	.ascii	"__SVID_VISIBLE 1\000"
.LASF1106:
	.ascii	"GetMedian\000"
.LASF1068:
	.ascii	"int8_t\000"
.LASF91:
	.ascii	"__INTMAX_C(c) c ## LL\000"
.LASF225:
	.ascii	"__FLT64_DENORM_MIN__ 4.9406564584124654e-324F64\000"
.LASF898:
	.ascii	"__CC_SUPPORTS_INLINE 1\000"
.LASF374:
	.ascii	"__GCC_ATOMIC_WCHAR_T_LOCK_FREE 2\000"
.LASF366:
	.ascii	"__CHAR_UNSIGNED__ 1\000"
.LASF1172:
	.ascii	"MLX90640_BadPixelsCorrection\000"
.LASF913:
	.ascii	"__weak_symbol __attribute__((__weak__))\000"
.LASF1010:
	.ascii	"FP_ILOGBNAN __INT_MAX__\000"
.LASF227:
	.ascii	"__FLT64_HAS_INFINITY__ 1\000"
.LASF980:
	.ascii	"__requires_exclusive(...) __lock_annotate(exclusive"
	.ascii	"_locks_required(__VA_ARGS__))\000"
.LASF829:
	.ascii	"_REENT_RAND48_ADD(ptr) ((ptr)->_r48->_add)\000"
.LASF318:
	.ascii	"__LLACCUM_MIN__ (-0X1P31LLK-0X1P31LLK)\000"
.LASF338:
	.ascii	"__UHQ_FBIT__ 16\000"
.LASF310:
	.ascii	"__LACCUM_EPSILON__ 0x1P-31LK\000"
.LASF79:
	.ascii	"__PTRDIFF_MAX__ 0x7fffffff\000"
.LASF1123:
	.ascii	"offsetSP\000"
.LASF1022:
	.ascii	"isgreater(__x,__y) (__builtin_isgreater (__x, __y))"
	.ascii	"\000"
.LASF557:
	.ascii	"INT_LEAST8_MIN (-__INT_LEAST8_MAX__ - 1)\000"
.LASF534:
	.ascii	"_UINT32_T_DECLARED \000"
.LASF90:
	.ascii	"__INTMAX_MAX__ 0x7fffffffffffffffLL\000"
.LASF819:
	.ascii	"_REENT_INIT_MP(var) do { struct _reent *_r = (var);"
	.ascii	" _r->_mp->_result_k = 0; _r->_mp->_result = _r->_mp"
	.ascii	"->_p5s = _NULL; _r->_mp->_freelist = _NULL; } while"
	.ascii	" (0)\000"
.LASF335:
	.ascii	"__TQ_IBIT__ 0\000"
.LASF220:
	.ascii	"__FLT64_DECIMAL_DIG__ 17\000"
.LASF801:
	.ascii	"_REENT_SIGNAL_SIZE 24\000"
.LASF1045:
	.ascii	"M_TWOPI (M_PI * 2.0)\000"
.LASF865:
	.ascii	"_Kmax (sizeof (size_t) << 3)\000"
.LASF14:
	.ascii	"__ATOMIC_CONSUME 1\000"
.LASF523:
	.ascii	"__LEAST16 \"h\"\000"
.LASF75:
	.ascii	"__WCHAR_MAX__ 0xffffffffU\000"
.LASF298:
	.ascii	"__ACCUM_MIN__ (-0X1P15K-0X1P15K)\000"
.LASF642:
	.ascii	"MLX90640_CTRL_REG 0x800D\000"
.LASF886:
	.ascii	"__GNUCLIKE___TYPEOF 1\000"
.LASF502:
	.ascii	"__int20__\000"
.LASF652:
	.ascii	"MLX90640_LS_BYTE_MASK 0x00FF\000"
.LASF1072:
	.ascii	"int32_t\000"
.LASF18:
	.ascii	"__SIZEOF_LONG_LONG__ 8\000"
.LASF169:
	.ascii	"__DBL_MAX_10_EXP__ 308\000"
.LASF958:
	.ascii	"__RCSID_SOURCE(s) struct __hack\000"
.LASF258:
	.ascii	"__FRACT_MIN__ (-0.5R-0.5R)\000"
.LASF324:
	.ascii	"__ULLACCUM_MAX__ 0XFFFFFFFFFFFFFFFFP-32ULLK\000"
.LASF294:
	.ascii	"__USACCUM_MAX__ 0XFFFFP-8UHK\000"
.LASF246:
	.ascii	"__SFRACT_FBIT__ 7\000"
.LASF1154:
	.ascii	"ExtractKsTaParameters\000"
.LASF842:
	.ascii	"_REENT_MBSRTOWCS_STATE(ptr) ((ptr)->_misc->_mbsrtow"
	.ascii	"cs_state)\000"
.LASF445:
	.ascii	"__ARM_FEATURE_BF16_SCALAR_ARITHMETIC\000"
.LASF331:
	.ascii	"__SQ_IBIT__ 0\000"
.LASF1100:
	.ascii	"sqrt\000"
.LASF34:
	.ascii	"__SIZE_TYPE__ unsigned int\000"
.LASF612:
	.ascii	"_GCC_WRAP_STDINT_H \000"
.LASF159:
	.ascii	"__FLT_HAS_DENORM__ 1\000"
.LASF1070:
	.ascii	"int16_t\000"
.LASF206:
	.ascii	"__FLT32_MIN__ 1.1754943508222875e-38F32\000"
.LASF1026:
	.ascii	"islessgreater(__x,__y) (__builtin_islessgreater (__"
	.ascii	"x, __y))\000"
.LASF293:
	.ascii	"__USACCUM_MIN__ 0.0UHK\000"
.LASF996:
	.ascii	"HUGE_VAL (__builtin_huge_val())\000"
.LASF203:
	.ascii	"__FLT32_DECIMAL_DIG__ 9\000"
.LASF182:
	.ascii	"__LDBL_MIN_EXP__ (-1021)\000"
.LASF1151:
	.ascii	"ExtractKsToParameters\000"
.LASF180:
	.ascii	"__LDBL_MANT_DIG__ 53\000"
.LASF119:
	.ascii	"__UINT8_C(c) c\000"
.LASF44:
	.ascii	"__INT16_TYPE__ short int\000"
.LASF919:
	.ascii	"__aligned(x) __attribute__((__aligned__(x)))\000"
.LASF221:
	.ascii	"__FLT64_MAX__ 1.7976931348623157e+308F64\000"
.LASF1092:
	.ascii	"cpOffset\000"
.LASF1189:
	.ascii	"alphaCorrR\000"
.LASF634:
	.ascii	"MLX90640_AUX_DATA_START_ADDRESS 0x0700\000"
.LASF1047:
	.ascii	"M_SQRTPI 1.77245385090551602792981\000"
.LASF1143:
	.ascii	"ExtractAlphaParameters\000"
.LASF514:
	.ascii	"__INT8 \"hh\"\000"
.LASF367:
	.ascii	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 1\000"
.LASF564:
	.ascii	"INT_LEAST16_MAX (__INT_LEAST16_MAX__)\000"
.LASF991:
	.ascii	"__builtin_align_down(x,align) ((__typeof__(x))((x)&"
	.ascii	"(~((align)-1))))\000"
.LASF4:
	.ascii	"__STDC_HOSTED__ 1\000"
.LASF281:
	.ascii	"__ULLFRACT_FBIT__ 64\000"
.LASF1210:
	.ascii	"dataReady\000"
.LASF42:
	.ascii	"__SIG_ATOMIC_TYPE__ int\000"
.LASF1038:
	.ascii	"M_PI_2 1.57079632679489661923\000"
.LASF62:
	.ascii	"__INT_FAST64_TYPE__ long long int\000"
.LASF37:
	.ascii	"__WINT_TYPE__ unsigned int\000"
.LASF860:
	.ascii	"__ATTRIBUTE_IMPURE_PTR__ \000"
.LASF555:
	.ascii	"INT8_MAX (__INT8_MAX__)\000"
.LASF1040:
	.ascii	"M_1_PI 0.31830988618379067154\000"
.LASF504:
	.ascii	"signed +0\000"
.LASF596:
	.ascii	"PTRDIFF_MAX (__PTRDIFF_MAX__)\000"
.LASF623:
	.ascii	"MLX90640_MEAS_TRIGGER_ERROR 9\000"
.LASF202:
	.ascii	"__FLT32_MAX_10_EXP__ 38\000"
.LASF940:
	.ascii	"__exported __attribute__((__visibility__(\"default\""
	.ascii	")))\000"
.LASF336:
	.ascii	"__UQQ_FBIT__ 8\000"
.LASF815:
	.ascii	"_REENT_CHECK_TM(var) _REENT_CHECK(var, _localtime_b"
	.ascii	"uf, struct __tm *, sizeof *((var)->_localtime_buf),"
	.ascii	" )\000"
.LASF1208:
	.ascii	"ValidateFrameData\000"
.LASF254:
	.ascii	"__USFRACT_MAX__ 0XFFP-8UHR\000"
.LASF891:
	.ascii	"__GNUCLIKE_BUILTIN_STDARG 1\000"
.LASF212:
	.ascii	"__FP_FAST_FMAF32 1\000"
.LASF995:
	.ascii	"_M_LN2 0.693147180559945309417\000"
.LASF140:
	.ascii	"__UINTPTR_MAX__ 0xffffffffU\000"
.LASF626:
	.ascii	"MLX90640_EEPROM_START_ADDRESS 0x2400\000"
.LASF755:
	.ascii	"__need_wchar_t\000"
.LASF199:
	.ascii	"__FLT32_MIN_EXP__ (-125)\000"
.LASF933:
	.ascii	"__result_use_check __attribute__((__warn_unused_res"
	.ascii	"ult__))\000"
.LASF993:
	.ascii	"__align_down(x,y) __builtin_align_down(x, y)\000"
.LASF1044:
	.ascii	"M_SQRT1_2 0.70710678118654752440\000"
.LASF1148:
	.ascii	"accColumnScale\000"
.LASF716:
	.ascii	"_BSD_PTRDIFF_T_ \000"
.LASF561:
	.ascii	"INT16_MAX (__INT16_MAX__)\000"
.LASF1159:
	.ascii	"ExtractVDDParameters\000"
.LASF271:
	.ascii	"__ULFRACT_FBIT__ 32\000"
.LASF217:
	.ascii	"__FLT64_MIN_10_EXP__ (-307)\000"
.LASF32:
	.ascii	"__GNUC_EXECUTION_CHARSET_NAME \"UTF-8\"\000"
.LASF877:
	.ascii	"__bounded \000"
.LASF1085:
	.ascii	"ksTo\000"
.LASF956:
	.ascii	"__FBSDID(s) struct __hack\000"
.LASF1024:
	.ascii	"isless(__x,__y) (__builtin_isless (__x, __y))\000"
.LASF708:
	.ascii	"_STDDEF_H \000"
.LASF604:
	.ascii	"INT16_C(x) __INT16_C(x)\000"
.LASF250:
	.ascii	"__SFRACT_EPSILON__ 0x1P-7HR\000"
.LASF906:
	.ascii	"__CONCAT1(x,y) x ## y\000"
.LASF726:
	.ascii	"_T_SIZE \000"
.LASF113:
	.ascii	"__INT32_C(c) c ## L\000"
.LASF340:
	.ascii	"__USQ_FBIT__ 32\000"
.LASF27:
	.ascii	"__ORDER_BIG_ENDIAN__ 4321\000"
.LASF356:
	.ascii	"__USA_FBIT__ 16\000"
.LASF432:
	.ascii	"__THUMB_INTERWORK__ 1\000"
.LASF330:
	.ascii	"__SQ_FBIT__ 31\000"
.LASF554:
	.ascii	"INT8_MIN (-__INT8_MAX__ - 1)\000"
.LASF1003:
	.ascii	"FLT_EVAL_METHOD\000"
.LASF531:
	.ascii	"_UINT16_T_DECLARED \000"
.LASF905:
	.ascii	"__P(protos) protos\000"
.LASF526:
	.ascii	"_SYS__STDINT_H \000"
.LASF576:
	.ascii	"INT_LEAST64_MAX (__INT_LEAST64_MAX__)\000"
.LASF216:
	.ascii	"__FLT64_MIN_EXP__ (-1021)\000"
.LASF1158:
	.ascii	"ExtractPTATParameters\000"
.LASF952:
	.ascii	"__weak_reference(sym,alias) __asm__(\".weak \" #ali"
	.ascii	"as); __asm__(\".equ \" #alias \", \" #sym)\000"
.LASF453:
	.ascii	"STM32F411xE 1\000"
.LASF1181:
	.ascii	"pattern\000"
.LASF134:
	.ascii	"__UINT_FAST8_MAX__ 0xffffffffU\000"
.LASF599:
	.ascii	"WCHAR_MAX (__WCHAR_MAX__)\000"
.LASF756:
	.ascii	"NULL\000"
.LASF307:
	.ascii	"__LACCUM_IBIT__ 32\000"
.LASF558:
	.ascii	"INT_LEAST8_MAX (__INT_LEAST8_MAX__)\000"
.LASF1055:
	.ascii	"__uint8_t\000"
.LASF81:
	.ascii	"__SCHAR_WIDTH__ 8\000"
.LASF670:
	.ascii	"__NEWLIB_H__ 1\000"
.LASF129:
	.ascii	"__INT_FAST16_WIDTH__ 32\000"
.LASF1049:
	.ascii	"M_LN2HI 6.9314718036912381649E-1\000"
.LASF419:
	.ascii	"__VFP_FP__ 1\000"
.LASF524:
	.ascii	"__LEAST32 \"l\"\000"
.LASF517:
	.ascii	"__INT64 \"ll\"\000"
.LASF138:
	.ascii	"__INTPTR_MAX__ 0x7fffffff\000"
.LASF692:
	.ascii	"__RAND_MAX\000"
.LASF1174:
	.ascii	"result\000"
.LASF135:
	.ascii	"__UINT_FAST16_MAX__ 0xffffffffU\000"
.LASF575:
	.ascii	"INT_LEAST64_MIN (-__INT_LEAST64_MAX__ - 1)\000"
.LASF707:
	.ascii	"_NOINLINE_STATIC _NOINLINE static\000"
.LASF1041:
	.ascii	"M_2_PI 0.63661977236758134308\000"
.LASF1034:
	.ascii	"M_LOG10E 0.43429448190325182765\000"
.LASF874:
	.ascii	"__attribute_pure__ \000"
.LASF814:
	.ascii	"_REENT_CHECK(var,what,type,size,init) do { struct _"
	.ascii	"reent *_r = (var); if (_r->what == NULL) { _r->what"
	.ascii	" = (type)malloc(size); __reent_assert(_r->what); in"
	.ascii	"it; } } while (0)\000"
.LASF964:
	.ascii	"_Nonnull \000"
.LASF463:
	.ascii	"__GNUC_PREREQ(maj,min) ((__GNUC__ << 16) + __GNUC_M"
	.ascii	"INOR__ >= ((maj) << 16) + (min))\000"
.LASF263:
	.ascii	"__UFRACT_MIN__ 0.0UR\000"
.LASF1175:
	.ascii	"gain\000"
.LASF650:
	.ascii	"MLX90640_MS_BYTE_SHIFT 8\000"
.LASF541:
	.ascii	"_INTPTR_T_DECLARED \000"
.LASF96:
	.ascii	"__SIG_ATOMIC_MIN__ (-__SIG_ATOMIC_MAX__ - 1)\000"
.LASF1112:
	.ascii	"pixPosDif\000"
.LASF584:
	.ascii	"INT_FAST32_MIN (-__INT_FAST32_MAX__ - 1)\000"
.LASF724:
	.ascii	"_SYS_SIZE_T_H \000"
.LASF659:
	.ascii	"MLX90640_NIBBLE3_MASK 0x0F00\000"
.LASF679:
	.ascii	"_NANO_MALLOC 1\000"
.LASF451:
	.ascii	"DEBUG 1\000"
.LASF846:
	.ascii	"_REENT_GETDATE_ERR_P(ptr) (&((ptr)->_misc->_getdate"
	.ascii	"_err))\000"
.LASF973:
	.ascii	"__locks_exclusive(...) __lock_annotate(exclusive_lo"
	.ascii	"ck_function(__VA_ARGS__))\000"
.LASF296:
	.ascii	"__ACCUM_FBIT__ 15\000"
.LASF1076:
	.ascii	"KtPTAT\000"
.LASF302:
	.ascii	"__UACCUM_IBIT__ 16\000"
.LASF1063:
	.ascii	"long int\000"
.LASF1102:
	.ascii	"MLX90640_I2CRead\000"
.LASF779:
	.ascii	"__lock_init(lock) __retarget_lock_init(&lock)\000"
.LASF132:
	.ascii	"__INT_FAST64_MAX__ 0x7fffffffffffffffLL\000"
.LASF236:
	.ascii	"__FLT32X_DECIMAL_DIG__ 17\000"
.LASF999:
	.ascii	"INFINITY (__builtin_inff())\000"
.LASF173:
	.ascii	"__DBL_MIN__ ((double)2.2250738585072014e-308L)\000"
.LASF244:
	.ascii	"__FLT32X_HAS_QUIET_NAN__ 1\000"
.LASF1168:
	.ascii	"ptatArt\000"
.LASF939:
	.ascii	"__null_sentinel __attribute__((__sentinel__))\000"
.LASF240:
	.ascii	"__FLT32X_EPSILON__ 2.2204460492503131e-16F32x\000"
.LASF491:
	.ascii	"___int_least16_t_defined 1\000"
.LASF649:
	.ascii	"MLX90640_CTRL_MEAS_MODE_MASK BIT_MASK(12)\000"
.LASF965:
	.ascii	"_Nullable \000"
.LASF1012:
	.ascii	"MATH_ERREXCEPT 2\000"
.LASF59:
	.ascii	"__INT_FAST8_TYPE__ int\000"
.LASF706:
	.ascii	"_NOINLINE __attribute__ ((__noinline__))\000"
.LASF358:
	.ascii	"__UDA_FBIT__ 32\000"
.LASF721:
	.ascii	"__size_t__ \000"
.LASF1080:
	.ascii	"cpKv\000"
.LASF219:
	.ascii	"__FLT64_MAX_10_EXP__ 308\000"
.LASF93:
	.ascii	"__UINTMAX_C(c) c ## ULL\000"
.LASF31:
	.ascii	"__SIZEOF_POINTER__ 4\000"
.LASF51:
	.ascii	"__INT_LEAST8_TYPE__ signed char\000"
.LASF1016:
	.ascii	"fpclassify(__x) (__builtin_fpclassify (FP_NAN, FP_I"
	.ascii	"NFINITE, FP_NORMAL, FP_SUBNORMAL, FP_ZERO, __x))\000"
.LASF690:
	.ascii	"__OBSOLETE_MATH __OBSOLETE_MATH_DEFAULT\000"
.LASF370:
	.ascii	"__GCC_ATOMIC_BOOL_LOCK_FREE 2\000"
.LASF822:
	.ascii	"_REENT_INIT_MISC(var) do { struct _reent *_r = (var"
	.ascii	"); _r->_misc->_strtok_last = _NULL; _r->_misc->_mbl"
	.ascii	"en_state.__count = 0; _r->_misc->_mblen_state.__val"
	.ascii	"ue.__wch = 0; _r->_misc->_wctomb_state.__count = 0;"
	.ascii	" _r->_misc->_wctomb_state.__value.__wch = 0; _r->_m"
	.ascii	"isc->_mbtowc_state.__count = 0; _r->_misc->_mbtowc_"
	.ascii	"state.__value.__wch = 0; _r->_misc->_mbrlen_state._"
	.ascii	"_count = 0; _r->_misc->_mbrlen_state.__value.__wch "
	.ascii	"= 0; _r->_misc->_mbrtowc_state.__count = 0; _r->_mi"
	.ascii	"sc->_mbrtowc_state.__value.__wch = 0; _r->_misc->_m"
	.ascii	"bsrtowcs_state.__count = 0; _r->_misc->_mbsrtowcs_s"
	.ascii	"tate.__value.__wch = 0; _r->_misc->_wcrtomb_state._"
	.ascii	"_count = 0; _r->_misc->_wcrtomb_state.__value.__wch"
	.ascii	" = 0; _r->_misc->_wcsrtombs_state.__count = 0; _r->"
	.ascii	"_misc->_wcsrtombs_state.__value.__wch = 0; _r->_mis"
	.ascii	"c->_l64a_buf[0] = '\\0'; _r->_misc->_getdate_err = "
	.ascii	"0; } while (0)\000"
.LASF1203:
	.ascii	"MLX90640_SetResolution\000"
.LASF614:
	.ascii	"MLX90640_NO_ERROR 0\000"
.LASF429:
	.ascii	"__ARM_NEON__\000"
.LASF553:
	.ascii	"UINTPTR_MAX (__UINTPTR_MAX__)\000"
.LASF201:
	.ascii	"__FLT32_MAX_EXP__ 128\000"
.LASF287:
	.ascii	"__SACCUM_IBIT__ 8\000"
.LASF284:
	.ascii	"__ULLFRACT_MAX__ 0XFFFFFFFFFFFFFFFFP-64ULLR\000"
.LASF1061:
	.ascii	"short unsigned int\000"
.LASF33:
	.ascii	"__GNUC_WIDE_EXECUTION_CHARSET_NAME \"UTF-32LE\"\000"
.LASF537:
	.ascii	"_UINT64_T_DECLARED \000"
.LASF733:
	.ascii	"_SIZE_T_DECLARED \000"
.LASF808:
	.ascii	"_REENT_INIT_PTR_ZEROED(var) { (var)->_stdin = &__sf"
	.ascii	"[0]; (var)->_stdout = &__sf[1]; (var)->_stderr = &_"
	.ascii	"_sf[2]; }\000"
.LASF41:
	.ascii	"__CHAR32_TYPE__ long unsigned int\000"
.LASF426:
	.ascii	"__ARM_FEATURE_FP16_VECTOR_ARITHMETIC\000"
.LASF470:
	.ascii	"_POSIX_C_SOURCE 200809L\000"
.LASF904:
	.ascii	"__CC_SUPPORTS_DYNAMIC_ARRAY_INIT 1\000"
.LASF179:
	.ascii	"__DBL_IS_IEC_60559__ 2\000"
.LASF1195:
	.ascii	"error\000"
.LASF151:
	.ascii	"__FLT_MAX_EXP__ 128\000"
.LASF17:
	.ascii	"__SIZEOF_LONG__ 4\000"
.LASF799:
	.ascii	"_REENT_EMERGENCY_SIZE 25\000"
.LASF948:
	.ascii	"__strfmonlike(fmtarg,firstvararg) __attribute__((__"
	.ascii	"format__ (__strfmon__, fmtarg, firstvararg)))\000"
.LASF1007:
	.ascii	"FP_SUBNORMAL 3\000"
.LASF697:
	.ascii	"_READ_WRITE_BUFSIZE_TYPE int\000"
.LASF1149:
	.ascii	"accRemScale\000"
.LASF21:
	.ascii	"__SIZEOF_DOUBLE__ 8\000"
.LASF114:
	.ascii	"__INT_LEAST32_WIDTH__ 32\000"
.LASF769:
	.ascii	"_CLOCK_T_ unsigned long\000"
.LASF232:
	.ascii	"__FLT32X_MIN_EXP__ (-1021)\000"
.LASF661:
	.ascii	"MLX90640_NIBBLE1(reg16) ((reg16 & MLX90640_NIBBLE1_"
	.ascii	"MASK))\000"
.LASF1035:
	.ascii	"M_LN2 _M_LN2\000"
.LASF519:
	.ascii	"__FAST16 \000"
.LASF574:
	.ascii	"UINT64_MAX (__UINT64_MAX__)\000"
.LASF1182:
	.ascii	"conversionPattern\000"
.LASF460:
	.ascii	"__NEWLIB__ 4\000"
.LASF360:
	.ascii	"__UTA_FBIT__ 64\000"
.LASF870:
	.ascii	"__ASMNAME(cname) __XSTRING (__USER_LABEL_PREFIX__) "
	.ascii	"cname\000"
.LASF1048:
	.ascii	"M_LN2LO 1.9082149292705877000E-10\000"
.LASF153:
	.ascii	"__FLT_DECIMAL_DIG__ 9\000"
.LASF992:
	.ascii	"__align_up(x,y) __builtin_align_up(x, y)\000"
.LASF528:
	.ascii	"_UINT8_T_DECLARED \000"
.LASF50:
	.ascii	"__UINT64_TYPE__ long long unsigned int\000"
.LASF1069:
	.ascii	"uint8_t\000"
.LASF591:
	.ascii	"INTMAX_MIN (-INTMAX_MAX - 1)\000"
.LASF428:
	.ascii	"__ARM_FEATURE_FMA 1\000"
.LASF871:
	.ascii	"__ptr_t void *\000"
.LASF364:
	.ascii	"__GNUC_STDC_INLINE__ 1\000"
.LASF598:
	.ascii	"WCHAR_MIN (__WCHAR_MIN__)\000"
.LASF256:
	.ascii	"__FRACT_FBIT__ 15\000"
.LASF320:
	.ascii	"__LLACCUM_EPSILON__ 0x1P-31LLK\000"
.LASF7:
	.ascii	"__GNUC_PATCHLEVEL__ 1\000"
.LASF373:
	.ascii	"__GCC_ATOMIC_CHAR32_T_LOCK_FREE 2\000"
.LASF1131:
	.ascii	"kvTemp\000"
.LASF923:
	.ascii	"__alloc_align(x) __attribute__((__alloc_align__(x))"
	.ascii	")\000"
.LASF120:
	.ascii	"__UINT_LEAST16_MAX__ 0xffff\000"
.LASF8:
	.ascii	"__VERSION__ \"11.3.1 20220712\"\000"
.LASF977:
	.ascii	"__unlocks(...) __lock_annotate(unlock_function(__VA"
	.ascii	"_ARGS__))\000"
.LASF407:
	.ascii	"__ARM_ARCH_PROFILE 77\000"
.LASF1105:
	.ascii	"IsPixelBad\000"
.LASF455:
	.ascii	"_STDINT_H \000"
.LASF747:
	.ascii	"_WCHAR_T_DEFINED_ \000"
.LASF289:
	.ascii	"__SACCUM_MAX__ 0X7FFFP-7HK\000"
.LASF788:
	.ascii	"__lock_release_recursive(lock) __retarget_lock_rele"
	.ascii	"ase_recursive(lock)\000"
.LASF1028:
	.ascii	"log2(x) (log (x) / _M_LN2)\000"
.LASF148:
	.ascii	"__FLT_DIG__ 6\000"
.LASF875:
	.ascii	"__attribute_format_strfmon__(a,b) \000"
.LASF732:
	.ascii	"_BSD_SIZE_T_DEFINED_ \000"
.LASF986:
	.ascii	"__nosanitizethread \000"
.LASF65:
	.ascii	"__UINT_FAST32_TYPE__ unsigned int\000"
.LASF1057:
	.ascii	"unsigned char\000"
.LASF3:
	.ascii	"__STDC_UTF_32__ 1\000"
.LASF1087:
	.ascii	"alphaScale\000"
.LASF241:
	.ascii	"__FLT32X_DENORM_MIN__ 4.9406564584124654e-324F32x\000"
.LASF896:
	.ascii	"__GNUCLIKE_MATH_BUILTIN_RELOPS \000"
.LASF152:
	.ascii	"__FLT_MAX_10_EXP__ 38\000"
.LASF867:
	.ascii	"__PMT(args) args\000"
.LASF259:
	.ascii	"__FRACT_MAX__ 0X7FFFP-15R\000"
.LASF141:
	.ascii	"__GCC_IEC_559 0\000"
.LASF1137:
	.ascii	"occRow\000"
.LASF1211:
	.ascii	"statusRegister\000"
.LASF791:
	.ascii	"_REENT_SMALL_CHECK_INIT(ptr) \000"
.LASF1169:
	.ascii	"MLX90640_GetVdd\000"
.LASF130:
	.ascii	"__INT_FAST32_MAX__ 0x7fffffff\000"
.LASF10:
	.ascii	"__ATOMIC_SEQ_CST 5\000"
.LASF696:
	.ascii	"_READ_WRITE_RETURN_TYPE int\000"
.LASF1180:
	.ascii	"chessPattern\000"
.LASF765:
	.ascii	"__need_wint_t\000"
.LASF955:
	.ascii	"__sym_default(sym,impl,verid) __asm__(\".symver \" "
	.ascii	"#impl \", \" #sym \"@@\" #verid)\000"
.LASF1089:
	.ascii	"ktaScale\000"
.LASF579:
	.ascii	"INT_FAST8_MAX (__INT_FAST8_MAX__)\000"
.LASF922:
	.ascii	"__alloc_size2(n,x) __attribute__((__alloc_size__(n,"
	.ascii	" x)))\000"
.LASF103:
	.ascii	"__UINT16_MAX__ 0xffff\000"
.LASF666:
	.ascii	"SCALEALPHA 0.000001\000"
.LASF334:
	.ascii	"__TQ_FBIT__ 127\000"
.LASF674:
	.ascii	"_HAVE_LONG_DOUBLE 1\000"
.LASF550:
	.ascii	"__int_fast64_t_defined 1\000"
.LASF1116:
	.ascii	"pixCnt\000"
.LASF810:
	.ascii	"assert(__e) ((__e) ? (void)0 : __assert_func (__FIL"
	.ascii	"E__, __LINE__, __ASSERT_FUNC, #__e))\000"
.LASF889:
	.ascii	"__GNUCLIKE_BUILTIN_CONSTANT_P 1\000"
.LASF414:
	.ascii	"__thumb2__ 1\000"
.LASF321:
	.ascii	"__ULLACCUM_FBIT__ 32\000"
.LASF1167:
	.ascii	"ptat\000"
.LASF1216:
	.ascii	"MLX90640_DumpEE\000"
.LASF1160:
	.ascii	"pixels\000"
.LASF937:
	.ascii	"__predict_true(exp) __builtin_expect((exp), 1)\000"
.LASF961:
	.ascii	"__DECONST(type,var) ((type)(__uintptr_t)(const void"
	.ascii	" *)(var))\000"
.LASF457:
	.ascii	"_SYS_FEATURES_H \000"
.LASF1031:
	.ascii	"MAXFLOAT 3.40282347e+38F\000"
.LASF929:
	.ascii	"__noinline __attribute__ ((__noinline__))\000"
.LASF1197:
	.ascii	"value\000"
.LASF22:
	.ascii	"__SIZEOF_LONG_DOUBLE__ 8\000"
.LASF383:
	.ascii	"__PRAGMA_REDEFINE_EXTNAME 1\000"
.LASF36:
	.ascii	"__WCHAR_TYPE__ unsigned int\000"
.LASF825:
	.ascii	"_REENT_SIGNGAM(ptr) ((ptr)->_gamma_signgam)\000"
.LASF499:
	.ascii	"char\000"
.LASF357:
	.ascii	"__USA_IBIT__ 16\000"
.LASF687:
	.ascii	"__DOUBLE_TYPE double\000"
.LASF368:
	.ascii	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 1\000"
.LASF597:
	.ascii	"PTRDIFF_MIN (-PTRDIFF_MAX - 1)\000"
.LASF941:
	.ascii	"__hidden __attribute__((__visibility__(\"hidden\"))"
	.ascii	")\000"
.LASF66:
	.ascii	"__UINT_FAST64_TYPE__ long long unsigned int\000"
.LASF764:
	.ascii	"_WINT_T \000"
.LASF156:
	.ascii	"__FLT_MIN__ 1.1754943508222875e-38F\000"
.LASF1077:
	.ascii	"vPTAT25\000"
.LASF346:
	.ascii	"__HA_FBIT__ 7\000"
.LASF1162:
	.ascii	"line\000"
.LASF436:
	.ascii	"__FDPIC__\000"
.LASF1006:
	.ascii	"FP_ZERO 2\000"
.LASF632:
	.ascii	"MLX90640_LINE_SIZE 32\000"
.LASF213:
	.ascii	"__FLT32_IS_IEC_60559__ 2\000"
.LASF595:
	.ascii	"SIG_ATOMIC_MAX (__STDINT_EXP(INT_MAX))\000"
.LASF944:
	.ascii	"__containerof(x,s,m) ({ const volatile __typeof(((s"
	.ascii	" *)0)->m) *__x = (x); __DEQUALIFY(s *, (const volat"
	.ascii	"ile char *)__x - __offsetof(s, m));})\000"
.LASF1004:
	.ascii	"FP_NAN 0\000"
.LASF586:
	.ascii	"UINT_FAST32_MAX (__UINT_FAST32_MAX__)\000"
.LASF1090:
	.ascii	"kvScale\000"
.LASF252:
	.ascii	"__USFRACT_IBIT__ 0\000"
.LASF1060:
	.ascii	"__uint16_t\000"
.LASF803:
	.ascii	"_REENT_INIT_RESERVED_1 \000"
.LASF847:
	.ascii	"_REENT_SIGNAL_BUF(ptr) ((ptr)->_signal_buf)\000"
.LASF253:
	.ascii	"__USFRACT_MIN__ 0.0UHR\000"
.LASF917:
	.ascii	"__used __attribute__((__used__))\000"
.LASF924:
	.ascii	"__generic(expr,t,yes,no) _Generic(expr, t: yes, def"
	.ascii	"ault: no)\000"
.LASF430:
	.ascii	"__ARM_NEON\000"
.LASF978:
	.ascii	"__asserts_exclusive(...) __lock_annotate(assert_exc"
	.ascii	"lusive_lock(__VA_ARGS__))\000"
.LASF102:
	.ascii	"__UINT8_MAX__ 0xff\000"
.LASF540:
	.ascii	"_UINTMAX_T_DECLARED \000"
.LASF862:
	.ascii	"_REENT _impure_ptr\000"
.LASF184:
	.ascii	"__LDBL_MAX_EXP__ 1024\000"
.LASF1098:
	.ascii	"long double\000"
.LASF807:
	.ascii	"_REENT_INIT(var) { 0, &__sf[0], &__sf[1], &__sf[2],"
	.ascii	" 0, _NULL, _REENT_INIT_RESERVED_0 _REENT_INIT_RESER"
	.ascii	"VED_1 _NULL, _NULL, _NULL, 0, 0, _NULL, _NULL, _NUL"
	.ascii	"L, _NULL, _NULL, _REENT_INIT_RESERVED_6_7 _REENT_IN"
	.ascii	"IT_RESERVED_8 _NULL, _NULL, _NULL }\000"
.LASF452:
	.ascii	"USE_HAL_DRIVER 1\000"
.LASF529:
	.ascii	"__int8_t_defined 1\000"
.LASF1157:
	.ascii	"ExtractGainParameters\000"
.LASF786:
	.ascii	"__lock_try_acquire_recursive(lock) __retarget_lock_"
	.ascii	"try_acquire_recursive(lock)\000"
.LASF899:
	.ascii	"__CC_SUPPORTS___INLINE 1\000"
.LASF677:
	.ascii	"_MB_LEN_MAX 1\000"
.LASF590:
	.ascii	"INTMAX_MAX (__INTMAX_MAX__)\000"
.LASF567:
	.ascii	"INT32_MAX (__INT32_MAX__)\000"
.LASF1155:
	.ascii	"ExtractResolutionParameters\000"
.LASF853:
	.ascii	"_REENT_INC(_ptr) ((_ptr)->_inc)\000"
.LASF350:
	.ascii	"__DA_FBIT__ 31\000"
.LASF712:
	.ascii	"_T_PTRDIFF_ \000"
.LASF69:
	.ascii	"__GXX_ABI_VERSION 1016\000"
.LASF109:
	.ascii	"__INT_LEAST16_MAX__ 0x7fff\000"
.LASF1013:
	.ascii	"_MATH_ERRHANDLING_ERRNO MATH_ERRNO\000"
.LASF158:
	.ascii	"__FLT_DENORM_MIN__ 1.4012984643248171e-45F\000"
.LASF522:
	.ascii	"__LEAST8 \"hh\"\000"
.LASF762:
	.ascii	"__need_size_t \000"
.LASF1114:
	.ascii	"eeData\000"
.LASF1185:
	.ascii	"pixelNumber\000"
.LASF701:
	.ascii	"_END_STD_C \000"
.LASF832:
	.ascii	"_REENT_MP_P5S(ptr) ((ptr)->_mp->_p5s)\000"
.LASF1019:
	.ascii	"isnan(__x) (__builtin_isnan (__x))\000"
.LASF1219:
	.ascii	"D:/Workspace/stm32/ThermalBridge3/Debug\000"
.LASF565:
	.ascii	"UINT_LEAST16_MAX (__UINT_LEAST16_MAX__)\000"
.LASF123:
	.ascii	"__UINT32_C(c) c ## UL\000"
.LASF1036:
	.ascii	"M_LN10 2.30258509299404568402\000"
.LASF1176:
	.ascii	"irDataCP\000"
.LASF633:
	.ascii	"MLX90640_COLUMN_SIZE 24\000"
.LASF838:
	.ascii	"_REENT_MBTOWC_STATE(ptr) ((ptr)->_misc->_mbtowc_sta"
	.ascii	"te)\000"
.LASF966:
	.ascii	"_Null_unspecified \000"
.LASF157:
	.ascii	"__FLT_EPSILON__ 1.1920928955078125e-7F\000"
.LASF909:
	.ascii	"__XSTRING(x) __STRING(x)\000"
.LASF1139:
	.ascii	"offsetRef\000"
.LASF1173:
	.ascii	"MLX90640_GetImage\000"
.LASF998:
	.ascii	"HUGE_VALL (__builtin_huge_vall())\000"
.LASF35:
	.ascii	"__PTRDIFF_TYPE__ int\000"
.LASF416:
	.ascii	"__ARM_ARCH_ISA_THUMB\000"
.LASF544:
	.ascii	"__int_least16_t_defined 1\000"
.LASF619:
	.ascii	"MLX90640_BAD_PIXELS_NUM_ERROR 5\000"
.LASF444:
	.ascii	"__ARM_FEATURE_MATMUL_INT8\000"
.LASF570:
	.ascii	"INT_LEAST32_MAX (__INT_LEAST32_MAX__)\000"
.LASF569:
	.ascii	"INT_LEAST32_MIN (-__INT_LEAST32_MAX__ - 1)\000"
.LASF375:
	.ascii	"__GCC_ATOMIC_SHORT_LOCK_FREE 2\000"
.LASF1163:
	.ascii	"column\000"
.LASF1136:
	.ascii	"ExtractOffsetParameters\000"
.LASF329:
	.ascii	"__HQ_IBIT__ 0\000"
.LASF291:
	.ascii	"__USACCUM_FBIT__ 8\000"
.LASF678:
	.ascii	"_NANO_FORMATTED_IO 1\000"
.LASF379:
	.ascii	"__GCC_ATOMIC_TEST_AND_SET_TRUEVAL 1\000"
.LASF741:
	.ascii	"_WCHAR_T \000"
.LASF638:
	.ascii	"MLX90640_STAT_FRAME_MASK BIT_MASK(0)\000"
.LASF1188:
	.ascii	"taTr\000"
.LASF478:
	.ascii	"__MISC_VISIBLE 1\000"
.LASF1053:
	.ascii	"M_INVLN2 1.4426950408889633870E0\000"
.LASF773:
	.ascii	"_NULL 0\000"
.LASF211:
	.ascii	"__FLT32_HAS_QUIET_NAN__ 1\000"
.LASF1014:
	.ascii	"_MATH_ERRHANDLING_ERREXCEPT MATH_ERREXCEPT\000"
.LASF1193:
	.ascii	"controlRegister1\000"
.LASF736:
	.ascii	"_SIZET_ \000"
.LASF1198:
	.ascii	"MLX90640_SetInterleavedMode\000"
.LASF194:
	.ascii	"__LDBL_HAS_INFINITY__ 1\000"
.LASF589:
	.ascii	"UINT_FAST64_MAX (__UINT_FAST64_MAX__)\000"
.LASF352:
	.ascii	"__TA_FBIT__ 63\000"
.LASF1129:
	.ascii	"KvReCe\000"
.LASF1030:
	.ascii	"__signgam_r(ptr) _REENT_SIGNGAM(ptr)\000"
.LASF437:
	.ascii	"__ARM_ARCH_EXT_IDIV__ 1\000"
.LASF1199:
	.ascii	"MLX90640_GetRefreshRate\000"
.LASF1128:
	.ascii	"KvReCo\000"
.LASF337:
	.ascii	"__UQQ_IBIT__ 0\000"
.LASF1194:
	.ascii	"modeRAM\000"
.LASF187:
	.ascii	"__LDBL_DECIMAL_DIG__ 17\000"
.LASF303:
	.ascii	"__UACCUM_MIN__ 0.0UK\000"
.LASF746:
	.ascii	"_BSD_WCHAR_T_ \000"
.LASF893:
	.ascii	"__GNUC_VA_LIST_COMPATIBILITY 1\000"
.LASF960:
	.ascii	"__COPYRIGHT(s) struct __hack\000"
.LASF984:
	.ascii	"__nosanitizeaddress \000"
.LASF162:
	.ascii	"__FP_FAST_FMAF 1\000"
.LASF594:
	.ascii	"SIG_ATOMIC_MIN (-__STDINT_EXP(INT_MAX) - 1)\000"
.LASF648:
	.ascii	"MLX90640_CTRL_MEAS_MODE_SHIFT 12\000"
.LASF1127:
	.ascii	"KvRoCe\000"
.LASF245:
	.ascii	"__FLT32X_IS_IEC_60559__ 2\000"
.LASF856:
	.ascii	"_REENT_STDIN(_ptr) ((_ptr)->_stdin)\000"
.LASF176:
	.ascii	"__DBL_HAS_DENORM__ 1\000"
.LASF1095:
	.ascii	"outlierPixels\000"
.LASF1000:
	.ascii	"NAN (__builtin_nanf(\"\"))\000"
.LASF111:
	.ascii	"__INT_LEAST16_WIDTH__ 16\000"
.LASF546:
	.ascii	"__int_least64_t_defined 1\000"
.LASF145:
	.ascii	"__DEC_EVAL_METHOD__ 2\000"
.LASF427:
	.ascii	"__ARM_FEATURE_FP16_FML\000"
.LASF841:
	.ascii	"_REENT_MBRTOWC_STATE(ptr) ((ptr)->_misc->_mbrtowc_s"
	.ascii	"tate)\000"
.LASF1113:
	.ascii	"ExtractDeviatingPixels\000"
.LASF936:
	.ascii	"__restrict restrict\000"
.LASF255:
	.ascii	"__USFRACT_EPSILON__ 0x1P-8UHR\000"
.LASF757:
	.ascii	"NULL ((void *)0)\000"
.LASF778:
	.ascii	"__LOCK_INIT_RECURSIVE(class,lock) __LOCK_INIT(class"
	.ascii	",lock)\000"
.LASF855:
	.ascii	"_REENT_SIG_FUNC(_ptr) ((_ptr)->_sig_func)\000"
.LASF641:
	.ascii	"MLX90640_GET_DATA_READY(reg_value) (reg_value & MLX"
	.ascii	"90640_STAT_DATA_READY_MASK)\000"
.LASF492:
	.ascii	"___int_least32_t_defined 1\000"
.LASF319:
	.ascii	"__LLACCUM_MAX__ 0X7FFFFFFFFFFFFFFFP-31LLK\000"
.LASF608:
	.ascii	"INT64_C(x) __INT64_C(x)\000"
.LASF363:
	.ascii	"__USER_LABEL_PREFIX__ \000"
.LASF105:
	.ascii	"__UINT64_MAX__ 0xffffffffffffffffULL\000"
.LASF836:
	.ascii	"_REENT_STRTOK_LAST(ptr) ((ptr)->_misc->_strtok_last"
	.ascii	")\000"
.LASF798:
	.ascii	"_RAND48_ADD (0x000b)\000"
.LASF104:
	.ascii	"__UINT32_MAX__ 0xffffffffUL\000"
.LASF1109:
	.ascii	"CheckAdjacentPixels\000"
.LASF471:
	.ascii	"_ATFILE_SOURCE\000"
.LASF581:
	.ascii	"INT_FAST16_MIN (-__INT_FAST16_MAX__ - 1)\000"
.LASF1:
	.ascii	"__STDC_VERSION__ 201112L\000"
.LASF926:
	.ascii	"__malloc_like __attribute__((__malloc__))\000"
.LASF976:
	.ascii	"__trylocks_shared(...) __lock_annotate(shared_trylo"
	.ascii	"ck_function(__VA_ARGS__))\000"
.LASF106:
	.ascii	"__INT_LEAST8_MAX__ 0x7f\000"
.LASF1132:
	.ascii	"ExtractKtaPixelParameters\000"
.LASF380:
	.ascii	"__GCC_ATOMIC_POINTER_LOCK_FREE 2\000"
.LASF388:
	.ascii	"__ARM_FEATURE_QBIT 1\000"
.LASF401:
	.ascii	"__ARM_FEATURE_CLZ 1\000"
.LASF1156:
	.ascii	"ExtractTgcParameters\000"
.LASF566:
	.ascii	"INT32_MIN (-__INT32_MAX__ - 1)\000"
.LASF395:
	.ascii	"__ARM_FEATURE_COMPLEX\000"
.LASF637:
	.ascii	"MLX90640_INIT_STATUS_VALUE 0x0030\000"
.LASF768:
	.ascii	"unsigned signed\000"
.LASF512:
	.ascii	"_INTPTR_EQ_INT \000"
.LASF405:
	.ascii	"__ARM_SIZEOF_WCHAR_T 4\000"
.LASF234:
	.ascii	"__FLT32X_MAX_EXP__ 1024\000"
.LASF1209:
	.ascii	"MLX90640_GetFrameData\000"
.LASF1152:
	.ascii	"KsToScale\000"
.LASF122:
	.ascii	"__UINT_LEAST32_MAX__ 0xffffffffUL\000"
.LASF174:
	.ascii	"__DBL_EPSILON__ ((double)2.2204460492503131e-16L)\000"
.LASF268:
	.ascii	"__LFRACT_MIN__ (-0.5LR-0.5LR)\000"
.LASF844:
	.ascii	"_REENT_WCSRTOMBS_STATE(ptr) ((ptr)->_misc->_wcsrtom"
	.ascii	"bs_state)\000"
.LASF117:
	.ascii	"__INT_LEAST64_WIDTH__ 64\000"
.LASF160:
	.ascii	"__FLT_HAS_INFINITY__ 1\000"
.LASF1124:
	.ascii	"ktaScale1\000"
.LASF1134:
	.ascii	"ktaScale2\000"
.LASF299:
	.ascii	"__ACCUM_MAX__ 0X7FFFFFFFP-15K\000"
.LASF98:
	.ascii	"__INT8_MAX__ 0x7f\000"
.LASF777:
	.ascii	"__LOCK_INIT(class,lock) extern struct __lock __lock"
	.ascii	"_ ## lock; class _LOCK_T lock = &__lock_ ## lock\000"
.LASF654:
	.ascii	"MLX90640_LS_BYTE(reg16) (reg16 & MLX90640_LS_BYTE_M"
	.ascii	"ASK)\000"
.LASF382:
	.ascii	"__GCC_HAVE_DWARF2_CFI_ASM 1\000"
.LASF486:
	.ascii	"___int8_t_defined 1\000"
.LASF248:
	.ascii	"__SFRACT_MIN__ (-0.5HR-0.5HR)\000"
.LASF1121:
	.ascii	"ExtractCPParameters\000"
.LASF349:
	.ascii	"__SA_IBIT__ 16\000"
.LASF497:
	.ascii	"signed\000"
.LASF142:
	.ascii	"__GCC_IEC_559_COMPLEX 0\000"
.LASF397:
	.ascii	"__ARM_FEATURE_MVE\000"
.LASF235:
	.ascii	"__FLT32X_MAX_10_EXP__ 308\000"
.LASF422:
	.ascii	"__ARM_FP16_FORMAT_IEEE\000"
.LASF48:
	.ascii	"__UINT16_TYPE__ short unsigned int\000"
.LASF467:
	.ascii	"_POSIX_SOURCE\000"
.LASF852:
	.ascii	"_REENT_ERRNO(_ptr) ((_ptr)->_errno)\000"
.LASF787:
	.ascii	"__lock_release(lock) __retarget_lock_release(lock)\000"
.LASF835:
	.ascii	"_REENT_TM(ptr) ((ptr)->_localtime_buf)\000"
.LASF1086:
	.ascii	"alpha\000"
.LASF725:
	.ascii	"_T_SIZE_ \000"
.LASF144:
	.ascii	"__FLT_EVAL_METHOD_TS_18661_3__ 0\000"
.LASF873:
	.ascii	"__attribute_malloc__ \000"
.LASF510:
	.ascii	"int +2\000"
.LASF602:
	.ascii	"INT8_C(x) __INT8_C(x)\000"
.LASF63:
	.ascii	"__UINT_FAST8_TYPE__ unsigned int\000"
.LASF317:
	.ascii	"__LLACCUM_IBIT__ 32\000"
.LASF260:
	.ascii	"__FRACT_EPSILON__ 0x1P-15R\000"
.LASF0:
	.ascii	"__STDC__ 1\000"
.LASF821:
	.ascii	"_REENT_CHECK_EMERGENCY(var) _REENT_CHECK(var, _emer"
	.ascii	"gency, char *, _REENT_EMERGENCY_SIZE, )\000"
.LASF100:
	.ascii	"__INT32_MAX__ 0x7fffffffL\000"
.LASF699:
	.ascii	"_USE_GDTOA \000"
.LASF925:
	.ascii	"__min_size(x) static (x)\000"
.LASF772:
	.ascii	"_TIMER_T_ unsigned long\000"
.LASF1075:
	.ascii	"KvPTAT\000"
.LASF628:
	.ascii	"MLX90640_PIXEL_DATA_START_ADDRESS 0x0400\000"
.LASF115:
	.ascii	"__INT_LEAST64_MAX__ 0x7fffffffffffffffLL\000"
.LASF411:
	.ascii	"__APCS_32__ 1\000"
.LASF446:
	.ascii	"__ARM_FEATURE_BF16_VECTOR_ARITHMETIC\000"
.LASF466:
	.ascii	"_DEFAULT_SOURCE 1\000"
.LASF197:
	.ascii	"__FLT32_MANT_DIG__ 24\000"
.LASF208:
	.ascii	"__FLT32_DENORM_MIN__ 1.4012984643248171e-45F32\000"
.LASF920:
	.ascii	"__section(x) __attribute__((__section__(x)))\000"
.LASF759:
	.ascii	"offsetof(TYPE,MEMBER) __builtin_offsetof (TYPE, MEM"
	.ascii	"BER)\000"
.LASF58:
	.ascii	"__UINT_LEAST64_TYPE__ long long unsigned int\000"
.LASF1011:
	.ascii	"MATH_ERRNO 1\000"
.LASF251:
	.ascii	"__USFRACT_FBIT__ 8\000"
.LASF191:
	.ascii	"__LDBL_EPSILON__ 2.2204460492503131e-16L\000"
.LASF662:
	.ascii	"MLX90640_NIBBLE2(reg16) ((reg16 & MLX90640_NIBBLE2_"
	.ascii	"MASK) >> 4)\000"
.LASF1091:
	.ascii	"cpAlpha\000"
.LASF981:
	.ascii	"__requires_shared(...) __lock_annotate(shared_locks"
	.ascii	"_required(__VA_ARGS__))\000"
.LASF915:
	.ascii	"__pure2 __attribute__((__const__))\000"
.LASF372:
	.ascii	"__GCC_ATOMIC_CHAR16_T_LOCK_FREE 2\000"
.LASF1101:
	.ascii	"MLX90640_I2CWrite\000"
.LASF967:
	.ascii	"__NULLABILITY_PRAGMA_PUSH \000"
.LASF521:
	.ascii	"__FAST64 \"ll\"\000"
.LASF12:
	.ascii	"__ATOMIC_RELEASE 3\000"
.LASF505:
	.ascii	"unsigned +0\000"
.LASF242:
	.ascii	"__FLT32X_HAS_DENORM__ 1\000"
.LASF147:
	.ascii	"__FLT_MANT_DIG__ 24\000"
.LASF793:
	.ascii	"_RAND48_SEED_1 (0xabcd)\000"
.LASF306:
	.ascii	"__LACCUM_FBIT__ 31\000"
.LASF592:
	.ascii	"UINTMAX_MAX (__UINTMAX_MAX__)\000"
.LASF717:
	.ascii	"___int_ptrdiff_t_h \000"
.LASF848:
	.ascii	"_REENT_CLEANUP(_ptr) ((_ptr)->__cleanup)\000"
.LASF901:
	.ascii	"__CC_SUPPORTS___FUNC__ 1\000"
.LASF222:
	.ascii	"__FLT64_NORM_MAX__ 1.7976931348623157e+308F64\000"
.LASF653:
	.ascii	"MLX90640_MS_BYTE(reg16) ((reg16 & MLX90640_MS_BYTE_"
	.ascii	"MASK) >> MLX90640_MS_BYTE_SHIFT)\000"
.LASF885:
	.ascii	"__GNUCLIKE_MATH_BUILTIN_CONSTANTS \000"
.LASF520:
	.ascii	"__FAST32 \000"
.LASF508:
	.ascii	"__int20 +2\000"
.LASF308:
	.ascii	"__LACCUM_MIN__ (-0X1P31LK-0X1P31LK)\000"
.LASF192:
	.ascii	"__LDBL_DENORM_MIN__ 4.9406564584124654e-324L\000"
.LASF282:
	.ascii	"__ULLFRACT_IBIT__ 0\000"
.LASF101:
	.ascii	"__INT64_MAX__ 0x7fffffffffffffffLL\000"
.LASF389:
	.ascii	"__ARM_FEATURE_SAT 1\000"
.LASF532:
	.ascii	"__int16_t_defined 1\000"
.LASF233:
	.ascii	"__FLT32X_MIN_10_EXP__ (-307)\000"
.LASF1020:
	.ascii	"isnormal(__x) (__builtin_isnormal (__x))\000"
.LASF710:
	.ascii	"_ANSI_STDDEF_H \000"
.LASF715:
	.ascii	"_PTRDIFF_T_ \000"
.LASF94:
	.ascii	"__INTMAX_WIDTH__ 64\000"
.LASF990:
	.ascii	"__builtin_align_up(x,align) ((__typeof__(x))(((__ui"
	.ascii	"ntptr_t)(x)+((align)-1))&(~((align)-1))))\000"
.LASF5:
	.ascii	"__GNUC__ 11\000"
.LASF843:
	.ascii	"_REENT_WCRTOMB_STATE(ptr) ((ptr)->_misc->_wcrtomb_s"
	.ascii	"tate)\000"
.LASF921:
	.ascii	"__alloc_size(x) __attribute__((__alloc_size__(x)))\000"
.LASF84:
	.ascii	"__LONG_WIDTH__ 32\000"
.LASF1021:
	.ascii	"signbit(__x) ((sizeof(__x) == sizeof(float)) ? __bu"
	.ascii	"iltin_signbitf(__x) : (sizeof(__x) == sizeof(double"
	.ascii	")) ? __builtin_signbit (__x) : __builtin_signbitl(_"
	.ascii	"_x))\000"
.LASF154:
	.ascii	"__FLT_MAX__ 3.4028234663852886e+38F\000"
.LASF301:
	.ascii	"__UACCUM_FBIT__ 16\000"
.LASF953:
	.ascii	"__warn_references(sym,msg) __asm__(\".section .gnu."
	.ascii	"warning.\" #sym); __asm__(\".asciz \\\"\" msg \"\\\""
	.ascii	"\"); __asm__(\".previous\")\000"
.LASF265:
	.ascii	"__UFRACT_EPSILON__ 0x1P-16UR\000"
.LASF76:
	.ascii	"__WCHAR_MIN__ 0U\000"
.LASF656:
	.ascii	"MLX90640_LSBITS_10_MASK 0x03FF\000"
.LASF1145:
	.ascii	"accColumn\000"
.LASF515:
	.ascii	"__INT16 \"h\"\000"
.LASF458:
	.ascii	"_NEWLIB_VERSION_H__ 1\000"
.LASF377:
	.ascii	"__GCC_ATOMIC_LONG_LOCK_FREE 2\000"
.LASF313:
	.ascii	"__ULACCUM_MIN__ 0.0ULK\000"
.LASF671:
	.ascii	"_ATEXIT_DYNAMIC_ALLOC 1\000"
.LASF738:
	.ascii	"__need_size_t\000"
.LASF188:
	.ascii	"__LDBL_MAX__ 1.7976931348623157e+308L\000"
.LASF410:
	.ascii	"__ARM_ARCH 7\000"
.LASF1171:
	.ascii	"resolutionRAM\000"
.LASF477:
	.ascii	"__LARGEFILE_VISIBLE 0\000"
.LASF728:
	.ascii	"_SIZE_T_ \000"
.LASF146:
	.ascii	"__FLT_RADIX__ 2\000"
.LASF1065:
	.ascii	"long long int\000"
.LASF858:
	.ascii	"_REENT_STDERR(_ptr) ((_ptr)->_stderr)\000"
.LASF1215:
	.ascii	"MLX90640_SynchFrame\000"
.LASF398:
	.ascii	"__ARM_FEATURE_CMSE\000"
.LASF1202:
	.ascii	"MLX90640_GetCurResolution\000"
.LASF568:
	.ascii	"UINT32_MAX (__UINT32_MAX__)\000"
.LASF739:
	.ascii	"__wchar_t__ \000"
.LASF195:
	.ascii	"__LDBL_HAS_QUIET_NAN__ 1\000"
.LASF55:
	.ascii	"__UINT_LEAST8_TYPE__ unsigned char\000"
.LASF1052:
	.ascii	"M_LOG2_E _M_LN2\000"
.LASF85:
	.ascii	"__LONG_LONG_WIDTH__ 64\000"
.LASF711:
	.ascii	"_PTRDIFF_T \000"
.LASF1110:
	.ascii	"pix1\000"
.LASF137:
	.ascii	"__UINT_FAST64_MAX__ 0xffffffffffffffffULL\000"
.LASF420:
	.ascii	"__ARM_FP\000"
.LASF347:
	.ascii	"__HA_IBIT__ 8\000"
.LASF139:
	.ascii	"__INTPTR_WIDTH__ 32\000"
.LASF378:
	.ascii	"__GCC_ATOMIC_LLONG_LOCK_FREE 1\000"
.LASF834:
	.ascii	"_REENT_ASCTIME_BUF(ptr) ((ptr)->_asctime_buf)\000"
.LASF1083:
	.ascii	"calibrationModeEE\000"
.LASF239:
	.ascii	"__FLT32X_MIN__ 2.2250738585072014e-308F32x\000"
.LASF828:
	.ascii	"_REENT_RAND48_MULT(ptr) ((ptr)->_r48->_mult)\000"
.LASF218:
	.ascii	"__FLT64_MAX_EXP__ 1024\000"
.LASF934:
	.ascii	"__returns_twice __attribute__((__returns_twice__))\000"
.LASF744:
	.ascii	"__WCHAR_T \000"
.LASF684:
	.ascii	"__SYS_CONFIG_H__ \000"
.LASF1099:
	.ascii	"double\000"
.LASF223:
	.ascii	"__FLT64_MIN__ 2.2250738585072014e-308F64\000"
.LASF806:
	.ascii	"_REENT_INIT_RESERVED_8 \000"
.LASF488:
	.ascii	"___int32_t_defined 1\000"
.LASF83:
	.ascii	"__INT_WIDTH__ 32\000"
.LASF672:
	.ascii	"_HAVE_CC_INHIBIT_LOOP_TO_LIBCALL 1\000"
.LASF968:
	.ascii	"__NULLABILITY_PRAGMA_POP \000"
.LASF406:
	.ascii	"__ARM_ARCH_PROFILE\000"
.LASF46:
	.ascii	"__INT64_TYPE__ long long int\000"
.LASF266:
	.ascii	"__LFRACT_FBIT__ 31\000"
.LASF562:
	.ascii	"UINT16_MAX (__UINT16_MAX__)\000"
.LASF384:
	.ascii	"__SIZEOF_WCHAR_T__ 4\000"
.LASF809:
	.ascii	"assert\000"
.LASF474:
	.ascii	"__BSD_VISIBLE 1\000"
.LASF563:
	.ascii	"INT_LEAST16_MIN (-__INT_LEAST16_MAX__ - 1)\000"
.LASF916:
	.ascii	"__unused __attribute__((__unused__))\000"
.LASF931:
	.ascii	"__nonnull_all __attribute__((__nonnull__))\000"
.LASF811:
	.ascii	"__ASSERT_FUNC __func__\000"
.LASF1027:
	.ascii	"isunordered(__x,__y) (__builtin_isunordered (__x, _"
	.ascii	"_y))\000"
.LASF264:
	.ascii	"__UFRACT_MAX__ 0XFFFFP-16UR\000"
.LASF493:
	.ascii	"___int_least64_t_defined 1\000"
.LASF682:
	.ascii	"_WANT_REENT_SMALL 1\000"
.LASF869:
	.ascii	"__THROW \000"
.LASF1122:
	.ascii	"alphaSP\000"
.LASF820:
	.ascii	"_REENT_CHECK_MP(var) _REENT_CHECK(var, _mp, struct "
	.ascii	"_mprec *, sizeof *((var)->_mp), _REENT_INIT_MP(var)"
	.ascii	")\000"
.LASF850:
	.ascii	"_REENT_CVTLEN(_ptr) ((_ptr)->_cvtlen)\000"
.LASF112:
	.ascii	"__INT_LEAST32_MAX__ 0x7fffffffL\000"
.LASF247:
	.ascii	"__SFRACT_IBIT__ 0\000"
.LASF472:
	.ascii	"_ATFILE_SOURCE 1\000"
.LASF496:
	.ascii	"__STDINT_EXP(x) __ ##x ##__\000"
.LASF483:
	.ascii	"__EXP(x) __ ##x ##__\000"
.LASF29:
	.ascii	"__BYTE_ORDER__ __ORDER_LITTLE_ENDIAN__\000"
.LASF207:
	.ascii	"__FLT32_EPSILON__ 1.1920928955078125e-7F32\000"
.LASF431:
	.ascii	"__ARM_NEON_FP\000"
.LASF549:
	.ascii	"__int_fast32_t_defined 1\000"
.LASF702:
	.ascii	"_NOTHROW \000"
.LASF669:
	.ascii	"_ANSIDECL_H_ \000"
.LASF479:
	.ascii	"__POSIX_VISIBLE 200809\000"
.LASF731:
	.ascii	"_SIZE_T_DEFINED \000"
.LASF261:
	.ascii	"__UFRACT_FBIT__ 16\000"
.LASF342:
	.ascii	"__UDQ_FBIT__ 64\000"
.LASF172:
	.ascii	"__DBL_NORM_MAX__ ((double)1.7976931348623157e+308L)"
	.ascii	"\000"
.LASF548:
	.ascii	"__int_fast16_t_defined 1\000"
.LASF639:
	.ascii	"MLX90640_GET_FRAME(reg_value) (reg_value & MLX90640"
	.ascii	"_STAT_FRAME_MASK)\000"
.LASF688:
	.ascii	"__FLOAT_TYPE float\000"
.LASF530:
	.ascii	"_INT16_T_DECLARED \000"
.LASF840:
	.ascii	"_REENT_MBRLEN_STATE(ptr) ((ptr)->_misc->_mbrlen_sta"
	.ascii	"te)\000"
.LASF175:
	.ascii	"__DBL_DENORM_MIN__ ((double)4.9406564584124654e-324"
	.ascii	"L)\000"
.LASF864:
	.ascii	"_GLOBAL_REENT (&_impure_data)\000"
.LASF573:
	.ascii	"INT64_MAX (__INT64_MAX__)\000"
.LASF989:
	.ascii	"__builtin_is_aligned(x,align) (((__uintptr_t)x & (("
	.ascii	"align) - 1)) == 0)\000"
.LASF343:
	.ascii	"__UDQ_IBIT__ 0\000"
.LASF1067:
	.ascii	"unsigned int\000"
.LASF730:
	.ascii	"_SIZE_T_DEFINED_ \000"
.LASF861:
	.ascii	"__ATTRIBUTE_IMPURE_DATA__ \000"
.LASF461:
	.ascii	"__NEWLIB_MINOR__ 2\000"
.LASF149:
	.ascii	"__FLT_MIN_EXP__ (-125)\000"
.LASF228:
	.ascii	"__FLT64_HAS_QUIET_NAN__ 1\000"
.LASF607:
	.ascii	"UINT32_C(x) __UINT32_C(x)\000"
.LASF657:
	.ascii	"MLX90640_NIBBLE1_MASK 0x000F\000"
.LASF292:
	.ascii	"__USACCUM_IBIT__ 8\000"
.LASF433:
	.ascii	"__ARM_ARCH_7EM__ 1\000"
.LASF938:
	.ascii	"__predict_false(exp) __builtin_expect((exp), 0)\000"
.LASF226:
	.ascii	"__FLT64_HAS_DENORM__ 1\000"
.LASF322:
	.ascii	"__ULLACCUM_IBIT__ 32\000"
.LASF305:
	.ascii	"__UACCUM_EPSILON__ 0x1P-16UK\000"
.LASF753:
	.ascii	"_WCHAR_T_DECLARED \000"
.LASF582:
	.ascii	"INT_FAST16_MAX (__INT_FAST16_MAX__)\000"
.LASF24:
	.ascii	"__CHAR_BIT__ 8\000"
.LASF668:
	.ascii	"_SYS_REENT_H_ \000"
.LASF143:
	.ascii	"__FLT_EVAL_METHOD__ 0\000"
.LASF70:
	.ascii	"__SCHAR_MAX__ 0x7f\000"
.LASF127:
	.ascii	"__INT_FAST8_WIDTH__ 32\000"
.LASF2:
	.ascii	"__STDC_UTF_16__ 1\000"
.LASF797:
	.ascii	"_RAND48_MULT_2 (0x0005)\000"
.LASF399:
	.ascii	"__ARM_FEATURE_LDREX\000"
.LASF823:
	.ascii	"_REENT_CHECK_MISC(var) _REENT_CHECK(var, _misc, str"
	.ascii	"uct _misc_reent *, sizeof *((var)->_misc), _REENT_I"
	.ascii	"NIT_MISC(var))\000"
.LASF713:
	.ascii	"_T_PTRDIFF \000"
.LASF1118:
	.ascii	"outlierPixCnt\000"
.LASF328:
	.ascii	"__HQ_FBIT__ 15\000"
.LASF1138:
	.ascii	"occColumn\000"
.LASF1183:
	.ascii	"image\000"
.LASF304:
	.ascii	"__UACCUM_MAX__ 0XFFFFFFFFP-16UK\000"
.LASF839:
	.ascii	"_REENT_WCTOMB_STATE(ptr) ((ptr)->_misc->_wctomb_sta"
	.ascii	"te)\000"
.LASF982:
	.ascii	"__requires_unlocked(...) __lock_annotate(locks_excl"
	.ascii	"uded(__VA_ARGS__))\000"
.LASF269:
	.ascii	"__LFRACT_MAX__ 0X7FFFFFFFP-31LR\000"
.LASF386:
	.ascii	"__SIZEOF_PTRDIFF_T__ 4\000"
.LASF533:
	.ascii	"_INT32_T_DECLARED \000"
.LASF1002:
	.ascii	"__TMP_FLT_EVAL_METHOD \000"
.LASF490:
	.ascii	"___int_least8_t_defined 1\000"
.LASF438:
	.ascii	"__ARM_FEATURE_IDIV 1\000"
.LASF30:
	.ascii	"__FLOAT_WORD_ORDER__ __ORDER_LITTLE_ENDIAN__\000"
.LASF47:
	.ascii	"__UINT8_TYPE__ unsigned char\000"
.LASF547:
	.ascii	"__int_fast8_t_defined 1\000"
.LASF694:
	.ascii	"__EXPORT \000"
.LASF441:
	.ascii	"__ARM_FEATURE_COPROC 15\000"
.LASF689:
	.ascii	"__OBSOLETE_MATH_DEFAULT 1\000"
.LASF959:
	.ascii	"__SCCSID(s) struct __hack\000"
.LASF1037:
	.ascii	"M_PI 3.14159265358979323846\000"
.LASF82:
	.ascii	"__SHRT_WIDTH__ 16\000"
.LASF28:
	.ascii	"__ORDER_PDP_ENDIAN__ 3412\000"
.LASF949:
	.ascii	"__strftimelike(fmtarg,firstvararg) __attribute__((_"
	.ascii	"_format__ (__strftime__, fmtarg, firstvararg)))\000"
.LASF552:
	.ascii	"INTPTR_MAX (__INTPTR_MAX__)\000"
.LASF1082:
	.ascii	"resolutionEE\000"
.LASF794:
	.ascii	"_RAND48_SEED_2 (0x1234)\000"
.LASF719:
	.ascii	"_PTRDIFF_T_DECLARED \000"
.LASF1088:
	.ascii	"offset\000"
.LASF912:
	.ascii	"__volatile volatile\000"
.LASF766:
	.ascii	"_MACHINE__TYPES_H \000"
.LASF61:
	.ascii	"__INT_FAST32_TYPE__ int\000"
.LASF782:
	.ascii	"__lock_close_recursive(lock) __retarget_lock_close_"
	.ascii	"recursive(lock)\000"
.LASF183:
	.ascii	"__LDBL_MIN_10_EXP__ (-307)\000"
.LASF161:
	.ascii	"__FLT_HAS_QUIET_NAN__ 1\000"
.LASF851:
	.ascii	"_REENT_EMERGENCY(_ptr) ((_ptr)->_emergency)\000"
.LASF473:
	.ascii	"__ATFILE_VISIBLE 1\000"
.LASF1009:
	.ascii	"FP_ILOGB0 (-__INT_MAX__)\000"
.LASF270:
	.ascii	"__LFRACT_EPSILON__ 0x1P-31LR\000"
.LASF600:
	.ascii	"WINT_MAX (__WINT_MAX__)\000"
.LASF816:
	.ascii	"_REENT_CHECK_ASCTIME_BUF(var) _REENT_CHECK(var, _as"
	.ascii	"ctime_buf, char *, _REENT_ASCTIME_SIZE, memset((var"
	.ascii	")->_asctime_buf, 0, _REENT_ASCTIME_SIZE))\000"
.LASF1150:
	.ascii	"alphaTemp\000"
.LASF404:
	.ascii	"__ARM_SIZEOF_MINIMAL_ENUM 1\000"
.LASF691:
	.ascii	"_POINTER_INT long\000"
.LASF238:
	.ascii	"__FLT32X_NORM_MAX__ 1.7976931348623157e+308F32x\000"
.LASF20:
	.ascii	"__SIZEOF_FLOAT__ 4\000"
.LASF408:
	.ascii	"__arm__ 1\000"
.LASF903:
	.ascii	"__CC_SUPPORTS_VARADIC_XXX 1\000"
.LASF1050:
	.ascii	"M_SQRT3 1.73205080756887719000\000"
.LASF43:
	.ascii	"__INT8_TYPE__ signed char\000"
.LASF758:
	.ascii	"__need_NULL\000"
.LASF200:
	.ascii	"__FLT32_MIN_10_EXP__ (-37)\000"
.LASF734:
	.ascii	"___int_size_t_h \000"
.LASF693:
	.ascii	"__RAND_MAX 0x7fffffff\000"
.LASF476:
	.ascii	"__ISO_C_VISIBLE 2011\000"
.LASF560:
	.ascii	"INT16_MIN (-__INT16_MAX__ - 1)\000"
.LASF985:
	.ascii	"__nosanitizememory \000"
.LASF423:
	.ascii	"__ARM_FP16_FORMAT_ALTERNATIVE\000"
.LASF1179:
	.ascii	"ilPattern\000"
.LASF1218:
	.ascii	"../Hardware/functions/MLX90640_API.c\000"
.LASF189:
	.ascii	"__LDBL_NORM_MAX__ 1.7976931348623157e+308L\000"
.LASF587:
	.ascii	"INT_FAST64_MIN (-__INT_FAST64_MAX__ - 1)\000"
.LASF456:
	.ascii	"_MACHINE__DEFAULT_TYPES_H \000"
.LASF25:
	.ascii	"__BIGGEST_ALIGNMENT__ 8\000"
.LASF881:
	.ascii	"__has_feature(x) 0\000"
.LASF718:
	.ascii	"_GCC_PTRDIFF_T \000"
.LASF895:
	.ascii	"__GNUCLIKE_BUILTIN_NEXT_ARG 1\000"
.LASF353:
	.ascii	"__TA_IBIT__ 64\000"
.LASF525:
	.ascii	"__LEAST64 \"ll\"\000"
.LASF813:
	.ascii	"__reent_assert(x) ((x) ? (void)0 : __assert_func(__"
	.ascii	"FILE__, __LINE__, (char *)0, \"REENT malloc succeed"
	.ascii	"ed\"))\000"
.LASF723:
	.ascii	"_SIZE_T \000"
.LASF749:
	.ascii	"_WCHAR_T_H \000"
.LASF392:
	.ascii	"__ARM_FEATURE_QRDMX\000"
.LASF417:
	.ascii	"__ARM_ARCH_ISA_THUMB 2\000"
.LASF74:
	.ascii	"__LONG_LONG_MAX__ 0x7fffffffffffffffLL\000"
.LASF1205:
	.ascii	"MLX90640_ExtractParameters\000"
.LASF503:
	.ascii	"long\000"
.LASF636:
	.ascii	"MLX90640_STATUS_REG 0x8000\000"
.LASF500:
	.ascii	"short\000"
.LASF859:
	.ascii	"_REENT_INIT_PTR(var) { memset((var), 0, sizeof(*(va"
	.ascii	"r))); _REENT_INIT_PTR_ZEROED(var); }\000"
.LASF890:
	.ascii	"__GNUCLIKE_BUILTIN_VARARGS 1\000"
.LASF262:
	.ascii	"__UFRACT_IBIT__ 0\000"
.LASF396:
	.ascii	"__ARM_32BIT_STATE 1\000"
.LASF107:
	.ascii	"__INT8_C(c) c\000"
.LASF267:
	.ascii	"__LFRACT_IBIT__ 0\000"
.LASF709:
	.ascii	"_STDDEF_H_ \000"
.LASF812:
	.ascii	"static_assert _Static_assert\000"
.LASF908:
	.ascii	"__STRING(x) #x\000"
.LASF166:
	.ascii	"__DBL_MIN_EXP__ (-1021)\000"
.LASF727:
	.ascii	"__SIZE_T \000"
.LASF1146:
	.ascii	"alphaRef\000"
.LASF950:
	.ascii	"__printf0like(fmtarg,firstvararg) \000"
.LASF613:
	.ascii	"_MLX90640_API_H_ \000"
.LASF168:
	.ascii	"__DBL_MAX_EXP__ 1024\000"
.LASF198:
	.ascii	"__FLT32_DIG__ 6\000"
.LASF1043:
	.ascii	"M_SQRT2 1.41421356237309504880\000"
.LASF914:
	.ascii	"__dead2 __attribute__((__noreturn__))\000"
.LASF831:
	.ascii	"_REENT_MP_RESULT_K(ptr) ((ptr)->_mp->_result_k)\000"
.LASF802:
	.ascii	"_REENT_INIT_RESERVED_0 \000"
.LASF611:
	.ascii	"UINTMAX_C(x) __UINTMAX_C(x)\000"
.LASF494:
	.ascii	"__EXP\000"
.LASF1001:
	.ascii	"FLT_EVAL_METHOD __FLT_EVAL_METHOD__\000"
.LASF489:
	.ascii	"___int64_t_defined 1\000"
.LASF193:
	.ascii	"__LDBL_HAS_DENORM__ 1\000"
.LASF381:
	.ascii	"__HAVE_SPECULATION_SAFE_VALUE 1\000"
.LASF286:
	.ascii	"__SACCUM_FBIT__ 7\000"
.LASF369:
	.ascii	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 1\000"
.LASF882:
	.ascii	"__BEGIN_DECLS \000"
.LASF125:
	.ascii	"__UINT64_C(c) c ## ULL\000"
.LASF752:
	.ascii	"_GCC_WCHAR_T \000"
.LASF390:
	.ascii	"__ARM_FEATURE_CRYPTO\000"
.LASF53:
	.ascii	"__INT_LEAST32_TYPE__ long int\000"
.LASF124:
	.ascii	"__UINT_LEAST64_MAX__ 0xffffffffffffffffULL\000"
.LASF1054:
	.ascii	"__int8_t\000"
.LASF257:
	.ascii	"__FRACT_IBIT__ 0\000"
.LASF11:
	.ascii	"__ATOMIC_ACQUIRE 2\000"
.LASF683:
	.ascii	"_WANT_USE_GDTOA 1\000"
.LASF229:
	.ascii	"__FLT64_IS_IEC_60559__ 2\000"
.LASF462:
	.ascii	"__NEWLIB_PATCHLEVEL__ 0\000"
.LASF783:
	.ascii	"__lock_acquire(lock) __retarget_lock_acquire(lock)\000"
.LASF26:
	.ascii	"__ORDER_LITTLE_ENDIAN__ 1234\000"
.LASF767:
	.ascii	"__size_t\000"
.LASF155:
	.ascii	"__FLT_NORM_MAX__ 3.4028234663852886e+38F\000"
.LASF868:
	.ascii	"__DOTS , ...\000"
.LASF1066:
	.ascii	"long long unsigned int\000"
.LASF577:
	.ascii	"UINT_LEAST64_MAX (__UINT_LEAST64_MAX__)\000"
.LASF150:
	.ascii	"__FLT_MIN_10_EXP__ (-37)\000"
.LASF1104:
	.ascii	"params\000"
.LASF312:
	.ascii	"__ULACCUM_IBIT__ 32\000"
.LASF71:
	.ascii	"__SHRT_MAX__ 0x7fff\000"
.LASF196:
	.ascii	"__LDBL_IS_IEC_60559__ 2\000"
.LASF994:
	.ascii	"__is_aligned(x,y) __builtin_is_aligned(x, y)\000"
.LASF325:
	.ascii	"__ULLACCUM_EPSILON__ 0x1P-32ULLK\000"
.LASF535:
	.ascii	"__int32_t_defined 1\000"
.LASF475:
	.ascii	"__GNU_VISIBLE 0\000"
.LASF1071:
	.ascii	"uint16_t\000"
.LASF332:
	.ascii	"__DQ_FBIT__ 63\000"
.LASF714:
	.ascii	"__PTRDIFF_T \000"
.LASF339:
	.ascii	"__UHQ_IBIT__ 0\000"
.LASF857:
	.ascii	"_REENT_STDOUT(_ptr) ((_ptr)->_stdout)\000"
.LASF1064:
	.ascii	"long unsigned int\000"
.LASF60:
	.ascii	"__INT_FAST16_TYPE__ int\000"
.LASF673:
	.ascii	"_HAVE_INITFINI_ARRAY 1\000"
.LASF288:
	.ascii	"__SACCUM_MIN__ (-0X1P7HK-0X1P7HK)\000"
.LASF274:
	.ascii	"__ULFRACT_MAX__ 0XFFFFFFFFP-32ULR\000"
.LASF910:
	.ascii	"__const const\000"
.LASF56:
	.ascii	"__UINT_LEAST16_TYPE__ short unsigned int\000"
.LASF539:
	.ascii	"_INTMAX_T_DECLARED \000"
.LASF309:
	.ascii	"__LACCUM_MAX__ 0X7FFFFFFFFFFFFFFFP-31LK\000"
.LASF40:
	.ascii	"__CHAR16_TYPE__ short unsigned int\000"
.LASF635:
	.ascii	"MLX90640_AUX_NUM 64\000"
.LASF1094:
	.ascii	"brokenPixels\000"
.LASF1125:
	.ascii	"ExtractKvPixelParameters\000"
.LASF231:
	.ascii	"__FLT32X_DIG__ 15\000"
.LASF911:
	.ascii	"__signed signed\000"
.LASF629:
	.ascii	"MLX90640_PIXEL_NUM 768\000"
.LASF344:
	.ascii	"__UTQ_FBIT__ 128\000"
.LASF1207:
	.ascii	"auxData\000"
.LASF997:
	.ascii	"HUGE_VALF (__builtin_huge_valf())\000"
.LASF703:
	.ascii	"_LONG_DOUBLE long double\000"
.LASF15:
	.ascii	"__FINITE_MATH_ONLY__ 0\000"
.LASF824:
	.ascii	"_REENT_CHECK_SIGNAL_BUF(var) _REENT_CHECK(var, _sig"
	.ascii	"nal_buf, char *, _REENT_SIGNAL_SIZE, )\000"
.LASF128:
	.ascii	"__INT_FAST16_MAX__ 0x7fffffff\000"
.LASF484:
	.ascii	"__have_longlong64 1\000"
.LASF454:
	.ascii	"_MLX90640_I2C_Driver_H_ \000"
.LASF19:
	.ascii	"__SIZEOF_SHORT__ 2\000"
.LASF785:
	.ascii	"__lock_try_acquire(lock) __retarget_lock_try_acquir"
	.ascii	"e(lock)\000"
.LASF542:
	.ascii	"_UINTPTR_T_DECLARED \000"
.LASF1042:
	.ascii	"M_2_SQRTPI 1.12837916709551257390\000"
.LASF737:
	.ascii	"__size_t \000"
.LASF695:
	.ascii	"__IMPORT \000"
.LASF314:
	.ascii	"__ULACCUM_MAX__ 0XFFFFFFFFFFFFFFFFP-32ULK\000"
.LASF975:
	.ascii	"__trylocks_exclusive(...) __lock_annotate(exclusive"
	.ascii	"_trylock_function(__VA_ARGS__))\000"
.LASF667:
	.ascii	"_MATH_H_ \000"
.LASF826:
	.ascii	"_REENT_RAND_NEXT(ptr) ((ptr)->_r48->_rand_next)\000"
.LASF1046:
	.ascii	"M_3PI_4 2.3561944901923448370E0\000"
.LASF685:
	.ascii	"__IEEE_LITTLE_ENDIAN \000"
.LASF273:
	.ascii	"__ULFRACT_MIN__ 0.0ULR\000"
.LASF645:
	.ascii	"MLX90640_CTRL_REFRESH_MASK REG_MASK(MLX90640_CTRL_R"
	.ascii	"EFRESH_SHIFT,3)\000"
.LASF593:
	.ascii	"SIZE_MAX (__SIZE_MAX__)\000"
.LASF1217:
	.ascii	"GNU C11 11.3.1 20220712 -mcpu=cortex-m4 -mfpu=fpv4-"
	.ascii	"sp-d16 -mfloat-abi=hard -mthumb -march=armv7e-m+fp "
	.ascii	"-g3 -O0 -std=gnu11 -ffunction-sections -fdata-secti"
	.ascii	"ons -fstack-usage -fcyclomatic-complexity\000"
.LASF333:
	.ascii	"__DQ_IBIT__ 0\000"
.LASF447:
	.ascii	"__ARM_BF16_FORMAT_ALTERNATIVE\000"
.LASF118:
	.ascii	"__UINT_LEAST8_MAX__ 0xff\000"
.LASF969:
	.ascii	"__arg_type_tag(arg_kind,arg_idx,type_tag_idx) \000"
.LASF789:
	.ascii	"_ATEXIT_SIZE 32\000"
.LASF1153:
	.ascii	"step\000"
.LASF640:
	.ascii	"MLX90640_STAT_DATA_READY_MASK BIT_MASK(3)\000"
.LASF729:
	.ascii	"_BSD_SIZE_T_ \000"
.LASF880:
	.ascii	"__has_extension __has_feature\000"
.LASF509:
	.ascii	"__int20__ +2\000"
.LASF983:
	.ascii	"__no_lock_analysis __lock_annotate(no_thread_safety"
	.ascii	"_analysis)\000"
.LASF745:
	.ascii	"_WCHAR_T_ \000"
.LASF536:
	.ascii	"_INT64_T_DECLARED \000"
.LASF743:
	.ascii	"_T_WCHAR \000"
.LASF700:
	.ascii	"_BEGIN_STD_C \000"
.LASF770:
	.ascii	"_TIME_T_ __int_least64_t\000"
.LASF771:
	.ascii	"_CLOCKID_T_ unsigned long\000"
.LASF1058:
	.ascii	"__int16_t\000"
.LASF616:
	.ascii	"MLX90640_I2C_WRITE_ERROR 2\000"
.LASF345:
	.ascii	"__UTQ_IBIT__ 0\000"
.LASF1165:
	.ascii	"MLX90640_GetSubPageNumber\000"
.LASF348:
	.ascii	"__SA_FBIT__ 15\000"
.LASF751:
	.ascii	"__INT_WCHAR_T_H \000"
.LASF237:
	.ascii	"__FLT32X_MAX__ 1.7976931348623157e+308F32x\000"
.LASF1200:
	.ascii	"refreshRate\000"
.LASF487:
	.ascii	"___int16_t_defined 1\000"
.LASF854:
	.ascii	"_REENT_LOCALE(_ptr) ((_ptr)->_locale)\000"
.LASF892:
	.ascii	"__GNUCLIKE_BUILTIN_VAALIST 1\000"
.LASF435:
	.ascii	"__ARM_EABI__ 1\000"
.LASF1115:
	.ascii	"mlx90640\000"
.LASF1206:
	.ascii	"ValidateAuxData\000"
.LASF449:
	.ascii	"__ELF__ 1\000"
.LASF163:
	.ascii	"__FLT_IS_IEC_60559__ 2\000"
.LASF415:
	.ascii	"__THUMBEL__ 1\000"
.LASF387:
	.ascii	"__ARM_FEATURE_DSP 1\000"
.LASF1111:
	.ascii	"pix2\000"
.LASF327:
	.ascii	"__QQ_IBIT__ 0\000"
.LASF1033:
	.ascii	"M_LOG2E 1.4426950408889634074\000"
.LASF655:
	.ascii	"MLX90640_MSBITS_6_MASK 0xFC00\000"
.LASF609:
	.ascii	"UINT64_C(x) __UINT64_C(x)\000"
.LASF316:
	.ascii	"__LLACCUM_FBIT__ 31\000"
.LASF1078:
	.ascii	"alphaPTAT\000"
.LASF39:
	.ascii	"__UINTMAX_TYPE__ long long unsigned int\000"
.LASF559:
	.ascii	"UINT_LEAST8_MAX (__UINT_LEAST8_MAX__)\000"
.LASF341:
	.ascii	"__USQ_IBIT__ 0\000"
.LASF6:
	.ascii	"__GNUC_MINOR__ 3\000"
.LASF1107:
	.ascii	"values\000"
.LASF57:
	.ascii	"__UINT_LEAST32_TYPE__ long unsigned int\000"
.LASF658:
	.ascii	"MLX90640_NIBBLE2_MASK 0x00F0\000"
.LASF1073:
	.ascii	"kVdd\000"
.LASF402:
	.ascii	"__ARM_FEATURE_NUMERIC_MAXMIN\000"
.LASF665:
	.ascii	"POW2(x) pow(2, (double)x)\000"
.LASF1191:
	.ascii	"MLX90640_GetCurMode\000"
.LASF1081:
	.ascii	"cpKta\000"
.LASF376:
	.ascii	"__GCC_ATOMIC_INT_LOCK_FREE 2\000"
.LASF1177:
	.ascii	"irData\000"
.LASF1187:
	.ascii	"emissivity\000"
.LASF792:
	.ascii	"_RAND48_SEED_0 (0x330e)\000"
.LASF136:
	.ascii	"__UINT_FAST32_MAX__ 0xffffffffU\000"
.LASF827:
	.ascii	"_REENT_RAND48_SEED(ptr) ((ptr)->_r48->_seed)\000"
.LASF760:
	.ascii	"_GCC_MAX_ALIGN_T \000"
.LASF774:
	.ascii	"__Long long\000"
.LASF425:
	.ascii	"__ARM_FEATURE_FP16_SCALAR_ARITHMETIC\000"
.LASF295:
	.ascii	"__USACCUM_EPSILON__ 0x1P-8UHK\000"
.LASF178:
	.ascii	"__DBL_HAS_QUIET_NAN__ 1\000"
.LASF606:
	.ascii	"INT32_C(x) __INT32_C(x)\000"
.LASF583:
	.ascii	"UINT_FAST16_MAX (__UINT_FAST16_MAX__)\000"
.LASF1192:
	.ascii	"slaveAddr\000"
.LASF1008:
	.ascii	"FP_NORMAL 4\000"
.LASF279:
	.ascii	"__LLFRACT_MAX__ 0X7FFFFFFFFFFFFFFFP-63LLR\000"
.LASF651:
	.ascii	"MLX90640_MS_BYTE_MASK 0xFF00\000"
.LASF571:
	.ascii	"UINT_LEAST32_MAX (__UINT_LEAST32_MAX__)\000"
.LASF817:
	.ascii	"_REENT_INIT_RAND48(var) do { struct _reent *_r = (v"
	.ascii	"ar); _r->_r48->_seed[0] = _RAND48_SEED_0; _r->_r48-"
	.ascii	">_seed[1] = _RAND48_SEED_1; _r->_r48->_seed[2] = _R"
	.ascii	"AND48_SEED_2; _r->_r48->_mult[0] = _RAND48_MULT_0; "
	.ascii	"_r->_r48->_mult[1] = _RAND48_MULT_1; _r->_r48->_mul"
	.ascii	"t[2] = _RAND48_MULT_2; _r->_r48->_add = _RAND48_ADD"
	.ascii	"; _r->_r48->_rand_next = 1; } while (0)\000"
.LASF1017:
	.ascii	"isfinite(__x) (__builtin_isfinite (__x))\000"
.LASF1186:
	.ascii	"MLX90640_CalculateTo\000"
.LASF506:
	.ascii	"char +0\000"
.LASF67:
	.ascii	"__INTPTR_TYPE__ int\000"
.LASF1025:
	.ascii	"islessequal(__x,__y) (__builtin_islessequal (__x, _"
	.ascii	"_y))\000"
.LASF68:
	.ascii	"__UINTPTR_TYPE__ unsigned int\000"
.LASF362:
	.ascii	"__REGISTER_PREFIX__ \000"
.LASF204:
	.ascii	"__FLT32_MAX__ 3.4028234663852886e+38F32\000"
.LASF165:
	.ascii	"__DBL_DIG__ 15\000"
.LASF275:
	.ascii	"__ULFRACT_EPSILON__ 0x1P-32ULR\000"
.LASF957:
	.ascii	"__RCSID(s) struct __hack\000"
.LASF805:
	.ascii	"_REENT_INIT_RESERVED_6_7 \000"
.LASF845:
	.ascii	"_REENT_L64A_BUF(ptr) ((ptr)->_misc->_l64a_buf)\000"
.LASF23:
	.ascii	"__SIZEOF_SIZE_T__ 4\000"
.LASF837:
	.ascii	"_REENT_MBLEN_STATE(ptr) ((ptr)->_misc->_mblen_state"
	.ascii	")\000"
.LASF833:
	.ascii	"_REENT_MP_FREELIST(ptr) ((ptr)->_mp->_freelist)\000"
.LASF545:
	.ascii	"__int_least32_t_defined 1\000"
.LASF116:
	.ascii	"__INT64_C(c) c ## LL\000"
.LASF1196:
	.ascii	"MLX90640_SetChessMode\000"
.LASF888:
	.ascii	"__GNUCLIKE_CTOR_SECTION_HANDLING 1\000"
.LASF972:
	.ascii	"__lockable __lock_annotate(lockable)\000"
.LASF883:
	.ascii	"__END_DECLS \000"
.LASF1103:
	.ascii	"pixel\000"
.LASF970:
	.ascii	"__datatype_type_tag(kind,type) \000"
.LASF622:
	.ascii	"MLX90640_FRAME_DATA_ERROR 8\000"
.LASF190:
	.ascii	"__LDBL_MIN__ 2.2250738585072014e-308L\000"
.LASF442:
	.ascii	"__ARM_FEATURE_CDE\000"
.LASF297:
	.ascii	"__ACCUM_IBIT__ 16\000"
.LASF618:
	.ascii	"MLX90640_OUTLIER_PIXELS_NUM_ERROR 4\000"
.LASF498:
	.ascii	"unsigned\000"
.LASF927:
	.ascii	"__pure __attribute__((__pure__))\000"
.LASF675:
	.ascii	"_LDBL_EQ_DBL 1\000"
.LASF1059:
	.ascii	"short int\000"
.LASF1133:
	.ascii	"KtaRC\000"
.LASF988:
	.ascii	"__pt_guarded_by(x) __lock_annotate(pt_guarded_by(x)"
	.ascii	")\000"
.LASF987:
	.ascii	"__guarded_by(x) __lock_annotate(guarded_by(x))\000"
.LASF121:
	.ascii	"__UINT16_C(c) c\000"
.LASF1097:
	.ascii	"paramsMLX90640\000"
.LASF1214:
	.ascii	"ctrlReg\000"
.LASF900:
	.ascii	"__CC_SUPPORTS___INLINE__ 1\000"
.LASF359:
	.ascii	"__UDA_IBIT__ 32\000"
.LASF1161:
	.ascii	"mode\000"
.LASF945:
	.ascii	"__printflike(fmtarg,firstvararg) __attribute__((__f"
	.ascii	"ormat__ (__printf__, fmtarg, firstvararg)))\000"
.LASF365:
	.ascii	"__NO_INLINE__ 1\000"
.LASF1190:
	.ascii	"range\000"
.LASF932:
	.ascii	"__fastcall __attribute__((__fastcall__))\000"
.LASF572:
	.ascii	"INT64_MIN (-__INT64_MAX__ - 1)\000"
.LASF620:
	.ascii	"MLX90640_ADJACENT_BAD_PIXELS_ERROR 6\000"
.LASF676:
	.ascii	"_LITE_EXIT 1\000"
.LASF9:
	.ascii	"__ATOMIC_RELAXED 0\000"
.LASF704:
	.ascii	"_ATTRIBUTE(attrs) __attribute__ (attrs)\000"
.LASF440:
	.ascii	"__ARM_FEATURE_COPROC\000"
.LASF1135:
	.ascii	"ktaTemp\000"
.LASF1204:
	.ascii	"resolution\000"
.LASF177:
	.ascii	"__DBL_HAS_INFINITY__ 1\000"
.LASF95:
	.ascii	"__SIG_ATOMIC_MAX__ 0x7fffffff\000"
.LASF214:
	.ascii	"__FLT64_MANT_DIG__ 53\000"
.LASF1220:
	.ascii	"MLX90640_I2CGeneralReset\000"
.LASF818:
	.ascii	"_REENT_CHECK_RAND48(var) _REENT_CHECK(var, _r48, st"
	.ascii	"ruct _rand48 *, sizeof *((var)->_r48), _REENT_INIT_"
	.ascii	"RAND48((var)))\000"
.LASF681:
	.ascii	"_RETARGETABLE_LOCKING 1\000"
.LASF1039:
	.ascii	"M_PI_4 0.78539816339744830962\000"
.LASF943:
	.ascii	"__rangeof(type,start,end) (__offsetof(type, end) - "
	.ascii	"__offsetof(type, start))\000"
.LASF615:
	.ascii	"MLX90640_I2C_NACK_ERROR 1\000"
.LASF1119:
	.ascii	"warn\000"
.LASF1023:
	.ascii	"isgreaterequal(__x,__y) (__builtin_isgreaterequal ("
	.ascii	"__x, __y))\000"
.LASF450:
	.ascii	"__USES_INITFINI__ 1\000"
.LASF631:
	.ascii	"MLX90640_COLUMN_NUM 32\000"
.LASF603:
	.ascii	"UINT8_C(x) __UINT8_C(x)\000"
.LASF424:
	.ascii	"__ARM_FP16_ARGS\000"
.LASF720:
	.ascii	"__need_ptrdiff_t\000"
.LASF170:
	.ascii	"__DBL_DECIMAL_DIG__ 17\000"
.LASF485:
	.ascii	"__have_long32 1\000"
.LASF311:
	.ascii	"__ULACCUM_FBIT__ 32\000"
.LASF876:
	.ascii	"__flexarr [0]\000"
.LASF748:
	.ascii	"_WCHAR_T_DEFINED \000"
.LASF1126:
	.ascii	"KvRoCo\000"
.LASF538:
	.ascii	"__int64_t_defined 1\000"
.LASF99:
	.ascii	"__INT16_MAX__ 0x7fff\000"
.LASF680:
	.ascii	"_REENT_CHECK_VERIFY 1\000"
.LASF371:
	.ascii	"__GCC_ATOMIC_CHAR_LOCK_FREE 2\000"
.LASF1015:
	.ascii	"math_errhandling (_MATH_ERRHANDLING_ERRNO | _MATH_E"
	.ascii	"RRHANDLING_ERREXCEPT)\000"
.LASF962:
	.ascii	"__DEVOLATILE(type,var) ((type)(__uintptr_t)(volatil"
	.ascii	"e void *)(var))\000"
.LASF740:
	.ascii	"__WCHAR_T__ \000"
.LASF482:
	.ascii	"__SSP_FORTIFY_LEVEL 0\000"
.LASF403:
	.ascii	"__ARM_FEATURE_SIMD32 1\000"
.LASF722:
	.ascii	"__SIZE_T__ \000"
.LASF481:
	.ascii	"__XSI_VISIBLE 0\000"
.LASF644:
	.ascii	"MLX90640_CTRL_REFRESH_SHIFT 7\000"
.LASF863:
	.ascii	"_REENT_IS_NULL(_ptr) ((_ptr) == NULL)\000"
.LASF326:
	.ascii	"__QQ_FBIT__ 7\000"
.LASF804:
	.ascii	"_REENT_INIT_RESERVED_2 \000"
.LASF1051:
	.ascii	"M_IVLN10 0.43429448190325182765\000"
.LASF285:
	.ascii	"__ULLFRACT_EPSILON__ 0x1P-64ULLR\000"
.LASF97:
	.ascii	"__SIG_ATOMIC_WIDTH__ 32\000"
.LASF790:
	.ascii	"_ATEXIT_INIT {_NULL, 0, {_NULL}, _NULL}\000"
.LASF224:
	.ascii	"__FLT64_EPSILON__ 2.2204460492503131e-16F64\000"
.LASF776:
	.ascii	"_LOCK_RECURSIVE_T _LOCK_T\000"
.LASF464:
	.ascii	"__GNUC_PREREQ__(ma,mi) __GNUC_PREREQ(ma, mi)\000"
.LASF361:
	.ascii	"__UTA_IBIT__ 64\000"
.LASF1147:
	.ascii	"accRowScale\000"
.LASF393:
	.ascii	"__ARM_FEATURE_CRC32\000"
.LASF951:
	.ascii	"__strong_reference(sym,aliassym) extern __typeof (s"
	.ascii	"ym) aliassym __attribute__ ((__alias__ (#sym)))\000"
.LASF1056:
	.ascii	"signed char\000"
.LASF935:
	.ascii	"__unreachable() __builtin_unreachable()\000"
.LASF385:
	.ascii	"__SIZEOF_WINT_T__ 4\000"
.LASF391:
	.ascii	"__ARM_FEATURE_UNALIGNED 1\000"
.LASF448:
	.ascii	"__GXX_TYPEINFO_EQUALITY_INLINE 0\000"
.LASF974:
	.ascii	"__locks_shared(...) __lock_annotate(shared_lock_fun"
	.ascii	"ction(__VA_ARGS__))\000"
.LASF884:
	.ascii	"__GNUCLIKE_ASM 3\000"
.LASF1140:
	.ascii	"occRowScale\000"
.LASF663:
	.ascii	"MLX90640_NIBBLE3(reg16) ((reg16 & MLX90640_NIBBLE3_"
	.ascii	"MASK) >> 8)\000"
.LASF126:
	.ascii	"__INT_FAST8_MAX__ 0x7fffffff\000"
.LASF209:
	.ascii	"__FLT32_HAS_DENORM__ 1\000"
.LASF946:
	.ascii	"__scanflike(fmtarg,firstvararg) __attribute__((__fo"
	.ascii	"rmat__ (__scanf__, fmtarg, firstvararg)))\000"
.LASF627:
	.ascii	"MLX90640_EEPROM_DUMP_NUM 832\000"
.LASF518:
	.ascii	"__FAST8 \000"
.LASF664:
	.ascii	"MLX90640_NIBBLE4(reg16) ((reg16 & MLX90640_NIBBLE4_"
	.ascii	"MASK) >> 12)\000"
.LASF323:
	.ascii	"__ULLACCUM_MIN__ 0.0ULLK\000"
.LASF761:
	.ascii	"_SYS__TYPES_H \000"
.LASF131:
	.ascii	"__INT_FAST32_WIDTH__ 32\000"
.LASF750:
	.ascii	"___int_wchar_t_h \000"
.LASF795:
	.ascii	"_RAND48_MULT_0 (0xe66d)\000"
.LASF849:
	.ascii	"_REENT_CVTBUF(_ptr) ((_ptr)->_cvtbuf)\000"
.LASF621:
	.ascii	"MLX90640_EEPROM_DATA_ERROR 7\000"
.LASF705:
	.ascii	"_ELIDABLE_INLINE static __inline__\000"
.LASF954:
	.ascii	"__sym_compat(sym,impl,verid) __asm__(\".symver \" #"
	.ascii	"impl \", \" #sym \"@\" #verid)\000"
.LASF516:
	.ascii	"__INT32 \"l\"\000"
.LASF439:
	.ascii	"__ARM_ASM_SYNTAX_UNIFIED__ 1\000"
.LASF49:
	.ascii	"__UINT32_TYPE__ long unsigned int\000"
.LASF394:
	.ascii	"__ARM_FEATURE_DOTPROD\000"
.LASF465:
	.ascii	"_DEFAULT_SOURCE\000"
.LASF434:
	.ascii	"__ARM_PCS_VFP 1\000"
.LASF735:
	.ascii	"_GCC_SIZE_T \000"
.LASF902:
	.ascii	"__CC_SUPPORTS_WARNING 1\000"
.LASF87:
	.ascii	"__WINT_WIDTH__ 32\000"
.LASF283:
	.ascii	"__ULLFRACT_MIN__ 0.0ULLR\000"
.LASF742:
	.ascii	"_T_WCHAR_ \000"
.LASF646:
	.ascii	"MLX90640_CTRL_RESOLUTION_SHIFT 10\000"
.LASF527:
	.ascii	"_INT8_T_DECLARED \000"
.LASF16:
	.ascii	"__SIZEOF_INT__ 4\000"
.LASF754:
	.ascii	"_BSD_WCHAR_T_\000"
.LASF277:
	.ascii	"__LLFRACT_IBIT__ 0\000"
.LASF605:
	.ascii	"UINT16_C(x) __UINT16_C(x)\000"
.LASF278:
	.ascii	"__LLFRACT_MIN__ (-0.5LLR-0.5LLR)\000"
.LASF1213:
	.ascii	"MLX90640_TriggerMeasurement\000"
.LASF495:
	.ascii	"_SYS__INTSUP_H \000"
.LASF290:
	.ascii	"__SACCUM_EPSILON__ 0x1P-7HK\000"
.LASF897:
	.ascii	"__GNUCLIKE_BUILTIN_MEMCPY 1\000"
.LASF412:
	.ascii	"__GCC_ASM_FLAG_OUTPUTS__ 1\000"
.LASF796:
	.ascii	"_RAND48_MULT_1 (0xdeec)\000"
.LASF588:
	.ascii	"INT_FAST64_MAX (__INT_FAST64_MAX__)\000"
.LASF421:
	.ascii	"__ARM_FP 4\000"
.LASF468:
	.ascii	"_POSIX_SOURCE 1\000"
.LASF1178:
	.ascii	"alphaCompensated\000"
.LASF64:
	.ascii	"__UINT_FAST16_TYPE__ unsigned int\000"
.LASF355:
	.ascii	"__UHA_IBIT__ 8\000"
.LASF971:
	.ascii	"__lock_annotate(x) \000"
.LASF763:
	.ascii	"__need_wint_t \000"
.LASF300:
	.ascii	"__ACCUM_EPSILON__ 0x1P-15K\000"
.LASF315:
	.ascii	"__ULACCUM_EPSILON__ 0x1P-32ULK\000"
.LASF1130:
	.ascii	"split\000"
.LASF181:
	.ascii	"__LDBL_DIG__ 15\000"
.LASF1079:
	.ascii	"gainEE\000"
.LASF89:
	.ascii	"__SIZE_WIDTH__ 32\000"
.LASF830:
	.ascii	"_REENT_MP_RESULT(ptr) ((ptr)->_mp->_result)\000"
.LASF78:
	.ascii	"__WINT_MIN__ 0U\000"
.LASF215:
	.ascii	"__FLT64_DIG__ 15\000"
.LASF1117:
	.ascii	"brokenPixCnt\000"
.LASF1142:
	.ascii	"occRemScale\000"
.LASF77:
	.ascii	"__WINT_MAX__ 0xffffffffU\000"
.LASF108:
	.ascii	"__INT_LEAST8_WIDTH__ 8\000"
.LASF1084:
	.ascii	"KsTa\000"
.LASF872:
	.ascii	"__long_double_t long double\000"
.LASF1141:
	.ascii	"occColumnScale\000"
.LASF52:
	.ascii	"__INT_LEAST16_TYPE__ short int\000"
.LASF624:
	.ascii	"BIT_MASK(x) (1UL << (x))\000"
.LASF171:
	.ascii	"__DBL_MAX__ ((double)1.7976931348623157e+308L)\000"
.LASF1096:
	.ascii	"float\000"
.LASF276:
	.ascii	"__LLFRACT_FBIT__ 63\000"
.LASF210:
	.ascii	"__FLT32_HAS_INFINITY__ 1\000"
.LASF625:
	.ascii	"REG_MASK(sbit,nbits) ~((~(~0UL << (nbits))) << (sbi"
	.ascii	"t))\000"
.LASF413:
	.ascii	"__thumb__ 1\000"
.LASF185:
	.ascii	"__LDBL_MAX_10_EXP__ 308\000"
.LASF1170:
	.ascii	"resolutionCorrection\000"
.LASF418:
	.ascii	"__ARMEL__ 1\000"
.LASF947:
	.ascii	"__format_arg(fmtarg) __attribute__((__format_arg__ "
	.ascii	"(fmtarg)))\000"
.LASF894:
	.ascii	"__compiler_membar() __asm __volatile(\" \" : : : \""
	.ascii	"memory\")\000"
.LASF781:
	.ascii	"__lock_close(lock) __retarget_lock_close(lock)\000"
.LASF1074:
	.ascii	"vdd25\000"
.LASF1093:
	.ascii	"ilChessC\000"
.LASF513:
	.ascii	"_INT32_EQ_LONG \000"
.LASF686:
	.ascii	"_SUPPORTS_ERREXCEPT \000"
.LASF80:
	.ascii	"__SIZE_MAX__ 0xffffffffU\000"
.LASF243:
	.ascii	"__FLT32X_HAS_INFINITY__ 1\000"
.LASF1018:
	.ascii	"isinf(__x) (__builtin_isinf_sign (__x))\000"
.LASF928:
	.ascii	"__always_inline __inline__ __attribute__((__always_"
	.ascii	"inline__))\000"
.LASF409:
	.ascii	"__ARM_ARCH\000"
.LASF556:
	.ascii	"UINT8_MAX (__UINT8_MAX__)\000"
.LASF73:
	.ascii	"__LONG_MAX__ 0x7fffffffL\000"
.LASF647:
	.ascii	"MLX90640_CTRL_RESOLUTION_MASK REG_MASK(MLX90640_CTR"
	.ascii	"L_RESOLUTION_SHIFT,2)\000"
.LASF866:
	.ascii	"_SYS_CDEFS_H_ \000"
.LASF580:
	.ascii	"UINT_FAST8_MAX (__UINT_FAST8_MAX__)\000"
.LASF543:
	.ascii	"__int_least8_t_defined 1\000"
.LASF511:
	.ascii	"long +4\000"
.LASF1062:
	.ascii	"__int32_t\000"
.LASF930:
	.ascii	"__nonnull(x) __attribute__((__nonnull__ x))\000"
.LASF617:
	.ascii	"MLX90640_BROKEN_PIXELS_NUM_ERROR 3\000"
.LASF400:
	.ascii	"__ARM_FEATURE_LDREX 7\000"
.LASF784:
	.ascii	"__lock_acquire_recursive(lock) __retarget_lock_acqu"
	.ascii	"ire_recursive(lock)\000"
.LASF38:
	.ascii	"__INTMAX_TYPE__ long long int\000"
.LASF280:
	.ascii	"__LLFRACT_EPSILON__ 0x1P-63LLR\000"
.LASF249:
	.ascii	"__SFRACT_MAX__ 0X7FP-7HR\000"
.LASF230:
	.ascii	"__FLT32X_MANT_DIG__ 53\000"
.LASF1144:
	.ascii	"accRow\000"
.LASF86:
	.ascii	"__WCHAR_WIDTH__ 32\000"
.LASF1108:
	.ascii	"temp\000"
.LASF907:
	.ascii	"__CONCAT(x,y) __CONCAT1(x,y)\000"
.LASF110:
	.ascii	"__INT16_C(c) c\000"
.LASF1164:
	.ascii	"frameData\000"
.LASF1201:
	.ascii	"MLX90640_SetRefreshRate\000"
.LASF351:
	.ascii	"__DA_IBIT__ 32\000"
.LASF88:
	.ascii	"__PTRDIFF_WIDTH__ 32\000"
.LASF507:
	.ascii	"short +1\000"
.LASF963:
	.ascii	"__DEQUALIFY(type,var) ((type)(__uintptr_t)(const vo"
	.ascii	"latile void *)(var))\000"
.LASF630:
	.ascii	"MLX90640_LINE_NUM 24\000"
.LASF780:
	.ascii	"__lock_init_recursive(lock) __retarget_lock_init_re"
	.ascii	"cursive(&lock)\000"
.LASF13:
	.ascii	"__ATOMIC_ACQ_REL 4\000"
.LASF45:
	.ascii	"__INT32_TYPE__ long int\000"
.LASF918:
	.ascii	"__packed __attribute__((__packed__))\000"
.LASF167:
	.ascii	"__DBL_MIN_10_EXP__ (-307)\000"
.LASF942:
	.ascii	"__offsetof(type,field) offsetof(type, field)\000"
.LASF1212:
	.ascii	"data\000"
.LASF1005:
	.ascii	"FP_INFINITE 1\000"
.LASF578:
	.ascii	"INT_FAST8_MIN (-__INT_FAST8_MAX__ - 1)\000"
.LASF979:
	.ascii	"__asserts_shared(...) __lock_annotate(assert_shared"
	.ascii	"_lock(__VA_ARGS__))\000"
.LASF879:
	.ascii	"__ptrvalue \000"
.LASF775:
	.ascii	"__SYS_LOCK_H__ \000"
.LASF501:
	.ascii	"__int20\000"
.LASF1184:
	.ascii	"subPage\000"
.LASF585:
	.ascii	"INT_FAST32_MAX (__INT_FAST32_MAX__)\000"
.LASF205:
	.ascii	"__FLT32_NORM_MAX__ 3.4028234663852886e+38F32\000"
.LASF800:
	.ascii	"_REENT_ASCTIME_SIZE 26\000"
.LASF551:
	.ascii	"INTPTR_MIN (-__INTPTR_MAX__ - 1)\000"
.LASF643:
	.ascii	"MLX90640_CTRL_TRIG_READY_MASK BIT_MASK(15)\000"
.LASF1032:
	.ascii	"M_E 2.7182818284590452354\000"
.LASF469:
	.ascii	"_POSIX_C_SOURCE\000"
.LASF92:
	.ascii	"__UINTMAX_MAX__ 0xffffffffffffffffULL\000"
.LASF164:
	.ascii	"__DBL_MANT_DIG__ 53\000"
.LASF878:
	.ascii	"__unbounded \000"
.LASF272:
	.ascii	"__ULFRACT_IBIT__ 0\000"
.LASF1029:
	.ascii	"signgam (*__signgam())\000"
.LASF610:
	.ascii	"INTMAX_C(x) __INTMAX_C(x)\000"
.LASF133:
	.ascii	"__INT_FAST64_WIDTH__ 64\000"
.LASF72:
	.ascii	"__INT_MAX__ 0x7fffffff\000"
.LASF54:
	.ascii	"__INT_LEAST64_TYPE__ long long int\000"
.LASF1166:
	.ascii	"MLX90640_GetTa\000"
.LASF660:
	.ascii	"MLX90640_NIBBLE4_MASK 0xF000\000"
.LASF443:
	.ascii	"__ARM_FEATURE_CDE_COPROC\000"
.LASF698:
	.ascii	"_REENT_SMALL \000"
	.ident	"GCC: (GNU Tools for STM32 11.3.rel1.20230519-1941) 11.3.1 20220712"
