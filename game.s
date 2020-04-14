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
	ldmib	r0, {r2, r3}
	add	r3, r2, r3
	sub	r2, r3, #1
	cmp	r2, #239
	push	{r4, r5, r6, r7, r8, r9, lr}
	str	r3, [r0, #4]
	movhi	r3, #0
	mov	r5, r0
	ldr	r4, .L14
	strhi	r3, [r0, #28]
	ldr	r7, .L14+4
	ldr	r9, .L14+8
	ldr	r8, .L14+12
	sub	sp, sp, #20
	add	r6, r4, #140
.L6:
	ldr	r3, [r4, #24]
	cmp	r3, #0
	bne	.L13
.L4:
	add	r4, r4, #28
	cmp	r4, r6
	bne	.L6
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L13:
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
	bx	r7
	cmp	r0, #0
	beq	.L4
	mov	r2, #0
	ldr	r3, [r5, #24]
	add	r3, r3, #1
	cmp	r3, #1
	str	r3, [r5, #24]
	str	r2, [r4, #24]
	bne	.L4
	mvn	r1, #0
	ldr	r3, [r8]
	add	r3, r3, r1
	str	r2, [r5, #28]
	str	r3, [r8]
	str	r1, [r9]
	b	.L4
.L15:
	.align	2
.L14:
	.word	pills
	.word	collision
	.word	num
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
	ldr	r4, .L22
	mov	r3, #256
	mov	r0, #3
	ldr	r1, .L22+4
	mov	lr, pc
	bx	r4
	mov	r3, #1856
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L22+8
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L22+12
	ldr	r1, .L22+16
	mov	lr, pc
	bx	r4
	mov	r3, #224
	mov	r0, #3
	ldr	r2, .L22+20
	ldr	r1, .L22+24
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L22+28
	ldr	r1, .L22+32
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r0, #3
	ldr	r2, .L22+36
	ldr	r1, .L22+40
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L22+44
	ldr	r1, .L22+48
	mov	lr, pc
	bx	r4
	mov	ip, #0
	mov	r5, #1
	mov	r6, #32
	mov	r7, #129
	ldr	r3, .L22+52
	mov	fp, #104
	str	ip, [r3]
	mov	r10, #3
	ldr	r3, .L22+56
	mov	r9, #16
	str	ip, [r3]
	mov	r8, #10
	ldr	r3, .L22+60
	mov	r2, r5
	str	r5, [r3, #8]
	str	r5, [r3, #12]
	mvn	r5, #0
	mov	r1, r6
	mov	r4, r7
	mvn	lr, #239
	str	ip, [r3, #24]
	str	ip, [r3, #36]
	str	ip, [r3, #28]
	str	r7, [r3]
	str	fp, [r3, #4]
	str	r10, [r3, #40]
	str	r9, [r3, #44]
	str	r6, [r3, #20]
	str	r6, [r3, #16]
	ldr	r3, .L22+64
	mov	r0, ip
	str	r8, [r3]
	ldr	ip, .L22+68
	ldr	r3, .L22+72
	str	r5, [ip]
	add	ip, r3, #160
.L17:
	str	r2, [r3, #8]
	str	r2, [r3, #12]
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	str	r0, [r3, #24]
	str	r0, [r3, #28]
	stm	r3, {r4, lr}
	add	r3, r3, #32
	cmp	r3, ip
	bne	.L17
	mov	r0, #8
	mov	r1, #1
	mov	r2, #0
	mvn	lr, #194
	ldr	r3, .L22+76
	add	ip, r3, #140
.L18:
	str	r0, [r3, #20]
	str	r0, [r3, #16]
	str	r1, [r3, #8]
	str	r1, [r3, #12]
	str	r2, [r3, #4]
	str	lr, [r3]
	str	r2, [r3, #24]
	add	r3, r3, #28
	cmp	r3, ip
	bne	.L18
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L23:
	.align	2
.L22:
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
	.word	enemiesRemaining
	.word	num
	.word	enemies
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
	@ link register save eliminated.
	mov	r1, #67108864
	ldr	r3, .L26
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
.L27:
	.align	2
.L26:
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
	ldr	r3, .L30
	ldr	r1, [r3]
	ldr	r3, .L30+4
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
.L31:
	.align	2
.L30:
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
	ldr	r1, .L33
	ldr	r2, [r1, #4]
	mvn	r2, r2, lsl #17
	mvn	r2, r2, lsr #17
	ldr	ip, [r1, #28]
	ldr	r3, [r1, #36]
	ldr	r0, .L33+4
	ldr	r1, [r1]
	add	r3, r3, ip, lsl #5
	lsl	r3, r3, #2
	strh	r2, [r0, #2]	@ movhi
	strh	r1, [r0]	@ movhi
	strh	r3, [r0, #4]	@ movhi
	bx	lr
.L34:
	.align	2
.L33:
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
	str	lr, [sp, #-4]!
	mov	r0, #8
	mov	r1, #1
	mov	r2, #0
	mvn	lr, #194
	ldr	r3, .L39
	add	ip, r3, #140
.L36:
	str	r0, [r3, #20]
	str	r0, [r3, #16]
	str	r1, [r3, #8]
	str	r1, [r3, #12]
	str	r2, [r3, #4]
	str	lr, [r3]
	str	r2, [r3, #24]
	add	r3, r3, #28
	cmp	r3, ip
	bne	.L36
	ldr	lr, [sp], #4
	bx	lr
.L40:
	.align	2
.L39:
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
	ldr	r0, .L55
	mov	r2, r0
	ldr	r1, [r2, #24]
	cmp	r1, #0
	mov	r3, #0
	beq	.L53
.L42:
	add	r3, r3, #1
	cmp	r3, #5
	add	r2, r2, #28
	bxeq	lr
	ldr	r1, [r2, #24]
	cmp	r1, #0
	bne	.L42
.L53:
	mov	ip, #125
	push	{r4, lr}
	ldr	lr, .L55+4
	ldr	r1, [lr, #28]
	rsb	r2, r3, r3, lsl #3
	bics	r1, r1, #2
	str	ip, [r0, r2, lsl #2]
	add	r2, r0, r2, lsl #2
	lsl	ip, r3, #3
	beq	.L54
	cmp	r1, #1
	mvneq	r4, #1
	ldreq	r1, [lr, #4]
	subeq	r1, r1, #18
	stmibeq	r2, {r1, r4}
.L44:
	mov	r2, #1
	sub	r3, ip, r3
	add	r0, r0, r3, lsl #2
	str	r2, [r0, #24]
	pop	{r4, lr}
	bx	lr
.L54:
	mov	r4, #2
	ldr	r1, [lr, #4]
	add	r1, r1, #6
	stmib	r2, {r1, r4}
	b	.L44
.L56:
	.align	2
.L55:
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
	ldr	r4, .L100
	ldr	r3, [r4, #28]
	cmp	r3, #4
	movne	r2, #4
	strne	r3, [r4, #32]
	strne	r2, [r4, #28]
	ldr	r3, .L100+4
	ldr	r2, [r4, #24]
	smull	r0, r1, r3, r2
	asr	r3, r2, #31
	rsb	r3, r3, r1, asr #2
	add	r3, r3, r3, lsl #2
	subs	r3, r2, r3, lsl #1
	bne	.L59
	add	r0, r4, #36
	ldm	r0, {r0, r1}
	sub	r1, r1, #1
	cmp	r0, r1
	addlt	r0, r0, #1
	strlt	r0, [r4, #36]
	strge	r3, [r4, #36]
.L59:
	ldr	r3, .L100+8
	ldrh	r1, [r3, #48]
	tst	r1, #16
	bne	.L61
	ldr	r3, .L100+12
	ldr	r1, [r3]
	cmp	r1, #1
	movne	ip, #0
	moveq	ip, #2
	ldr	r0, [r4, #4]
	ldr	r3, [r4, #16]
	add	r3, r0, r3
	cmp	r3, #255
	str	ip, [r4, #28]
	ble	.L98
.L63:
	ldr	r5, .L100+16
	ldr	r0, .L100+8
	ldr	r3, [r5]
	ldrh	r0, [r0, #48]
	add	r3, r3, #1
	tst	r0, #32
	str	r3, [r5]
	bne	.L65
.L64:
	cmp	r1, #1
	moveq	r3, #3
	movne	r3, #1
	ldr	r1, [r4, #4]
	cmp	r1, #0
	str	r3, [r4, #28]
	ble	.L65
	ldr	r0, [r4, #8]
	ldr	r3, [r4]
	sub	r1, r1, r0
	ldr	ip, .L100+20
	add	r0, r1, r3, lsl #8
	lsl	r0, r0, #1
	ldrh	r0, [ip, r0]
	cmp	r0, #0
	beq	.L65
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
.L65:
	add	r2, r2, #1
	str	r2, [r4, #24]
	b	.L72
.L61:
	ldrh	r3, [r3, #48]
	tst	r3, #32
	beq	.L99
	ldr	r3, [r4, #28]
	cmp	r3, #4
	ldrne	r5, .L100+16
	bne	.L65
	mov	r2, #0
	ldr	r3, [r4, #32]
	str	r2, [r4, #36]
	str	r3, [r4, #28]
	ldr	r5, .L100+16
.L72:
	ldr	r3, .L100+24
	ldrh	r3, [r3]
	tst	r3, #1
	ldr	r3, [r4, #44]
	beq	.L97
	ldr	r2, .L100+28
	ldrh	r2, [r2]
	ands	r6, r2, #1
	bne	.L97
	cmp	r3, #15
	bgt	.L71
.L97:
	add	r3, r3, #1
.L69:
	ldr	r1, [r5]
	ldr	r2, [r4, #4]
	sub	r2, r2, r1
	str	r3, [r4, #44]
	str	r2, [r4, #48]
	pop	{r4, r5, r6, lr}
	bx	lr
.L98:
	ldr	r5, [r4, #8]
	ldr	ip, [r4]
	add	r3, r3, r5
	sub	r3, r3, #1
	ldr	r6, .L100+20
	add	lr, r3, ip, lsl #8
	lsl	lr, lr, #1
	ldrh	lr, [r6, lr]
	cmp	lr, #0
	beq	.L63
	ldr	lr, [r4, #20]
	add	ip, ip, lr
	sub	ip, ip, #1
	add	r3, r3, ip, lsl #8
	lsl	r3, r3, #1
	ldrh	r3, [r6, r3]
	cmp	r3, #0
	addne	r0, r0, r5
	strne	r0, [r4, #4]
	b	.L63
.L99:
	ldr	r3, .L100+12
	ldr	r5, .L100+16
	ldr	r1, [r3]
	b	.L64
.L71:
	bl	firePill
	ldr	r3, .L100+32
	mov	r2, r6
	ldr	r1, .L100+36
	ldr	r0, .L100+40
	mov	lr, pc
	bx	r3
	mov	r3, #1
	b	.L69
.L101:
	.align	2
.L100:
	.word	doctor
	.word	1717986919
	.word	67109120
	.word	.LANCHOR0
	.word	hOff
	.word	collisionmapBitmap
	.word	oldButtons
	.word	buttons
	.word	playSoundB
	.word	2117
	.word	bubblePop
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
	bge	.L107
.L105:
	mov	r3, #0
	str	r3, [r0, #24]
	bx	lr
.L107:
	ldr	r2, [r0, #16]
	add	r3, r3, r2
	cmp	r3, #239
	bxle	lr
	b	.L105
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
	ldr	r2, .L113
	strh	r3, [r2, #10]	@ movhi
	strh	r0, [r2, #8]	@ movhi
	strh	r1, [r2, #12]	@ movhi
	bx	lr
.L114:
	.align	2
.L113:
	.word	shadowOAM
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
	ldr	r3, .L119
	add	ip, r3, #160
.L116:
	str	r0, [r3, #8]
	str	r0, [r3, #12]
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	str	r2, [r3, #24]
	str	r2, [r3, #28]
	stm	r3, {r4, lr}
	add	r3, r3, #32
	cmp	r3, ip
	bne	.L116
	pop	{r4, lr}
	bx	lr
.L120:
	.align	2
.L119:
	.word	enemies
	.size	initEnemy, .-initEnemy
	.global	__aeabi_idivmod
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
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r6, .L129
	mov	lr, pc
	bx	r6
	ldr	r4, .L129+4
	smull	r2, r3, r4, r0
	asr	r4, r0, #31
	rsb	r4, r4, r3, asr #2
	add	r4, r4, r4, lsl #2
	ldr	r3, .L129+8
	sub	r4, r0, r4, lsl #1
	mov	r1, r4
	ldr	r0, [r3]
	ldr	r3, .L129+12
	mov	lr, pc
	bx	r3
	cmp	r1, #0
	bne	.L121
	ldr	r8, .L129+16
	ldr	r3, .L129+20
	ldr	r7, [r8]
.L125:
	ldr	r5, [r3, r1, lsl #5]
	cmp	r5, #0
	lsl	r2, r1, #5
	add	r1, r1, #1
	bne	.L123
	cmn	r7, #1
	beq	.L128
.L123:
	cmp	r1, #5
	bne	.L125
.L121:
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L128:
	mov	r9, #1
	ldr	r10, .L129+24
	add	r10, r10, r2
	str	r9, [r10, #28]
	mov	lr, pc
	bx	r6
	ldr	r3, .L129+4
	smull	r1, r2, r3, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr r9
	add	r3, r3, r3, lsl #2
	tst	r4, #1
	sub	r0, r0, r3
	moveq	r3, #240
	stmibne	r10, {r5, r9}
	stmibeq	r10, {r3, r7}
	str	r0, [r8]
	b	.L121
.L130:
	.align	2
.L129:
	.word	rand
	.word	1717986919
	.word	frameCounter
	.word	__aeabi_idivmod
	.word	num
	.word	enemies+28
	.word	enemies
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
	ldr	r3, .L151
	ldr	r3, [r3]
	ldr	r0, .L151+4
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
	bl	spawnEnemy
	mov	r0, #0
	ldr	r3, .L151+8
	add	r1, r3, #140
.L137:
	ldr	r2, [r3, #24]
	cmp	r2, #0
	beq	.L134
	ldmib	r3, {r2, ip}
	add	r2, r2, ip
	cmn	r2, #30
	str	r2, [r3, #4]
	blt	.L135
	ldr	ip, [r3, #16]
	add	r2, r2, ip
	cmp	r2, #239
	ble	.L134
.L135:
	str	r0, [r3, #24]
.L134:
	add	r3, r3, #28
	cmp	r3, r1
	bne	.L137
	ldr	r4, .L151+12
	add	r5, r4, #160
.L139:
	ldr	r3, [r4, #28]
	cmp	r3, #0
	movne	r0, r4
	blne	updateEnemy.part.0
.L138:
	add	r4, r4, #32
	cmp	r5, r4
	bne	.L139
	ldr	r3, .L151+16
	ldrh	r3, [r3]
	tst	r3, #2
	beq	.L131
	ldr	r3, .L151+20
	ldrh	r3, [r3]
	ands	r3, r3, #2
	bne	.L131
	ldr	r2, .L151+24
	ldr	r1, [r2]
	cmp	r1, #0
	moveq	r3, #1
	str	r3, [r2]
.L131:
	pop	{r4, r5, r6, lr}
	bx	lr
.L152:
	.align	2
.L151:
	.word	hOff
	.word	frameCounter
	.word	pills
	.word	enemies
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
	@ link register save eliminated.
	ldr	r3, .L166
	ldr	r3, [r3]
	cmp	r3, #0
	moveq	r2, #4
	moveq	ip, #24
	beq	.L156
	cmp	r3, #1
	beq	.L159
	cmp	r3, #2
	beq	.L160
	cmp	r3, #3
	beq	.L161
	cmp	r3, #4
	moveq	r2, #8
	moveq	ip, #28
	movne	r2, #0
	movne	ip, r2
.L156:
	ldr	r3, [r0, #28]
	cmp	r3, #0
	bxeq	lr
	ldr	r3, [r0, #4]
	lsl	r3, r3, #23
	lsr	r3, r3, #23
	mvn	r3, r3, lsl #17
	mvn	r3, r3, lsr #17
	ldrb	r0, [r0]	@ zero_extendqisi2
	ldr	r1, .L166+4
	add	r2, r2, ip, lsl #5
	strh	r2, [r1, #84]	@ movhi
	strh	r3, [r1, #82]	@ movhi
	strh	r0, [r1, #80]	@ movhi
	bx	lr
.L159:
	mov	r2, #8
	mov	ip, #24
	b	.L156
.L161:
	mov	r2, #4
	mov	ip, #28
	b	.L156
.L160:
	mov	r2, #0
	mov	ip, #28
	b	.L156
.L167:
	.align	2
.L166:
	.word	num
	.word	shadowOAM
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
	push	{r4, r5, r6, r7, r8, lr}
	mov	lr, #0
	ldr	r3, .L180
	ldr	r0, [r3, #28]
	ldr	r2, [r3, #36]
	ldr	ip, .L180+4
	ldr	r1, [r3, #4]
	ldr	r5, [r3]
	add	r2, r2, r0, lsl #5
	ldr	r0, .L180+8
	lsl	r2, r2, #2
	orr	r1, r1, ip
	ldr	r3, .L180+12
	strh	r2, [r0, #4]	@ movhi
	strh	r5, [r0]	@ movhi
	strh	r1, [r0, #2]	@ movhi
	ldrh	r6, [r0, #8]
	ldrh	r2, [r0, #10]
	ldrh	r5, [r0, #12]
	ldr	r7, .L180+16
	mov	r4, ip
	add	ip, r3, #140
.L170:
	ldr	r1, [r3, #24]
	cmp	r1, #0
	beq	.L169
	mov	r5, #516
	mov	lr, #1
	ldr	r1, [r3, #4]
	and	r2, r4, #32768
	and	r1, r1, r7
	ldrb	r6, [r3]	@ zero_extendqisi2
	orr	r2, r2, r1
.L169:
	add	r3, r3, #28
	cmp	r3, ip
	bne	.L170
	cmp	lr, #0
	strhne	r6, [r0, #8]	@ movhi
	strhne	r5, [r0, #12]	@ movhi
	strhne	r2, [r0, #10]	@ movhi
	ldr	r0, .L180+20
	bl	drawEnemy
	ldr	r0, .L180+24
	bl	drawEnemy
	ldr	r0, .L180+28
	bl	drawEnemy
	ldr	r0, .L180+32
	bl	drawEnemy
	ldr	r0, .L180+36
	pop	{r4, r5, r6, r7, r8, lr}
	b	drawEnemy
.L181:
	.align	2
.L180:
	.word	doctor
	.word	-32768
	.word	shadowOAM
	.word	pills
	.word	511
	.word	enemies
	.word	enemies+32
	.word	enemies+64
	.word	enemies+96
	.word	enemies+128
	.size	drawGame, .-drawGame
	.comm	randPowerup,4,4
	.global	cheat
	.comm	enemiesRemaining,4,4
	.comm	frameCounter,4,4
	.comm	num,4,4
	.comm	pills,140,4
	.comm	enemies,160,4
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
