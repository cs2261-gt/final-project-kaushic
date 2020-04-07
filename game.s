	.cpu arm7tdmi
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"game.c"
	.text
	.align	2
	.global	initGame
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	initGame, %function
initGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r3, #256
	ldr	r4, .L6
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L6+4
	mov	lr, pc
	bx	r4
	mov	r3, #1856
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L6+8
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L6+12
	ldr	r1, .L6+16
	mov	lr, pc
	bx	r4
	mov	r3, #224
	mov	r0, #3
	ldr	r2, .L6+20
	ldr	r1, .L6+24
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L6+28
	ldr	r1, .L6+32
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r0, #3
	ldr	r2, .L6+36
	ldr	r1, .L6+40
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L6+44
	ldr	r1, .L6+48
	mov	lr, pc
	bx	r4
	mov	r3, #0
	mov	r5, #32
	mov	r4, #1
	mov	lr, #16
	mov	r7, #128
	mov	r6, #3
	mov	r2, #8
	mvn	ip, #194
	ldr	r1, .L6+52
	str	r3, [r1]
	ldr	r1, .L6+56
	str	r3, [r1]
	ldr	r1, .L6+60
	mov	r0, r3
	str	r3, [r1, #24]
	str	r3, [r1, #36]
	str	r3, [r1, #28]
	ldr	r3, .L6+64
	str	r7, [r1]
	str	r6, [r1, #40]
	str	r5, [r1, #20]
	str	r5, [r1, #16]
	str	r4, [r1, #8]
	str	r4, [r1, #12]
	str	lr, [r1, #4]
	str	lr, [r1, #44]
	add	r1, r3, #140
.L2:
	str	r2, [r3, #20]
	str	r2, [r3, #16]
	str	r2, [r3, #8]
	str	r2, [r3, #12]
	str	r0, [r3, #4]
	str	ip, [r3]
	str	r0, [r3, #24]
	add	r3, r3, #28
	cmp	r3, r1
	bne	.L2
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L7:
	.align	2
.L6:
	.word	DMANow
	.word	skyPal
	.word	skyTiles
	.word	100720640
	.word	skyMap
	.word	100679680
	.word	cityTiles
	.word	100724736
	.word	cityMap
	.word	83886592
	.word	spritesheetPal
	.word	100728832
	.word	spritesheetTiles
	.word	hOff
	.word	frameCounter
	.word	doctor
	.word	pills
	.size	initGame, .-initGame
	.align	2
	.global	updateBkgd
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateBkgd, %function
updateBkgd:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L11
	mov	lr, pc
	bx	r3
	mov	r1, #67108864
	ldr	r3, .L11+4
	ldr	r3, [r3]
	tst	r3, #1
	lsl	r2, r3, #16
	addeq	r3, r3, r3, lsr #31
	asreq	r3, r3, #1
	lsleq	r3, r3, #16
	lsr	r2, r2, #16
	lsreq	r3, r3, #16
	strh	r2, [r1, #16]	@ movhi
	pop	{r4, lr}
	strheq	r3, [r1, #20]	@ movhi
	bx	lr
.L12:
	.align	2
.L11:
	.word	waitForVBlank
	.word	hOff
	.size	updateBkgd, .-updateBkgd
	.align	2
	.global	initDoctor
	.syntax unified
	.arm
	.fpu softvfp
	.type	initDoctor, %function
initDoctor:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r2, #0
	mov	ip, #32
	mov	r4, #128
	mov	lr, #3
	mov	r0, #1
	mov	r1, #16
	ldr	r3, .L15
	str	r4, [r3]
	str	lr, [r3, #40]
	str	ip, [r3, #20]
	str	ip, [r3, #16]
	str	r0, [r3, #8]
	str	r0, [r3, #12]
	str	r1, [r3, #4]
	str	r1, [r3, #44]
	str	r2, [r3, #24]
	str	r2, [r3, #36]
	str	r2, [r3, #28]
	pop	{r4, lr}
	bx	lr
.L16:
	.align	2
.L15:
	.word	doctor
	.size	initDoctor, .-initDoctor
	.align	2
	.global	drawDoctor
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawDoctor, %function
drawDoctor:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r1, .L19
	ldr	r2, [r1, #4]
	mvn	r2, r2, lsl #17
	mvn	r2, r2, lsr #17
	push	{r4, lr}
	ldr	r3, [r1, #36]
	ldr	lr, [r1, #28]
	ldr	r0, .L19+4
	ldr	ip, [r1]
	add	r3, r3, lr, lsl #5
	lsl	r3, r3, #2
	ldr	r1, .L19+8
	strh	r2, [r0, #2]	@ movhi
	strh	ip, [r0]	@ movhi
	strh	r3, [r0, #4]	@ movhi
	mov	lr, pc
	bx	r1
	pop	{r4, lr}
	bx	lr
.L20:
	.align	2
.L19:
	.word	doctor
	.word	shadowOAM
	.word	waitForVBlank
	.size	drawDoctor, .-drawDoctor
	.align	2
	.global	drawGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawGame, %function
drawGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r6, .L30
	mov	lr, pc
	bx	r6
	mov	r8, #516
	bl	drawDoctor
	ldr	r4, .L30+4
	ldr	r9, .L30+8
	ldr	r7, .L30+12
	add	r5, r4, #140
.L23:
	ldr	r3, [r4, #24]
	cmp	r3, #0
	bne	.L29
.L22:
	add	r4, r4, #28
	cmp	r4, r5
	bne	.L23
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L29:
	ldm	r4, {r2, r3}
	orr	r3, r3, r7
	strh	r8, [r9, #12]	@ movhi
	strh	r3, [r9, #10]	@ movhi
	strh	r2, [r9, #8]	@ movhi
	mov	lr, pc
	bx	r6
	b	.L22
.L31:
	.align	2
.L30:
	.word	waitForVBlank
	.word	pills
	.word	shadowOAM
	.word	-32768
	.size	drawGame, .-drawGame
	.align	2
	.global	initPill
	.syntax unified
	.arm
	.fpu softvfp
	.type	initPill, %function
initPill:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #8
	mov	r1, #0
	mvn	ip, #194
	ldr	r3, .L36
	add	r0, r3, #140
.L33:
	str	r2, [r3, #20]
	str	r2, [r3, #16]
	str	r2, [r3, #8]
	str	r2, [r3, #12]
	str	r1, [r3, #4]
	str	ip, [r3]
	str	r1, [r3, #24]
	add	r3, r3, #28
	cmp	r3, r0
	bne	.L33
	bx	lr
.L37:
	.align	2
.L36:
	.word	pills
	.size	initPill, .-initPill
	.align	2
	.global	firePill
	.syntax unified
	.arm
	.fpu softvfp
	.type	firePill, %function
firePill:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r0, .L52
	mov	r2, r0
	ldr	r1, [r2, #24]
	cmp	r1, #0
	mov	r3, #0
	beq	.L50
.L39:
	add	r3, r3, #1
	cmp	r3, #5
	add	r2, r2, #28
	bxeq	lr
	ldr	r1, [r2, #24]
	cmp	r1, #0
	bne	.L39
.L50:
	mov	r1, #125
	ldr	ip, .L52+4
	str	lr, [sp, #-4]!
	ldr	lr, [ip, #28]
	rsb	r2, r3, r3, lsl #3
	cmp	lr, #0
	str	r1, [r0, r2, lsl #2]
	add	r2, r0, r2, lsl #2
	lsl	r1, r3, #3
	beq	.L51
	cmp	lr, #1
	mvneq	lr, #7
	ldreq	ip, [ip, #4]
	subeq	ip, ip, #18
	stmibeq	r2, {ip, lr}
.L41:
	mov	r2, #1
	sub	r3, r1, r3
	add	r0, r0, r3, lsl #2
	str	r2, [r0, #24]
	ldr	lr, [sp], #4
	bx	lr
.L51:
	mov	lr, #8
	ldr	ip, [ip, #4]
	stmib	r2, {ip, lr}
	b	.L41
.L53:
	.align	2
.L52:
	.word	pills
	.word	doctor
	.size	firePill, .-firePill
	.align	2
	.global	updateDoctor
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateDoctor, %function
updateDoctor:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r4, .L82
	ldr	r3, [r4, #28]
	cmp	r3, #2
	movne	r2, #2
	strne	r3, [r4, #32]
	strne	r2, [r4, #28]
	ldr	r3, .L82+4
	ldr	r2, [r4, #24]
	smull	r0, r1, r3, r2
	asr	r3, r2, #31
	rsb	r3, r3, r1, asr #2
	add	r3, r3, r3, lsl #2
	subs	r3, r2, r3, lsl #1
	bne	.L56
	add	r0, r4, #36
	ldm	r0, {r0, r1}
	sub	r1, r1, #1
	cmp	r0, r1
	addlt	r0, r0, #1
	strlt	r0, [r4, #36]
	strge	r3, [r4, #36]
.L56:
	ldr	r1, .L82+8
	ldrh	r3, [r1, #48]
	ands	r3, r3, #16
	bne	.L58
	ldr	r0, .L82+12
	ldr	r1, [r4, #4]
	ldr	r5, [r4, #16]
	ldr	ip, [r4, #8]
	ldr	lr, [r0]
	add	r8, r1, r5
	rsb	r7, ip, #240
	add	r6, lr, #1
	cmp	r8, r7
	str	r3, [r4, #28]
	str	r6, [r0]
	ble	.L80
.L61:
	ldr	r3, .L82+8
	ldrh	r3, [r3, #48]
	tst	r3, #32
	bne	.L64
.L70:
	mov	r1, #1
	ldr	r3, [r4, #4]
	cmp	r3, ip
	subge	r3, r3, ip
	strge	r3, [r4, #4]
	cmp	r3, #2
	str	lr, [r0]
	str	r1, [r4, #28]
	ldreq	r3, [r4, #16]
	rsbeq	r3, r3, #240
	streq	r3, [r4, #4]
.L64:
	add	r2, r2, #1
	str	r2, [r4, #24]
	b	.L69
.L58:
	ldrh	r3, [r1, #48]
	tst	r3, #32
	beq	.L81
	ldr	r3, [r4, #28]
	cmp	r3, #2
	bne	.L64
	mov	r2, #0
	ldr	r3, [r4, #32]
	str	r2, [r4, #36]
	str	r3, [r4, #28]
.L69:
	ldr	r3, .L82+16
	ldrh	r3, [r3]
	tst	r3, #1
	ldr	r3, [r4, #44]
	beq	.L79
	ldr	r2, .L82+20
	ldrh	r2, [r2]
	tst	r2, #1
	bne	.L79
	cmp	r3, #15
	bgt	.L68
.L79:
	add	r3, r3, #1
.L66:
	str	r3, [r4, #44]
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L80:
	add	r1, r1, ip
	rsb	r5, r5, #240
	cmp	r1, r5
	moveq	r1, r3
	str	r1, [r4, #4]
	b	.L61
.L81:
	ldr	r0, .L82+12
	ldr	lr, [r0]
	ldr	ip, [r4, #8]
	sub	lr, lr, #1
	b	.L70
.L68:
	bl	firePill
	mov	r3, #1
	b	.L66
.L83:
	.align	2
.L82:
	.word	doctor
	.word	1717986919
	.word	67109120
	.word	hOff
	.word	oldButtons
	.word	buttons
	.size	updateDoctor, .-updateDoctor
	.align	2
	.global	updateGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateGame, %function
updateGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L93
	ldr	r3, [r2]
	push	{r4, lr}
	add	r3, r3, #1
	ldr	r1, .L93+4
	str	r3, [r2]
	mov	lr, pc
	bx	r1
	mov	r1, #67108864
	ldr	r3, .L93+8
	ldr	r3, [r3]
	tst	r3, #1
	lsl	r2, r3, #16
	addeq	r3, r3, r3, lsr #31
	asreq	r3, r3, #1
	lsleq	r3, r3, #16
	lsreq	r3, r3, #16
	lsr	r2, r2, #16
	strh	r2, [r1, #16]	@ movhi
	strheq	r3, [r1, #20]	@ movhi
	bl	updateDoctor
	ldr	r3, .L93+12
	add	r1, r3, #140
.L87:
	ldr	r2, [r3, #24]
	cmp	r2, #0
	beq	.L86
	ldmib	r3, {r0, r2}
	add	r2, r0, r2
	sub	r0, r2, #1
	cmp	r0, #237
	strls	r2, [r3, #4]
.L86:
	add	r3, r3, #28
	cmp	r3, r1
	bne	.L87
	pop	{r4, lr}
	bx	lr
.L94:
	.align	2
.L93:
	.word	frameCounter
	.word	waitForVBlank
	.word	hOff
	.word	pills
	.size	updateGame, .-updateGame
	.align	2
	.global	updatePill
	.syntax unified
	.arm
	.fpu softvfp
	.type	updatePill, %function
updatePill:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #24]
	cmp	r3, #0
	bxeq	lr
	ldmib	r0, {r2, r3}
	add	r3, r2, r3
	sub	r2, r3, #1
	cmp	r2, #237
	strls	r3, [r0, #4]
	bx	lr
	.size	updatePill, .-updatePill
	.align	2
	.global	drawPill
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawPill, %function
drawPill:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #24]
	cmp	r3, #0
	bxeq	lr
	ldr	r3, [r0, #4]
	mvn	r3, r3, lsl #17
	mov	ip, #516
	mvn	r3, r3, lsr #17
	push	{r4, lr}
	ldr	r0, [r0]
	ldr	r2, .L109
	ldr	r1, .L109+4
	strh	r3, [r2, #10]	@ movhi
	strh	r0, [r2, #8]	@ movhi
	strh	ip, [r2, #12]	@ movhi
	mov	lr, pc
	bx	r1
	pop	{r4, lr}
	bx	lr
.L110:
	.align	2
.L109:
	.word	shadowOAM
	.word	waitForVBlank
	.size	drawPill, .-drawPill
	.comm	frameCounter,4,4
	.comm	pills,140,4
	.comm	doctor,48,4
	.comm	shadowOAM,1024,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
