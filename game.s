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
	ldmib	r0, {r2, r3}
	add	r3, r2, r3
	sub	r2, r3, #1
	cmp	r2, #239
	mov	r5, r0
	str	r3, [r0, #4]
	sub	sp, sp, #20
	bls	.L26
	mov	r1, #0
	ldr	r2, .L50
	ldr	r3, [r2]
	sub	r3, r3, #1
	str	r3, [r2]
	str	r1, [r0, #28]
.L26:
	mov	r10, #0
	ldr	r4, .L50+4
	ldr	r7, .L50+8
	ldr	r9, .L50+12
	ldr	fp, .L50
	ldr	r8, .L50+16
	add	r6, r4, #140
.L36:
	ldr	r3, [r4, #24]
	cmp	r3, #0
	bne	.L48
.L28:
	ldr	r3, [r7]
	cmp	r3, #1
	beq	.L49
.L33:
	add	r4, r4, #28
	cmp	r4, r6
	bne	.L36
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L48:
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
	beq	.L28
	ldr	r3, [r5, #24]
	add	r3, r3, #1
	str	r10, [r5, #28]
	str	r3, [r5, #24]
	str	r10, [r4, #24]
	ldr	r2, [r5, #32]
	tst	r2, #1
	bne	.L30
	cmp	r3, #2
	bne	.L28
.L31:
	ldr	r1, .L50+20
	ldr	r3, [r1]
	sub	r3, r3, #1
	ldr	r2, [fp]
	str	r3, [r1]
	ldr	r3, [r7]
	sub	r2, r2, #1
	cmp	r3, #1
	str	r10, [r5, #28]
	str	r2, [fp]
	bne	.L33
.L49:
	ldm	r8, {r2, r3}
	ldr	r0, [r8, #20]
	ldr	r1, [r8, #16]
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
	beq	.L33
	ldr	r3, [r5, #4]
	cmp	r3, #240
	ldreq	r3, [fp]
	ldrne	r2, [r5, #8]
	subeq	r3, r3, #1
	addne	r3, r3, #5
	rsbne	r2, r2, #0
	streq	r10, [r5, #28]
	streq	r3, [fp]
	strne	r3, [r5, #4]
	strne	r2, [r5, #8]
	b	.L33
.L30:
	cmp	r3, #4
	bne	.L28
	b	.L31
.L51:
	.align	2
.L50:
	.word	activeEnemies
	.word	pills
	.word	.LANCHOR0
	.word	collision
	.word	doctor
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
	ldr	r4, .L58
	mov	r3, #256
	mov	r0, #3
	ldr	r1, .L58+4
	mov	lr, pc
	bx	r4
	mov	r3, #1856
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L58+8
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L58+12
	ldr	r1, .L58+16
	mov	lr, pc
	bx	r4
	mov	r3, #224
	mov	r0, #3
	ldr	r2, .L58+20
	ldr	r1, .L58+24
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L58+28
	ldr	r1, .L58+32
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r0, #3
	ldr	r2, .L58+36
	ldr	r1, .L58+40
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L58+44
	ldr	r1, .L58+48
	mov	lr, pc
	bx	r4
	mov	r3, #0
	mov	r9, #16
	mov	lr, #1
	ldr	r2, .L58+52
	str	r3, [r2]
	ldr	r2, .L58+56
	str	r3, [r2]
	ldr	r2, .L58+60
	str	r3, [r2]
	ldr	r2, .L58+64
	mov	r4, #32
	str	r3, [r2]
	mov	r6, #129
	ldr	r2, .L58+68
	mov	fp, #104
	mov	r10, #3
	str	r9, [r2, #44]
	mov	r8, #4
	ldr	r9, .L58+72
	str	lr, [r2, #8]
	str	lr, [r2, #12]
	str	lr, [r9, #8]
	str	lr, [r9, #12]
	str	lr, [r9, #44]
	str	lr, [r9, #48]
	mov	ip, lr
	mvn	lr, #0
	str	r6, [r2]
	str	r3, [r2, #24]
	str	r3, [r2, #36]
	str	r3, [r2, #28]
	str	fp, [r2, #4]
	str	r10, [r2, #40]
	str	r4, [r2, #20]
	str	r4, [r2, #16]
	ldr	r2, .L58+76
	str	r8, [r2]
	ldr	r2, .L58+80
	str	lr, [r2]
	mov	lr, #2
	mvn	r7, #239
	mov	r1, #8
	mvn	r5, #194
	ldr	r2, .L58+84
	str	lr, [r2]
	ldr	r2, .L58+88
	str	r3, [r9, #24]
	str	r3, [r9, #28]
	mov	r0, r3
	str	r6, [r9]
	str	r4, [r9, #16]
	str	r4, [r9, #20]
	str	r6, [r9, #36]
	str	r4, [r9, #52]
	str	r4, [r9, #56]
	str	r7, [r9, #4]
	str	r7, [r9, #40]
	str	r3, [r9, #60]
	str	r3, [r9, #64]
	add	r3, r2, #140
.L53:
	str	r1, [r2, #20]
	str	r1, [r2, #16]
	str	ip, [r2, #8]
	str	ip, [r2, #12]
	str	r0, [r2, #4]
	str	r5, [r2]
	str	r0, [r2, #24]
	add	r2, r2, #28
	cmp	r2, r3
	bne	.L53
	mvn	r2, #0
	mov	r0, #1
	mov	r1, #16
	mov	lr, #0
	ldr	r3, .L58+92
	add	ip, r3, #160
.L54:
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
	bne	.L54
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L59:
	.align	2
.L58:
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
	.word	doctor
	.word	enemies
	.word	enemiesRemaining
	.word	num
	.word	pillSpeed
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
	ldr	r3, .L62
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
.L63:
	.align	2
.L62:
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
	mov	r2, #0
	mov	r5, #129
	mov	r4, #3
	mov	lr, #16
	mov	ip, #32
	mov	r0, #1
	ldr	r3, .L66
	ldr	r1, [r3]
	ldr	r3, .L66+4
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
.L67:
	.align	2
.L66:
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
	ldr	r1, .L69
	ldr	r2, [r1, #4]
	mvn	r2, r2, lsl #17
	mvn	r2, r2, lsr #17
	ldr	ip, [r1, #28]
	ldr	r3, [r1, #36]
	ldr	r0, .L69+4
	ldr	r1, [r1]
	add	r3, r3, ip, lsl #5
	lsl	r3, r3, #2
	strh	r2, [r0, #2]	@ movhi
	strh	r1, [r0]	@ movhi
	strh	r3, [r0, #4]	@ movhi
	bx	lr
.L70:
	.align	2
.L69:
	.word	doctor
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
	ldr	r3, .L75
	add	ip, r3, #160
.L72:
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
	bne	.L72
	ldr	lr, [sp], #4
	bx	lr
.L76:
	.align	2
.L75:
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
	ldr	r4, .L82
	mov	lr, pc
	bx	r4
	ldr	r3, .L82+4
	ldr	r2, .L82+8
	ldr	r1, [r3]
	ldr	r3, .L82+12
	smull	ip, r2, r0, r2
	smull	lr, ip, r3, r1
	asr	r3, r0, #31
	rsb	r2, r3, r2, asr #3
	asr	r3, r1, #31
	rsb	r3, r3, ip, asr #4
	ldr	r5, .L82+16
	rsb	ip, r2, r2, lsl #3
	add	r3, r3, r3, lsl #2
	rsb	r2, r2, ip, lsl #3
	subs	r2, r0, r2, lsl #2
	add	r3, r3, r3, lsl #2
	ldr	r0, [r5, #24]
	sub	r3, r1, r3, lsl #1
	moveq	r2, #20
	orrs	r3, r3, r0
	bne	.L77
	ldr	r6, .L82+20
	ldr	r3, [r6]
	cmp	r3, #2
	ble	.L81
.L77:
	pop	{r4, r5, r6, lr}
	bx	lr
.L81:
	mov	r1, #10
	mov	r3, #1
	stm	r5, {r1, r2}
	str	r3, [r5, #24]
	mov	lr, pc
	bx	r4
	ldr	r3, .L82+24
	smull	r1, r2, r3, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #1
	ldr	r2, [r6]
	add	r3, r3, r3, lsl #2
	sub	r0, r0, r3
	add	r3, r2, #1
	str	r0, [r5, #28]
	str	r3, [r6]
	b	.L77
.L83:
	.align	2
.L82:
	.word	rand
	.word	frameCounter
	.word	156180629
	.word	1374389535
	.word	powerups
	.word	activePowerups
	.word	1717986919
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
	push	{r4, r5, r6, r7, r8, lr}
	mov	r4, #0
	mov	lr, #512
	mov	r8, r4
	ldr	r3, .L99
	ldr	r2, .L99+4
	ldr	r7, .L99+8
	ldr	r6, .L99+12
	add	ip, r3, #40
.L90:
	ldr	r1, [r2, #24]
	cmp	r1, #1
	strhne	lr, [r3, #160]	@ movhi
	beq	.L98
.L89:
	add	r3, r3, #8
	cmp	ip, r3
	add	r2, r2, #32
	bne	.L90
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L98:
	ldr	r0, [r2, #28]
	cmp	r0, #0
	moveq	r5, #512
	moveq	r8, #16
	beq	.L88
	cmp	r0, #1
	beq	.L92
	cmp	r0, #2
	beq	.L93
	cmp	r0, #3
	beq	.L94
	cmp	r0, #4
	beq	.L95
	mov	r0, r4
	add	r5, r4, r8, lsl #5
	lsl	r5, r5, #16
	lsr	r5, r5, #16
.L88:
	ldr	r1, [r2, #4]
	strh	r5, [r3, #164]	@ movhi
	and	r1, r1, r7
	ldrb	r5, [r2]	@ zero_extendqisi2
	orr	r1, r1, r6
	mov	r4, r0
	strh	r1, [r3, #162]	@ movhi
	strh	r5, [r3, #160]	@ movhi
	b	.L89
.L92:
	mov	r5, #640
	mov	r0, #0
	mov	r8, #20
	b	.L88
.L93:
	mov	r5, #644
	mov	r0, #4
	mov	r8, #20
	b	.L88
.L95:
	mov	r5, #768
	mov	r0, #0
	mov	r8, #24
	b	.L88
.L94:
	mov	r5, #648
	mov	r0, #8
	mov	r8, #20
	b	.L88
.L100:
	.align	2
.L99:
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
	ldr	r3, .L105
	add	ip, r3, #140
.L102:
	str	r0, [r3, #20]
	str	r0, [r3, #16]
	str	r1, [r3, #8]
	str	r1, [r3, #12]
	str	r2, [r3, #4]
	str	lr, [r3]
	str	r2, [r3, #24]
	add	r3, r3, #28
	cmp	r3, ip
	bne	.L102
	ldr	lr, [sp], #4
	bx	lr
.L106:
	.align	2
.L105:
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
	ldr	r0, .L121
	mov	r2, r0
	ldr	r1, [r2, #24]
	cmp	r1, #0
	mov	r3, #0
	beq	.L119
.L108:
	add	r3, r3, #1
	cmp	r3, #5
	add	r2, r2, #28
	bxeq	lr
	ldr	r1, [r2, #24]
	cmp	r1, #0
	bne	.L108
.L119:
	mov	ip, #125
	push	{r4, lr}
	ldr	lr, .L121+4
	ldr	r1, [lr, #28]
	rsb	r2, r3, r3, lsl #3
	bics	r1, r1, #2
	str	ip, [r0, r2, lsl #2]
	add	r2, r0, r2, lsl #2
	lsl	ip, r3, #3
	beq	.L120
	cmp	r1, #1
	mvneq	r4, #1
	ldreq	r1, [lr, #4]
	subeq	r1, r1, #18
	stmibeq	r2, {r1, r4}
.L110:
	mov	r2, #1
	sub	r3, ip, r3
	add	r0, r0, r3, lsl #2
	str	r2, [r0, #24]
	pop	{r4, lr}
	bx	lr
.L120:
	mov	r4, #2
	ldr	r1, [lr, #4]
	add	r1, r1, #6
	stmib	r2, {r1, r4}
	b	.L110
.L122:
	.align	2
.L121:
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
	ldr	r4, .L166
	ldr	r3, [r4, #28]
	cmp	r3, #4
	movne	r2, #4
	strne	r3, [r4, #32]
	strne	r2, [r4, #28]
	ldr	r3, .L166+4
	ldr	r2, [r4, #24]
	smull	r0, r1, r3, r2
	asr	r3, r2, #31
	rsb	r3, r3, r1, asr #2
	add	r3, r3, r3, lsl #2
	subs	r3, r2, r3, lsl #1
	bne	.L125
	add	r0, r4, #36
	ldm	r0, {r0, r1}
	sub	r1, r1, #1
	cmp	r0, r1
	addlt	r0, r0, #1
	strlt	r0, [r4, #36]
	strge	r3, [r4, #36]
.L125:
	ldr	r3, .L166+8
	ldrh	r1, [r3, #48]
	tst	r1, #16
	bne	.L127
	ldr	r3, .L166+12
	ldr	r1, [r3]
	cmp	r1, #1
	movne	ip, #0
	moveq	ip, #2
	ldr	r0, [r4, #4]
	ldr	r3, [r4, #16]
	add	r3, r0, r3
	cmp	r3, #255
	str	ip, [r4, #28]
	ble	.L163
.L129:
	ldr	r5, .L166+16
	ldr	r0, .L166+8
	ldr	r3, [r5]
	ldrh	r0, [r0, #48]
	add	r3, r3, #1
	tst	r0, #32
	str	r3, [r5]
	bne	.L131
.L130:
	cmp	r1, #1
	moveq	r3, #3
	movne	r3, #1
	ldr	r1, [r4, #4]
	cmp	r1, #0
	str	r3, [r4, #28]
	ble	.L131
	ldr	r0, [r4, #8]
	ldr	r3, [r4]
	sub	r1, r1, r0
	ldr	ip, .L166+20
	add	r0, r1, r3, lsl #8
	lsl	r0, r0, #1
	ldrh	r0, [ip, r0]
	cmp	r0, #0
	beq	.L131
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
.L131:
	add	r2, r2, #1
	str	r2, [r4, #24]
	b	.L135
.L127:
	ldrh	r3, [r3, #48]
	tst	r3, #32
	beq	.L164
	ldr	r3, [r4, #28]
	cmp	r3, #4
	ldrne	r5, .L166+16
	bne	.L131
	mov	r2, #0
	ldr	r3, [r4, #32]
	str	r2, [r4, #36]
	str	r3, [r4, #28]
	ldr	r5, .L166+16
.L135:
	ldr	r3, .L166+24
	ldrh	r3, [r3]
	tst	r3, #1
	ldr	r1, [r4, #44]
	beq	.L134
	ldr	r3, .L166+28
	ldrh	r2, [r3]
	ands	r6, r2, #1
	bne	.L134
	cmp	r1, #15
	bgt	.L165
.L134:
	ldr	r3, .L166+32
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
	ldr	r5, [r4, #8]
	ldr	ip, [r4]
	add	r3, r3, r5
	sub	r3, r3, #1
	ldr	r6, .L166+20
	add	lr, r3, ip, lsl #8
	lsl	lr, lr, #1
	ldrh	lr, [r6, lr]
	cmp	lr, #0
	beq	.L129
	ldr	lr, [r4, #20]
	add	ip, ip, lr
	sub	ip, ip, #1
	add	r3, r3, ip, lsl #8
	lsl	r3, r3, #1
	ldrh	r3, [r6, r3]
	cmp	r3, #0
	addne	r0, r0, r5
	strne	r0, [r4, #4]
	b	.L129
.L164:
	ldr	r3, .L166+12
	ldr	r5, .L166+16
	ldr	r1, [r3]
	b	.L130
.L165:
	bl	firePill
	ldr	r1, .L166+36
	mov	r2, r6
	ldr	r0, .L166+40
	ldr	r3, .L166+44
	mov	lr, pc
	bx	r3
	mov	r1, r6
	b	.L134
.L167:
	.align	2
.L166:
	.word	doctor
	.word	1717986919
	.word	67109120
	.word	.LANCHOR0
	.word	hOff
	.word	collisionmapBitmap
	.word	oldButtons
	.word	buttons
	.word	pillSpeed
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
	bxeq	lr
	ldmib	r0, {r2, r3}
	add	r3, r2, r3
	cmn	r3, #30
	str	r3, [r0, #4]
	bge	.L173
.L171:
	mov	r3, #0
	str	r3, [r0, #24]
	bx	lr
.L173:
	ldr	r2, [r0, #16]
	add	r3, r3, r2
	cmp	r3, #239
	bxle	lr
	b	.L171
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
	ldr	r3, .L180
	ldr	r3, [r3]
	cmp	r3, #0
	push	{r4, r5, r6, lr}
	movne	r6, #520
	moveq	r6, #516
	mov	r5, #512
	ldr	r3, .L180+4
	ldr	r2, .L180+8
	ldr	r4, .L180+12
	ldr	lr, .L180+16
	add	r0, r3, #140
.L177:
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
	bne	.L177
	pop	{r4, r5, r6, lr}
	bx	lr
.L181:
	.align	2
.L180:
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
	ldr	r3, .L184
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
.L185:
	.align	2
.L184:
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
	ldr	r5, .L192
	mov	lr, pc
	bx	r5
	ldr	r3, .L192+4
	ldr	r2, .L192+8
	ldr	r1, .L192+12
	ldr	r3, [r3]
	mla	r3, r1, r3, r2
	cmp	r2, r3, ror #1
	bcc	.L186
	ldr	r3, .L192+16
	ldr	r6, [r3, #28]
	cmp	r6, #0
	mov	r4, r0
	bne	.L188
	ldr	r7, .L192+20
	ldr	r2, [r7]
	cmp	r2, #2
	ble	.L189
.L186:
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L188:
	ldr	r2, [r3, #64]
	cmp	r2, #0
	bne	.L186
	ldr	r7, .L192+20
	ldr	r2, [r7]
	cmp	r2, #2
	bgt	.L186
	mov	r6, #1
.L189:
	mov	r8, #1
	add	r6, r6, r6, lsl #3
	add	r6, r3, r6, lsl #2
	str	r8, [r6, #28]
	mov	lr, pc
	bx	r5
	ldr	r3, .L192+24
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
	b	.L186
.L193:
	.align	2
.L192:
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
	ldr	r3, .L222
	ldr	r3, [r3]
	ldr	r0, .L222+4
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
	ldr	r3, .L222+8
	add	r1, r3, #140
.L200:
	ldr	r2, [r3, #24]
	cmp	r2, #0
	beq	.L197
	ldmib	r3, {r2, ip}
	add	r2, r2, ip
	cmn	r2, #30
	str	r2, [r3, #4]
	blt	.L198
	ldr	ip, [r3, #16]
	add	r2, r2, ip
	cmp	r2, #239
	ble	.L197
.L198:
	str	r0, [r3, #24]
.L197:
	add	r3, r3, #28
	cmp	r3, r1
	bne	.L200
	ldr	r4, .L222+12
	bl	spawnEnemy
	ldr	r3, [r4, #28]
	cmp	r3, #0
	movne	r0, r4
	blne	updateEnemy.part.0
.L201:
	bl	spawnEnemy
	ldr	r3, [r4, #64]
	cmp	r3, #0
	ldrne	r0, .L222+16
	blne	updateEnemy.part.0
.L202:
	ldr	r4, .L222+20
	add	r5, r4, #160
.L204:
	bl	spawnPowerup
	ldr	r3, [r4, #24]
	cmp	r3, #0
	movne	r0, r4
	blne	updatePowerup.part.0
.L203:
	add	r4, r4, #32
	cmp	r5, r4
	bne	.L204
	ldr	r3, .L222+24
	ldrh	r3, [r3]
	tst	r3, #2
	beq	.L194
	ldr	r3, .L222+28
	ldrh	r3, [r3]
	ands	r3, r3, #2
	bne	.L194
	ldr	r2, .L222+32
	ldr	r1, [r2]
	cmp	r1, #0
	moveq	r3, #1
	str	r3, [r2]
.L194:
	pop	{r4, r5, r6, lr}
	bx	lr
.L223:
	.align	2
.L222:
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
	ldr	r3, .L240
	ldr	r0, [r3, #28]
	ldr	r2, .L240+4
	cmp	r0, #1
	push	{r4, r5, r6, r7, lr}
	mov	r6, r1
	mov	r5, r1
	ldr	r4, .L240+8
	ldr	lr, .L240+12
	strhne	ip, [r2, #80]	@ movhi
	beq	.L238
.L229:
	cmp	r1, #1
	add	r3, r3, #36
	add	r2, r2, #8
	bne	.L236
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L236:
	ldr	r0, [r3, #28]
	cmp	r0, #1
	mov	r1, #1
	strhne	ip, [r2, #80]	@ movhi
	bne	.L229
.L238:
	ldr	r0, [r3, #32]
	cmp	r0, #0
	bne	.L239
	mov	r7, #772
	mov	r6, #4
	mov	r5, #24
.L228:
	ldr	r0, [r3, #4]
	strh	r7, [r2, #84]	@ movhi
	and	r0, r0, r4
	ldrb	r7, [r3]	@ zero_extendqisi2
	orr	r0, r0, lr
	strh	r0, [r2, #82]	@ movhi
	strh	r7, [r2, #80]	@ movhi
	b	.L229
.L239:
	cmp	r0, #1
	beq	.L232
	cmp	r0, #2
	beq	.L233
	cmp	r0, #3
	beq	.L234
	cmp	r0, #4
	addne	r7, r6, r5, lsl #5
	moveq	r7, #904
	moveq	r6, #8
	moveq	r5, #28
	b	.L228
.L233:
	mov	r7, #896
	mov	r6, #0
	mov	r5, #28
	b	.L228
.L232:
	mov	r7, #776
	mov	r6, #8
	mov	r5, #24
	b	.L228
.L234:
	mov	r7, #900
	mov	r6, #4
	mov	r5, #28
	b	.L228
.L241:
	.align	2
.L240:
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
	ldr	r1, .L244
	ldr	r2, [r1, #4]
	mvn	r2, r2, lsl #17
	mvn	r2, r2, lsr #17
	push	{r4, lr}
	ldr	ip, [r1, #28]
	ldr	r3, [r1, #36]
	ldr	r0, .L244+4
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
.L245:
	.align	2
.L244:
	.word	doctor
	.word	shadowOAM
	.size	drawGame, .-drawGame
	.comm	pillSpeed,4,4
	.comm	boxesCollected,4,4
	.comm	activePowerups,4,4
	.comm	activeEnemies,4,4
	.comm	randPowerup,4,4
	.global	cheat
	.comm	enemiesRemaining,4,4
	.comm	frameCounter,4,4
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
