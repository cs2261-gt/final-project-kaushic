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
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateEnemy.part.0, %function
updateEnemy.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r5, r0
	ldmib	r0, {r0, r3}
	add	r0, r0, r3
	sub	r3, r0, #1
	cmp	r3, #239
	str	r0, [r5, #4]
	sub	sp, sp, #20
	bls	.L2
	mov	r1, #0
	ldr	r2, .L30
	ldr	r3, [r2]
	sub	r3, r3, #1
	str	r3, [r2]
	str	r1, [r5, #28]
.L2:
	ldr	r6, .L30+4
	add	r1, r6, #16
	ldm	r1, {r1, ip}
	ldm	r6, {r2, r3}
	str	ip, [sp, #12]
	str	r2, [sp, #4]
	str	r1, [sp, #8]
	str	r3, [sp]
	add	r2, r5, #16
	ldm	r2, {r2, r3}
	ldr	r1, [r5]
	ldr	r9, .L30+8
	mov	lr, pc
	bx	r9
	cmp	r0, #0
	bne	.L26
	ldr	r2, .L30+12
	ldr	r3, [r2]
	sub	r3, r3, #1
	ldr	r10, .L30+16
	str	r3, [r2]
	ldr	r3, .L30+20
	str	r0, [r10]
	str	r0, [r3]
.L4:
	ldr	r4, .L30+24
	ldr	r8, .L30+28
	ldr	fp, .L30
	add	r7, r4, #140
.L13:
	ldr	r3, [r4, #24]
	cmp	r3, #0
	bne	.L27
.L6:
	ldr	r3, [r8]
	cmp	r3, #1
	beq	.L28
.L9:
	add	r4, r4, #28
	cmp	r4, r7
	bne	.L13
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L27:
	ldm	r4, {r2, r3}
	ldr	r0, [r4, #20]
	ldr	r1, [r4, #16]
	str	r2, [sp, #4]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r3, [sp]
	add	r2, r5, #16
	ldm	r2, {r2, r3}
	ldr	r1, [r5]
	ldr	r0, [r5, #4]
	mov	lr, pc
	bx	r9
	cmp	r0, #0
	beq	.L6
	ldr	r3, [r10]
	cmp	r3, #1
	beq	.L6
	mov	r2, #0
	ldr	r3, [fp]
	sub	r3, r3, #1
	str	r3, [fp]
	ldr	r3, [r8]
	cmp	r3, #1
	str	r2, [r5, #28]
	str	r2, [r4, #24]
	bne	.L9
.L28:
	ldm	r6, {r2, r3}
	ldr	r0, [r6, #20]
	ldr	r1, [r6, #16]
	str	r2, [sp, #4]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r3, [sp]
	add	r2, r5, #16
	ldm	r2, {r2, r3}
	ldr	r1, [r5]
	ldr	r0, [r5, #4]
	mov	lr, pc
	bx	r9
	cmp	r0, #0
	beq	.L9
	ldr	r2, [r5, #24]
	ldr	r3, [r5, #4]
	add	r2, r2, #1
	cmp	r3, #240
	str	r2, [r5, #24]
	beq	.L29
	ldr	r1, [r6, #4]
	ldr	r2, [r5, #8]
	cmp	r3, r1
	rsb	r2, r2, #0
	sublt	r3, r3, #5
	addge	r3, r3, #5
	str	r2, [r5, #8]
	str	r3, [r5, #4]
	b	.L9
.L26:
	mov	r2, #1
	ldr	r10, .L30+16
	ldr	r3, .L30+32
	str	r2, [r10]
	mov	lr, pc
	bx	r3
	ldr	r3, .L30+36
	smull	r1, r2, r3, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #2
	add	r3, r3, r3, lsl #2
	sub	r0, r0, r3, lsl #1
	ldr	r3, .L30+20
	add	r0, r0, #2
	str	r0, [r3]
	b	.L4
.L29:
	mov	r2, #0
	ldr	r3, [fp]
	sub	r3, r3, #1
	str	r2, [r5, #28]
	str	r3, [fp]
	b	.L9
.L31:
	.align	2
.L30:
	.word	activeEnemies
	.word	doctor
	.word	collision
	.word	livesRemaining
	.word	collided
	.word	blend
	.word	pills
	.word	.LANCHOR0
	.word	rand
	.word	1717986919
	.size	updateEnemy.part.0, .-updateEnemy.part.0
	.align	2
	.global	initGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	initGame, %function
initGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r2, #83886080
	ldr	r4, .L40
	mov	r3, #256
	mov	r0, #3
	ldr	r1, .L40+4
	mov	lr, pc
	bx	r4
	mov	r3, #1856
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L40+8
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L40+12
	ldr	r1, .L40+16
	mov	lr, pc
	bx	r4
	mov	r3, #224
	mov	r0, #3
	ldr	r2, .L40+20
	ldr	r1, .L40+24
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L40+28
	ldr	r1, .L40+32
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r0, #3
	ldr	r2, .L40+36
	ldr	r1, .L40+40
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L40+44
	ldr	r1, .L40+48
	mov	lr, pc
	bx	r4
	mov	ip, #0
	mov	r6, #32
	ldr	r0, .L40+52
	str	ip, [r0]
	ldr	r0, .L40+56
	str	ip, [r0]
	ldr	r0, .L40+60
	str	ip, [r0]
	ldr	r0, .L40+64
	str	ip, [r0]
	ldr	r0, .L40+68
	str	ip, [r0]
	ldr	r0, .L40+72
	str	ip, [r0]
	ldr	r0, .L40+76
	mov	r8, #20
	str	ip, [r0]
	ldr	r0, .L40+80
	mov	r2, r6
	str	r6, [r0, #20]
	str	r6, [r0, #16]
	mvn	r6, #0
	mov	r5, #1
	mov	r7, #129
	mov	fp, #104
	mov	r10, #3
	mov	r9, #16
	str	ip, [r0, #24]
	str	ip, [r0, #36]
	str	ip, [r0, #28]
	mov	r1, ip
	ldr	ip, .L40+84
	str	r8, [ip]
	ldr	ip, .L40+88
	str	r6, [ip]
	mov	r6, #2
	str	r5, [r0, #8]
	str	r5, [r0, #12]
	str	r7, [r0]
	str	fp, [r0, #4]
	str	r10, [r0, #40]
	str	r9, [r0, #44]
	mov	r0, #5
	ldr	ip, .L40+92
	str	r6, [ip]
	ldr	ip, .L40+96
	mov	r3, r5
	str	r0, [ip]
	mov	r5, #144	@ movhi
	mov	ip, #67108864
	mov	r4, r7
	mvn	lr, #239
	ldr	r0, .L40+100
	strh	r5, [ip, #80]	@ movhi
	add	ip, r0, #360
.L33:
	str	r3, [r0, #8]
	str	r3, [r0, #12]
	str	r2, [r0, #16]
	str	r2, [r0, #20]
	str	r1, [r0, #24]
	str	r1, [r0, #28]
	stm	r0, {r4, lr}
	add	r0, r0, #36
	cmp	r0, ip
	bne	.L33
	mov	r0, #8
	mov	r1, #1
	mov	r2, #0
	mvn	lr, #194
	ldr	r3, .L40+104
	add	ip, r3, #140
.L34:
	str	r0, [r3, #20]
	str	r0, [r3, #16]
	str	r1, [r3, #8]
	str	r1, [r3, #12]
	str	r2, [r3, #4]
	str	lr, [r3]
	str	r2, [r3, #24]
	add	r3, r3, #28
	cmp	r3, ip
	bne	.L34
	mvn	r2, #0
	mov	ip, #1
	mov	r0, #16
	mov	r1, #0
	ldr	r3, .L40+108
	add	lr, r3, #200
.L35:
	str	r2, [r3]
	str	r2, [r3, #4]
	str	ip, [r3, #16]
	str	ip, [r3, #20]
	str	r0, [r3, #24]
	str	r0, [r3, #28]
	str	r1, [r3, #32]
	str	r2, [r3, #36]
	add	r3, r3, #40
	cmp	r3, lr
	bne	.L35
	mov	r2, #8
	mov	ip, #32
	ldr	r3, .L40+112
	ldr	r0, .L40+116
	str	r2, [r3, #12]
	str	r2, [r3, #8]
	str	r1, [r3, #16]
	str	r1, [r3]
	str	r2, [r3, #32]
	str	r2, [r3, #28]
	str	r1, [r3, #36]
	str	r1, [r3, #20]
	str	r2, [r3, #52]
	str	r2, [r3, #48]
	str	r1, [r3, #56]
	str	r1, [r3, #40]
	str	ip, [r0, #8]
	str	r1, [r0]
	str	r1, [r0, #4]
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L41:
	.align	2
.L40:
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
	.word	boxesCollected
	.word	bubbles
	.word	collided
	.word	blend
	.word	prevBox
	.word	doctor
	.word	enemiesRemaining
	.word	num
	.word	pillSpeed
	.word	livesRemaining
	.word	enemies
	.word	pills
	.word	powerups
	.word	boxes
	.word	boxbar
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
	@ link register save eliminated.
	mov	r1, #67108864
	ldr	r3, .L44
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
.L45:
	.align	2
.L44:
	.word	hOff
	.size	updateBkgd, .-updateBkgd
	.align	2
	.global	initBar
	.syntax unified
	.arm
	.fpu softvfp
	.type	initBar, %function
initBar:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #0
	mov	r1, #32
	ldr	r3, .L47
	str	r2, [r3]
	str	r2, [r3, #4]
	str	r1, [r3, #8]
	bx	lr
.L48:
	.align	2
.L47:
	.word	boxbar
	.size	initBar, .-initBar
	.align	2
	.global	drawBar
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawBar, %function
drawBar:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r1, .L50
	ldr	r3, [r1, #4]
	mvn	r3, r3, lsl #17
	mov	r0, #20
	mvn	r3, r3, lsr #17
	ldr	r2, .L50+4
	ldr	ip, [r1]
	add	r1, r2, #480
	add	r2, r2, #484
	strh	r3, [r1, #2]	@ movhi
	strh	ip, [r1]	@ movhi
	strh	r0, [r2]	@ movhi
	bx	lr
.L51:
	.align	2
.L50:
	.word	boxbar
	.word	shadowOAM
	.size	drawBar, .-drawBar
	.align	2
	.global	initBox
	.syntax unified
	.arm
	.fpu softvfp
	.type	initBox, %function
initBox:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #8
	mov	r1, #0
	ldr	r0, .L53
	ldr	r3, .L53+4
	ldr	r0, [r0]
	str	r2, [r3, #12]
	str	r0, [r3]
	str	r0, [r3, #20]
	str	r0, [r3, #40]
	str	r2, [r3, #8]
	str	r2, [r3, #32]
	str	r2, [r3, #28]
	str	r2, [r3, #52]
	str	r2, [r3, #48]
	str	r1, [r3, #16]
	str	r1, [r3, #36]
	str	r1, [r3, #56]
	bx	lr
.L54:
	.align	2
.L53:
	.word	boxbar
	.word	boxes
	.size	initBox, .-initBox
	.align	2
	.global	updateBox
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateBox, %function
updateBox:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L61
	ldr	r1, .L61+4
	ldr	r0, [r3]
	ldr	r3, [r1]
	cmp	r0, r3
	ble	.L58
	push	{r4, lr}
	mov	lr, #1
	ldr	ip, .L61+8
	sub	r2, r3, #1
	add	r2, r2, r2, lsl #2
	add	r2, ip, r2, lsl #2
	ldmib	r2, {r2, r4}
	add	r2, r2, r4
	add	r3, r3, r3, lsl #2
	add	r3, ip, r3, lsl #2
	add	r2, r2, #8
	str	lr, [r3, #16]
	str	r2, [r3, #4]
	str	r0, [r1]
	pop	{r4, lr}
	bx	lr
.L58:
	str	r0, [r1]
	bx	lr
.L62:
	.align	2
.L61:
	.word	boxesCollected
	.word	prevBox
	.word	boxes
	.size	updateBox, .-updateBox
	.align	2
	.global	drawBox
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawBox, %function
drawBox:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r6, #512
	mov	r5, #16
	ldr	r3, .L69
	ldr	r2, .L69+4
	ldr	r4, .L69+8
	ldr	lr, .L69+12
	add	r0, r3, #60
.L66:
	ldr	r1, [r3, #16]
	cmp	r1, #0
	ldrne	r1, [r3, #4]
	ldrbne	ip, [r3]	@ zero_extendqisi2
	andne	r1, r1, r4
	orrne	r1, r1, lr
	add	r3, r3, #20
	strhne	r5, [r2, #4]	@ movhi
	strhne	r1, [r2, #2]	@ movhi
	strhne	ip, [r2]	@ movhi
	strheq	r6, [r2]	@ movhi
	cmp	r3, r0
	add	r2, r2, #8
	bne	.L66
	pop	{r4, r5, r6, lr}
	bx	lr
.L70:
	.align	2
.L69:
	.word	boxes
	.word	shadowOAM+488
	.word	511
	.word	-32768
	.size	drawBox, .-drawBox
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
	push	{r4, r5, r6, r7, lr}
	mov	r2, #0
	mov	r7, #129
	mov	r6, #3
	mov	r5, #16
	mov	ip, #32
	mov	r0, #1
	mov	lr, #67108864
	mov	r4, #144
	ldr	r3, .L73
	ldr	r1, [r3]
	ldr	r3, .L73+4
	add	r1, r1, #104
	str	r7, [r3]
	str	r6, [r3, #40]
	str	r5, [r3, #44]
	str	r1, [r3, #4]
	str	ip, [r3, #20]
	str	ip, [r3, #16]
	str	r0, [r3, #8]
	str	r0, [r3, #12]
	str	r2, [r3, #24]
	str	r2, [r3, #36]
	str	r2, [r3, #28]
	strh	r4, [lr, #80]	@ movhi
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L74:
	.align	2
.L73:
	.word	hOff
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
	ldr	r1, .L76
	ldr	r2, [r1, #4]
	mvn	r2, r2, lsl #17
	mov	r3, #67108864
	mvn	r2, r2, lsr #17
	ldr	r0, .L76+4
	ldrh	r0, [r0]
	ldr	ip, [r1, #28]
	strh	r0, [r3, #84]	@ movhi
	ldr	r3, [r1, #36]
	ldr	r0, .L76+8
	ldr	r1, [r1]
	add	r3, r3, ip, lsl #5
	lsl	r3, r3, #2
	strh	r2, [r0, #2]	@ movhi
	strh	r1, [r0]	@ movhi
	strh	r3, [r0, #4]	@ movhi
	bx	lr
.L77:
	.align	2
.L76:
	.word	doctor
	.word	blend
	.word	shadowOAM
	.size	drawDoctor, .-drawDoctor
	.align	2
	.global	initPowerup
	.syntax unified
	.arm
	.fpu softvfp
	.type	initPowerup, %function
initPowerup:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	mvn	r2, #0
	mov	r0, #1
	mov	r1, #16
	mov	lr, #0
	ldr	r3, .L82
	add	ip, r3, #200
.L79:
	str	r2, [r3]
	str	r2, [r3, #4]
	str	r0, [r3, #16]
	str	r0, [r3, #20]
	str	r1, [r3, #24]
	str	r1, [r3, #28]
	str	lr, [r3, #32]
	str	r2, [r3, #36]
	add	r3, r3, #40
	cmp	r3, ip
	bne	.L79
	ldr	lr, [sp], #4
	bx	lr
.L83:
	.align	2
.L82:
	.word	powerups
	.size	initPowerup, .-initPowerup
	.align	2
	.global	spawnPowerup
	.syntax unified
	.arm
	.fpu softvfp
	.type	spawnPowerup, %function
spawnPowerup:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r5, .L89
	mov	lr, pc
	bx	r5
	ldr	r4, .L89+4
	smull	r2, r3, r4, r0
	asr	r4, r0, #31
	rsb	r4, r4, r3, asr #3
	rsb	r3, r4, r4, lsl #3
	rsb	r4, r4, r3, lsl #3
	subs	r4, r0, r4, lsl #2
	moveq	r4, #20
	mov	lr, pc
	bx	r5
	ldr	r2, .L89+8
	ldr	r3, .L89+12
	ldr	ip, [r2]
	ldr	r1, .L89+16
	smull	r2, r3, r0, r3
	smull	r2, r1, ip, r1
	asr	r2, r0, #31
	rsb	r3, r2, r3, asr #1
	asr	r2, ip, #31
	rsb	r2, r2, r1, asr #4
	ldr	r1, .L89+20
	add	r3, r3, r3, lsl #2
	add	r2, r2, r2, lsl #2
	sub	r3, r0, r3
	add	r2, r2, r2, lsl #2
	ldr	r0, [r1, #32]
	tst	r3, #1
	sub	r2, ip, r2, lsl #1
	moveq	r3, #0
	orrs	r2, r2, r0
	bne	.L84
	ldr	r0, .L89+24
	ldr	r2, [r0]
	cmp	r2, #2
	bgt	.L84
	mov	ip, #1
	mov	lr, #10
	add	r2, r2, ip
	str	r2, [r0]
	str	r4, [r1, #8]
	str	r3, [r1, #36]
	str	lr, [r1, #12]
	str	ip, [r1, #32]
.L84:
	pop	{r4, r5, r6, lr}
	bx	lr
.L90:
	.align	2
.L89:
	.word	rand
	.word	156180629
	.word	frameCounter
	.word	1717986919
	.word	1374389535
	.word	powerups
	.word	activePowerups
	.size	spawnPowerup, .-spawnPowerup
	.align	2
	.global	updatePowerup
	.syntax unified
	.arm
	.fpu softvfp
	.type	updatePowerup, %function
updatePowerup:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r3, [r0, #32]
	cmp	r3, #0
	mov	r5, r0
	ldr	r3, [r0, #12]
	sub	sp, sp, #20
	beq	.L92
	ldr	r2, [r0, #20]
	add	r3, r3, r2
	cmp	r3, #159
	str	r3, [r0, #12]
	bgt	.L115
.L93:
	ldr	r4, .L117
	ldr	r6, .L117+4
	ldr	r8, .L117+8
	ldr	r9, .L117+12
	ldr	r10, .L117+16
	ldr	fp, .L117+20
	add	r7, r4, #200
.L104:
	ldr	r3, [r4, #32]
	cmp	r3, #0
	bne	.L116
.L95:
	add	r4, r4, #40
	cmp	r7, r4
	bne	.L104
	ldr	r3, [r5, #12]
.L92:
	ldr	r1, .L117+24
	ldr	r2, [r5, #8]
	ldr	r1, [r1]
	sub	r2, r2, r1
	str	r3, [r5]
	str	r2, [r5, #4]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L116:
	ldm	r6, {r2, r3}
	ldr	r0, [r6, #20]
	ldr	r1, [r6, #16]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r2, r4, #24
	ldm	r2, {r2, r3}
	ldr	r1, [r4]
	ldr	r0, [r4, #4]
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	beq	.L95
	mov	r1, #0
	str	r1, [r5, #32]
	ldr	r3, [r9]
	ldr	r2, [r4, #36]
	sub	r3, r3, #1
	cmp	r2, r1
	str	r3, [r9]
	bne	.L97
	ldr	r3, [fp]
	add	r3, r3, #1
	str	r3, [fp]
	b	.L95
.L115:
	mov	r1, #0
	ldr	r2, .L117+12
	ldr	r3, [r2]
	sub	r3, r3, #1
	str	r3, [r2]
	str	r1, [r0, #32]
	b	.L93
.L97:
	cmp	r2, #1
	streq	r2, [r10]
	beq	.L95
	cmp	r2, #2
	moveq	r3, #4
	streq	r3, [r10]
	beq	.L95
	cmp	r2, #3
	ldreq	r3, .L117+28
	streq	r1, [r3]
	beq	.L95
	cmp	r2, #4
	moveq	r3, #1
	ldreq	r2, .L117+28
	streq	r3, [r10]
	streq	r3, [r2]
	b	.L95
.L118:
	.align	2
.L117:
	.word	powerups
	.word	doctor
	.word	collision
	.word	activePowerups
	.word	pillSpeed
	.word	boxesCollected
	.word	hOff
	.word	bubbles
	.size	updatePowerup, .-updatePowerup
	.align	2
	.global	drawPowerup
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawPowerup, %function
drawPowerup:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r4, #0
	mov	lr, #512
	mov	r7, r4
	ldr	r3, .L133
	ldr	r2, .L133+4
	ldr	r6, .L133+8
	ldr	r5, .L133+12
	add	ip, r3, #200
.L124:
	ldr	r1, [r3, #32]
	cmp	r1, #1
	strhne	lr, [r2, #160]	@ movhi
	beq	.L131
.L123:
	add	r3, r3, #40
	cmp	ip, r3
	add	r2, r2, #8
	bne	.L124
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L131:
	ldr	r1, [r3, #36]
	cmp	r1, #0
	moveq	r7, #16
	addeq	r8, r4, #512
	beq	.L122
	cmp	r1, #1
	beq	.L125
	cmp	r1, #2
	beq	.L126
	cmp	r1, #3
	beq	.L127
	cmp	r1, #4
	addne	r8, r4, r7, lsl #5
	beq	.L132
.L122:
	ldr	r1, [r3, #4]
	ldrb	r0, [r3]	@ zero_extendqisi2
	and	r1, r1, r6
	orr	r1, r1, r5
	orr	r0, r0, #1024
	strh	r8, [r2, #164]	@ movhi
	strh	r1, [r2, #162]	@ movhi
	strh	r0, [r2, #160]	@ movhi
	b	.L123
.L125:
	mov	r8, #640
	mov	r4, #0
	mov	r7, #20
	b	.L122
.L126:
	mov	r8, #644
	mov	r4, #4
	mov	r7, #20
	b	.L122
.L132:
	mov	r8, #768
	mov	r4, #0
	mov	r7, #24
	b	.L122
.L127:
	mov	r8, #648
	mov	r4, #8
	mov	r7, #20
	b	.L122
.L134:
	.align	2
.L133:
	.word	powerups
	.word	shadowOAM
	.word	511
	.word	-32768
	.size	drawPowerup, .-drawPowerup
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
	mov	r0, #8
	mov	r1, #1
	mov	r2, #0
	mvn	lr, #194
	ldr	r3, .L139
	add	ip, r3, #140
.L136:
	str	r0, [r3, #20]
	str	r0, [r3, #16]
	str	r1, [r3, #8]
	str	r1, [r3, #12]
	str	r2, [r3, #4]
	str	lr, [r3]
	str	r2, [r3, #24]
	add	r3, r3, #28
	cmp	r3, ip
	bne	.L136
	ldr	lr, [sp], #4
	bx	lr
.L140:
	.align	2
.L139:
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
	ldr	r0, .L155
	mov	r2, r0
	ldr	r1, [r2, #24]
	cmp	r1, #0
	mov	r3, #0
	beq	.L153
.L142:
	add	r3, r3, #1
	cmp	r3, #5
	add	r2, r2, #28
	bxeq	lr
	ldr	r1, [r2, #24]
	cmp	r1, #0
	bne	.L142
.L153:
	mov	ip, #125
	push	{r4, lr}
	ldr	lr, .L155+4
	ldr	r1, [lr, #28]
	rsb	r2, r3, r3, lsl #3
	bics	r1, r1, #2
	str	ip, [r0, r2, lsl #2]
	add	r2, r0, r2, lsl #2
	lsl	ip, r3, #3
	beq	.L154
	cmp	r1, #1
	mvneq	r4, #1
	ldreq	r1, [lr, #4]
	subeq	r1, r1, #18
	stmibeq	r2, {r1, r4}
.L144:
	mov	r2, #1
	sub	r3, ip, r3
	add	r0, r0, r3, lsl #2
	str	r2, [r0, #24]
	pop	{r4, lr}
	bx	lr
.L154:
	mov	r4, #2
	ldr	r1, [lr, #4]
	add	r1, r1, #6
	stmib	r2, {r1, r4}
	b	.L144
.L156:
	.align	2
.L155:
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
	ldr	r4, .L206
	ldr	r3, [r4, #28]
	cmp	r3, #4
	movne	r2, #4
	strne	r3, [r4, #32]
	strne	r2, [r4, #28]
	ldr	r3, .L206+4
	ldr	r2, [r4, #24]
	smull	r0, r1, r3, r2
	asr	r3, r2, #31
	rsb	r3, r3, r1, asr #2
	add	r3, r3, r3, lsl #2
	subs	r3, r2, r3, lsl #1
	bne	.L159
	add	r0, r4, #36
	ldm	r0, {r0, r1}
	sub	r1, r1, #1
	cmp	r0, r1
	addlt	r0, r0, #1
	strlt	r0, [r4, #36]
	strge	r3, [r4, #36]
.L159:
	ldr	r3, .L206+8
	ldrh	r1, [r3, #48]
	tst	r1, #16
	bne	.L161
	ldr	r3, .L206+12
	ldr	r1, [r3]
	cmp	r1, #1
	movne	r3, #0
	moveq	r3, #2
	ldr	r0, .L206+16
	ldr	r0, [r0]
	cmp	r0, #2
	str	r3, [r4, #28]
	ldr	r3, [r4, #4]
	ble	.L163
	ldr	r0, [r4, #8]
	add	r3, r0, r3
	str	r3, [r4, #4]
	ldr	r5, .L206+20
.L164:
	ldr	r3, .L206+8
	ldrh	r3, [r3, #48]
	tst	r3, #32
	bne	.L167
.L170:
	cmp	r1, #1
	moveq	r1, #3
	movne	r1, #1
	ldr	r3, [r4, #4]
	cmp	r3, #0
	str	r1, [r4, #28]
	ble	.L167
	ldr	r0, [r4, #8]
	ldr	r1, [r4]
	sub	r3, r3, r0
	ldr	ip, .L206+24
	add	r0, r3, r1, lsl #8
	lsl	r0, r0, #1
	ldrh	r0, [ip, r0]
	cmp	r0, #0
	bne	.L204
.L167:
	add	r2, r2, #1
	str	r2, [r4, #24]
.L169:
	ldr	r3, .L206+28
	ldrh	r3, [r3]
	tst	r3, #1
	ldr	r1, [r4, #44]
	beq	.L168
	ldr	r3, .L206+32
	ldrh	r2, [r3]
	ands	r6, r2, #1
	bne	.L168
	cmp	r1, #15
	ble	.L168
	ldr	r3, .L206+36
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L168
	bl	firePill
	ldr	r1, .L206+40
	mov	r2, r6
	ldr	r0, .L206+44
	ldr	r3, .L206+48
	mov	lr, pc
	bx	r3
	mov	r1, r6
.L168:
	ldr	r3, .L206+52
	ldr	r0, [r5]
	ldr	r2, [r4, #4]
	ldr	r3, [r3]
	sub	r2, r2, r0
	add	r3, r3, r1
	str	r2, [r4, #48]
	str	r3, [r4, #44]
	pop	{r4, r5, r6, lr}
	bx	lr
.L163:
	ldr	r0, [r4, #16]
	add	r3, r3, r0
	cmp	r3, #255
	bgt	.L203
	ldr	ip, [r4, #8]
	ldr	r0, [r4]
	add	r3, r3, ip
	sub	r3, r3, #1
	ldr	lr, .L206+24
	add	ip, r3, r0, lsl #8
	lsl	ip, ip, #1
	ldrh	ip, [lr, ip]
	cmp	ip, #0
	beq	.L203
	ldr	ip, [r4, #20]
	add	r0, r0, ip
	sub	r0, r0, #1
	add	r3, r3, r0, lsl #8
	lsl	r3, r3, #1
	ldrh	r3, [lr, r3]
	ldr	r5, .L206+20
	cmp	r3, #0
	ldrne	r3, [r5]
	addne	r3, r3, #1
	strne	r3, [r5]
	b	.L164
.L161:
	ldrh	r3, [r3, #48]
	tst	r3, #32
	beq	.L205
	ldr	r3, [r4, #28]
	cmp	r3, #4
	ldrne	r5, .L206+20
	bne	.L167
	mov	r2, #0
	ldr	r3, [r4, #32]
	str	r2, [r4, #36]
	str	r3, [r4, #28]
	ldr	r5, .L206+20
	b	.L169
.L204:
	ldr	r0, [r4, #20]
	add	r1, r1, r0
	sub	r1, r1, #1
	add	r3, r3, r1, lsl #8
	lsl	r3, r3, #1
	ldrh	r3, [ip, r3]
	cmp	r3, #0
	ldrne	r3, [r5]
	subne	r3, r3, #1
	strne	r3, [r5]
	b	.L167
.L203:
	ldr	r5, .L206+20
	b	.L164
.L205:
	ldr	r3, .L206+12
	ldr	r5, .L206+20
	ldr	r1, [r3]
	b	.L170
.L207:
	.align	2
.L206:
	.word	doctor
	.word	1717986919
	.word	67109120
	.word	.LANCHOR0
	.word	boxesCollected
	.word	hOff
	.word	collisionmapBitmap
	.word	oldButtons
	.word	buttons
	.word	collided
	.word	2117
	.word	bubblePop
	.word	playSoundB
	.word	pillSpeed
	.size	updateDoctor, .-updateDoctor
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
	bge	.L213
.L211:
	mov	r3, #0
	str	r3, [r0, #24]
	bx	lr
.L213:
	ldr	r2, [r0, #16]
	add	r3, r3, r2
	cmp	r3, #239
	bxle	lr
	b	.L211
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
	ldr	r3, .L220
	ldr	r3, [r3]
	cmp	r3, #0
	push	{r4, r5, r6, lr}
	movne	r6, #520
	moveq	r6, #516
	mov	r5, #512
	ldr	r3, .L220+4
	ldr	r2, .L220+8
	ldr	r4, .L220+12
	ldr	lr, .L220+16
	add	r0, r3, #140
.L217:
	ldr	r1, [r3, #24]
	cmp	r1, #0
	ldrne	r1, [r3, #4]
	ldrbne	ip, [r3]	@ zero_extendqisi2
	andne	r1, r1, r4
	orrne	r1, r1, lr
	add	r3, r3, #28
	strhne	r6, [r2, #12]	@ movhi
	strhne	r1, [r2, #10]	@ movhi
	strhne	ip, [r2, #8]	@ movhi
	strheq	r5, [r2, #8]	@ movhi
	cmp	r3, r0
	add	r2, r2, #8
	bne	.L217
	pop	{r4, r5, r6, lr}
	bx	lr
.L221:
	.align	2
.L220:
	.word	bubbles
	.word	pills
	.word	shadowOAM
	.word	511
	.word	-32768
	.size	drawPill, .-drawPill
	.align	2
	.global	initEnemy
	.syntax unified
	.arm
	.fpu softvfp
	.type	initEnemy, %function
initEnemy:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r0, #1
	mov	r4, #129
	mvn	lr, #239
	mov	r1, #32
	mov	r2, #0
	ldr	r3, .L226
	add	ip, r3, #360
.L223:
	str	r0, [r3, #8]
	str	r0, [r3, #12]
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	str	r2, [r3, #24]
	str	r2, [r3, #28]
	stm	r3, {r4, lr}
	add	r3, r3, #36
	cmp	r3, ip
	bne	.L223
	pop	{r4, lr}
	bx	lr
.L227:
	.align	2
.L226:
	.word	enemies
	.size	initEnemy, .-initEnemy
	.align	2
	.global	spawnEnemy
	.syntax unified
	.arm
	.fpu softvfp
	.type	spawnEnemy, %function
spawnEnemy:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r5, .L236
	mov	lr, pc
	bx	r5
	mov	r4, r0
	mov	lr, pc
	bx	r5
	ldr	r2, .L236+4
	ldr	r3, .L236+8
	ldr	r1, [r2]
	smull	r2, r3, r1, r3
	asr	r2, r1, #31
	rsb	r3, r2, r3, asr #4
	rsb	r2, r3, r3, lsl #5
	add	r3, r3, r2, lsl #2
	subs	r3, r1, r3, lsl #1
	bne	.L228
	ldr	r5, .L236+12
	mov	r2, r5
	ldr	r6, .L236+16
	ldr	r1, .L236+20
	ldr	ip, [r6]
	ldr	lr, [r1]
.L232:
	ldr	r1, [r2, #28]
	cmp	r1, #0
	bne	.L230
	cmp	ip, #2
	bgt	.L230
	cmp	lr, #4
	ble	.L235
.L230:
	add	r3, r3, #1
	cmp	r3, #10
	add	r2, r2, #36
	bne	.L232
.L228:
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L235:
	mov	lr, #1
	ldr	r2, .L236+24
	smull	r7, r2, r0, r2
	add	r3, r3, r3, lsl #3
	add	r5, r5, r3, lsl #2
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr lr
	add	r2, r3, r3, lsl #2
	tst	r4, #1
	add	r3, ip, lr
	sub	r0, r0, r2
	str	r3, [r6]
	moveq	r2, #240
	mvneq	r3, #0
	stmibne	r5, {r1, lr}
	stmibeq	r5, {r2, r3}
	str	r0, [r5, #32]
	str	lr, [r5, #28]
	b	.L228
.L237:
	.align	2
.L236:
	.word	rand
	.word	frameCounter
	.word	274877907
	.word	enemies
	.word	activeEnemies
	.word	boxesCollected
	.word	1717986919
	.size	spawnEnemy, .-spawnEnemy
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
	ldr	r3, .L259
	ldr	r3, [r3]
	ldr	r0, .L259+4
	tst	r3, #1
	lsl	r2, r3, #16
	addeq	r3, r3, r3, lsr #31
	ldr	r1, [r0]
	asreq	r3, r3, #1
	lsleq	r3, r3, #16
	lsreq	r3, r3, #16
	add	r1, r1, #1
	lsr	r2, r2, #16
	push	{r4, r5, r6, lr}
	str	r1, [r0]
	strh	r2, [ip, #16]	@ movhi
	strheq	r3, [ip, #20]	@ movhi
	bl	updateDoctor
	ldr	r3, .L259+8
	ldr	r1, .L259+12
	ldr	r0, [r3]
	ldr	r3, [r1]
	cmp	r0, r3
	ble	.L240
	mov	lr, #1
	ldr	ip, .L259+16
	sub	r2, r3, #1
	add	r2, r2, r2, lsl #2
	add	r2, ip, r2, lsl #2
	ldmib	r2, {r2, r4}
	add	r2, r2, r4
	add	r3, r3, r3, lsl #2
	add	r3, ip, r3, lsl #2
	add	r2, r2, #8
	str	r2, [r3, #4]
	str	lr, [r3, #16]
.L240:
	mov	ip, #0
	ldr	r3, .L259+20
	str	r0, [r1]
	add	r1, r3, #140
.L245:
	ldr	r2, [r3, #24]
	cmp	r2, #0
	beq	.L242
	ldmib	r3, {r0, r2}
	add	r2, r0, r2
	cmn	r2, #30
	str	r2, [r3, #4]
	blt	.L243
	ldr	r0, [r3, #16]
	add	r2, r2, r0
	cmp	r2, #239
	ble	.L242
.L243:
	str	ip, [r3, #24]
.L242:
	add	r3, r3, #28
	cmp	r3, r1
	bne	.L245
	ldr	r4, .L259+24
	add	r5, r4, #360
.L247:
	bl	spawnEnemy
	ldr	r3, [r4, #28]
	cmp	r3, #0
	movne	r0, r4
	blne	updateEnemy.part.0
.L246:
	add	r4, r4, #36
	cmp	r4, r5
	bne	.L247
	bl	spawnPowerup
	ldr	r0, .L259+28
	bl	updatePowerup
	bl	spawnPowerup
	ldr	r0, .L259+32
	bl	updatePowerup
	bl	spawnPowerup
	ldr	r0, .L259+36
	bl	updatePowerup
	bl	spawnPowerup
	ldr	r0, .L259+40
	bl	updatePowerup
	bl	spawnPowerup
	ldr	r0, .L259+44
	bl	updatePowerup
	ldr	r3, .L259+48
	ldrh	r3, [r3]
	tst	r3, #2
	beq	.L238
	ldr	r3, .L259+52
	ldrh	r3, [r3]
	ands	r3, r3, #2
	bne	.L238
	ldr	r2, .L259+56
	ldr	r1, [r2]
	cmp	r1, #0
	moveq	r3, #1
	str	r3, [r2]
.L238:
	pop	{r4, r5, r6, lr}
	bx	lr
.L260:
	.align	2
.L259:
	.word	hOff
	.word	frameCounter
	.word	boxesCollected
	.word	prevBox
	.word	boxes
	.word	pills
	.word	enemies
	.word	powerups
	.word	powerups+40
	.word	powerups+80
	.word	powerups+120
	.word	powerups+160
	.word	oldButtons
	.word	buttons
	.word	.LANCHOR0
	.size	updateGame, .-updateGame
	.align	2
	.global	updateEnemy
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateEnemy, %function
updateEnemy:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #28]
	cmp	r3, #0
	bxeq	lr
	b	updateEnemy.part.0
	.size	updateEnemy, .-updateEnemy
	.align	2
	.global	drawEnemy
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawEnemy, %function
drawEnemy:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r4, #0
	ldr	r3, .L276
	mov	ip, #512
	mov	r7, r4
	ldr	r2, .L276+4
	ldr	r6, .L276+8
	ldr	r5, .L276+12
	add	r0, r3, #360
	b	.L267
.L266:
	add	r3, r3, #36
	cmp	r0, r3
	add	r2, r2, #8
	beq	.L275
.L267:
	ldr	r1, [r3, #28]
	cmp	r1, #1
	strhne	ip, [r2, #80]	@ movhi
	bne	.L266
	ldr	r1, [r3, #32]
	cmp	r1, #0
	beq	.L268
	cmp	r1, #1
	beq	.L269
	cmp	r1, #2
	beq	.L270
	cmp	r1, #3
	beq	.L271
	cmp	r1, #4
	addne	r8, r4, r7, lsl #5
	moveq	r8, #904
	moveq	r4, #8
	moveq	r7, #28
	b	.L265
.L268:
	mov	r8, #772
	mov	r4, #4
	mov	r7, #24
.L265:
	ldr	r1, [r3, #4]
	ldrb	lr, [r3]	@ zero_extendqisi2
	and	r1, r1, r6
	add	r3, r3, #36
	orr	r1, r1, r5
	cmp	r0, r3
	strh	r8, [r2, #84]	@ movhi
	strh	r1, [r2, #82]	@ movhi
	strh	lr, [r2, #80]	@ movhi
	add	r2, r2, #8
	bne	.L267
.L275:
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L269:
	mov	r8, #776
	mov	r4, #8
	mov	r7, #24
	b	.L265
.L271:
	mov	r8, #900
	mov	r4, #4
	mov	r7, #28
	b	.L265
.L270:
	mov	r8, #896
	mov	r4, #0
	mov	r7, #28
	b	.L265
.L277:
	.align	2
.L276:
	.word	enemies
	.word	shadowOAM
	.word	511
	.word	-32768
	.size	drawEnemy, .-drawEnemy
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
	mov	r3, #67108864
	ldr	r1, .L280
	ldr	r2, .L280+4
	ldrh	r1, [r1]
	push	{r4, r5, r6, lr}
	ldr	ip, [r2, #28]
	strh	r1, [r3, #84]	@ movhi
	ldr	r3, [r2, #36]
	ldr	r1, [r2, #4]
	ldr	r5, .L280+8
	ldr	r0, [r2]
	ldr	r4, .L280+12
	add	r3, r3, ip, lsl #5
	orr	r2, r1, r5
	lsl	r3, r3, #2
	strh	r0, [r4]	@ movhi
	strh	r2, [r4, #2]	@ movhi
	strh	r3, [r4, #4]	@ movhi
	bl	drawPill
	bl	drawEnemy
	bl	drawPowerup
	mov	r1, #20
	ldr	r2, .L280+16
	ldm	r2, {r0, r3}
	add	r2, r4, #480
	orr	r3, r3, r5
	add	r4, r4, #484
	strh	r1, [r4]	@ movhi
	strh	r3, [r2, #2]	@ movhi
	strh	r0, [r2]	@ movhi
	pop	{r4, r5, r6, lr}
	b	drawBox
.L281:
	.align	2
.L280:
	.word	blend
	.word	doctor
	.word	-32768
	.word	shadowOAM
	.word	boxbar
	.size	drawGame, .-drawGame
	.align	2
	.global	initWin
	.syntax unified
	.arm
	.fpu softvfp
	.type	initWin, %function
initWin:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	ip, #0
	push	{r4, lr}
	mov	r0, #1
	mov	lr, #4
	mov	r2, #16
	ldr	r4, .L286
	ldr	r3, .L286+4
	mov	r1, ip
	str	ip, [r4]
	add	ip, r3, #120
.L283:
	str	r1, [r3]
	str	r1, [r3, #4]
	str	r0, [r3, #16]
	str	lr, [r3, #20]
	str	r2, [r3, #24]
	str	r2, [r3, #28]
	str	r0, [r3, #32]
	add	r3, r3, #40
	cmp	r3, ip
	bne	.L283
	pop	{r4, lr}
	bx	lr
.L287:
	.align	2
.L286:
	.word	frameCounter2
	.word	confetti
	.size	initWin, .-initWin
	.align	2
	.global	initConfetti
	.syntax unified
	.arm
	.fpu softvfp
	.type	initConfetti, %function
initConfetti:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	mov	r0, #0
	mov	r1, #1
	mov	lr, #4
	mov	r2, #16
	ldr	r3, .L292
	add	ip, r3, #120
.L289:
	str	r0, [r3]
	str	r0, [r3, #4]
	str	r1, [r3, #16]
	str	lr, [r3, #20]
	str	r2, [r3, #24]
	str	r2, [r3, #28]
	str	r1, [r3, #32]
	add	r3, r3, #40
	cmp	r3, ip
	bne	.L289
	ldr	lr, [sp], #4
	bx	lr
.L293:
	.align	2
.L292:
	.word	confetti
	.size	initConfetti, .-initConfetti
	.align	2
	.global	fireConfetti
	.syntax unified
	.arm
	.fpu softvfp
	.type	fireConfetti, %function
fireConfetti:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r5, .L298
	mov	lr, pc
	bx	r5
	ldr	r4, .L298+4
	smull	r2, r3, r4, r0
	asr	r4, r0, #31
	rsb	r4, r4, r3, asr #3
	rsb	r3, r4, r4, lsl #3
	rsb	r4, r4, r3, lsl #3
	subs	r4, r0, r4, lsl #2
	moveq	r4, #20
	mov	lr, pc
	bx	r5
	ldr	r2, .L298+8
	ldr	r3, [r2, #32]
	cmp	r3, #0
	bne	.L294
	mov	r1, #1
	mov	ip, #10
	ldr	r3, .L298+12
	smull	lr, r3, r0, r3
	sub	r3, r3, r0, asr #31
	add	r3, r3, r3, lsl r1
	sub	r0, r0, r3
	str	r4, [r2, #8]
	str	r0, [r2, #36]
	str	ip, [r2, #12]
	str	r1, [r2, #32]
.L294:
	pop	{r4, r5, r6, lr}
	bx	lr
.L299:
	.align	2
.L298:
	.word	rand
	.word	156180629
	.word	confetti
	.word	1431655766
	.size	fireConfetti, .-fireConfetti
	.align	2
	.global	updateWin
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateWin, %function
updateWin:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r6, #0
	ldr	r2, .L307
	ldr	r3, [r2]
	ldr	r4, .L307+4
	add	r3, r3, #1
	str	r3, [r2]
	ldr	r7, .L307+8
	add	r5, r4, #120
.L304:
	bl	fireConfetti
	ldr	r3, [r4, #32]
	cmp	r3, #0
	ldr	r3, [r4, #12]
	beq	.L302
	ldr	r2, [r4, #20]
	add	r3, r3, r2
	cmp	r3, #159
	str	r3, [r4, #12]
	strgt	r6, [r4, #32]
.L302:
	ldr	r2, [r4, #8]
	ldr	r1, [r7]
	sub	r2, r2, r1
	str	r2, [r4, #4]
	str	r3, [r4], #40
	cmp	r4, r5
	bne	.L304
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L308:
	.align	2
.L307:
	.word	frameCounter2
	.word	confetti
	.word	hOff
	.size	updateWin, .-updateWin
	.align	2
	.global	updateConfetti
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateConfetti, %function
updateConfetti:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #32]
	cmp	r3, #0
	ldr	r2, [r0, #12]
	beq	.L310
	ldr	r3, [r0, #20]
	add	r2, r2, r3
	cmp	r2, #159
	movgt	r3, #0
	str	r2, [r0, #12]
	strgt	r3, [r0, #32]
.L310:
	ldr	r1, .L314
	ldr	r3, [r0, #8]
	ldr	r1, [r1]
	sub	r3, r3, r1
	stm	r0, {r2, r3}
	bx	lr
.L315:
	.align	2
.L314:
	.word	hOff
	.size	updateConfetti, .-updateConfetti
	.align	2
	.global	drawConfetti
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawConfetti, %function
drawConfetti:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	r6, #0
	mov	lr, #512
	ldr	r3, .L328
	ldr	r2, .L328+4
	ldr	r5, .L328+8
	ldr	r4, .L328+12
	add	ip, r3, #120
.L320:
	ldr	r1, [r3, #32]
	cmp	r1, #1
	strhne	lr, [r2]	@ movhi
	beq	.L326
.L319:
	add	r3, r3, #40
	cmp	r3, ip
	add	r2, r2, #8
	bne	.L320
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L326:
	ldr	r1, [r3, #36]
	cmp	r1, #0
	moveq	r7, #144
	moveq	r6, #16
	beq	.L318
	cmp	r1, #1
	beq	.L322
	cmp	r1, #2
	addne	r7, r6, #128
	beq	.L327
.L318:
	ldr	r1, [r3, #4]
	ldrb	r0, [r3]	@ zero_extendqisi2
	and	r1, r1, r5
	orr	r1, r1, r4
	orr	r0, r0, #1024
	strh	r7, [r2, #4]	@ movhi
	strh	r1, [r2, #2]	@ movhi
	strh	r0, [r2]	@ movhi
	b	.L319
.L322:
	mov	r7, #148
	mov	r6, #20
	b	.L318
.L327:
	mov	r7, #152
	mov	r6, #24
	b	.L318
.L329:
	.align	2
.L328:
	.word	confetti
	.word	shadowOAM+320
	.word	511
	.word	-32768
	.size	drawConfetti, .-drawConfetti
	.align	2
	.global	drawWin
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawWin, %function
drawWin:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	drawConfetti
	.size	drawWin, .-drawWin
	.comm	bubbles,4,4
	.comm	num,4,4
	.comm	livesRemaining,4,4
	.comm	blend,4,4
	.comm	pillSpeed,4,4
	.comm	boxesCollected,4,4
	.comm	activePowerups,4,4
	.comm	activeEnemies,4,4
	.comm	prevBox,4,4
	.comm	randPowerup,4,4
	.global	cheat
	.comm	enemiesRemaining,4,4
	.comm	frameCounter3,4,4
	.comm	frameCounter2,4,4
	.comm	frameCounter,4,4
	.comm	collided,4,4
	.comm	boxbar,16,4
	.comm	boxes,60,4
	.comm	pills,140,4
	.comm	enemies,360,4
	.comm	confetti,120,4
	.comm	powerups,200,4
	.comm	doctor,52,4
	.comm	shadowOAM,1024,4
	.comm	soundB,32,4
	.comm	soundA,32,4
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	cheat, %object
	.size	cheat, 4
cheat:
	.space	4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
