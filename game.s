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
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r2, #83886080
	ldr	r4, .L12
	mov	r3, #256
	mov	r0, #3
	ldr	r1, .L12+4
	mov	lr, pc
	bx	r4
	mov	r3, #1856
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L12+8
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L12+12
	ldr	r1, .L12+16
	mov	lr, pc
	bx	r4
	mov	r3, #224
	mov	r0, #3
	ldr	r2, .L12+20
	ldr	r1, .L12+24
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L12+28
	ldr	r1, .L12+32
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r0, #3
	ldr	r2, .L12+36
	ldr	r1, .L12+40
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L12+44
	ldr	r1, .L12+48
	mov	lr, pc
	bx	r4
	mov	r0, #0
	mov	r6, #32
	ldr	ip, .L12+52
	str	r0, [ip]
	ldr	ip, .L12+56
	str	r0, [ip]
	ldr	ip, .L12+60
	str	r0, [ip]
	ldr	ip, .L12+64
	str	r0, [ip]
	ldr	ip, .L12+68
	str	r0, [ip]
	ldr	ip, .L12+72
	str	r0, [ip]
	ldr	ip, .L12+76
	str	r0, [ip]
	ldr	ip, .L12+80
	str	r0, [ip]
	ldr	ip, .L12+84
	str	r0, [ip]
	ldr	ip, .L12+88
	str	r0, [ip]
	ldr	ip, .L12+92
	mov	r8, #20
	str	r0, [ip]
	ldr	ip, .L12+96
	mov	r2, r6
	str	r6, [ip, #20]
	str	r6, [ip, #16]
	mvn	r6, #0
	mov	r5, #1
	mov	r7, #129
	mov	fp, #104
	mov	r10, #3
	mov	r9, #16
	str	r0, [ip, #24]
	str	r0, [ip, #36]
	str	r0, [ip, #28]
	mov	r1, r0
	ldr	r0, .L12+100
	str	r8, [r0]
	ldr	r0, .L12+104
	str	r6, [r0]
	mov	r6, #2
	str	r5, [ip, #8]
	str	r5, [ip, #12]
	str	r7, [ip]
	str	fp, [ip, #4]
	str	r10, [ip, #40]
	str	r9, [ip, #44]
	mov	ip, #100
	ldr	r0, .L12+108
	str	r6, [r0]
	ldr	r0, .L12+112
	mov	r3, r5
	str	ip, [r0]
	mov	r5, #144	@ movhi
	mov	ip, #67108864
	mov	r4, r7
	mvn	lr, #239
	ldr	r0, .L12+116
	strh	r5, [ip, #80]	@ movhi
	add	ip, r0, #400
.L2:
	str	r3, [r0, #8]
	str	r3, [r0, #12]
	str	r2, [r0, #16]
	str	r2, [r0, #20]
	str	r1, [r0, #24]
	str	r1, [r0, #28]
	stm	r0, {r4, lr}
	add	r0, r0, #40
	cmp	r0, ip
	bne	.L2
	mov	r0, #8
	mov	r1, #1
	mov	r2, #0
	mvn	lr, #194
	ldr	r3, .L12+120
	add	ip, r3, #160
.L3:
	str	r0, [r3, #20]
	str	r0, [r3, #16]
	str	r1, [r3, #8]
	str	r1, [r3, #12]
	str	r2, [r3, #4]
	str	lr, [r3]
	str	r2, [r3, #24]
	add	r3, r3, #32
	cmp	r3, ip
	bne	.L3
	mvn	r2, #0
	mov	r0, #1
	mov	r1, #16
	mov	ip, #0
	ldr	r3, .L12+124
	add	lr, r3, #200
.L4:
	str	r2, [r3, #4]
	str	r2, [r3]
	str	r0, [r3, #8]
	str	r0, [r3, #12]
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	str	ip, [r3, #24]
	str	r2, [r3, #28]
	add	r3, r3, #40
	cmp	r3, lr
	bne	.L4
	mov	lr, #32
	mov	r1, #8
	mov	r2, #0
	ldr	r0, .L12+128
	ldr	r3, .L12+132
	str	lr, [r0, #8]
	str	ip, [r0]
	str	ip, [r0, #4]
	add	r0, r3, #100
.L5:
	str	r1, [r3, #12]
	str	r1, [r3, #8]
	str	r2, [r3, #16]
	str	r2, [r3], #20
	cmp	r3, r0
	bne	.L5
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L13:
	.align	2
.L12:
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
	.word	activePowerups
	.word	bubbles
	.word	collided
	.word	blend
	.word	prevBox
	.word	activeEnemies
	.word	cheat
	.word	hitDoor
	.word	doctor
	.word	enemiesRemaining
	.word	num
	.word	pillSpeed
	.word	livesRemaining
	.word	enemies
	.word	pills
	.word	powerups
	.word	boxbar
	.word	boxes
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
	ldr	r3, .L16
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
.L17:
	.align	2
.L16:
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
	ldr	r3, .L19
	str	r2, [r3]
	str	r2, [r3, #4]
	str	r1, [r3, #8]
	bx	lr
.L20:
	.align	2
.L19:
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
	ldr	r1, .L22
	ldr	r3, [r1, #4]
	mvn	r3, r3, lsl #17
	mov	r0, #20
	mvn	r3, r3, lsr #17
	ldr	r2, .L22+4
	ldr	ip, [r1]
	add	r1, r2, #480
	add	r2, r2, #484
	strh	r3, [r1, #2]	@ movhi
	strh	ip, [r1]	@ movhi
	strh	r0, [r2]	@ movhi
	bx	lr
.L23:
	.align	2
.L22:
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
	mov	ip, #0
	ldr	r1, .L28
	ldr	r3, .L28+4
	ldr	r0, [r1]
	add	r1, r3, #100
.L25:
	str	r2, [r3, #12]
	str	r2, [r3, #8]
	str	ip, [r3, #16]
	str	r0, [r3], #20
	cmp	r3, r1
	bne	.L25
	bx	lr
.L29:
	.align	2
.L28:
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
	ldr	r3, .L36
	ldr	r1, .L36+4
	ldr	r0, [r3]
	ldr	r3, [r1]
	cmp	r0, r3
	ble	.L33
	push	{r4, lr}
	mov	lr, #1
	ldr	ip, .L36+8
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
.L33:
	str	r0, [r1]
	bx	lr
.L37:
	.align	2
.L36:
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
	ldr	r3, .L44
	ldr	r2, .L44+4
	ldr	r4, .L44+8
	ldr	lr, .L44+12
	add	r0, r3, #100
.L41:
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
	bne	.L41
	pop	{r4, r5, r6, lr}
	bx	lr
.L45:
	.align	2
.L44:
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
	ldr	r3, .L48
	ldr	r1, [r3]
	ldr	r3, .L48+4
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
.L49:
	.align	2
.L48:
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
	ldr	r1, .L51
	ldr	r2, [r1, #48]
	mvn	r2, r2, lsl #17
	mov	r3, #67108864
	mvn	r2, r2, lsr #17
	ldr	r0, .L51+4
	ldrh	r0, [r0]
	ldr	ip, [r1, #28]
	strh	r0, [r3, #84]	@ movhi
	ldr	r3, [r1, #36]
	ldr	r0, .L51+8
	ldr	r1, [r1]
	add	r3, r3, ip, lsl #5
	lsl	r3, r3, #2
	strh	r2, [r0, #2]	@ movhi
	strh	r1, [r0]	@ movhi
	strh	r3, [r0, #4]	@ movhi
	bx	lr
.L52:
	.align	2
.L51:
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
	ldr	r3, .L57
	add	ip, r3, #200
.L54:
	str	r2, [r3, #4]
	str	r2, [r3]
	str	r0, [r3, #8]
	str	r0, [r3, #12]
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	str	lr, [r3, #24]
	str	r2, [r3, #28]
	add	r3, r3, #40
	cmp	r3, ip
	bne	.L54
	ldr	lr, [sp], #4
	bx	lr
.L58:
	.align	2
.L57:
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
	ldr	r5, .L64
	mov	lr, pc
	bx	r5
	ldr	r4, .L64+4
	smull	r2, r3, r4, r0
	asr	r4, r0, #31
	rsb	r4, r4, r3, asr #3
	rsb	r3, r4, r4, lsl #3
	rsb	r4, r4, r3, lsl #3
	subs	r4, r0, r4, lsl #2
	moveq	r4, #20
	mov	lr, pc
	bx	r5
	ldr	r2, .L64+8
	ldr	r3, .L64+12
	ldr	ip, [r2]
	ldr	r1, .L64+16
	smull	r2, r3, r0, r3
	smull	r2, r1, ip, r1
	asr	r2, r0, #31
	rsb	r3, r2, r3, asr #1
	asr	r2, ip, #31
	rsb	r2, r2, r1, asr #4
	ldr	r1, .L64+20
	add	r3, r3, r3, lsl #2
	add	r2, r2, r2, lsl #2
	sub	r3, r0, r3
	add	r2, r2, r2, lsl #2
	ldr	r0, [r1, #24]
	tst	r3, #1
	sub	r2, ip, r2, lsl #1
	moveq	r3, #0
	orrs	r2, r2, r0
	bne	.L59
	ldr	r0, .L64+24
	ldr	r2, [r0]
	cmp	r2, #2
	bgt	.L59
	mov	ip, #1
	mov	lr, #10
	add	r2, r2, ip
	str	r2, [r0]
	str	r4, [r1]
	str	r3, [r1, #28]
	str	lr, [r1, #4]
	str	ip, [r1, #24]
.L59:
	pop	{r4, r5, r6, lr}
	bx	lr
.L65:
	.align	2
.L64:
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
	ldr	r2, [r0, #4]
	beq	.L67
	ldr	r3, [r0, #12]
	add	r2, r2, r3
	cmp	r2, #159
	str	r2, [r0, #4]
	ble	.L67
	mov	ip, #0
	ldr	r1, .L71
	ldr	r3, [r1]
	sub	r3, r3, #1
	str	r3, [r1]
	str	ip, [r0, #24]
.L67:
	ldr	r1, .L71+4
	ldr	r3, [r0]
	ldr	r1, [r1]
	sub	r3, r3, r1
	str	r2, [r0, #36]
	str	r3, [r0, #32]
	bx	lr
.L72:
	.align	2
.L71:
	.word	activePowerups
	.word	hOff
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
	ldr	r3, .L87
	ldr	r2, .L87+4
	ldr	r6, .L87+8
	ldr	r5, .L87+12
	add	ip, r3, #200
.L78:
	ldr	r1, [r3, #24]
	cmp	r1, #1
	strhne	lr, [r2, #160]	@ movhi
	beq	.L85
.L77:
	add	r3, r3, #40
	cmp	ip, r3
	add	r2, r2, #8
	bne	.L78
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L85:
	ldr	r1, [r3, #28]
	cmp	r1, #0
	moveq	r7, #16
	addeq	r8, r4, #512
	beq	.L76
	cmp	r1, #1
	beq	.L79
	cmp	r1, #2
	beq	.L80
	cmp	r1, #3
	beq	.L81
	cmp	r1, #4
	addne	r8, r4, r7, lsl #5
	beq	.L86
.L76:
	ldr	r1, [r3, #32]
	ldrb	r0, [r3, #36]	@ zero_extendqisi2
	and	r1, r1, r6
	orr	r1, r1, r5
	orr	r0, r0, #1024
	strh	r8, [r2, #164]	@ movhi
	strh	r1, [r2, #162]	@ movhi
	strh	r0, [r2, #160]	@ movhi
	b	.L77
.L79:
	mov	r8, #640
	mov	r4, #0
	mov	r7, #20
	b	.L76
.L80:
	mov	r8, #644
	mov	r4, #4
	mov	r7, #20
	b	.L76
.L86:
	mov	r8, #768
	mov	r4, #0
	mov	r7, #24
	b	.L76
.L81:
	mov	r8, #648
	mov	r4, #8
	mov	r7, #20
	b	.L76
.L88:
	.align	2
.L87:
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
	ldr	r3, .L93
	add	ip, r3, #160
.L90:
	str	r0, [r3, #20]
	str	r0, [r3, #16]
	str	r1, [r3, #8]
	str	r1, [r3, #12]
	str	r2, [r3, #4]
	str	lr, [r3]
	str	r2, [r3, #24]
	add	r3, r3, #32
	cmp	r3, ip
	bne	.L90
	ldr	lr, [sp], #4
	bx	lr
.L94:
	.align	2
.L93:
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
	mov	r3, #0
	ldr	r1, .L109
	ldr	r2, [r1, r3, lsl #5]
	cmp	r2, #0
	lsl	r2, r3, #5
	beq	.L107
.L96:
	add	r3, r3, #1
	cmp	r3, #5
	bxeq	lr
	ldr	r2, [r1, r3, lsl #5]
	cmp	r2, #0
	lsl	r2, r3, #5
	bne	.L96
.L107:
	str	lr, [sp, #-4]!
	mov	lr, #125
	ldr	ip, .L109+4
	ldr	r0, [ip, #28]
	ldr	r1, .L109+8
	bics	r0, r0, #2
	str	lr, [r1, r3, lsl #5]
	beq	.L108
	cmp	r0, #1
	mvneq	lr, #1
	ldreq	r3, [ip, #4]
	addeq	r0, r1, r2
	subeq	r3, r3, #18
	stmibeq	r0, {r3, lr}
.L98:
	mov	r3, #1
	add	r2, r1, r2
	str	r3, [r2, #24]
	ldr	lr, [sp], #4
	bx	lr
.L108:
	mov	lr, #2
	ldr	r3, [ip, #4]
	add	r0, r1, r2
	add	r3, r3, #6
	stmib	r0, {r3, lr}
	b	.L98
.L110:
	.align	2
.L109:
	.word	pills+24
	.word	doctor
	.word	pills
	.size	firePill, .-firePill
	.align	2
	.global	updateDoctor
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateDoctor, %function
updateDoctor:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r5, .L183
	ldr	r3, [r5, #28]
	cmp	r3, #4
	movne	r2, #4
	strne	r3, [r5, #32]
	strne	r2, [r5, #28]
	ldr	r3, .L183+4
	ldr	r2, [r5, #24]
	smull	r0, r1, r3, r2
	asr	r3, r2, #31
	rsb	r3, r3, r1, asr #2
	add	r3, r3, r3, lsl #2
	subs	r3, r2, r3, lsl #1
	sub	sp, sp, #28
	bne	.L113
	add	r0, r5, #36
	ldm	r0, {r0, r1}
	sub	r1, r1, #1
	cmp	r0, r1
	addlt	r0, r0, #1
	strlt	r0, [r5, #36]
	strge	r3, [r5, #36]
.L113:
	ldr	r3, .L183+8
	ldrh	r1, [r3, #48]
	tst	r1, #16
	bne	.L115
	ldr	r3, .L183+12
	ldr	r1, [r3]
	cmp	r1, #1
	movne	ip, #0
	moveq	ip, #2
	ldr	r0, [r5, #4]
	ldr	r3, [r5, #16]
	add	r3, r0, r3
	cmp	r3, #255
	str	ip, [r5, #28]
	bgt	.L117
	ldr	r4, [r5, #8]
	ldr	ip, [r5]
	add	r3, r3, r4
	sub	r3, r3, #1
	ldr	r6, .L183+16
	add	lr, r3, ip, lsl #8
	lsl	lr, lr, #1
	ldrh	lr, [r6, lr]
	cmp	lr, #0
	beq	.L117
	ldr	lr, [r5, #20]
	add	ip, ip, lr
	sub	ip, ip, #1
	add	r3, r3, ip, lsl #8
	lsl	r3, r3, #1
	ldrh	r3, [r6, r3]
	cmp	r3, #0
	addne	r0, r0, r4
	strne	r0, [r5, #4]
.L117:
	ldr	r8, .L183+20
	ldr	r3, [r8]
	cmp	r3, #49
	bgt	.L118
	ldr	r0, [r5, #48]
	cmp	r0, #50
	addgt	r3, r3, #1
	strgt	r3, [r8]
.L118:
	ldr	r3, .L183+8
	ldrh	r3, [r3, #48]
	tst	r3, #32
	bne	.L122
.L137:
	cmp	r1, #1
	moveq	r3, #3
	movne	r3, #1
	ldr	r1, [r5, #4]
	cmp	r1, #0
	str	r3, [r5, #28]
	ble	.L122
	ldr	r0, [r5, #8]
	ldr	r3, [r5]
	sub	r1, r1, r0
	ldr	ip, .L183+16
	add	r0, r1, r3, lsl #8
	lsl	r0, r0, #1
	ldrh	r0, [ip, r0]
	cmp	r0, #0
	bne	.L179
.L122:
	add	r2, r2, #1
	str	r2, [r5, #24]
.L136:
	ldr	r3, .L183+24
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L178
	ldr	r3, .L183+28
	ldrh	r2, [r3]
	ands	r4, r2, #1
	beq	.L172
.L178:
	ldr	r3, .L183+32
	str	r3, [sp, #20]
.L123:
	ldr	r4, .L183+36
	ldr	r7, .L183+40
	ldr	r9, .L183+44
	ldr	r10, .L183+48
	ldr	fp, .L183+52
	add	r6, r4, #200
.L134:
	ldr	r3, [r4, #24]
	cmp	r3, #0
	bne	.L180
.L125:
	add	r4, r4, #40
	cmp	r6, r4
	bne	.L134
	ldr	r3, [sp, #20]
	ldr	r3, [r3]
	cmp	r3, #1
	ldreq	r2, .L183+56
	ldreq	r3, [r2]
	subeq	r3, r3, #1
	streq	r3, [r2]
	ldr	r0, [r7]
	ldr	r2, [r5, #44]
	ldr	r1, [r8]
	ldr	r3, [r5, #4]
	add	r2, r2, r0
	sub	r3, r3, r1
	str	r2, [r5, #44]
	str	r3, [r5, #48]
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L180:
	ldr	r0, [r5, #20]
	ldr	r1, [r5, #16]
	ldr	r2, [r5]
	ldr	r3, [r5, #48]
	str	r0, [sp, #12]
	str	r2, [sp, #4]
	str	r1, [sp, #8]
	str	r3, [sp]
	add	r2, r4, #16
	add	r0, r4, #32
	ldm	r2, {r2, r3}
	ldm	r0, {r0, r1}
	mov	lr, pc
	bx	r9
	cmp	r0, #0
	beq	.L125
	mov	r1, #0
	ldr	r3, [r10]
	ldr	r2, [r4, #28]
	sub	r3, r3, #1
	cmp	r2, #0
	str	r1, [r4, #24]
	str	r3, [r10]
	bne	.L127
	ldr	r3, [fp]
	add	r3, r3, #1
	str	r3, [fp]
	b	.L125
.L115:
	ldrh	r3, [r3, #48]
	tst	r3, #32
	beq	.L181
	ldr	r3, [r5, #28]
	cmp	r3, #4
	ldrne	r8, .L183+20
	bne	.L122
	mov	r2, #0
	ldr	r3, [r5, #32]
	str	r2, [r5, #36]
	str	r3, [r5, #28]
	ldr	r8, .L183+20
	b	.L136
.L127:
	cmp	r2, #1
	streq	r2, [r7]
	beq	.L125
	cmp	r2, #2
	moveq	r3, #4
	streq	r3, [r7]
	beq	.L125
	cmp	r2, #3
	bne	.L182
	mov	r2, #0
	ldr	r3, .L183+60
	str	r2, [r3]
	b	.L125
.L172:
	ldr	r3, [r5, #44]
	cmp	r3, #15
	ldr	r3, .L183+32
	str	r3, [sp, #20]
	ble	.L123
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L123
	bl	firePill
	mov	r2, r4
	ldr	r1, .L183+64
	ldr	r0, .L183+68
	ldr	r3, .L183+72
	mov	lr, pc
	bx	r3
	str	r4, [r5, #44]
	b	.L123
.L182:
	cmp	r2, #4
	moveq	r3, #1
	ldreq	r2, .L183+60
	streq	r3, [r7]
	streq	r3, [r2]
	b	.L125
.L181:
	ldr	r3, .L183+12
	ldr	r8, .L183+20
	ldr	r1, [r3]
	b	.L137
.L179:
	ldr	r0, [r5, #20]
	add	r3, r3, r0
	sub	r3, r3, #1
	add	r3, r1, r3, lsl #8
	lsl	r3, r3, #1
	ldrh	r3, [ip, r3]
	cmp	r3, #0
	beq	.L122
	ldr	r3, [r8]
	cmp	r3, #0
	str	r1, [r5, #4]
	ble	.L122
	ldr	r1, [r5, #48]
	cmp	r1, #49
	suble	r3, r3, #1
	strle	r3, [r8]
	b	.L122
.L184:
	.align	2
.L183:
	.word	doctor
	.word	1717986919
	.word	67109120
	.word	cheat
	.word	collisionmapBitmap
	.word	hOff
	.word	oldButtons
	.word	buttons
	.word	collided
	.word	powerups
	.word	pillSpeed
	.word	collision
	.word	activePowerups
	.word	boxesCollected
	.word	livesRemaining
	.word	bubbles
	.word	2117
	.word	bubblePop
	.word	playSoundB
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
	ldr	r3, [r0, #4]
	beq	.L186
	ldr	r2, [r0, #8]
	add	r3, r3, r2
	cmn	r3, #30
	str	r3, [r0, #4]
	bge	.L191
	mov	r2, #0
	str	r2, [r0, #24]
.L186:
	ldr	r2, .L192
	ldr	r2, [r2]
	sub	r3, r3, r2
	str	r3, [r0, #28]
	bx	lr
.L191:
	ldr	r2, [r0, #16]
	add	r2, r3, r2
	cmp	r2, #239
	movgt	r2, #0
	strgt	r2, [r0, #24]
	b	.L186
.L193:
	.align	2
.L192:
	.word	hOff
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
	ldr	r3, .L200
	ldr	r3, [r3]
	cmp	r3, #0
	push	{r4, r5, r6, lr}
	movne	r6, #520
	moveq	r6, #516
	mov	r5, #512
	ldr	r3, .L200+4
	ldr	r2, .L200+8
	ldr	r4, .L200+12
	ldr	lr, .L200+16
	add	r0, r3, #40
.L197:
	ldr	r1, [r2, #24]
	cmp	r1, #0
	ldrne	r1, [r2, #28]
	ldrbne	ip, [r2]	@ zero_extendqisi2
	andne	r1, r1, r4
	orrne	r1, r1, lr
	strhne	r6, [r3, #12]	@ movhi
	strhne	r1, [r3, #10]	@ movhi
	strhne	ip, [r3, #8]	@ movhi
	strheq	r5, [r3, #8]	@ movhi
	add	r3, r3, #8
	cmp	r3, r0
	add	r2, r2, #32
	bne	.L197
	pop	{r4, r5, r6, lr}
	bx	lr
.L201:
	.align	2
.L200:
	.word	bubbles
	.word	shadowOAM
	.word	pills
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
	ldr	r3, .L206
	add	ip, r3, #400
.L203:
	str	r0, [r3, #8]
	str	r0, [r3, #12]
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	str	r2, [r3, #24]
	str	r2, [r3, #28]
	stm	r3, {r4, lr}
	add	r3, r3, #40
	cmp	r3, ip
	bne	.L203
	pop	{r4, lr}
	bx	lr
.L207:
	.align	2
.L206:
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
	ldr	r5, .L216
	mov	lr, pc
	bx	r5
	mov	r4, r0
	mov	lr, pc
	bx	r5
	ldr	r2, .L216+4
	ldr	r3, .L216+8
	ldr	r2, [r2]
	smull	ip, r1, r3, r2
	asr	r3, r2, #31
	rsb	r3, r3, r1, asr #5
	add	r3, r3, r3, lsl #2
	add	r3, r3, r3, lsl #2
	subs	r3, r2, r3, lsl #2
	bne	.L208
	ldr	lr, .L216+12
	mov	r2, lr
	ldr	r5, .L216+16
	ldr	ip, [r5]
.L212:
	ldr	r1, [r2, #28]
	cmp	r1, #0
	bne	.L210
	cmp	ip, #2
	ble	.L215
.L210:
	add	r3, r3, #1
	cmp	r3, #10
	add	r2, r2, #40
	bne	.L212
.L208:
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L215:
	mov	r6, #1
	ldr	r2, .L216+20
	smull	r8, r7, r2, r0
	asr	r2, r0, #31
	rsb	r2, r2, r7, asr r6
	tst	r4, #1
	add	r2, r2, r2, lsl #2
	sub	r0, r0, r2
	moveq	r1, #240
	mvneq	r2, #0
	add	r3, r3, r3, lsl #2
	add	r3, lr, r3, lsl #3
	add	ip, ip, r6
	stmibne	r3, {r1, r6}
	str	ip, [r5]
	str	r6, [r3, #28]
	stmibeq	r3, {r1, r2}
	str	r0, [r3, #32]
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L217:
	.align	2
.L216:
	.word	rand
	.word	frameCounter
	.word	1374389535
	.word	enemies
	.word	activeEnemies
	.word	1717986919
	.size	spawnEnemy, .-spawnEnemy
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
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r3, [r0, #28]
	cmp	r3, #0
	mov	r4, r0
	sub	sp, sp, #20
	ldr	r0, [r0, #4]
	beq	.L219
	ldr	r3, [r4, #8]
	add	r0, r0, r3
	sub	r3, r0, #1
	cmp	r3, #239
	str	r0, [r4, #4]
	bls	.L220
	mov	r1, #0
	ldr	r2, .L247
	ldr	r3, [r2]
	sub	r3, r3, #1
	str	r3, [r2]
	str	r1, [r4, #28]
.L220:
	ldr	r6, .L247+4
	ldr	r0, [r6, #20]
	ldr	r1, [r6, #16]
	ldr	r2, [r6]
	ldr	r3, [r6, #48]
	str	r2, [sp, #4]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r3, [sp]
	add	r2, r4, #16
	ldm	r2, {r2, r3}
	ldr	r1, [r4]
	ldr	r0, [r4, #36]
	ldr	r9, .L247+8
	mov	lr, pc
	bx	r9
	cmp	r0, #0
	bne	.L243
	ldr	r10, .L247+12
	ldr	r3, .L247+16
	str	r0, [r10]
	str	r0, [r3]
.L223:
	ldr	r5, .L247+20
	ldr	r0, [r4, #4]
	ldr	r7, .L247+24
	ldr	fp, .L247
	add	r8, r5, #160
.L222:
	ldr	r3, [r5, #24]
	cmp	r3, #0
	bne	.L244
.L224:
	ldr	r3, [r7]
	cmp	r3, #1
	beq	.L245
.L228:
	add	r5, r5, #32
	cmp	r5, r8
	bne	.L222
.L219:
	ldr	r3, .L247+28
	ldr	r3, [r3]
	sub	r0, r0, r3
	str	r0, [r4, #36]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L244:
	add	r1, r5, #16
	ldm	r1, {r1, ip}
	ldm	r5, {r2, r3}
	str	ip, [sp, #12]
	str	r2, [sp, #4]
	str	r1, [sp, #8]
	str	r3, [sp]
	add	r2, r4, #16
	ldm	r2, {r2, r3}
	ldr	r1, [r4]
	mov	lr, pc
	bx	r9
	cmp	r0, #0
	beq	.L226
	ldr	r3, [r10]
	cmp	r3, #1
	beq	.L226
	mov	r2, #0
	ldr	r3, [r4, #24]
	add	r3, r3, #1
	str	r3, [r4, #24]
	str	r2, [r5, #24]
	ldr	r2, [r4, #32]
	ands	r2, r2, #1
	ldr	r0, [r4, #4]
	bne	.L227
	cmp	r3, #0
	ble	.L224
	ldr	ip, .L247+32
	ldr	r1, [fp]
	ldr	r3, [ip]
	sub	r1, r1, #1
	sub	r3, r3, #1
	str	r2, [r4, #28]
	str	r1, [fp]
	str	r3, [ip]
	b	.L224
.L226:
	ldr	r3, [r7]
	cmp	r3, #1
	ldr	r0, [r4, #4]
	bne	.L228
.L245:
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
	bx	r9
	cmp	r0, #0
	ldreq	r0, [r4, #4]
	beq	.L228
.L229:
	ldr	r3, [r4, #24]
	ldr	r0, [r4, #4]
	add	r3, r3, #1
	cmp	r0, #240
	str	r3, [r4, #24]
	beq	.L246
	ldr	r3, [r6, #4]
	cmp	r0, r3
	sublt	r0, r0, #75
	addge	r0, r0, #75
	str	r0, [r4, #4]
	b	.L228
.L243:
	mov	r2, #1
	ldr	r10, .L247+12
	ldr	r3, .L247+36
	str	r2, [r10]
	mov	lr, pc
	bx	r3
	ldr	r3, .L247+40
	smull	r1, r2, r3, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #2
	add	r3, r3, r3, lsl #2
	sub	r0, r0, r3, lsl #1
	ldr	r3, .L247+16
	add	r0, r0, #2
	str	r0, [r3]
	b	.L223
.L227:
	cmp	r3, #1
	movgt	r2, #0
	ldrgt	r3, [fp]
	subgt	r3, r3, #1
	strgt	r2, [r4, #28]
	strgt	r3, [fp]
	b	.L224
.L246:
	mov	r2, #0
	ldr	r3, [fp]
	sub	r3, r3, #1
	str	r2, [r4, #28]
	str	r3, [fp]
	b	.L228
.L248:
	.align	2
.L247:
	.word	activeEnemies
	.word	doctor
	.word	collision
	.word	collided
	.word	blend
	.word	pills
	.word	cheat
	.word	hOff
	.word	enemiesRemaining
	.word	rand
	.word	1717986919
	.size	updateEnemy, .-updateEnemy
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
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r5, .L267
	ldr	r3, [r5]
	ldr	r0, .L267+4
	tst	r3, #1
	lsl	r2, r3, #16
	addeq	r3, r3, r3, lsr #31
	ldr	r1, [r0]
	asreq	r3, r3, #1
	lsleq	r3, r3, #16
	lsreq	r3, r3, #16
	add	r1, r1, #1
	lsr	r2, r2, #16
	str	r1, [r0]
	strh	r2, [ip, #16]	@ movhi
	strheq	r3, [ip, #20]	@ movhi
	bl	updateDoctor
	ldr	r3, .L267+8
	ldr	r1, .L267+12
	ldr	r0, [r3]
	ldr	r3, [r1]
	cmp	r0, r3
	ble	.L251
	mov	lr, #1
	ldr	ip, .L267+16
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
.L251:
	mov	lr, #0
	ldr	r3, .L267+20
	str	r0, [r1]
	ldr	r0, [r5]
	add	r1, r3, #160
.L254:
	ldr	r2, [r3, #24]
	cmp	r2, #0
	ldr	r2, [r3, #4]
	beq	.L252
	ldr	ip, [r3, #8]
	add	r2, r2, ip
	cmn	r2, #30
	str	r2, [r3, #4]
	blt	.L253
	ldr	ip, [r3, #16]
	add	ip, r2, ip
	cmp	ip, #239
	ble	.L252
.L253:
	str	lr, [r3, #24]
.L252:
	sub	r2, r2, r0
	str	r2, [r3, #28]
	add	r3, r3, #32
	cmp	r3, r1
	bne	.L254
	ldr	r4, .L267+24
	add	r6, r4, #400
.L255:
	bl	spawnEnemy
	mov	r0, r4
	add	r4, r4, #40
	bl	updateEnemy
	cmp	r4, r6
	bne	.L255
	mov	r8, #0
	ldr	r4, .L267+28
	ldr	r7, .L267+32
	add	r6, r4, #200
.L259:
	bl	spawnPowerup
	ldr	r3, [r4, #24]
	cmp	r3, #0
	ldr	r2, [r4, #4]
	beq	.L257
	ldr	r3, [r4, #12]
	add	r2, r2, r3
	cmp	r2, #159
	ldrgt	r3, [r7]
	subgt	r3, r3, #1
	str	r2, [r4, #4]
	strgt	r8, [r4, #24]
	strgt	r3, [r7]
.L257:
	ldr	r3, [r4]
	ldr	r1, [r5]
	sub	r3, r3, r1
	str	r2, [r4, #36]
	str	r3, [r4, #32]
	add	r4, r4, #40
	cmp	r4, r6
	bne	.L259
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L268:
	.align	2
.L267:
	.word	hOff
	.word	frameCounter
	.word	boxesCollected
	.word	prevBox
	.word	boxes
	.word	pills
	.word	enemies
	.word	powerups
	.word	activePowerups
	.size	updateGame, .-updateGame
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
	ldr	r3, .L282
	mov	ip, #512
	mov	r7, r4
	ldr	r2, .L282+4
	ldr	r6, .L282+8
	ldr	r5, .L282+12
	add	r0, r3, #400
	b	.L273
.L272:
	add	r3, r3, #40
	cmp	r0, r3
	add	r2, r2, #8
	beq	.L281
.L273:
	ldr	r1, [r3, #28]
	cmp	r1, #1
	strhne	ip, [r2, #80]	@ movhi
	bne	.L272
	ldr	r1, [r3, #32]
	cmp	r1, #0
	beq	.L274
	cmp	r1, #1
	beq	.L275
	cmp	r1, #2
	beq	.L276
	cmp	r1, #3
	beq	.L277
	cmp	r1, #4
	addne	r8, r4, r7, lsl #5
	moveq	r8, #904
	moveq	r4, #8
	moveq	r7, #28
	b	.L271
.L274:
	mov	r8, #772
	mov	r4, #4
	mov	r7, #24
.L271:
	ldr	r1, [r3, #36]
	ldrb	lr, [r3]	@ zero_extendqisi2
	and	r1, r1, r6
	add	r3, r3, #40
	orr	r1, r1, r5
	cmp	r0, r3
	strh	r8, [r2, #84]	@ movhi
	strh	r1, [r2, #82]	@ movhi
	strh	lr, [r2, #80]	@ movhi
	add	r2, r2, #8
	bne	.L273
.L281:
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L275:
	mov	r8, #776
	mov	r4, #8
	mov	r7, #24
	b	.L271
.L277:
	mov	r8, #900
	mov	r4, #4
	mov	r7, #28
	b	.L271
.L276:
	mov	r8, #896
	mov	r4, #0
	mov	r7, #28
	b	.L271
.L283:
	.align	2
.L282:
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
	ldr	r1, .L286
	ldr	r2, .L286+4
	ldrh	r1, [r1]
	push	{r4, r5, r6, lr}
	ldr	ip, [r2, #28]
	strh	r1, [r3, #84]	@ movhi
	ldr	r3, [r2, #36]
	ldr	r1, [r2, #48]
	ldr	r5, .L286+8
	ldr	r0, [r2]
	ldr	r4, .L286+12
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
	ldr	r2, .L286+16
	ldm	r2, {r0, r3}
	add	r2, r4, #480
	orr	r3, r3, r5
	add	r4, r4, #484
	strh	r1, [r4]	@ movhi
	strh	r3, [r2, #2]	@ movhi
	strh	r0, [r2]	@ movhi
	pop	{r4, r5, r6, lr}
	b	drawBox
.L287:
	.align	2
.L286:
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
	ldr	r4, .L292
	ldr	r3, .L292+4
	mov	r1, ip
	str	ip, [r4]
	add	ip, r3, #120
.L289:
	str	r1, [r3]
	str	r1, [r3, #4]
	str	r0, [r3, #16]
	str	lr, [r3, #20]
	str	r2, [r3, #24]
	str	r2, [r3, #28]
	str	r0, [r3, #32]
	add	r3, r3, #40
	cmp	r3, ip
	bne	.L289
	pop	{r4, lr}
	bx	lr
.L293:
	.align	2
.L292:
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
	ldr	r3, .L298
	add	ip, r3, #120
.L295:
	str	r0, [r3]
	str	r0, [r3, #4]
	str	r1, [r3, #16]
	str	lr, [r3, #20]
	str	r2, [r3, #24]
	str	r2, [r3, #28]
	str	r1, [r3, #32]
	add	r3, r3, #40
	cmp	r3, ip
	bne	.L295
	ldr	lr, [sp], #4
	bx	lr
.L299:
	.align	2
.L298:
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
	ldr	r5, .L306
	mov	lr, pc
	bx	r5
	ldr	r4, .L306+4
	smull	r2, r3, r4, r0
	asr	r4, r0, #31
	rsb	r4, r4, r3, asr #3
	rsb	r3, r4, r4, lsl #3
	rsb	r4, r4, r3, lsl #3
	subs	r4, r0, r4, lsl #2
	moveq	r4, #40
	mov	lr, pc
	bx	r5
	mov	ip, #1
	mov	lr, #10
	ldr	r2, .L306+8
	smull	r3, r2, r0, r2
	ldr	r3, .L306+12
	sub	r2, r2, r0, asr #31
	add	r2, r2, r2, lsl ip
	sub	r2, r0, r2
	add	r0, r3, #120
.L303:
	ldr	r1, [r3, #32]
	cmp	r1, #0
	streq	r4, [r3, #8]
	streq	lr, [r3, #12]
	streq	ip, [r3, #32]
	streq	r2, [r3, #36]
	add	r3, r3, #40
	cmp	r3, r0
	bne	.L303
	pop	{r4, r5, r6, lr}
	bx	lr
.L307:
	.align	2
.L306:
	.word	rand
	.word	156180629
	.word	1431655766
	.word	confetti
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
	ldr	r2, .L315
	ldr	r3, [r2]
	ldr	r4, .L315+4
	add	r3, r3, #1
	str	r3, [r2]
	ldr	r7, .L315+8
	add	r5, r4, #120
.L312:
	bl	fireConfetti
	ldr	r3, [r4, #32]
	cmp	r3, #0
	ldr	r3, [r4, #12]
	beq	.L310
	ldr	r2, [r4, #20]
	add	r3, r3, r2
	cmp	r3, #159
	str	r3, [r4, #12]
	strgt	r6, [r4, #32]
.L310:
	ldr	r2, [r4, #8]
	ldr	r1, [r7]
	sub	r2, r2, r1
	str	r2, [r4, #4]
	str	r3, [r4], #40
	cmp	r4, r5
	bne	.L312
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L316:
	.align	2
.L315:
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
	beq	.L318
	ldr	r3, [r0, #20]
	add	r2, r2, r3
	cmp	r2, #159
	movgt	r3, #0
	str	r2, [r0, #12]
	strgt	r3, [r0, #32]
.L318:
	ldr	r1, .L322
	ldr	r3, [r0, #8]
	ldr	r1, [r1]
	sub	r3, r3, r1
	stm	r0, {r2, r3}
	bx	lr
.L323:
	.align	2
.L322:
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
	ldr	r3, .L336
	ldr	r2, .L336+4
	ldr	r5, .L336+8
	ldr	r4, .L336+12
	add	ip, r3, #120
.L328:
	ldr	r1, [r3, #32]
	cmp	r1, #1
	strhne	lr, [r2]	@ movhi
	beq	.L334
.L327:
	add	r3, r3, #40
	cmp	r3, ip
	add	r2, r2, #8
	bne	.L328
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L334:
	ldr	r1, [r3, #36]
	cmp	r1, #0
	moveq	r7, #144
	moveq	r6, #16
	beq	.L326
	cmp	r1, #1
	beq	.L330
	cmp	r1, #2
	addne	r7, r6, #128
	beq	.L335
.L326:
	ldr	r1, [r3, #4]
	ldrb	r0, [r3]	@ zero_extendqisi2
	and	r1, r1, r5
	orr	r1, r1, r4
	orr	r0, r0, #1024
	strh	r7, [r2, #4]	@ movhi
	strh	r1, [r2, #2]	@ movhi
	strh	r0, [r2]	@ movhi
	b	.L327
.L330:
	mov	r7, #148
	mov	r6, #20
	b	.L326
.L335:
	mov	r7, #152
	mov	r6, #24
	b	.L326
.L337:
	.align	2
.L336:
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
	.align	2
	.global	initDoctor2
	.syntax unified
	.arm
	.fpu softvfp
	.type	initDoctor2, %function
initDoctor2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	mov	r2, #0
	mov	r5, #129
	mov	r4, #3
	mov	lr, #16
	mov	ip, #32
	mov	r0, #1
	ldr	r3, .L341
	ldr	r1, [r3]
	ldr	r3, .L341+4
	add	r1, r1, #104
	str	r5, [r3]
	str	r4, [r3, #40]
	str	lr, [r3, #44]
	str	r1, [r3, #4]
	str	ip, [r3, #20]
	str	ip, [r3, #16]
	str	r0, [r3, #8]
	str	r0, [r3, #12]
	str	r2, [r3, #24]
	str	r2, [r3, #36]
	str	r2, [r3, #28]
	pop	{r4, r5, lr}
	bx	lr
.L342:
	.align	2
.L341:
	.word	hOff
	.word	doctor
	.size	initDoctor2, .-initDoctor2
	.align	2
	.global	initIntroWin
	.syntax unified
	.arm
	.fpu softvfp
	.type	initIntroWin, %function
initIntroWin:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	initDoctor2
	.size	initIntroWin, .-initIntroWin
	.align	2
	.global	updateDoctor2
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateDoctor2, %function
updateDoctor2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L354
	ldr	r2, [r3, #28]
	cmp	r2, #4
	ldr	r1, [r3, #24]
	strne	r2, [r3, #32]
	ldr	r2, .L354+4
	smull	ip, r0, r2, r1
	asr	r2, r1, #31
	rsb	r2, r2, r0, asr #2
	add	r2, r2, r2, lsl #2
	subs	r2, r1, r2, lsl #1
	bne	.L346
	ldr	r0, [r3, #40]
	ldr	ip, [r3, #36]
	sub	r0, r0, #1
	cmp	ip, r0
	addlt	ip, ip, #1
	strlt	ip, [r3, #36]
	strge	r2, [r3, #36]
.L346:
	ldr	r2, .L354+8
	ldr	r2, [r2]
	cmp	r2, #1
	moveq	r0, #2
	movne	r0, #0
	ldmib	r3, {r2, ip}
	add	r2, r2, ip
	cmp	r2, #220
	str	r0, [r3, #28]
	moveq	r0, #1
	add	r1, r1, #1
	str	r1, [r3, #24]
	ldreq	r1, .L354+12
	streq	r0, [r1]
	ldr	r1, .L354+16
	ldr	r1, [r1]
	str	r2, [r3, #4]
	sub	r2, r2, r1
	str	r2, [r3, #48]
	bx	lr
.L355:
	.align	2
.L354:
	.word	doctor
	.word	1717986919
	.word	cheat
	.word	hitDoor
	.word	hOff
	.size	updateDoctor2, .-updateDoctor2
	.align	2
	.global	updateIntroWin
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateIntroWin, %function
updateIntroWin:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	updateDoctor2
	.size	updateIntroWin, .-updateIntroWin
	.align	2
	.global	drawDoctor2
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawDoctor2, %function
drawDoctor2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r1, .L358
	ldr	r2, [r1, #48]
	mvn	r2, r2, lsl #17
	mov	r3, #67108864
	mov	r0, #0
	mvn	r2, r2, lsr #17
	strh	r0, [r3, #84]	@ movhi
	ldr	ip, [r1, #28]
	ldr	r3, [r1, #36]
	ldr	r0, .L358+4
	ldr	r1, [r1]
	add	r3, r3, ip, lsl #5
	lsl	r3, r3, #2
	strh	r2, [r0, #2]	@ movhi
	strh	r1, [r0]	@ movhi
	strh	r3, [r0, #4]	@ movhi
	bx	lr
.L359:
	.align	2
.L358:
	.word	doctor
	.word	shadowOAM
	.size	drawDoctor2, .-drawDoctor2
	.align	2
	.global	drawIntroWin
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawIntroWin, %function
drawIntroWin:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	drawDoctor2
	.size	drawIntroWin, .-drawIntroWin
	.comm	hitDoor,4,4
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
	.comm	cheat,4,4
	.comm	enemiesRemaining,4,4
	.comm	frameCounter3,4,4
	.comm	frameCounter2,4,4
	.comm	frameCounter,4,4
	.comm	collided,4,4
	.comm	door,20,4
	.comm	boxbar,16,4
	.comm	boxes,100,4
	.comm	pills,160,4
	.comm	enemies,400,4
	.comm	confetti,120,4
	.comm	powerups,200,4
	.comm	doctor,52,4
	.comm	shadowOAM,1024,4
	.comm	soundB,32,4
	.comm	soundA,32,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
