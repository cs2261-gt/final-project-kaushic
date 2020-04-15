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
	.type	updatePowerup.part.0, %function
updatePowerup.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r3, [r0]
	ldr	r2, [r0, #12]
	add	r3, r3, r2
	cmp	r3, #159
	mov	r6, r0
	str	r3, [r0]
	sub	sp, sp, #20
	ble	.L2
	mov	r1, #0
	ldr	r2, .L23
	ldr	r3, [r2]
	sub	r3, r3, #1
	str	r3, [r2]
	str	r1, [r0, #24]
.L2:
	ldr	r4, .L23+4
	ldr	r5, .L23+8
	ldr	r8, .L23+12
	ldr	r9, .L23
	ldr	r10, .L23+16
	ldr	fp, .L23+20
	add	r7, r4, #160
.L13:
	ldr	r3, [r4, #24]
	cmp	r3, #0
	bne	.L22
.L4:
	add	r4, r4, #32
	cmp	r4, r7
	bne	.L13
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L22:
	ldm	r5, {r2, r3}
	ldr	r0, [r5, #20]
	ldr	r1, [r5, #16]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r2, r4, #16
	ldm	r2, {r2, r3}
	ldr	r1, [r4]
	ldr	r0, [r4, #4]
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	beq	.L4
	mov	r1, #0
	str	r1, [r6, #24]
	ldr	r3, [r9]
	ldr	r2, [r4, #28]
	sub	r3, r3, #1
	cmp	r2, r1
	str	r3, [r9]
	ldreq	r3, [fp]
	addeq	r3, r3, #1
	streq	r3, [fp]
	beq	.L4
.L6:
	cmp	r2, #1
	streq	r2, [r10]
	beq	.L4
	cmp	r2, #2
	moveq	r3, #4
	streq	r3, [r10]
	beq	.L4
	cmp	r2, #3
	ldreq	r3, .L23+24
	streq	r1, [r3]
	beq	.L4
	cmp	r2, #4
	moveq	r3, #1
	ldreq	r2, .L23+24
	streq	r3, [r10]
	streq	r3, [r2]
	b	.L4
.L24:
	.align	2
.L23:
	.word	activePowerups
	.word	powerups
	.word	doctor
	.word	collision
	.word	pillSpeed
	.word	boxesCollected
	.word	bubbles
	.size	updatePowerup.part.0, .-updatePowerup.part.0
	.align	2
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
	bls	.L26
	mov	r1, #0
	ldr	r2, .L59
	ldr	r3, [r2]
	sub	r3, r3, #1
	str	r3, [r2]
	str	r1, [r4, #28]
.L26:
	ldr	r5, .L59+4
	ldr	r6, .L59+8
	ldr	r7, .L59+12
	ldr	r8, .L59+16
	ldr	fp, .L59+20
	ldr	r10, .L59+24
	add	r9, r5, #140
.L40:
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
	bne	.L54
	ldr	r3, [r5, #24]
	cmp	r3, #0
	bne	.L55
.L30:
	ldr	r3, [r10]
	cmp	r3, #1
	beq	.L56
.L35:
	add	r5, r5, #28
	cmp	r5, r9
	beq	.L25
.L58:
	ldr	r0, [r4, #4]
	b	.L40
.L54:
	mov	r3, #1
	str	r3, [r8]
	ldr	r3, .L59+28
	mov	lr, pc
	bx	r3
	ldr	r2, .L59+32
	smull	r3, r2, r0, r2
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #2
	add	r3, r3, r3, lsl #2
	sub	r0, r0, r3, lsl #1
	ldr	r3, [r5, #24]
	add	r0, r0, #2
	cmp	r3, #0
	str	r0, [fp]
	beq	.L30
.L55:
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
	beq	.L30
	ldr	r3, [r8]
	cmp	r3, #1
	beq	.L30
	mov	r2, #0
	ldr	r3, [r4, #24]
	add	r3, r3, #1
	str	r2, [r4, #28]
	str	r3, [r4, #24]
	str	r2, [r5, #24]
	ldr	r2, [r4, #32]
	tst	r2, #1
	bne	.L32
	cmp	r3, #2
	bne	.L30
.L33:
	mov	ip, #0
	ldr	r0, .L59+36
	ldr	r3, [r0]
	ldr	r1, .L59
	sub	r3, r3, #1
	ldr	r2, [r1]
	str	r3, [r0]
	ldr	r3, [r10]
	sub	r2, r2, #1
	cmp	r3, #1
	str	ip, [r4, #28]
	str	r2, [r1]
	bne	.L35
.L56:
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
	beq	.L35
	ldr	r2, [r4, #24]
	ldr	r3, [r4, #4]
	add	r2, r2, #1
	cmp	r3, #240
	str	r2, [r4, #24]
	beq	.L57
	ldr	r1, [r6, #4]
	ldr	r2, [r4, #8]
	cmp	r3, r1
	add	r5, r5, #28
	sublt	r3, r3, #5
	addge	r3, r3, #5
	rsb	r2, r2, #0
	cmp	r5, r9
	str	r2, [r4, #8]
	str	r3, [r4, #4]
	bne	.L58
.L25:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L32:
	cmp	r3, #4
	bne	.L30
	b	.L33
.L57:
	mov	r1, #0
	ldr	r2, .L59
	ldr	r3, [r2]
	sub	r3, r3, #1
	str	r1, [r4, #28]
	str	r3, [r2]
	b	.L35
.L60:
	.align	2
.L59:
	.word	activeEnemies
	.word	pills
	.word	doctor
	.word	collision
	.word	collided
	.word	blend
	.word	.LANCHOR0
	.word	rand
	.word	1717986919
	.word	enemiesRemaining
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
	ldr	r4, .L67
	mov	r3, #256
	mov	r0, #3
	ldr	r1, .L67+4
	mov	lr, pc
	bx	r4
	mov	r3, #1856
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L67+8
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L67+12
	ldr	r1, .L67+16
	mov	lr, pc
	bx	r4
	mov	r3, #224
	mov	r0, #3
	ldr	r2, .L67+20
	ldr	r1, .L67+24
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L67+28
	ldr	r1, .L67+32
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r0, #3
	ldr	r2, .L67+36
	ldr	r1, .L67+40
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L67+44
	ldr	r1, .L67+48
	mov	lr, pc
	bx	r4
	mov	r3, #0
	mov	fp, #4
	mvn	r9, #0
	mov	r8, #2
	mov	r7, #104
	ldr	r10, .L67+52
	str	r3, [r10]
	ldr	r10, .L67+56
	str	r3, [r10]
	ldr	r10, .L67+60
	str	r3, [r10]
	ldr	r10, .L67+64
	str	r3, [r10]
	ldr	r10, .L67+68
	str	r3, [r10]
	ldr	r10, .L67+72
	str	r3, [r10]
	ldr	r10, .L67+76
	str	fp, [r10]
	ldr	r10, .L67+80
	str	r9, [r10]
	ldr	r9, .L67+84
	str	r8, [r9]
	ldr	r8, .L67+88
	str	r7, [r8, #4]
	mov	r7, #3
	str	r7, [r8, #40]
	mov	r7, #16
	mov	r5, #129
	str	r7, [r8, #44]
	mov	r9, #144	@ movhi
	mov	r7, #67108864
	mov	ip, #1
	mov	lr, #32
	mvn	r6, #239
	mov	r2, #8
	mvn	r4, #194
	str	r3, [r8, #24]
	str	r3, [r8, #36]
	str	r3, [r8, #28]
	str	r5, [r8]
	strh	r9, [r7, #80]	@ movhi
	ldr	r7, .L67+92
	str	ip, [r8, #8]
	str	ip, [r8, #12]
	str	ip, [r7, #8]
	str	ip, [r7, #12]
	str	r3, [r7, #24]
	str	r3, [r7, #28]
	str	ip, [r7, #44]
	mov	r0, ip
	str	lr, [r8, #20]
	str	lr, [r8, #16]
	str	r5, [r7]
	str	lr, [r7, #16]
	str	lr, [r7, #20]
	str	r5, [r7, #36]
	str	r6, [r7, #4]
	str	r6, [r7, #40]
	str	ip, [r7, #48]
	ldr	ip, .L67+96
	str	lr, [r7, #52]
	str	lr, [r7, #56]
	mov	r1, r3
	str	r3, [r7, #60]
	str	r3, [r7, #64]
	add	r3, ip, #140
.L62:
	str	r2, [ip, #20]
	str	r2, [ip, #16]
	str	r0, [ip, #8]
	str	r0, [ip, #12]
	str	r1, [ip, #4]
	str	r4, [ip]
	str	r1, [ip, #24]
	add	ip, ip, #28
	cmp	ip, r3
	bne	.L62
	mvn	r2, #0
	mov	r0, #1
	mov	r1, #16
	mov	lr, #0
	ldr	r3, .L67+100
	add	ip, r3, #160
.L63:
	str	r2, [r3]
	str	r2, [r3, #4]
	str	r0, [r3, #8]
	str	r0, [r3, #12]
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	str	lr, [r3, #24]
	str	r2, [r3, #28]
	add	r3, r3, #32
	cmp	r3, ip
	bne	.L63
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L68:
	.align	2
.L67:
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
	.word	enemiesRemaining
	.word	num
	.word	pillSpeed
	.word	doctor
	.word	enemies
	.word	pills
	.word	powerups
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
	ldr	r3, .L71
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
.L72:
	.align	2
.L71:
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
	push	{r4, r5, r6, r7, lr}
	mov	r2, #0
	mov	r7, #129
	mov	r6, #3
	mov	r5, #16
	mov	ip, #32
	mov	r0, #1
	mov	lr, #67108864
	mov	r4, #144
	ldr	r3, .L75
	ldr	r1, [r3]
	ldr	r3, .L75+4
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
.L76:
	.align	2
.L75:
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
	ldr	r1, .L78
	ldr	r2, [r1, #4]
	mvn	r2, r2, lsl #17
	mov	r3, #67108864
	mvn	r2, r2, lsr #17
	ldr	r0, .L78+4
	ldrh	r0, [r0]
	ldr	ip, [r1, #28]
	strh	r0, [r3, #84]	@ movhi
	ldr	r3, [r1, #36]
	ldr	r0, .L78+8
	ldr	r1, [r1]
	add	r3, r3, ip, lsl #5
	lsl	r3, r3, #2
	strh	r2, [r0, #2]	@ movhi
	strh	r1, [r0]	@ movhi
	strh	r3, [r0, #4]	@ movhi
	bx	lr
.L79:
	.align	2
.L78:
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
	ldr	r3, .L84
	add	ip, r3, #160
.L81:
	str	r2, [r3]
	str	r2, [r3, #4]
	str	r0, [r3, #8]
	str	r0, [r3, #12]
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	str	lr, [r3, #24]
	str	r2, [r3, #28]
	add	r3, r3, #32
	cmp	r3, ip
	bne	.L81
	ldr	lr, [sp], #4
	bx	lr
.L85:
	.align	2
.L84:
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
	ldr	r5, .L91
	mov	lr, pc
	bx	r5
	ldr	r4, .L91+4
	smull	r2, r3, r4, r0
	asr	r4, r0, #31
	rsb	r4, r4, r3, asr #3
	rsb	r3, r4, r4, lsl #3
	rsb	r4, r4, r3, lsl #3
	subs	r4, r0, r4, lsl #2
	moveq	r4, #20
	mov	lr, pc
	bx	r5
	ldr	r2, .L91+8
	ldr	r3, .L91+12
	ldr	ip, [r2]
	ldr	r1, .L91+16
	smull	r2, r3, r0, r3
	smull	r2, r1, ip, r1
	asr	r2, r0, #31
	rsb	r3, r2, r3, asr #1
	asr	r2, ip, #31
	rsb	r2, r2, r1, asr #4
	ldr	r1, .L91+20
	add	r3, r3, r3, lsl #2
	add	r2, r2, r2, lsl #2
	sub	r3, r0, r3
	add	r2, r2, r2, lsl #2
	ldr	r0, [r1, #24]
	tst	r3, #1
	sub	r2, ip, r2, lsl #1
	moveq	r3, #0
	orrs	r2, r2, r0
	bne	.L86
	ldr	r0, .L91+24
	ldr	r2, [r0]
	cmp	r2, #2
	bgt	.L86
	mov	ip, #1
	mov	lr, #10
	add	r2, r2, ip
	str	r2, [r0]
	str	r4, [r1, #4]
	str	r3, [r1, #28]
	str	lr, [r1]
	str	ip, [r1, #24]
.L86:
	pop	{r4, r5, r6, lr}
	bx	lr
.L92:
	.align	2
.L91:
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
	@ link register save eliminated.
	ldr	r3, [r0, #24]
	cmp	r3, #0
	bxeq	lr
	b	updatePowerup.part.0
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
	ldr	r3, .L108
	ldr	r2, .L108+4
	ldr	r6, .L108+8
	ldr	r5, .L108+12
	add	lr, r3, #40
.L99:
	ldr	r1, [r2, #24]
	cmp	r1, #1
	strhne	r4, [r3, #160]	@ movhi
	beq	.L107
.L98:
	add	r3, r3, #8
	cmp	lr, r3
	add	r2, r2, #32
	bne	.L99
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L107:
	ldr	r0, [r2, #28]
	cmp	r0, #0
	moveq	r8, #512
	moveq	r7, #16
	beq	.L97
	cmp	r0, #1
	beq	.L101
	cmp	r0, #2
	beq	.L102
	cmp	r0, #3
	beq	.L103
	cmp	r0, #4
	beq	.L104
	mov	r0, r9
	add	r8, r9, r7, lsl #5
	lsl	r8, r8, #16
	lsr	r8, r8, #16
.L97:
	ldr	r1, [r2, #4]
	ldrb	ip, [r2]	@ zero_extendqisi2
	and	r1, r1, r6
	orr	r1, r1, r5
	orr	ip, ip, #1024
	mov	r9, r0
	strh	r8, [r3, #164]	@ movhi
	strh	r1, [r3, #162]	@ movhi
	strh	ip, [r3, #160]	@ movhi
	b	.L98
.L101:
	mov	r8, #640
	mov	r0, #0
	mov	r7, #20
	b	.L97
.L102:
	mov	r8, #644
	mov	r0, #4
	mov	r7, #20
	b	.L97
.L104:
	mov	r8, #768
	mov	r0, #0
	mov	r7, #24
	b	.L97
.L103:
	mov	r8, #648
	mov	r0, #8
	mov	r7, #20
	b	.L97
.L109:
	.align	2
.L108:
	.word	shadowOAM
	.word	powerups
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
	ldr	r3, .L114
	add	ip, r3, #140
.L111:
	str	r0, [r3, #20]
	str	r0, [r3, #16]
	str	r1, [r3, #8]
	str	r1, [r3, #12]
	str	r2, [r3, #4]
	str	lr, [r3]
	str	r2, [r3, #24]
	add	r3, r3, #28
	cmp	r3, ip
	bne	.L111
	ldr	lr, [sp], #4
	bx	lr
.L115:
	.align	2
.L114:
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
	ldr	r0, .L130
	mov	r2, r0
	ldr	r1, [r2, #24]
	cmp	r1, #0
	mov	r3, #0
	beq	.L128
.L117:
	add	r3, r3, #1
	cmp	r3, #5
	add	r2, r2, #28
	bxeq	lr
	ldr	r1, [r2, #24]
	cmp	r1, #0
	bne	.L117
.L128:
	mov	ip, #125
	push	{r4, lr}
	ldr	lr, .L130+4
	ldr	r1, [lr, #28]
	rsb	r2, r3, r3, lsl #3
	bics	r1, r1, #2
	str	ip, [r0, r2, lsl #2]
	add	r2, r0, r2, lsl #2
	lsl	ip, r3, #3
	beq	.L129
	cmp	r1, #1
	mvneq	r4, #1
	ldreq	r1, [lr, #4]
	subeq	r1, r1, #18
	stmibeq	r2, {r1, r4}
.L119:
	mov	r2, #1
	sub	r3, ip, r3
	add	r0, r0, r3, lsl #2
	str	r2, [r0, #24]
	pop	{r4, lr}
	bx	lr
.L129:
	mov	r4, #2
	ldr	r1, [lr, #4]
	add	r1, r1, #6
	stmib	r2, {r1, r4}
	b	.L119
.L131:
	.align	2
.L130:
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
	ldr	r4, .L177
	ldr	r3, [r4, #28]
	cmp	r3, #4
	movne	r2, #4
	strne	r3, [r4, #32]
	strne	r2, [r4, #28]
	ldr	r3, .L177+4
	ldr	r2, [r4, #24]
	smull	r0, r1, r3, r2
	asr	r3, r2, #31
	rsb	r3, r3, r1, asr #2
	add	r3, r3, r3, lsl #2
	subs	r3, r2, r3, lsl #1
	bne	.L134
	add	r0, r4, #36
	ldm	r0, {r0, r1}
	sub	r1, r1, #1
	cmp	r0, r1
	addlt	r0, r0, #1
	strlt	r0, [r4, #36]
	strge	r3, [r4, #36]
.L134:
	ldr	r3, .L177+8
	ldrh	r1, [r3, #48]
	tst	r1, #16
	bne	.L136
	ldr	r3, .L177+12
	ldr	r1, [r3]
	cmp	r1, #1
	movne	ip, #0
	moveq	ip, #2
	ldr	r0, [r4, #4]
	ldr	r3, [r4, #16]
	add	r3, r0, r3
	cmp	r3, #255
	str	ip, [r4, #28]
	ble	.L175
.L138:
	ldr	r5, .L177+16
	ldr	r0, .L177+8
	ldr	r3, [r5]
	ldrh	r0, [r0, #48]
	add	r3, r3, #1
	tst	r0, #32
	str	r3, [r5]
	bne	.L140
.L139:
	cmp	r1, #1
	moveq	r3, #3
	movne	r3, #1
	ldr	r1, [r4, #4]
	cmp	r1, #0
	str	r3, [r4, #28]
	ble	.L140
	ldr	r0, [r4, #8]
	ldr	r3, [r4]
	sub	r1, r1, r0
	ldr	ip, .L177+20
	add	r0, r1, r3, lsl #8
	lsl	r0, r0, #1
	ldrh	r0, [ip, r0]
	cmp	r0, #0
	beq	.L140
	ldr	r0, [r4, #20]
	add	r3, r3, r0
	sub	r3, r3, #1
	add	r3, r1, r3, lsl #8
	lsl	r3, r3, #1
	ldrh	r3, [ip, r3]
	cmp	r3, #0
	ldrne	r3, [r5]
	subne	r3, r3, #1
	strne	r1, [r4, #4]
	strne	r3, [r5]
.L140:
	add	r2, r2, #1
	str	r2, [r4, #24]
	b	.L144
.L136:
	ldrh	r3, [r3, #48]
	tst	r3, #32
	beq	.L176
	ldr	r3, [r4, #28]
	cmp	r3, #4
	ldrne	r5, .L177+16
	bne	.L140
	mov	r2, #0
	ldr	r3, [r4, #32]
	str	r2, [r4, #36]
	str	r3, [r4, #28]
	ldr	r5, .L177+16
.L144:
	ldr	r3, .L177+24
	ldrh	r3, [r3]
	tst	r3, #1
	ldr	r1, [r4, #44]
	beq	.L143
	ldr	r3, .L177+28
	ldrh	r2, [r3]
	ands	r6, r2, #1
	bne	.L143
	cmp	r1, #15
	ble	.L143
	ldr	r3, .L177+32
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L143
	bl	firePill
	ldr	r1, .L177+36
	mov	r2, r6
	ldr	r0, .L177+40
	ldr	r3, .L177+44
	mov	lr, pc
	bx	r3
	mov	r1, r6
.L143:
	mov	r3, #67108864
	ldr	r2, .L177+48
	ldrh	r2, [r2]
	strh	r2, [r3, #84]	@ movhi
	ldr	r3, .L177+52
	ldr	r0, [r5]
	ldr	r2, [r4, #4]
	ldr	r3, [r3]
	sub	r2, r2, r0
	add	r3, r3, r1
	str	r2, [r4, #48]
	str	r3, [r4, #44]
	pop	{r4, r5, r6, lr}
	bx	lr
.L175:
	ldr	r5, [r4, #8]
	ldr	ip, [r4]
	add	r3, r3, r5
	sub	r3, r3, #1
	ldr	r6, .L177+20
	add	lr, r3, ip, lsl #8
	lsl	lr, lr, #1
	ldrh	lr, [r6, lr]
	cmp	lr, #0
	beq	.L138
	ldr	lr, [r4, #20]
	add	ip, ip, lr
	sub	ip, ip, #1
	add	r3, r3, ip, lsl #8
	lsl	r3, r3, #1
	ldrh	r3, [r6, r3]
	cmp	r3, #0
	addne	r0, r0, r5
	strne	r0, [r4, #4]
	b	.L138
.L176:
	ldr	r3, .L177+12
	ldr	r5, .L177+16
	ldr	r1, [r3]
	b	.L139
.L178:
	.align	2
.L177:
	.word	doctor
	.word	1717986919
	.word	67109120
	.word	.LANCHOR0
	.word	hOff
	.word	collisionmapBitmap
	.word	oldButtons
	.word	buttons
	.word	collided
	.word	2117
	.word	bubblePop
	.word	playSoundB
	.word	blend
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
	bge	.L184
.L182:
	mov	r3, #0
	str	r3, [r0, #24]
	bx	lr
.L184:
	ldr	r2, [r0, #16]
	add	r3, r3, r2
	cmp	r3, #239
	bxle	lr
	b	.L182
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
	ldr	r3, .L191
	ldr	r3, [r3]
	cmp	r3, #0
	push	{r4, r5, r6, lr}
	movne	r6, #520
	moveq	r6, #516
	mov	r5, #512
	ldr	r3, .L191+4
	ldr	r2, .L191+8
	ldr	r4, .L191+12
	ldr	lr, .L191+16
	add	r0, r3, #140
.L188:
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
	bne	.L188
	pop	{r4, r5, r6, lr}
	bx	lr
.L192:
	.align	2
.L191:
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
	str	lr, [sp, #-4]!
	mov	r0, #1
	mov	r1, #32
	mov	r2, #0
	mov	lr, #129
	mvn	ip, #239
	ldr	r3, .L195
	str	lr, [r3]
	str	lr, [r3, #36]
	str	ip, [r3, #4]
	str	ip, [r3, #40]
	str	r0, [r3, #8]
	str	r0, [r3, #12]
	str	r0, [r3, #44]
	str	r0, [r3, #48]
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	str	r1, [r3, #52]
	str	r1, [r3, #56]
	str	r2, [r3, #24]
	str	r2, [r3, #28]
	str	r2, [r3, #60]
	str	r2, [r3, #64]
	ldr	lr, [sp], #4
	bx	lr
.L196:
	.align	2
.L195:
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
	ldr	r5, .L203
	mov	lr, pc
	bx	r5
	ldr	r3, .L203+4
	ldr	r2, .L203+8
	ldr	r1, .L203+12
	ldr	r3, [r3]
	mla	r3, r1, r3, r2
	cmp	r2, r3, ror #1
	bcc	.L197
	ldr	r3, .L203+16
	ldr	r6, [r3, #28]
	cmp	r6, #0
	mov	r4, r0
	bne	.L199
	ldr	r7, .L203+20
	ldr	r2, [r7]
	cmp	r2, #2
	ble	.L200
.L197:
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L199:
	ldr	r2, [r3, #64]
	cmp	r2, #0
	bne	.L197
	ldr	r7, .L203+20
	ldr	r2, [r7]
	cmp	r2, #2
	bgt	.L197
	mov	r6, #1
.L200:
	mov	r8, #1
	add	r6, r6, r6, lsl #3
	add	r6, r3, r6, lsl #2
	str	r8, [r6, #28]
	mov	lr, pc
	bx	r5
	ldr	r3, .L203+24
	smull	r1, r2, r3, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr r8
	ldr	r2, [r7]
	add	r3, r3, r3, lsl #2
	tst	r4, #1
	sub	r0, r0, r3
	add	r3, r2, r8
	str	r3, [r7]
	moveq	r2, #240
	mvneq	r3, #0
	movne	r3, #0
	stmibeq	r6, {r2, r3}
	stmibne	r6, {r3, r8}
	str	r0, [r6, #32]
	b	.L197
.L204:
	.align	2
.L203:
	.word	rand
	.word	frameCounter
	.word	85899344
	.word	-1030792151
	.word	enemies
	.word	activeEnemies
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
	ldr	r3, .L233
	ldr	r3, [r3]
	ldr	r0, .L233+4
	tst	r3, #1
	lsl	r2, r3, #16
	addeq	r3, r3, r3, lsr #31
	ldr	r1, [r0]
	asreq	r3, r3, #1
	lsleq	r3, r3, #16
	add	r1, r1, #1
	lsreq	r3, r3, #16
	lsr	r2, r2, #16
	push	{r4, r5, r6, lr}
	str	r1, [r0]
	strh	r2, [ip, #16]	@ movhi
	strheq	r3, [ip, #20]	@ movhi
	bl	updateDoctor
	mov	r0, #0
	ldr	r3, .L233+8
	add	r1, r3, #140
.L211:
	ldr	r2, [r3, #24]
	cmp	r2, #0
	beq	.L208
	ldmib	r3, {r2, ip}
	add	r2, r2, ip
	cmn	r2, #30
	str	r2, [r3, #4]
	blt	.L209
	ldr	ip, [r3, #16]
	add	r2, r2, ip
	cmp	r2, #239
	ble	.L208
.L209:
	str	r0, [r3, #24]
.L208:
	add	r3, r3, #28
	cmp	r3, r1
	bne	.L211
	ldr	r4, .L233+12
	bl	spawnEnemy
	ldr	r3, [r4, #28]
	cmp	r3, #0
	movne	r0, r4
	blne	updateEnemy.part.0
.L212:
	bl	spawnEnemy
	ldr	r3, [r4, #64]
	cmp	r3, #0
	ldrne	r0, .L233+16
	blne	updateEnemy.part.0
.L213:
	ldr	r4, .L233+20
	add	r5, r4, #160
.L215:
	bl	spawnPowerup
	ldr	r3, [r4, #24]
	cmp	r3, #0
	movne	r0, r4
	blne	updatePowerup.part.0
.L214:
	add	r4, r4, #32
	cmp	r5, r4
	bne	.L215
	ldr	r3, .L233+24
	ldrh	r3, [r3]
	tst	r3, #2
	beq	.L205
	ldr	r3, .L233+28
	ldrh	r3, [r3]
	ands	r3, r3, #2
	bne	.L205
	ldr	r2, .L233+32
	ldr	r1, [r2]
	cmp	r1, #0
	moveq	r3, #1
	str	r3, [r2]
.L205:
	pop	{r4, r5, r6, lr}
	bx	lr
.L234:
	.align	2
.L233:
	.word	hOff
	.word	frameCounter
	.word	pills
	.word	enemies
	.word	enemies+36
	.word	powerups
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
	mov	r1, #0
	mov	ip, #512
	ldr	r3, .L251
	ldr	r0, [r3, #28]
	ldr	r2, .L251+4
	cmp	r0, #1
	push	{r4, r5, r6, r7, lr}
	mov	r6, r1
	mov	r5, r1
	ldr	r4, .L251+8
	ldr	lr, .L251+12
	strhne	ip, [r2, #80]	@ movhi
	beq	.L249
.L240:
	cmp	r1, #1
	add	r3, r3, #36
	add	r2, r2, #8
	bne	.L247
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L247:
	ldr	r0, [r3, #28]
	cmp	r0, #1
	mov	r1, #1
	strhne	ip, [r2, #80]	@ movhi
	bne	.L240
.L249:
	ldr	r0, [r3, #32]
	cmp	r0, #0
	bne	.L250
	mov	r7, #772
	mov	r6, #4
	mov	r5, #24
.L239:
	ldr	r0, [r3, #4]
	strh	r7, [r2, #84]	@ movhi
	and	r0, r0, r4
	ldrb	r7, [r3]	@ zero_extendqisi2
	orr	r0, r0, lr
	strh	r0, [r2, #82]	@ movhi
	strh	r7, [r2, #80]	@ movhi
	b	.L240
.L250:
	cmp	r0, #1
	beq	.L243
	cmp	r0, #2
	beq	.L244
	cmp	r0, #3
	beq	.L245
	cmp	r0, #4
	addne	r7, r6, r5, lsl #5
	moveq	r7, #904
	moveq	r6, #8
	moveq	r5, #28
	b	.L239
.L244:
	mov	r7, #896
	mov	r6, #0
	mov	r5, #28
	b	.L239
.L243:
	mov	r7, #776
	mov	r6, #8
	mov	r5, #24
	b	.L239
.L245:
	mov	r7, #900
	mov	r6, #4
	mov	r5, #28
	b	.L239
.L252:
	.align	2
.L251:
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
	ldr	r1, .L255
	ldr	r2, [r1, #4]
	mvn	r2, r2, lsl #17
	mov	r3, #67108864
	mvn	r2, r2, lsr #17
	ldr	r0, .L255+4
	ldrh	r0, [r0]
	push	{r4, lr}
	ldr	ip, [r1, #28]
	strh	r0, [r3, #84]	@ movhi
	ldr	r3, [r1, #36]
	ldr	r0, .L255+8
	ldr	r1, [r1]
	add	r3, r3, ip, lsl #5
	lsl	r3, r3, #2
	strh	r2, [r0, #2]	@ movhi
	strh	r1, [r0]	@ movhi
	strh	r3, [r0, #4]	@ movhi
	bl	drawPill
	bl	drawEnemy
	pop	{r4, lr}
	b	drawPowerup
.L256:
	.align	2
.L255:
	.word	doctor
	.word	blend
	.word	shadowOAM
	.size	drawGame, .-drawGame
	.comm	blend,4,4
	.comm	pillSpeed,4,4
	.comm	boxesCollected,4,4
	.comm	activePowerups,4,4
	.comm	activeEnemies,4,4
	.comm	randPowerup,4,4
	.global	cheat
	.comm	enemiesRemaining,4,4
	.comm	frameCounter,4,4
	.comm	collided,4,4
	.comm	bubbles,4,4
	.comm	num,4,4
	.comm	pills,140,4
	.comm	enemies,72,4
	.comm	powerups,160,4
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
