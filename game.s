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
	mov	r9, #0
	ldr	r4, .L14
	strhi	r3, [r0, #28]
	ldr	r7, .L14+4
	ldr	r8, .L14+8
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
	ldrne	r3, [r8]
	subne	r3, r3, #1
	strne	r9, [r5, #28]
	strne	r3, [r8]
	strne	r9, [r4, #24]
	b	.L4
.L15:
	.align	2
.L14:
	.word	pills
	.word	collision
	.word	activeEnemies
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
	ldr	r4, .L20
	mov	r3, #256
	mov	r0, #3
	ldr	r1, .L20+4
	mov	lr, pc
	bx	r4
	mov	r3, #1856
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L20+8
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L20+12
	ldr	r1, .L20+16
	mov	lr, pc
	bx	r4
	mov	r3, #224
	mov	r0, #3
	ldr	r2, .L20+20
	ldr	r1, .L20+24
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L20+28
	ldr	r1, .L20+32
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r0, #3
	ldr	r2, .L20+36
	ldr	r1, .L20+40
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L20+44
	ldr	r1, .L20+48
	mov	lr, pc
	bx	r4
	mov	ip, #0
	mov	lr, #1
	mov	r4, #32
	mov	r6, #129
	mov	fp, #104
	mov	r10, #3
	mov	r9, #16
	mov	r8, #4
	ldr	r3, .L20+52
	str	ip, [r3]
	ldr	r3, .L20+56
	str	ip, [r3]
	ldr	r3, .L20+60
	str	ip, [r3, #24]
	str	ip, [r3, #36]
	str	ip, [r3, #28]
	str	lr, [r3, #8]
	str	lr, [r3, #12]
	str	fp, [r3, #4]
	str	r10, [r3, #40]
	str	r9, [r3, #44]
	str	r4, [r3, #20]
	str	r4, [r3, #16]
	str	r6, [r3]
	ldr	r3, .L20+64
	mvn	r7, #239
	str	lr, [r3, #8]
	str	lr, [r3, #12]
	str	lr, [r3, #44]
	str	lr, [r3, #48]
	mov	r1, lr
	ldr	lr, .L20+68
	str	r8, [lr]
	mvn	lr, #0
	mov	r2, #8
	mvn	r5, #194
	str	ip, [r3, #24]
	str	ip, [r3, #28]
	str	ip, [r3, #60]
	str	ip, [r3, #64]
	mov	r0, ip
	str	r6, [r3]
	ldr	ip, .L20+72
	str	r4, [r3, #16]
	str	r4, [r3, #20]
	str	r6, [r3, #36]
	str	r4, [r3, #52]
	str	r4, [r3, #56]
	str	r7, [r3, #4]
	str	r7, [r3, #40]
	ldr	r3, .L20+76
	str	lr, [ip]
	add	ip, r3, #140
.L17:
	str	r2, [r3, #20]
	str	r2, [r3, #16]
	str	r1, [r3, #8]
	str	r1, [r3, #12]
	str	r0, [r3, #4]
	str	r5, [r3]
	str	r0, [r3, #24]
	add	r3, r3, #28
	cmp	ip, r3
	bne	.L17
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L21:
	.align	2
.L20:
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
	.word	enemies
	.word	enemiesRemaining
	.word	num
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
	push	{r4, r5, lr}
	mov	r2, #0
	mov	r5, #129
	mov	r4, #3
	mov	lr, #16
	mov	ip, #32
	mov	r0, #1
	ldr	r3, .L28
	ldr	r1, [r3]
	ldr	r3, .L28+4
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
.L29:
	.align	2
.L28:
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
	str	lr, [sp, #-4]!
	mov	r0, #8
	mov	r1, #1
	mov	r2, #0
	mvn	lr, #194
	ldr	r3, .L37
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
	ldr	lr, [sp], #4
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
	mov	ip, #125
	push	{r4, lr}
	ldr	lr, .L53+4
	ldr	r1, [lr, #28]
	rsb	r2, r3, r3, lsl #3
	bics	r1, r1, #2
	str	ip, [r0, r2, lsl #2]
	add	r2, r0, r2, lsl #2
	lsl	ip, r3, #3
	beq	.L52
	cmp	r1, #1
	mvneq	r4, #1
	ldreq	r1, [lr, #4]
	subeq	r1, r1, #18
	stmibeq	r2, {r1, r4}
.L42:
	mov	r2, #1
	sub	r3, ip, r3
	add	r0, r0, r3, lsl #2
	str	r2, [r0, #24]
	pop	{r4, lr}
	bx	lr
.L52:
	mov	r4, #2
	ldr	r1, [lr, #4]
	add	r1, r1, #6
	stmib	r2, {r1, r4}
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
	ldr	r4, .L98
	ldr	r3, [r4, #28]
	cmp	r3, #4
	movne	r2, #4
	strne	r3, [r4, #32]
	strne	r2, [r4, #28]
	ldr	r3, .L98+4
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
	ldr	r3, .L98+8
	ldrh	r1, [r3, #48]
	tst	r1, #16
	bne	.L59
	ldr	r3, .L98+12
	ldr	r1, [r3]
	cmp	r1, #1
	movne	ip, #0
	moveq	ip, #2
	ldr	r0, [r4, #4]
	ldr	r3, [r4, #16]
	add	r3, r0, r3
	cmp	r3, #255
	str	ip, [r4, #28]
	ble	.L96
.L61:
	ldr	r5, .L98+16
	ldr	r0, .L98+8
	ldr	r3, [r5]
	ldrh	r0, [r0, #48]
	add	r3, r3, #1
	tst	r0, #32
	str	r3, [r5]
	bne	.L63
.L62:
	cmp	r1, #1
	moveq	r3, #3
	movne	r3, #1
	ldr	r1, [r4, #4]
	cmp	r1, #0
	str	r3, [r4, #28]
	ble	.L63
	ldr	r0, [r4, #8]
	ldr	r3, [r4]
	sub	r1, r1, r0
	ldr	ip, .L98+20
	add	r0, r1, r3, lsl #8
	lsl	r0, r0, #1
	ldrh	r0, [ip, r0]
	cmp	r0, #0
	beq	.L63
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
.L63:
	add	r2, r2, #1
	str	r2, [r4, #24]
	b	.L70
.L59:
	ldrh	r3, [r3, #48]
	tst	r3, #32
	beq	.L97
	ldr	r3, [r4, #28]
	cmp	r3, #4
	ldrne	r5, .L98+16
	bne	.L63
	mov	r2, #0
	ldr	r3, [r4, #32]
	str	r2, [r4, #36]
	str	r3, [r4, #28]
	ldr	r5, .L98+16
.L70:
	ldr	r3, .L98+24
	ldrh	r3, [r3]
	tst	r3, #1
	ldr	r3, [r4, #44]
	beq	.L95
	ldr	r2, .L98+28
	ldrh	r2, [r2]
	ands	r6, r2, #1
	bne	.L95
	cmp	r3, #15
	bgt	.L69
.L95:
	add	r3, r3, #1
.L67:
	ldr	r1, [r5]
	ldr	r2, [r4, #4]
	sub	r2, r2, r1
	str	r3, [r4, #44]
	str	r2, [r4, #48]
	pop	{r4, r5, r6, lr}
	bx	lr
.L96:
	ldr	r5, [r4, #8]
	ldr	ip, [r4]
	add	r3, r3, r5
	sub	r3, r3, #1
	ldr	r6, .L98+20
	add	lr, r3, ip, lsl #8
	lsl	lr, lr, #1
	ldrh	lr, [r6, lr]
	cmp	lr, #0
	beq	.L61
	ldr	lr, [r4, #20]
	add	ip, ip, lr
	sub	ip, ip, #1
	add	r3, r3, ip, lsl #8
	lsl	r3, r3, #1
	ldrh	r3, [r6, r3]
	cmp	r3, #0
	addne	r0, r0, r5
	strne	r0, [r4, #4]
	b	.L61
.L97:
	ldr	r3, .L98+12
	ldr	r5, .L98+16
	ldr	r1, [r3]
	b	.L62
.L69:
	bl	firePill
	ldr	r3, .L98+32
	mov	r2, r6
	ldr	r1, .L98+36
	ldr	r0, .L98+40
	mov	lr, pc
	bx	r3
	mov	r3, #1
	b	.L67
.L99:
	.align	2
.L98:
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
	bge	.L105
.L103:
	mov	r3, #0
	str	r3, [r0, #24]
	bx	lr
.L105:
	ldr	r2, [r0, #16]
	add	r3, r3, r2
	cmp	r3, #239
	bxle	lr
	b	.L103
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
	push	{r4, r5, r6, lr}
	mov	r6, #512
	mov	r5, #516
	ldr	r3, .L112
	ldr	r2, .L112+4
	ldr	r4, .L112+8
	ldr	lr, .L112+12
	add	r0, r3, #140
.L109:
	ldr	r1, [r3, #24]
	cmp	r1, #0
	ldrne	r1, [r3, #4]
	ldrbne	ip, [r3]	@ zero_extendqisi2
	andne	r1, r1, r4
	orrne	r1, r1, lr
	add	r3, r3, #28
	strhne	r5, [r2, #12]	@ movhi
	strhne	r1, [r2, #10]	@ movhi
	strhne	ip, [r2, #8]	@ movhi
	strheq	r6, [r2, #8]	@ movhi
	cmp	r3, r0
	add	r2, r2, #8
	bne	.L109
	pop	{r4, r5, r6, lr}
	bx	lr
.L113:
	.align	2
.L112:
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
	ldr	r3, .L116
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
.L117:
	.align	2
.L116:
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
	push	{r4, r5, r6, lr}
	ldr	r4, .L123
	mov	lr, pc
	bx	r4
	ldr	r3, .L123+4
	ldr	r2, .L123+8
	ldr	r1, .L123+12
	ldr	r3, [r3]
	mla	r3, r1, r3, r2
	cmp	r2, r3, ror #1
	bcc	.L118
	ldr	r3, .L123+16
	ldr	r5, [r3, #28]
	cmp	r5, #0
	bne	.L120
	ldr	r6, .L123+20
	ldr	r2, [r6]
	cmp	r2, #2
	ble	.L121
.L118:
	pop	{r4, r5, r6, lr}
	bx	lr
.L120:
	ldr	r2, [r3, #64]
	cmp	r2, #0
	bne	.L118
	ldr	r6, .L123+20
	ldr	r2, [r6]
	cmp	r2, #2
	bgt	.L118
	mov	r5, #1
.L121:
	mov	r2, #1
	add	r5, r5, r5, lsl #3
	add	r5, r3, r5, lsl #2
	str	r2, [r5, #28]
	mov	lr, pc
	bx	r4
	mov	ip, #240
	mvn	r1, #0
	ldr	r3, .L123+24
	smull	lr, r2, r3, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #1
	add	r3, r3, r3, lsl #2
	sub	r0, r0, r3
	ldr	r3, [r6]
	add	r3, r3, #1
	str	r0, [r5, #32]
	str	ip, [r5, #4]
	str	r1, [r5, #8]
	str	r3, [r6]
	b	.L118
.L124:
	.align	2
.L123:
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
	ldr	r3, .L147
	ldr	r3, [r3]
	ldr	r0, .L147+4
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
	ldr	r3, .L147+8
	add	r1, r3, #140
.L131:
	ldr	r2, [r3, #24]
	cmp	r2, #0
	beq	.L128
	ldmib	r3, {r2, ip}
	add	r2, r2, ip
	cmn	r2, #30
	str	r2, [r3, #4]
	blt	.L129
	ldr	ip, [r3, #16]
	add	r2, r2, ip
	cmp	r2, #239
	ble	.L128
.L129:
	str	r0, [r3, #24]
.L128:
	add	r3, r3, #28
	cmp	r1, r3
	bne	.L131
	ldr	r4, .L147+12
	ldr	r3, [r4, #28]
	cmp	r3, #0
	movne	r0, r4
	blne	updateEnemy.part.0
.L132:
	ldr	r3, [r4, #64]
	cmp	r3, #0
	ldrne	r0, .L147+16
	blne	updateEnemy.part.0
.L133:
	ldr	r3, .L147+20
	ldrh	r3, [r3]
	tst	r3, #2
	beq	.L125
	ldr	r3, .L147+24
	ldrh	r3, [r3]
	ands	r3, r3, #2
	bne	.L125
	ldr	r2, .L147+28
	ldr	r1, [r2]
	cmp	r1, #0
	moveq	r3, #1
	str	r3, [r2]
.L125:
	pop	{r4, lr}
	bx	lr
.L148:
	.align	2
.L147:
	.word	hOff
	.word	frameCounter
	.word	pills
	.word	enemies
	.word	enemies+36
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
	ldr	r3, .L165
	ldr	r0, [r3, #28]
	ldr	r2, .L165+4
	cmp	r0, #1
	push	{r4, r5, r6, r7, lr}
	mov	r6, r1
	mov	r5, r1
	ldr	r4, .L165+8
	ldr	lr, .L165+12
	strhne	ip, [r2, #80]	@ movhi
	beq	.L163
.L154:
	cmp	r1, #1
	add	r3, r3, #36
	add	r2, r2, #8
	bne	.L161
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L161:
	ldr	r0, [r3, #28]
	cmp	r0, #1
	mov	r1, #1
	strhne	ip, [r2, #80]	@ movhi
	bne	.L154
.L163:
	ldr	r0, [r3, #32]
	cmp	r0, #0
	bne	.L164
	mov	r7, #772
	mov	r6, #4
	mov	r5, #24
.L153:
	ldr	r0, [r3, #4]
	strh	r7, [r2, #84]	@ movhi
	and	r0, r0, r4
	ldrb	r7, [r3]	@ zero_extendqisi2
	orr	r0, r0, lr
	strh	r0, [r2, #82]	@ movhi
	strh	r7, [r2, #80]	@ movhi
	b	.L154
.L164:
	cmp	r0, #1
	beq	.L157
	cmp	r0, #2
	beq	.L158
	cmp	r0, #3
	beq	.L159
	cmp	r0, #4
	addne	r7, r6, r5, lsl #5
	moveq	r7, #904
	moveq	r6, #8
	moveq	r5, #28
	b	.L153
.L158:
	mov	r7, #896
	mov	r6, #0
	mov	r5, #28
	b	.L153
.L157:
	mov	r7, #776
	mov	r6, #8
	mov	r5, #24
	b	.L153
.L159:
	mov	r7, #900
	mov	r6, #4
	mov	r5, #28
	b	.L153
.L166:
	.align	2
.L165:
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
	ldr	r1, .L169
	ldr	r2, [r1, #4]
	mvn	r2, r2, lsl #17
	mvn	r2, r2, lsr #17
	ldr	r0, [r1, #28]
	ldr	r3, [r1, #36]
	push	{r4, r5, r6, lr}
	ldr	r4, .L169+4
	ldr	ip, .L169+8
	ldr	r1, [r1]
	add	r3, r3, r0, lsl #5
	lsl	r3, r3, #2
	mov	r0, r4
	strh	r2, [ip, #2]	@ movhi
	strh	r1, [ip]	@ movhi
	strh	r3, [ip, #4]	@ movhi
	bl	drawPill
	add	r0, r4, #28
	bl	drawPill
	add	r0, r4, #56
	bl	drawPill
	ldr	r5, .L169+12
	add	r0, r4, #84
	bl	drawPill
	add	r0, r4, #112
	bl	drawPill
	mov	r0, r5
	bl	drawEnemy
	add	r0, r5, #36
	pop	{r4, r5, r6, lr}
	b	drawEnemy
.L170:
	.align	2
.L169:
	.word	doctor
	.word	pills
	.word	shadowOAM
	.word	enemies
	.size	drawGame, .-drawGame
	.comm	activeEnemies,4,4
	.comm	randPowerup,4,4
	.global	cheat
	.comm	enemiesRemaining,4,4
	.comm	frameCounter,4,4
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
