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
	mov	r4, r0
	ldmib	r0, {r0, r3}
	add	r0, r0, r3
	sub	r3, r0, #1
	cmp	r3, #239
	str	r0, [r4, #4]
	sub	sp, sp, #20
	bls	.L2
	mov	r1, #0
	ldr	r2, .L31
	ldr	r3, [r2]
	sub	r3, r3, #1
	str	r3, [r2]
	str	r1, [r4, #28]
.L2:
	ldr	r5, .L31+4
	ldr	r6, .L31+8
	ldr	r7, .L31+12
	ldr	r8, .L31+16
	ldr	fp, .L31+20
	ldr	r10, .L31+24
	add	r9, r5, #140
.L14:
	add	r1, r6, #16
	ldm	r1, {r1, ip}
	ldm	r6, {r2, r3}
	str	ip, [sp, #12]
	str	r2, [sp, #4]
	str	r1, [sp, #8]
	str	r3, [sp]
	add	r2, r4, #16
	ldm	r2, {r2, r3}
	ldr	r1, [r4]
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	streq	r0, [r8]
	streq	r0, [fp]
	bne	.L26
	ldr	r3, [r5, #24]
	cmp	r3, #0
	bne	.L27
.L6:
	ldr	r3, [r10]
	cmp	r3, #1
	beq	.L28
.L9:
	add	r5, r5, #28
	cmp	r9, r5
	beq	.L1
.L30:
	ldr	r0, [r4, #4]
	b	.L14
.L26:
	mov	r3, #1
	str	r3, [r8]
	ldr	r3, .L31+28
	mov	lr, pc
	bx	r3
	ldr	r2, .L31+32
	smull	r3, r2, r0, r2
	ldr	r1, .L31+36
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #2
	ldr	r2, [r1]
	add	r3, r3, r3, lsl #2
	sub	r0, r0, r3, lsl #1
	sub	r3, r2, #1
	str	r3, [r1]
	ldr	r3, [r5, #24]
	add	r0, r0, #2
	cmp	r3, #0
	str	r0, [fp]
	beq	.L6
.L27:
	ldm	r5, {r2, r3}
	ldr	r0, [r5, #20]
	ldr	r1, [r5, #16]
	str	r2, [sp, #4]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r3, [sp]
	add	r2, r4, #16
	ldm	r2, {r2, r3}
	ldr	r1, [r4]
	ldr	r0, [r4, #4]
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	beq	.L6
	ldr	r3, [r8]
	cmp	r3, #1
	beq	.L6
	mov	r1, #0
	ldr	r2, .L31
	ldr	r3, [r2]
	sub	r3, r3, #1
	str	r3, [r2]
	ldr	r3, [r10]
	cmp	r3, #1
	str	r1, [r4, #28]
	str	r1, [r5, #24]
	bne	.L9
.L28:
	ldm	r6, {r2, r3}
	ldr	r0, [r6, #20]
	ldr	r1, [r6, #16]
	str	r2, [sp, #4]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r3, [sp]
	add	r2, r4, #16
	ldm	r2, {r2, r3}
	ldr	r1, [r4]
	ldr	r0, [r4, #4]
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	beq	.L9
	ldr	r2, [r4, #24]
	ldr	r3, [r4, #4]
	add	r2, r2, #1
	cmp	r3, #240
	str	r2, [r4, #24]
	beq	.L29
	ldr	r1, [r6, #4]
	ldr	r2, [r4, #8]
	cmp	r3, r1
	add	r5, r5, #28
	sublt	r3, r3, #5
	addge	r3, r3, #5
	rsb	r2, r2, #0
	cmp	r9, r5
	str	r2, [r4, #8]
	str	r3, [r4, #4]
	bne	.L30
.L1:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L29:
	mov	r1, #0
	ldr	r2, .L31
	ldr	r3, [r2]
	sub	r3, r3, #1
	str	r1, [r4, #28]
	str	r3, [r2]
	b	.L9
.L32:
	.align	2
.L31:
	.word	activeEnemies
	.word	pills
	.word	doctor
	.word	collision
	.word	collided
	.word	blend
	.word	.LANCHOR0
	.word	rand
	.word	1717986919
	.word	livesRemaining
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
	ldr	r4, .L41
	mov	r3, #256
	mov	r0, #3
	ldr	r1, .L41+4
	mov	lr, pc
	bx	r4
	mov	r3, #1856
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L41+8
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L41+12
	ldr	r1, .L41+16
	mov	lr, pc
	bx	r4
	mov	r3, #224
	mov	r0, #3
	ldr	r2, .L41+20
	ldr	r1, .L41+24
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L41+28
	ldr	r1, .L41+32
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r0, #3
	ldr	r2, .L41+36
	ldr	r1, .L41+40
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L41+44
	ldr	r1, .L41+48
	mov	lr, pc
	bx	r4
	mov	ip, #0
	mov	r5, #1
	mov	r6, #32
	mov	r7, #129
	mov	fp, #104
	mov	r10, #3
	mov	r9, #16
	ldr	r0, .L41+52
	str	ip, [r0]
	ldr	r0, .L41+56
	str	ip, [r0]
	ldr	r0, .L41+60
	str	ip, [r0]
	ldr	r0, .L41+64
	str	ip, [r0]
	ldr	r0, .L41+68
	str	ip, [r0]
	ldr	r0, .L41+72
	str	ip, [r0]
	ldr	r0, .L41+76
	str	ip, [r0]
	ldr	r0, .L41+80
	mov	r8, #20
	str	r5, [r0]
	ldr	r0, .L41+84
	str	r7, [r0]
	str	r5, [r0, #8]
	str	r5, [r0, #12]
	str	ip, [r0, #24]
	str	ip, [r0, #36]
	str	ip, [r0, #28]
	str	fp, [r0, #4]
	str	r10, [r0, #40]
	str	r9, [r0, #44]
	str	r6, [r0, #20]
	str	r6, [r0, #16]
	mvn	r0, #0
	mov	r2, ip
	ldr	ip, .L41+88
	str	r8, [ip]
	ldr	ip, .L41+92
	str	r0, [ip]
	mov	ip, #2
	ldr	r0, .L41+96
	mov	r1, r5
	str	ip, [r0]
	mov	r5, #144	@ movhi
	mov	ip, #67108864
	mov	r4, r7
	mov	r3, r6
	mvn	lr, #239
	ldr	r0, .L41+100
	strh	r5, [ip, #80]	@ movhi
	add	ip, r0, #360
.L34:
	str	r1, [r0, #8]
	str	r1, [r0, #12]
	str	r3, [r0, #16]
	str	r3, [r0, #20]
	str	r2, [r0, #24]
	str	r2, [r0, #28]
	stm	r0, {r4, lr}
	add	r0, r0, #36
	cmp	r0, ip
	bne	.L34
	mov	r0, #8
	mov	r1, #1
	mov	r2, #0
	mvn	lr, #194
	ldr	r3, .L41+104
	add	ip, r3, #140
.L35:
	str	r0, [r3, #20]
	str	r0, [r3, #16]
	str	r1, [r3, #8]
	str	r1, [r3, #12]
	str	r2, [r3, #4]
	str	lr, [r3]
	str	r2, [r3, #24]
	add	r3, r3, #28
	cmp	r3, ip
	bne	.L35
	mvn	r2, #0
	mov	r0, #1
	mov	r1, #16
	mov	ip, #0
	ldr	r3, .L41+108
	add	lr, r3, #200
.L36:
	str	r2, [r3]
	str	r2, [r3, #4]
	str	r0, [r3, #16]
	str	r0, [r3, #20]
	str	r1, [r3, #24]
	str	r1, [r3, #28]
	str	ip, [r3, #32]
	str	r2, [r3, #36]
	add	r3, r3, #40
	cmp	lr, r3
	bne	.L36
	mov	r2, #8
	mov	r0, #32
	ldr	r3, .L41+112
	ldr	r1, .L41+116
	str	r2, [r3, #12]
	str	r2, [r3, #8]
	str	r2, [r3, #32]
	str	r2, [r3, #28]
	str	r2, [r3, #52]
	str	r2, [r3, #48]
	str	r2, [r3, #72]
	str	r2, [r3, #68]
	str	r2, [r3, #92]
	str	r2, [r3, #88]
	str	r0, [r1, #8]
	str	ip, [r1]
	str	ip, [r1, #4]
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L42:
	.align	2
.L41:
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
	.word	livesRemaining
	.word	doctor
	.word	enemiesRemaining
	.word	num
	.word	pillSpeed
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
	ldr	r3, .L45
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
.L46:
	.align	2
.L45:
	.word	hOff
	.size	updateBkgd, .-updateBkgd
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
	ldr	r3, .L53
	ldr	r3, [r3]
	cmp	r3, #3
	bxne	lr
	str	lr, [sp, #-4]!
	mov	r2, #0
	mov	lr, #100
	mov	r0, #20
	ldr	r3, .L53+4
	ldr	r1, .L53+8
	ldr	ip, .L53+12
	strh	lr, [r1]	@ movhi
	strh	ip, [r1, #2]	@ movhi
	strh	r0, [r1, #4]	@ movhi
	str	r2, [r3, #16]
	str	r2, [r3, #36]
	str	r2, [r3, #56]
	str	r2, [r3, #76]
	str	r2, [r3, #96]
	ldr	lr, [sp], #4
	bx	lr
.L54:
	.align	2
.L53:
	.word	boxesCollected
	.word	boxes
	.word	shadowOAM+536
	.word	-32668
	.size	updateWin, .-updateWin
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
	ldr	r3, .L56
	str	r2, [r3]
	str	r2, [r3, #4]
	str	r1, [r3, #8]
	bx	lr
.L57:
	.align	2
.L56:
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
	ldr	r1, .L59
	ldr	r3, [r1, #4]
	mvn	r3, r3, lsl #17
	mov	r0, #20
	mvn	r3, r3, lsr #17
	ldr	r2, .L59+4
	ldr	ip, [r1]
	add	r1, r2, #480
	add	r2, r2, #484
	strh	r3, [r1, #2]	@ movhi
	strh	ip, [r1]	@ movhi
	strh	r0, [r2]	@ movhi
	bx	lr
.L60:
	.align	2
.L59:
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
	ldr	r3, .L62
	str	r2, [r3, #12]
	str	r2, [r3, #8]
	str	r2, [r3, #32]
	str	r2, [r3, #28]
	str	r2, [r3, #52]
	str	r2, [r3, #48]
	str	r2, [r3, #72]
	str	r2, [r3, #68]
	str	r2, [r3, #92]
	str	r2, [r3, #88]
	bx	lr
.L63:
	.align	2
.L62:
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
	ldr	r3, .L69
	ldr	r0, .L69+4
	ldr	ip, [r3]
	ldr	r3, [r0]
	cmp	ip, r3
	push	{r4, lr}
	bgt	.L67
	ldr	r1, .L69+8
	lsl	r2, r3, #2
.L65:
	ldr	lr, .L69+12
	ldr	lr, [lr]
	add	r3, r2, r3
	str	lr, [r1, r3, lsl #2]
	str	ip, [r0]
	pop	{r4, lr}
	bx	lr
.L67:
	mov	r4, #1
	ldr	r1, .L69+8
	sub	r2, r3, #1
	add	r2, r2, r2, lsl #2
	add	r2, r1, r2, lsl #2
	ldmib	r2, {r2, lr}
	add	lr, r2, lr
	add	r2, r3, r3, lsl #2
	add	r2, r1, r2, lsl #2
	add	lr, lr, #8
	str	lr, [r2, #4]
	str	r4, [r2, #16]
	lsl	r2, r3, #2
	b	.L65
.L70:
	.align	2
.L69:
	.word	boxesCollected
	.word	prevBox
	.word	boxes
	.word	boxbar
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
	ldr	r3, .L77
	ldr	r2, .L77+4
	ldr	r4, .L77+8
	ldr	lr, .L77+12
	add	r0, r3, #100
.L74:
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
	bne	.L74
	pop	{r4, r5, r6, lr}
	bx	lr
.L78:
	.align	2
.L77:
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
	ldr	r3, .L81
	ldr	r1, [r3]
	ldr	r3, .L81+4
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
.L82:
	.align	2
.L81:
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
	ldr	r1, .L84
	ldr	r2, [r1, #4]
	mvn	r2, r2, lsl #17
	mov	r3, #67108864
	mvn	r2, r2, lsr #17
	ldr	r0, .L84+4
	ldrh	r0, [r0]
	ldr	ip, [r1, #28]
	strh	r0, [r3, #84]	@ movhi
	ldr	r3, [r1, #36]
	ldr	r0, .L84+8
	ldr	r1, [r1]
	add	r3, r3, ip, lsl #5
	lsl	r3, r3, #2
	strh	r2, [r0, #2]	@ movhi
	strh	r1, [r0]	@ movhi
	strh	r3, [r0, #4]	@ movhi
	bx	lr
.L85:
	.align	2
.L84:
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
	ldr	r3, .L90
	add	ip, r3, #200
.L87:
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
	bne	.L87
	ldr	lr, [sp], #4
	bx	lr
.L91:
	.align	2
.L90:
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
	ldr	r5, .L97
	mov	lr, pc
	bx	r5
	ldr	r4, .L97+4
	smull	r2, r3, r4, r0
	asr	r4, r0, #31
	rsb	r4, r4, r3, asr #3
	rsb	r3, r4, r4, lsl #3
	rsb	r4, r4, r3, lsl #3
	subs	r4, r0, r4, lsl #2
	moveq	r4, #20
	mov	lr, pc
	bx	r5
	ldr	r2, .L97+8
	ldr	r3, .L97+12
	ldr	ip, [r2]
	ldr	r1, .L97+16
	smull	r2, r3, r0, r3
	smull	r2, r1, ip, r1
	asr	r2, r0, #31
	rsb	r3, r2, r3, asr #1
	asr	r2, ip, #31
	rsb	r2, r2, r1, asr #4
	ldr	r1, .L97+20
	add	r3, r3, r3, lsl #2
	add	r2, r2, r2, lsl #2
	sub	r3, r0, r3
	add	r2, r2, r2, lsl #2
	ldr	r0, [r1, #32]
	tst	r3, #1
	sub	r2, ip, r2, lsl #1
	moveq	r3, #0
	orrs	r2, r2, r0
	bne	.L92
	ldr	r0, .L97+24
	ldr	r2, [r0]
	cmp	r2, #2
	bgt	.L92
	ldr	ip, .L97+28
	ldr	ip, [ip]
	cmp	ip, #4
	bgt	.L92
	mov	ip, #1
	mov	lr, #10
	add	r2, r2, ip
	str	r2, [r0]
	str	r4, [r1, #8]
	str	r3, [r1, #36]
	str	lr, [r1, #12]
	str	ip, [r1, #32]
.L92:
	pop	{r4, r5, r6, lr}
	bx	lr
.L98:
	.align	2
.L97:
	.word	rand
	.word	156180629
	.word	frameCounter
	.word	1717986919
	.word	1374389535
	.word	powerups
	.word	activePowerups
	.word	boxesCollected
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
	beq	.L100
	ldr	r2, [r0, #20]
	add	r3, r3, r2
	cmp	r3, #159
	str	r3, [r0, #12]
	bgt	.L123
.L101:
	ldr	r4, .L125
	ldr	r6, .L125+4
	ldr	r8, .L125+8
	ldr	r9, .L125+12
	ldr	r10, .L125+16
	ldr	fp, .L125+20
	add	r7, r4, #200
.L112:
	ldr	r3, [r4, #32]
	cmp	r3, #0
	bne	.L124
.L103:
	add	r4, r4, #40
	cmp	r7, r4
	bne	.L112
	ldr	r3, [r5, #12]
.L100:
	ldr	r1, .L125+24
	ldr	r2, [r5, #8]
	ldr	r1, [r1]
	sub	r2, r2, r1
	str	r3, [r5]
	str	r2, [r5, #4]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L124:
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
	beq	.L103
	mov	r1, #0
	str	r1, [r5, #32]
	ldr	r3, [r9]
	ldr	r2, [r4, #36]
	sub	r3, r3, #1
	cmp	r2, r1
	str	r3, [r9]
	bne	.L105
	ldr	r3, [fp]
	add	r3, r3, #1
	str	r3, [fp]
	b	.L103
.L123:
	mov	r1, #0
	ldr	r2, .L125+12
	ldr	r3, [r2]
	sub	r3, r3, #1
	str	r3, [r2]
	str	r1, [r0, #32]
	b	.L101
.L105:
	cmp	r2, #1
	streq	r2, [r10]
	beq	.L103
	cmp	r2, #2
	moveq	r3, #4
	streq	r3, [r10]
	beq	.L103
	cmp	r2, #3
	ldreq	r3, .L125+28
	streq	r1, [r3]
	beq	.L103
	cmp	r2, #4
	moveq	r3, #1
	ldreq	r2, .L125+28
	streq	r3, [r10]
	streq	r3, [r2]
	b	.L103
.L126:
	.align	2
.L125:
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
	push	{r4, r5, r6, r7, r8, r9, lr}
	mov	r9, #0
	mov	r4, #512
	mov	r7, r9
	ldr	r3, .L140
	ldr	r2, .L140+4
	ldr	r6, .L140+8
	ldr	r5, .L140+12
	add	lr, r3, #200
.L131:
	ldr	r1, [r3, #32]
	cmp	r1, #1
	strhne	r4, [r2, #160]	@ movhi
	beq	.L139
.L130:
	add	r3, r3, #40
	cmp	lr, r3
	add	r2, r2, #8
	bne	.L131
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L139:
	ldr	r0, [r3, #36]
	cmp	r0, #0
	moveq	r8, #512
	moveq	r7, #16
	beq	.L129
	cmp	r0, #1
	beq	.L133
	cmp	r0, #2
	beq	.L134
	cmp	r0, #3
	beq	.L135
	cmp	r0, #4
	beq	.L136
	mov	r0, r9
	add	r8, r9, r7, lsl #5
	lsl	r8, r8, #16
	lsr	r8, r8, #16
.L129:
	ldr	r1, [r3, #4]
	ldrb	ip, [r3]	@ zero_extendqisi2
	and	r1, r1, r6
	orr	r1, r1, r5
	orr	ip, ip, #1024
	mov	r9, r0
	strh	r8, [r2, #164]	@ movhi
	strh	r1, [r2, #162]	@ movhi
	strh	ip, [r2, #160]	@ movhi
	b	.L130
.L133:
	mov	r8, #640
	mov	r0, #0
	mov	r7, #20
	b	.L129
.L134:
	mov	r8, #644
	mov	r0, #4
	mov	r7, #20
	b	.L129
.L136:
	mov	r8, #768
	mov	r0, #0
	mov	r7, #24
	b	.L129
.L135:
	mov	r8, #648
	mov	r0, #8
	mov	r7, #20
	b	.L129
.L141:
	.align	2
.L140:
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
	ldr	r3, .L146
	add	ip, r3, #140
.L143:
	str	r0, [r3, #20]
	str	r0, [r3, #16]
	str	r1, [r3, #8]
	str	r1, [r3, #12]
	str	r2, [r3, #4]
	str	lr, [r3]
	str	r2, [r3, #24]
	add	r3, r3, #28
	cmp	r3, ip
	bne	.L143
	ldr	lr, [sp], #4
	bx	lr
.L147:
	.align	2
.L146:
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
	ldr	r0, .L162
	mov	r2, r0
	ldr	r1, [r2, #24]
	cmp	r1, #0
	mov	r3, #0
	beq	.L160
.L149:
	add	r3, r3, #1
	cmp	r3, #5
	add	r2, r2, #28
	bxeq	lr
	ldr	r1, [r2, #24]
	cmp	r1, #0
	bne	.L149
.L160:
	mov	ip, #125
	push	{r4, lr}
	ldr	lr, .L162+4
	ldr	r1, [lr, #28]
	rsb	r2, r3, r3, lsl #3
	bics	r1, r1, #2
	str	ip, [r0, r2, lsl #2]
	add	r2, r0, r2, lsl #2
	lsl	ip, r3, #3
	beq	.L161
	cmp	r1, #1
	mvneq	r4, #1
	ldreq	r1, [lr, #4]
	subeq	r1, r1, #18
	stmibeq	r2, {r1, r4}
.L151:
	mov	r2, #1
	sub	r3, ip, r3
	add	r0, r0, r3, lsl #2
	str	r2, [r0, #24]
	pop	{r4, lr}
	bx	lr
.L161:
	mov	r4, #2
	ldr	r1, [lr, #4]
	add	r1, r1, #6
	stmib	r2, {r1, r4}
	b	.L151
.L163:
	.align	2
.L162:
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
	ldr	r4, .L213
	ldr	r3, [r4, #28]
	cmp	r3, #4
	movne	r2, #4
	strne	r3, [r4, #32]
	strne	r2, [r4, #28]
	ldr	r3, .L213+4
	ldr	r2, [r4, #24]
	smull	r0, r1, r3, r2
	asr	r3, r2, #31
	rsb	r3, r3, r1, asr #2
	add	r3, r3, r3, lsl #2
	subs	r3, r2, r3, lsl #1
	bne	.L166
	add	r0, r4, #36
	ldm	r0, {r0, r1}
	sub	r1, r1, #1
	cmp	r0, r1
	addlt	r0, r0, #1
	strlt	r0, [r4, #36]
	strge	r3, [r4, #36]
.L166:
	ldr	r3, .L213+8
	ldrh	r1, [r3, #48]
	tst	r1, #16
	bne	.L168
	ldr	r3, .L213+12
	ldr	r1, [r3]
	cmp	r1, #1
	movne	r3, #0
	moveq	r3, #2
	ldr	r0, .L213+16
	ldr	r0, [r0]
	cmp	r0, #4
	str	r3, [r4, #28]
	ldr	r3, [r4, #4]
	ble	.L170
	ldr	r0, [r4, #8]
	add	r3, r0, r3
	str	r3, [r4, #4]
	ldr	r5, .L213+20
.L171:
	ldr	r3, .L213+8
	ldrh	r3, [r3, #48]
	tst	r3, #32
	bne	.L174
.L177:
	cmp	r1, #1
	moveq	r1, #3
	movne	r1, #1
	ldr	r3, [r4, #4]
	cmp	r3, #0
	str	r1, [r4, #28]
	ble	.L174
	ldr	r0, [r4, #8]
	ldr	r1, [r4]
	sub	r3, r3, r0
	ldr	ip, .L213+24
	add	r0, r3, r1, lsl #8
	lsl	r0, r0, #1
	ldrh	r0, [ip, r0]
	cmp	r0, #0
	bne	.L211
.L174:
	add	r2, r2, #1
	str	r2, [r4, #24]
.L176:
	ldr	r3, .L213+28
	ldrh	r3, [r3]
	tst	r3, #1
	ldr	r1, [r4, #44]
	beq	.L175
	ldr	r3, .L213+32
	ldrh	r2, [r3]
	ands	r6, r2, #1
	bne	.L175
	cmp	r1, #15
	ble	.L175
	ldr	r3, .L213+36
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L175
	bl	firePill
	ldr	r1, .L213+40
	mov	r2, r6
	ldr	r0, .L213+44
	ldr	r3, .L213+48
	mov	lr, pc
	bx	r3
	mov	r1, r6
.L175:
	ldr	r3, .L213+52
	ldr	r0, [r5]
	ldr	r2, [r4, #4]
	ldr	r3, [r3]
	sub	r2, r2, r0
	add	r3, r3, r1
	str	r2, [r4, #48]
	str	r3, [r4, #44]
	pop	{r4, r5, r6, lr}
	bx	lr
.L170:
	ldr	r0, [r4, #16]
	add	r3, r3, r0
	cmp	r3, #255
	bgt	.L210
	ldr	ip, [r4, #8]
	ldr	r0, [r4]
	add	r3, r3, ip
	sub	r3, r3, #1
	ldr	lr, .L213+24
	add	ip, r3, r0, lsl #8
	lsl	ip, ip, #1
	ldrh	ip, [lr, ip]
	cmp	ip, #0
	beq	.L210
	ldr	ip, [r4, #20]
	add	r0, r0, ip
	sub	r0, r0, #1
	add	r3, r3, r0, lsl #8
	lsl	r3, r3, #1
	ldrh	r3, [lr, r3]
	ldr	r5, .L213+20
	cmp	r3, #0
	ldrne	r3, [r5]
	addne	r3, r3, #1
	strne	r3, [r5]
	b	.L171
.L168:
	ldrh	r3, [r3, #48]
	tst	r3, #32
	beq	.L212
	ldr	r3, [r4, #28]
	cmp	r3, #4
	ldrne	r5, .L213+20
	bne	.L174
	mov	r2, #0
	ldr	r3, [r4, #32]
	str	r2, [r4, #36]
	str	r3, [r4, #28]
	ldr	r5, .L213+20
	b	.L176
.L211:
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
	b	.L174
.L210:
	ldr	r5, .L213+20
	b	.L171
.L212:
	ldr	r3, .L213+12
	ldr	r5, .L213+20
	ldr	r1, [r3]
	b	.L177
.L214:
	.align	2
.L213:
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
	bge	.L220
.L218:
	mov	r3, #0
	str	r3, [r0, #24]
	bx	lr
.L220:
	ldr	r2, [r0, #16]
	add	r3, r3, r2
	cmp	r3, #239
	bxle	lr
	b	.L218
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
	ldr	r3, .L227
	ldr	r3, [r3]
	cmp	r3, #0
	push	{r4, r5, r6, lr}
	movne	r6, #520
	moveq	r6, #516
	mov	r5, #512
	ldr	r3, .L227+4
	ldr	r2, .L227+8
	ldr	r4, .L227+12
	ldr	lr, .L227+16
	add	r0, r3, #140
.L224:
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
	bne	.L224
	pop	{r4, r5, r6, lr}
	bx	lr
.L228:
	.align	2
.L227:
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
	ldr	r3, .L233
	add	ip, r3, #360
.L230:
	str	r0, [r3, #8]
	str	r0, [r3, #12]
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	str	r2, [r3, #24]
	str	r2, [r3, #28]
	stm	r3, {r4, lr}
	add	r3, r3, #36
	cmp	r3, ip
	bne	.L230
	pop	{r4, lr}
	bx	lr
.L234:
	.align	2
.L233:
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
	ldr	r5, .L243
	mov	lr, pc
	bx	r5
	mov	r4, r0
	mov	lr, pc
	bx	r5
	ldr	r2, .L243+4
	ldr	r3, .L243+8
	ldr	r1, [r2]
	smull	r2, r3, r1, r3
	asr	r2, r1, #31
	rsb	r3, r2, r3, asr #4
	rsb	r2, r3, r3, lsl #5
	add	r3, r3, r2, lsl #2
	subs	r3, r1, r3, lsl #1
	bne	.L235
	ldr	r5, .L243+12
	mov	r2, r5
	ldr	r6, .L243+16
	ldr	r1, .L243+20
	ldr	ip, [r6]
	ldr	lr, [r1]
.L239:
	ldr	r1, [r2, #28]
	cmp	r1, #0
	bne	.L237
	cmp	ip, #2
	bgt	.L237
	cmp	lr, #4
	ble	.L242
.L237:
	add	r3, r3, #1
	cmp	r3, #10
	add	r2, r2, #36
	bne	.L239
.L235:
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L242:
	mov	lr, #1
	ldr	r2, .L243+24
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
	b	.L235
.L244:
	.align	2
.L243:
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
	ldr	r3, .L269
	ldr	r3, [r3]
	ldr	r0, .L269+4
	tst	r3, #1
	lsl	r2, r3, #16
	addeq	r3, r3, r3, lsr #31
	ldr	r1, [r0]
	asreq	r3, r3, #1
	lsleq	r3, r3, #16
	lsreq	r3, r3, #16
	lsr	r2, r2, #16
	add	r1, r1, #1
	push	{r4, r5, r6, lr}
	str	r1, [r0]
	strh	r2, [ip, #16]	@ movhi
	strheq	r3, [ip, #20]	@ movhi
	bl	updateDoctor
	ldr	r3, .L269+8
	ldr	ip, .L269+12
	ldr	r0, [r3]
	ldr	r3, [ip]
	cmp	r0, r3
	bgt	.L267
	ldr	r1, .L269+16
	lsl	r2, r3, #2
.L247:
	ldr	lr, .L269+20
	ldr	lr, [lr]
	add	r3, r2, r3
	cmp	r0, #3
	str	r0, [ip]
	str	lr, [r1, r3, lsl #2]
	bne	.L248
	mov	r3, #0
	mov	lr, #100
	mov	r0, #20
	ldr	r2, .L269+24
	ldr	ip, .L269+28
	strh	lr, [r2]	@ movhi
	strh	ip, [r2, #2]	@ movhi
	strh	r0, [r2, #4]	@ movhi
	str	r3, [r1, #16]
	str	r3, [r1, #36]
	str	r3, [r1, #56]
	str	r3, [r1, #76]
	str	r3, [r1, #96]
.L248:
	mov	r0, #0
	ldr	r3, .L269+32
	add	r1, r3, #140
.L253:
	ldr	r2, [r3, #24]
	cmp	r2, #0
	beq	.L250
	ldmib	r3, {r2, ip}
	add	r2, r2, ip
	cmn	r2, #30
	str	r2, [r3, #4]
	blt	.L251
	ldr	ip, [r3, #16]
	add	r2, r2, ip
	cmp	r2, #239
	ble	.L250
.L251:
	str	r0, [r3, #24]
.L250:
	add	r3, r3, #28
	cmp	r3, r1
	bne	.L253
	ldr	r4, .L269+36
	add	r5, r4, #360
.L255:
	bl	spawnEnemy
	ldr	r3, [r4, #28]
	cmp	r3, #0
	movne	r0, r4
	blne	updateEnemy.part.0
.L254:
	add	r4, r4, #36
	cmp	r4, r5
	bne	.L255
	bl	spawnPowerup
	ldr	r0, .L269+40
	bl	updatePowerup
	bl	spawnPowerup
	ldr	r0, .L269+44
	bl	updatePowerup
	bl	spawnPowerup
	ldr	r0, .L269+48
	bl	updatePowerup
	bl	spawnPowerup
	ldr	r0, .L269+52
	bl	updatePowerup
	bl	spawnPowerup
	ldr	r0, .L269+56
	bl	updatePowerup
	ldr	r3, .L269+60
	ldrh	r3, [r3]
	tst	r3, #2
	beq	.L245
	ldr	r3, .L269+64
	ldrh	r3, [r3]
	ands	r3, r3, #2
	bne	.L245
	ldr	r2, .L269+68
	ldr	r1, [r2]
	cmp	r1, #0
	moveq	r3, #1
	str	r3, [r2]
.L245:
	pop	{r4, r5, r6, lr}
	bx	lr
.L267:
	mov	r4, #1
	ldr	r1, .L269+16
	sub	r2, r3, #1
	add	r2, r2, r2, lsl #2
	add	r2, r1, r2, lsl #2
	ldmib	r2, {r2, lr}
	add	lr, r2, lr
	add	r2, r3, r3, lsl #2
	add	r2, r1, r2, lsl #2
	add	lr, lr, #8
	str	lr, [r2, #4]
	str	r4, [r2, #16]
	lsl	r2, r3, #2
	b	.L247
.L270:
	.align	2
.L269:
	.word	hOff
	.word	frameCounter
	.word	boxesCollected
	.word	prevBox
	.word	boxes
	.word	boxbar
	.word	shadowOAM+536
	.word	-32668
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
	ldr	r3, .L286
	mov	ip, #512
	mov	r7, r4
	ldr	r2, .L286+4
	ldr	r6, .L286+8
	ldr	r5, .L286+12
	add	r0, r3, #360
	b	.L277
.L276:
	add	r3, r3, #36
	cmp	r0, r3
	add	r2, r2, #8
	beq	.L285
.L277:
	ldr	r1, [r3, #28]
	cmp	r1, #1
	strhne	ip, [r2, #80]	@ movhi
	bne	.L276
	ldr	r1, [r3, #32]
	cmp	r1, #0
	beq	.L278
	cmp	r1, #1
	beq	.L279
	cmp	r1, #2
	beq	.L280
	cmp	r1, #3
	beq	.L281
	cmp	r1, #4
	addne	r8, r4, r7, lsl #5
	moveq	r8, #904
	moveq	r4, #8
	moveq	r7, #28
	b	.L275
.L278:
	mov	r8, #772
	mov	r4, #4
	mov	r7, #24
.L275:
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
	bne	.L277
.L285:
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L279:
	mov	r8, #776
	mov	r4, #8
	mov	r7, #24
	b	.L275
.L281:
	mov	r8, #900
	mov	r4, #4
	mov	r7, #28
	b	.L275
.L280:
	mov	r8, #896
	mov	r4, #0
	mov	r7, #28
	b	.L275
.L287:
	.align	2
.L286:
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
	ldr	r1, .L290
	ldr	r2, .L290+4
	ldrh	r1, [r1]
	push	{r4, r5, r6, lr}
	ldr	ip, [r2, #28]
	strh	r1, [r3, #84]	@ movhi
	ldr	r3, [r2, #36]
	ldr	r1, [r2, #4]
	ldr	r5, .L290+8
	ldr	r0, [r2]
	ldr	r4, .L290+12
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
	ldr	r2, .L290+16
	ldm	r2, {r0, r3}
	add	r2, r4, #480
	orr	r3, r3, r5
	add	r4, r4, #484
	strh	r1, [r4]	@ movhi
	strh	r3, [r2, #2]	@ movhi
	strh	r0, [r2]	@ movhi
	pop	{r4, r5, r6, lr}
	b	drawBox
.L291:
	.align	2
.L290:
	.word	blend
	.word	doctor
	.word	-32768
	.word	shadowOAM
	.word	boxbar
	.size	drawGame, .-drawGame
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
	.comm	frameCounter,4,4
	.comm	collided,4,4
	.comm	bubbles,4,4
	.comm	num,4,4
	.comm	boxbar,16,4
	.comm	boxes,100,4
	.comm	pills,140,4
	.comm	enemies,360,4
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
