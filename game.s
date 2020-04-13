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
	ldr	r4, .L8
	mov	r3, #256
	mov	r0, #3
	ldr	r1, .L8+4
	mov	lr, pc
	bx	r4
	mov	r3, #1856
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L8+8
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L8+12
	ldr	r1, .L8+16
	mov	lr, pc
	bx	r4
	mov	r3, #224
	mov	r0, #3
	ldr	r2, .L8+20
	ldr	r1, .L8+24
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L8+28
	ldr	r1, .L8+32
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r0, #3
	ldr	r2, .L8+36
	ldr	r1, .L8+40
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L8+44
	ldr	r1, .L8+48
	mov	lr, pc
	bx	r4
	mov	ip, #0
	mov	r6, #1
	mov	r7, #32
	mov	r9, #129
	mvn	r8, #0
	ldr	r3, .L8+52
	str	ip, [r3]
	ldr	r3, .L8+56
	str	ip, [r3]
	ldr	r3, .L8+60
	mov	fp, #104
	str	ip, [r3, #24]
	str	ip, [r3, #36]
	str	ip, [r3, #28]
	mov	r10, #3
	mov	r0, ip
	mov	ip, #16
	str	r6, [r3, #8]
	str	r6, [r3, #12]
	mov	r2, r6
	mov	r6, #10
	mov	r1, r7
	mov	r5, r9
	mov	r4, r8
	mov	lr, #340
	str	ip, [r3, #44]
	str	r9, [r3]
	str	fp, [r3, #4]
	str	r10, [r3, #40]
	str	r7, [r3, #20]
	str	r7, [r3, #16]
	ldr	r3, .L8+64
	ldr	ip, .L8+68
	str	r8, [r3]
	ldr	r3, .L8+72
	str	r6, [ip]
	add	ip, r3, #180
.L2:
	str	r2, [r3, #8]
	str	r2, [r3, #12]
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	str	r4, [r3, #24]
	str	r0, [r3, #28]
	str	r0, [r3, #32]
	stm	r3, {r5, lr}
	add	r3, r3, #36
	cmp	r3, ip
	bne	.L2
	mov	r0, #8
	mov	r1, #1
	mov	r2, #0
	mvn	lr, #194
	ldr	r3, .L8+76
	add	ip, r3, #140
.L3:
	str	r0, [r3, #20]
	str	r0, [r3, #16]
	str	r1, [r3, #8]
	str	r1, [r3, #12]
	str	r2, [r3, #4]
	str	lr, [r3]
	str	r2, [r3, #24]
	add	r3, r3, #28
	cmp	r3, ip
	bne	.L3
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L9:
	.align	2
.L8:
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
	.word	num
	.word	enemiesRemaining
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
	ldr	r3, .L12
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
.L13:
	.align	2
.L12:
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
	ldr	r3, .L16
	ldr	r1, [r3]
	ldr	r3, .L16+4
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
.L17:
	.align	2
.L16:
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
	ldr	r1, .L19
	ldr	r2, [r1, #4]
	mvn	r2, r2, lsl #17
	mvn	r2, r2, lsr #17
	ldr	ip, [r1, #28]
	ldr	r3, [r1, #36]
	ldr	r0, .L19+4
	ldr	r1, [r1]
	add	r3, r3, ip, lsl #5
	lsl	r3, r3, #2
	strh	r2, [r0, #2]	@ movhi
	strh	r1, [r0]	@ movhi
	strh	r3, [r0, #4]	@ movhi
	bx	lr
.L20:
	.align	2
.L19:
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
	ldr	r3, .L25
	add	ip, r3, #140
.L22:
	str	r0, [r3, #20]
	str	r0, [r3, #16]
	str	r1, [r3, #8]
	str	r1, [r3, #12]
	str	r2, [r3, #4]
	str	lr, [r3]
	str	r2, [r3, #24]
	add	r3, r3, #28
	cmp	r3, ip
	bne	.L22
	ldr	lr, [sp], #4
	bx	lr
.L26:
	.align	2
.L25:
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
	ldr	r0, .L41
	mov	r2, r0
	ldr	r1, [r2, #24]
	cmp	r1, #0
	mov	r3, #0
	beq	.L39
.L28:
	add	r3, r3, #1
	cmp	r3, #5
	add	r2, r2, #28
	bxeq	lr
	ldr	r1, [r2, #24]
	cmp	r1, #0
	bne	.L28
.L39:
	mov	ip, #125
	push	{r4, lr}
	ldr	lr, .L41+4
	ldr	r1, [lr, #28]
	rsb	r2, r3, r3, lsl #3
	bics	r1, r1, #2
	str	ip, [r0, r2, lsl #2]
	add	r2, r0, r2, lsl #2
	lsl	ip, r3, #3
	beq	.L40
	cmp	r1, #1
	mvneq	r4, #1
	ldreq	r1, [lr, #4]
	subeq	r1, r1, #18
	stmibeq	r2, {r1, r4}
.L30:
	mov	r2, #1
	sub	r3, ip, r3
	add	r0, r0, r3, lsl #2
	str	r2, [r0, #24]
	pop	{r4, lr}
	bx	lr
.L40:
	mov	r4, #2
	ldr	r1, [lr, #4]
	add	r1, r1, #5
	stmib	r2, {r1, r4}
	b	.L30
.L42:
	.align	2
.L41:
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
	ldr	r4, .L86
	ldr	r3, [r4, #28]
	cmp	r3, #4
	movne	r2, #4
	strne	r3, [r4, #32]
	strne	r2, [r4, #28]
	ldr	r3, .L86+4
	ldr	r2, [r4, #24]
	smull	r0, r1, r3, r2
	asr	r3, r2, #31
	rsb	r3, r3, r1, asr #2
	add	r3, r3, r3, lsl #2
	subs	r3, r2, r3, lsl #1
	bne	.L45
	add	r0, r4, #36
	ldm	r0, {r0, r1}
	sub	r1, r1, #1
	cmp	r0, r1
	addlt	r0, r0, #1
	strlt	r0, [r4, #36]
	strge	r3, [r4, #36]
.L45:
	ldr	r3, .L86+8
	ldrh	r1, [r3, #48]
	tst	r1, #16
	bne	.L47
	ldr	r3, .L86+12
	ldr	r1, [r3]
	cmp	r1, #1
	movne	ip, #0
	moveq	ip, #2
	ldr	r0, [r4, #4]
	ldr	r3, [r4, #16]
	add	r3, r0, r3
	cmp	r3, #255
	str	ip, [r4, #28]
	ble	.L84
.L49:
	ldr	r5, .L86+16
	ldr	r0, .L86+8
	ldr	r3, [r5]
	ldrh	r0, [r0, #48]
	add	r3, r3, #1
	tst	r0, #32
	str	r3, [r5]
	bne	.L51
.L50:
	cmp	r1, #1
	moveq	r3, #3
	movne	r3, #1
	ldr	r1, [r4, #4]
	cmp	r1, #0
	str	r3, [r4, #28]
	ble	.L51
	ldr	r0, [r4, #8]
	ldr	r3, [r4]
	sub	r1, r1, r0
	ldr	ip, .L86+20
	add	r0, r1, r3, lsl #8
	lsl	r0, r0, #1
	ldrh	r0, [ip, r0]
	cmp	r0, #0
	beq	.L51
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
.L51:
	add	r2, r2, #1
	str	r2, [r4, #24]
	b	.L58
.L47:
	ldrh	r3, [r3, #48]
	tst	r3, #32
	beq	.L85
	ldr	r3, [r4, #28]
	cmp	r3, #4
	ldrne	r5, .L86+16
	bne	.L51
	mov	r2, #0
	ldr	r3, [r4, #32]
	str	r2, [r4, #36]
	str	r3, [r4, #28]
	ldr	r5, .L86+16
.L58:
	ldr	r3, .L86+24
	ldrh	r3, [r3]
	tst	r3, #1
	ldr	r3, [r4, #44]
	beq	.L83
	ldr	r2, .L86+28
	ldrh	r2, [r2]
	ands	r6, r2, #1
	bne	.L83
	cmp	r3, #15
	bgt	.L57
.L83:
	add	r3, r3, #1
.L55:
	ldr	r1, [r5]
	ldr	r2, [r4, #4]
	sub	r2, r2, r1
	str	r3, [r4, #44]
	str	r2, [r4, #48]
	pop	{r4, r5, r6, lr}
	bx	lr
.L84:
	ldr	r5, [r4, #8]
	ldr	ip, [r4]
	add	r3, r3, r5
	sub	r3, r3, #1
	ldr	r6, .L86+20
	add	lr, r3, ip, lsl #8
	lsl	lr, lr, #1
	ldrh	lr, [r6, lr]
	cmp	lr, #0
	beq	.L49
	ldr	lr, [r4, #20]
	add	ip, ip, lr
	sub	ip, ip, #1
	add	r3, r3, ip, lsl #8
	lsl	r3, r3, #1
	ldrh	r3, [r6, r3]
	cmp	r3, #0
	addne	r0, r0, r5
	strne	r0, [r4, #4]
	b	.L49
.L85:
	ldr	r3, .L86+12
	ldr	r5, .L86+16
	ldr	r1, [r3]
	b	.L50
.L57:
	bl	firePill
	ldr	r3, .L86+32
	mov	r2, r6
	ldr	r1, .L86+36
	ldr	r0, .L86+40
	mov	lr, pc
	bx	r3
	mov	r3, #1
	b	.L55
.L87:
	.align	2
.L86:
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
	bge	.L93
.L91:
	mov	r3, #0
	str	r3, [r0, #24]
	bx	lr
.L93:
	ldr	r2, [r0, #16]
	add	r3, r3, r2
	cmp	r3, #239
	bxle	lr
	b	.L91
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
	ldr	r2, .L99
	strh	r3, [r2, #10]	@ movhi
	strh	r0, [r2, #8]	@ movhi
	strh	r1, [r2, #12]	@ movhi
	bx	lr
.L100:
	.align	2
.L99:
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
	push	{r4, r5, lr}
	mov	r0, #1
	mov	r5, #129
	mov	r4, #340
	mov	r1, #32
	mvn	lr, #0
	mov	r2, #0
	ldr	r3, .L105
	add	ip, r3, #180
.L102:
	str	r5, [r3]
	str	r4, [r3, #4]
	str	r0, [r3, #8]
	str	r0, [r3, #12]
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	str	lr, [r3, #24]
	str	r2, [r3, #28]
	str	r2, [r3, #32]
	add	r3, r3, #36
	cmp	r3, ip
	bne	.L102
	pop	{r4, r5, lr}
	bx	lr
.L106:
	.align	2
.L105:
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
	ldr	r6, .L115
	mov	lr, pc
	bx	r6
	ldr	r4, .L115+4
	smull	r2, r3, r4, r0
	asr	r4, r0, #31
	rsb	r4, r4, r3, asr #2
	add	r4, r4, r4, lsl #2
	ldr	r3, .L115+8
	sub	r4, r0, r4, lsl #1
	mov	r1, r4
	ldr	r0, [r3]
	ldr	r3, .L115+12
	mov	lr, pc
	bx	r3
	cmp	r1, #0
	bne	.L107
	ldr	r2, .L115+16
	mov	r3, r2
	ldr	r9, .L115+20
	ldr	r7, [r9]
.L111:
	ldr	r5, [r3, #28]
	cmp	r5, #0
	bne	.L109
	cmn	r7, #1
	beq	.L114
.L109:
	add	r1, r1, #1
	cmp	r1, #5
	add	r3, r3, #36
	bne	.L111
.L107:
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L114:
	mov	r10, #1
	add	r1, r1, r1, lsl #3
	add	r8, r2, r1, lsl #2
	str	r5, [r8, #24]
	str	r10, [r8, #28]
	mov	lr, pc
	bx	r6
	ldr	r3, .L115+4
	smull	r1, r2, r3, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr r10
	add	r3, r3, r3, lsl #2
	tst	r4, #1
	sub	r0, r0, r3
	moveq	r3, #240
	stmibne	r8, {r5, r10}
	stmibeq	r8, {r3, r7}
	str	r0, [r9]
	b	.L107
.L116:
	.align	2
.L115:
	.word	rand
	.word	1717986919
	.word	frameCounter
	.word	__aeabi_idivmod
	.word	enemies
	.word	num
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
	push	{r4, r5, r6, r7, r8, r9, lr}
	ldr	r3, [r0, #28]
	cmp	r3, #0
	mov	r5, r0
	ldr	r1, [r0, #4]
	sub	sp, sp, #20
	beq	.L118
	ldr	r3, [r0, #8]
	add	r1, r1, r3
	cmp	r1, #240
	movhi	r3, #0
	ldr	r4, .L137
	str	r1, [r0, #4]
	strhi	r3, [r0, #28]
	ldr	r7, .L137+4
	ldr	r8, .L137+8
	ldr	r9, .L137+12
	add	r6, r4, #140
.L123:
	ldr	r3, [r4, #24]
	cmp	r3, #0
	bne	.L135
.L120:
	add	r4, r4, #28
	cmp	r4, r6
	bne	.L123
.L118:
	ldr	r3, .L137+16
	ldr	r3, [r3]
	sub	r1, r1, r3
	str	r1, [r5, #32]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L135:
	add	r0, r4, #16
	ldm	r0, {r0, ip}
	ldm	r4, {r2, r3}
	str	ip, [sp, #12]
	str	r2, [sp, #4]
	str	r0, [sp, #8]
	str	r3, [sp]
	add	r2, r5, #16
	ldm	r2, {r2, r3}
	ldr	r0, [r5]
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	beq	.L136
	ldr	r3, [r8]
	bics	ip, r3, #2
	moveq	r2, #1
	movne	r2, #0
	mov	r0, #0
	cmp	r3, #4
	orreq	r2, r2, #1
	ldr	r3, [r5, #24]
	add	r3, r3, #1
	str	r3, [r5, #24]
	str	r0, [r4, #24]
	cmp	r2, r0
	ldr	r1, [r5, #4]
	beq	.L122
	mvn	r2, #0
	ldr	r3, [r9]
	add	r3, r3, r2
	str	r0, [r5, #28]
	str	r3, [r9]
	str	r2, [r8]
	b	.L120
.L136:
	ldr	r1, [r5, #4]
	b	.L120
.L122:
	cmp	r3, #2
	cmpeq	ip, #1
	bne	.L120
	mvn	r0, #0
	ldr	r3, [r9]
	add	r3, r3, r0
	str	r2, [r5, #28]
	str	r3, [r9]
	str	r0, [r8]
	b	.L120
.L138:
	.align	2
.L137:
	.word	pills
	.word	collision
	.word	num
	.word	enemiesRemaining
	.word	hOff
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
	ldr	r3, .L153
	ldr	r3, [r3]
	ldr	r0, .L153+4
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
	bl	spawnEnemy
	mov	r0, #0
	ldr	r3, .L153+8
	add	r1, r3, #140
.L145:
	ldr	r2, [r3, #24]
	cmp	r2, #0
	beq	.L142
	ldmib	r3, {r2, ip}
	add	r2, r2, ip
	cmn	r2, #30
	str	r2, [r3, #4]
	blt	.L143
	ldr	ip, [r3, #16]
	add	r2, r2, ip
	cmp	r2, #239
	ble	.L142
.L143:
	str	r0, [r3, #24]
.L142:
	add	r3, r3, #28
	cmp	r3, r1
	bne	.L145
	ldr	r0, .L153+12
	bl	updateEnemy
	ldr	r0, .L153+16
	bl	updateEnemy
	ldr	r0, .L153+20
	bl	updateEnemy
	ldr	r0, .L153+24
	bl	updateEnemy
	ldr	r0, .L153+28
	bl	updateEnemy
	ldr	r3, .L153+32
	ldrh	r3, [r3]
	tst	r3, #64
	beq	.L139
	ldr	r3, .L153+36
	ldrh	r3, [r3]
	ands	r3, r3, #64
	bne	.L139
	ldr	r2, .L153+40
	ldr	r1, [r2]
	cmp	r1, #0
	moveq	r3, #1
	str	r3, [r2]
.L139:
	pop	{r4, lr}
	bx	lr
.L154:
	.align	2
.L153:
	.word	hOff
	.word	frameCounter
	.word	pills
	.word	enemies
	.word	enemies+36
	.word	enemies+72
	.word	enemies+108
	.word	enemies+144
	.word	oldButtons
	.word	buttons
	.word	.LANCHOR0
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
	.word	enemies+36
	.word	enemies+72
	.word	enemies+108
	.word	enemies+144
	.size	drawGame, .-drawGame
	.global	cheat
	.comm	enemiesRemaining,4,4
	.comm	frameCounter,4,4
	.comm	num,4,4
	.comm	pills,140,4
	.comm	enemies,180,4
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
