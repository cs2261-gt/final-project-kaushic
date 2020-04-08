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
	mov	r7, #129
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
	.global	drawGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawGame, %function
drawGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	lr, #0
	ldr	r3, .L20
	ldr	r0, [r3, #28]
	ldr	r2, [r3, #36]
	ldr	ip, .L20+4
	ldr	r1, [r3, #4]
	ldr	r5, [r3]
	add	r2, r2, r0, lsl #5
	ldr	r0, .L20+8
	lsl	r2, r2, #2
	orr	r1, r1, ip
	ldr	r3, .L20+12
	strh	r2, [r0, #4]	@ movhi
	strh	r5, [r0]	@ movhi
	strh	r1, [r0, #2]	@ movhi
	ldrh	r6, [r0, #8]
	ldrh	r2, [r0, #10]
	ldrh	r5, [r0, #12]
	ldr	r7, .L20+16
	mov	r4, ip
	add	ip, r3, #140
.L10:
	ldr	r1, [r3, #24]
	cmp	r1, #0
	beq	.L9
	mov	r5, #516
	mov	lr, #1
	ldr	r1, [r3, #4]
	and	r2, r4, #32768
	and	r1, r1, r7
	ldrb	r6, [r3]	@ zero_extendqisi2
	orr	r2, r2, r1
.L9:
	add	r3, r3, #28
	cmp	ip, r3
	bne	.L10
	cmp	lr, #0
	strhne	r6, [r0, #8]	@ movhi
	strhne	r5, [r0, #12]	@ movhi
	strhne	r2, [r0, #10]	@ movhi
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L21:
	.align	2
.L20:
	.word	doctor
	.word	-32768
	.word	shadowOAM
	.word	pills
	.word	511
	.size	drawGame, .-drawGame
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
	@ link register save eliminated.
	mov	r1, #67108864
	ldr	r3, .L24
	ldr	r3, [r3]
	tst	r3, #1
	lsl	r2, r3, #16
	addeq	r3, r3, r3, lsr #31
	asreq	r3, r3, #1
	lsleq	r3, r3, #16
	lsr	r2, r2, #16
	lsreq	r3, r3, #16
	strh	r2, [r1, #16]	@ movhi
	strheq	r3, [r1, #20]	@ movhi
	bx	lr
.L25:
	.align	2
.L24:
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
	mov	r4, #129
	mov	lr, #3
	mov	r0, #1
	mov	r1, #16
	ldr	r3, .L28
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
.L29:
	.align	2
.L28:
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
	@ link register save eliminated.
	ldr	r1, .L31
	ldr	r2, [r1, #4]
	mvn	r2, r2, lsl #17
	mvn	r2, r2, lsr #17
	ldr	ip, [r1, #28]
	ldr	r3, [r1, #36]
	ldr	r0, .L31+4
	ldr	r1, [r1]
	add	r3, r3, ip, lsl #5
	lsl	r3, r3, #2
	strh	r2, [r0, #2]	@ movhi
	strh	r1, [r0]	@ movhi
	strh	r3, [r0, #4]	@ movhi
	bx	lr
.L32:
	.align	2
.L31:
	.word	doctor
	.word	shadowOAM
	.size	drawDoctor, .-drawDoctor
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
	ldr	r3, .L37
	add	r0, r3, #140
.L34:
	str	r2, [r3, #20]
	str	r2, [r3, #16]
	str	r2, [r3, #8]
	str	r2, [r3, #12]
	str	r1, [r3, #4]
	str	ip, [r3]
	str	r1, [r3, #24]
	add	r3, r3, #28
	cmp	r3, r0
	bne	.L34
	bx	lr
.L38:
	.align	2
.L37:
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
	ldr	r0, .L53
	mov	r2, r0
	ldr	r1, [r2, #24]
	cmp	r1, #0
	mov	r3, #0
	beq	.L51
.L40:
	add	r3, r3, #1
	cmp	r3, #5
	add	r2, r2, #28
	bxeq	lr
	ldr	r1, [r2, #24]
	cmp	r1, #0
	bne	.L40
.L51:
	mov	r1, #125
	ldr	ip, .L53+4
	str	lr, [sp, #-4]!
	ldr	lr, [ip, #28]
	rsb	r2, r3, r3, lsl #3
	cmp	lr, #0
	str	r1, [r0, r2, lsl #2]
	add	r2, r0, r2, lsl #2
	lsl	r1, r3, #3
	beq	.L52
	cmp	lr, #1
	mvneq	lr, #7
	ldreq	ip, [ip, #4]
	subeq	ip, ip, #18
	stmibeq	r2, {ip, lr}
.L42:
	mov	r2, #1
	sub	r3, r1, r3
	add	r0, r0, r3, lsl #2
	str	r2, [r0, #24]
	ldr	lr, [sp], #4
	bx	lr
.L52:
	mov	lr, #8
	ldr	ip, [ip, #4]
	stmib	r2, {ip, lr}
	b	.L42
.L54:
	.align	2
.L53:
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
	push	{r4, r5, r6, lr}
	ldr	r4, .L79
	ldr	r3, [r4, #28]
	cmp	r3, #4
	movne	r2, #4
	strne	r3, [r4, #32]
	strne	r2, [r4, #28]
	ldr	r3, .L79+4
	ldr	r2, [r4, #24]
	smull	r0, r1, r3, r2
	asr	r3, r2, #31
	rsb	r3, r3, r1, asr #2
	add	r3, r3, r3, lsl #2
	subs	r3, r2, r3, lsl #1
	bne	.L57
	add	r0, r4, #36
	ldm	r0, {r0, r1}
	sub	r1, r1, #1
	cmp	r0, r1
	addlt	r0, r0, #1
	strlt	r0, [r4, #36]
	strge	r3, [r4, #36]
.L57:
	ldr	r1, .L79+8
	ldrh	r3, [r1, #48]
	ands	r3, r3, #16
	bne	.L59
	ldr	r5, [r4, #4]
	ldr	r0, [r4, #8]
	ldr	ip, [r4, #16]
	ldr	r1, .L79+12
	str	r3, [r4, #28]
	ldr	r3, .L79+8
	add	ip, r5, ip
	rsb	r6, r0, #240
	cmp	ip, r6
	ldr	lr, [r1]
	ldrh	r3, [r3, #48]
	addle	r5, r5, r0
	strle	r5, [r4, #4]
	add	ip, lr, #1
	tst	r3, #32
	str	ip, [r1]
	bne	.L62
.L68:
	mov	ip, #1
	ldr	r3, [r4, #4]
	cmp	r3, r0
	subge	r0, r3, r0
	str	lr, [r1]
	str	ip, [r4, #28]
	strge	r0, [r4, #4]
.L62:
	add	r2, r2, #1
	str	r2, [r4, #24]
.L67:
	ldr	r3, .L79+16
	ldrh	r3, [r3]
	tst	r3, #1
	ldr	r3, [r4, #44]
	beq	.L77
	ldr	r2, .L79+20
	ldrh	r2, [r2]
	tst	r2, #1
	beq	.L65
.L77:
	add	r3, r3, #1
.L64:
	str	r3, [r4, #44]
	pop	{r4, r5, r6, lr}
	bx	lr
.L65:
	cmp	r3, #15
	ble	.L77
	bl	firePill
	mov	r3, #1
	b	.L64
.L59:
	ldrh	r3, [r1, #48]
	tst	r3, #32
	beq	.L78
	ldr	r3, [r4, #28]
	cmp	r3, #4
	bne	.L62
	mov	r2, #0
	ldr	r3, [r4, #32]
	str	r2, [r4, #36]
	str	r3, [r4, #28]
	b	.L67
.L78:
	ldr	r1, .L79+12
	ldr	lr, [r1]
	ldr	r0, [r4, #8]
	sub	lr, lr, #1
	b	.L68
.L80:
	.align	2
.L79:
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
	mov	ip, #67108864
	ldr	r3, .L90
	ldr	r3, [r3]
	ldr	r0, .L90+4
	tst	r3, #1
	lsl	r2, r3, #16
	addeq	r3, r3, r3, lsr #31
	ldr	r1, [r0]
	asreq	r3, r3, #1
	lsleq	r3, r3, #16
	add	r1, r1, #1
	lsreq	r3, r3, #16
	lsr	r2, r2, #16
	push	{r4, lr}
	str	r1, [r0]
	strh	r2, [ip, #16]	@ movhi
	strheq	r3, [ip, #20]	@ movhi
	bl	updateDoctor
	mov	r0, #0
	ldr	r3, .L90+8
	add	r1, r3, #140
.L87:
	ldr	r2, [r3, #24]
	cmp	r2, #0
	beq	.L84
	ldmib	r3, {r2, ip}
	add	r2, r2, ip
	cmn	r2, #30
	str	r2, [r3, #4]
	blt	.L85
	ldr	ip, [r3, #16]
	add	r2, r2, ip
	cmp	r2, #239
	ble	.L84
.L85:
	str	r0, [r3, #24]
.L84:
	add	r3, r3, #28
	cmp	r3, r1
	bne	.L87
	pop	{r4, lr}
	bx	lr
.L91:
	.align	2
.L90:
	.word	hOff
	.word	frameCounter
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
	cmn	r3, #30
	str	r3, [r0, #4]
	bge	.L97
.L95:
	mov	r3, #0
	str	r3, [r0, #24]
	bx	lr
.L97:
	ldr	r2, [r0, #16]
	add	r3, r3, r2
	cmp	r3, #239
	bxle	lr
	b	.L95
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
	@ link register save eliminated.
	ldr	r3, [r0, #24]
	cmp	r3, #0
	bxeq	lr
	ldr	r3, [r0, #4]
	lsl	r3, r3, #23
	lsr	r3, r3, #23
	mvn	r3, r3, lsl #17
	mov	r1, #516
	mvn	r3, r3, lsr #17
	ldrb	r0, [r0]	@ zero_extendqisi2
	ldr	r2, .L103
	strh	r3, [r2, #10]	@ movhi
	strh	r0, [r2, #8]	@ movhi
	strh	r1, [r2, #12]	@ movhi
	bx	lr
.L104:
	.align	2
.L103:
	.word	shadowOAM
	.size	drawPill, .-drawPill
	.comm	frameCounter,4,4
	.comm	pills,140,4
	.comm	doctor,48,4
	.comm	shadowOAM,1024,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
