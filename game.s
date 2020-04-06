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
	push	{r4, r5, r6, lr}
	mov	r5, #0
	ldr	r4, .L4
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L4+4
	mov	lr, pc
	bx	r4
	mov	r3, #1856
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L4+8
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L4+12
	ldr	r1, .L4+16
	mov	lr, pc
	bx	r4
	mov	r3, #224
	mov	r0, #3
	ldr	r2, .L4+20
	ldr	r1, .L4+24
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L4+28
	ldr	r1, .L4+32
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r0, #3
	ldr	r2, .L4+36
	ldr	r1, .L4+40
	mov	lr, pc
	bx	r4
	mov	r0, #3
	mov	r3, #6144
	ldr	r2, .L4+44
	ldr	r1, .L4+48
	mov	lr, pc
	bx	r4
	ldr	r1, .L4+52
	ldr	r2, .L4+56
	ldr	r3, .L4+60
	str	r5, [r1]
	str	r5, [r2]
	mov	r4, #120
	mov	lr, pc
	bx	r3
	mov	r2, #32
	mov	lr, #80
	mov	ip, #3
	mov	r0, #1
	mov	r1, #16
	ldr	r3, .L4+64
	str	r5, [r3, #24]
	str	r5, [r3, #36]
	str	r4, [r3, #4]
	str	lr, [r3]
	str	ip, [r3, #40]
	str	r0, [r3, #28]
	str	r1, [r3, #44]
	str	r2, [r3, #20]
	str	r2, [r3, #16]
	str	r2, [r3, #8]
	str	r2, [r3, #12]
	pop	{r4, r5, r6, lr}
	bx	lr
.L5:
	.align	2
.L4:
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
	.word	hideSprites
	.word	doctor
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
	ldr	r3, .L9
	mov	lr, pc
	bx	r3
	mov	r1, #67108864
	ldr	r3, .L9+4
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
.L10:
	.align	2
.L9:
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
	push	{r4, r5, lr}
	mov	r2, #32
	mov	r5, #120
	mov	r4, #80
	mov	lr, #3
	mov	r1, #0
	mov	ip, #1
	mov	r0, #16
	ldr	r3, .L13
	stm	r3, {r4, r5}
	str	lr, [r3, #40]
	str	r2, [r3, #20]
	str	r2, [r3, #16]
	str	r2, [r3, #8]
	str	r2, [r3, #12]
	str	ip, [r3, #28]
	str	r0, [r3, #44]
	str	r1, [r3, #24]
	str	r1, [r3, #36]
	pop	{r4, r5, lr}
	bx	lr
.L14:
	.align	2
.L13:
	.word	doctor
	.size	initDoctor, .-initDoctor
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
	ldr	r3, .L39
	ldr	r2, [r3, #28]
	cmp	r2, #0
	movne	r1, #0
	str	lr, [sp, #-4]!
	strne	r2, [r3, #32]
	strne	r1, [r3, #28]
	ldr	r2, .L39+4
	ldr	r1, [r3, #24]
	smull	ip, r0, r2, r1
	asr	r2, r1, #31
	rsb	r2, r2, r0, asr #2
	add	r2, r2, r2, lsl #2
	subs	r2, r1, r2, lsl #1
	bne	.L17
	ldr	r0, [r3, #40]
	ldr	ip, [r3, #36]
	sub	r0, r0, #1
	cmp	ip, r0
	addlt	ip, ip, #1
	strlt	ip, [r3, #36]
	strge	r2, [r3, #36]
.L17:
	ldr	r2, .L39+8
	ldrh	r0, [r2, #48]
	tst	r0, #16
	bne	.L19
	mov	ip, #1
	ldr	r0, .L39+12
	ldrh	lr, [r2, #48]
	ldr	r2, [r0]
	tst	lr, #32
	add	lr, r2, ip
	str	lr, [r0]
	str	ip, [r3, #28]
	bne	.L23
.L20:
	mov	ip, #2
	str	r2, [r0]
	str	ip, [r3, #28]
.L23:
	add	r1, r1, #1
	str	r1, [r3, #24]
.L24:
	ldr	r2, .L39+16
	ldrh	r2, [r2]
	tst	r2, #1
	ldr	r2, [r3, #44]
	beq	.L37
	ldr	r1, .L39+20
	ldrh	r1, [r1]
	tst	r1, #1
	beq	.L27
.L37:
	add	r2, r2, #1
	str	r2, [r3, #44]
	ldr	lr, [sp], #4
	bx	lr
.L27:
	cmp	r2, #15
	ble	.L37
	ldr	r2, .L39+24
	ldr	r1, [r2, #24]
	cmp	r1, #0
	moveq	r1, #1
	streq	r1, [r2, #24]
	mov	r2, #1
	ldr	lr, [sp], #4
	str	r2, [r3, #44]
	bx	lr
.L19:
	ldrh	r2, [r2, #48]
	tst	r2, #32
	beq	.L38
	ldr	r2, [r3, #28]
	cmp	r2, #0
	bne	.L23
	ldr	r1, [r3, #32]
	str	r2, [r3, #36]
	str	r1, [r3, #28]
	b	.L24
.L38:
	ldr	r0, .L39+12
	ldr	r2, [r0]
	sub	r2, r2, #1
	b	.L20
.L40:
	.align	2
.L39:
	.word	doctor
	.word	1717986919
	.word	67109120
	.word	hOff
	.word	oldButtons
	.word	buttons
	.word	pill
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
	ldr	r2, .L44
	ldr	r3, [r2]
	push	{r4, lr}
	add	r3, r3, #1
	ldr	r1, .L44+4
	str	r3, [r2]
	mov	lr, pc
	bx	r1
	mov	r1, #67108864
	ldr	r3, .L44+8
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
	b	updateDoctor
.L45:
	.align	2
.L44:
	.word	frameCounter
	.word	waitForVBlank
	.word	hOff
	.size	updateGame, .-updateGame
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
	ldr	r1, .L48
	ldr	r2, [r1, #4]
	mvn	r2, r2, lsl #17
	mvn	r2, r2, lsr #17
	push	{r4, lr}
	ldr	r3, [r1, #36]
	ldr	lr, [r1, #28]
	ldr	r0, .L48+4
	ldr	ip, [r1]
	add	r3, r3, lr, lsl #5
	lsl	r3, r3, #2
	ldr	r1, .L48+8
	strh	r2, [r0, #2]	@ movhi
	strh	ip, [r0]	@ movhi
	strh	r3, [r0, #4]	@ movhi
	mov	lr, pc
	bx	r1
	pop	{r4, lr}
	bx	lr
.L49:
	.align	2
.L48:
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
	push	{r4, lr}
	ldr	r3, .L52
	mov	lr, pc
	bx	r3
	ldr	r4, .L52+4
	bl	drawDoctor
	mov	r3, #1024
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L52+8
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L53:
	.align	2
.L52:
	.word	waitForVBlank
	.word	DMANow
	.word	shadowOAM
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
	str	lr, [sp, #-4]!
	mov	r2, #8
	mov	lr, #0
	ldr	r1, .L56
	ldr	r3, [r1, #20]
	ldr	ip, [r1]
	ldr	r0, [r1, #4]
	add	r3, r3, r3, lsr #31
	ldr	r1, [r1, #16]
	add	ip, ip, r3, asr #1
	ldr	r3, .L56+4
	add	r1, r0, r1
	str	lr, [r3, #24]
	str	ip, [r3]
	str	r1, [r3, #4]
	str	r2, [r3, #20]
	str	r2, [r3, #16]
	str	r2, [r3, #8]
	str	r2, [r3, #12]
	ldr	lr, [sp], #4
	bx	lr
.L57:
	.align	2
.L56:
	.word	doctor
	.word	pill
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
	@ link register save eliminated.
	ldr	r3, .L60
	ldr	r2, [r3, #24]
	cmp	r2, #0
	moveq	r2, #1
	streq	r2, [r3, #24]
	bx	lr
.L61:
	.align	2
.L60:
	.word	pill
	.size	firePill, .-firePill
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
	ldr	r3, .L66
	ldr	r2, [r3, #24]
	cmp	r2, #1
	bxne	lr
	ldmib	r3, {r1, r2}
	add	r2, r1, r2
	cmp	r2, #240
	str	r2, [r3, #4]
	movgt	r2, #0
	strgt	r2, [r3, #24]
	bx	lr
.L67:
	.align	2
.L66:
	.word	pill
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
	ldr	r2, .L70
	ldr	r3, [r2, #4]
	mvn	r3, r3, lsl #17
	mov	r0, #516
	mvn	r3, r3, lsr #17
	push	{r4, lr}
	ldr	ip, [r2]
	ldr	r2, .L70+4
	ldr	r1, .L70+8
	strh	r3, [r2, #10]	@ movhi
	strh	ip, [r2, #8]	@ movhi
	strh	r0, [r2, #12]	@ movhi
	mov	lr, pc
	bx	r1
	pop	{r4, lr}
	bx	lr
.L71:
	.align	2
.L70:
	.word	pill
	.word	shadowOAM
	.word	waitForVBlank
	.size	drawPill, .-drawPill
	.comm	frameCounter,4,4
	.comm	pill,28,4
	.comm	doctor,48,4
	.comm	shadowOAM,1024,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
