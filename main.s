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
	.file	"main.c"
	.text
	.align	2
	.global	goToStart
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToStart, %function
goToStart:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r3, #67108864
	mov	r5, #0
	ldr	r7, .L4
	ldr	r6, .L4+4
	ldr	r4, .L4+8
	strh	r5, [r3, #16]	@ movhi
	mov	r1, r7
	strh	r5, [r3, #20]	@ movhi
	mov	r2, #100663296
	mov	r3, #1312
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r1, r6
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L4+12
	mov	lr, pc
	bx	r4
	mov	r1, r7
	mov	r3, #1312
	mov	r0, #3
	ldr	r2, .L4+16
	mov	lr, pc
	bx	r4
	mov	r1, r6
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L4+20
	mov	lr, pc
	bx	r4
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L4+24
	mov	r3, #256
	mov	lr, pc
	bx	r4
	ldr	r3, .L4+28
	mov	lr, pc
	bx	r3
	ldr	r3, .L4+32
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L4+36
	mov	lr, pc
	bx	r4
	ldr	r3, .L4+40
	mov	r2, #1
	ldr	r1, .L4+44
	ldr	r0, .L4+48
	mov	lr, pc
	bx	r3
	ldr	r3, .L4+52
	str	r5, [r3]
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	startScreenTiles
	.word	startScreenMap
	.word	DMANow
	.word	100720640
	.word	100679680
	.word	100724736
	.word	startScreenPal
	.word	hideSprites
	.word	waitForVBlank
	.word	shadowOAM
	.word	playSoundA
	.word	2628272
	.word	menuSong
	.word	state
	.size	goToStart, .-goToStart
	.align	2
	.global	initialize
	.syntax unified
	.arm
	.fpu softvfp
	.type	initialize, %function
initialize:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #67108864
	mov	r1, #7168
	mov	r0, #4864
	ldr	r2, .L8
	push	{r4, lr}
	strh	r1, [r3, #10]	@ movhi
	strh	r2, [r3, #8]	@ movhi
	ldr	r1, .L8+4
	ldr	r2, .L8+8
	ldrh	r1, [r1, #48]
	strh	r0, [r3]	@ movhi
	ldr	r3, .L8+12
	strh	r1, [r2]	@ movhi
	mov	lr, pc
	bx	r3
	ldr	r3, .L8+16
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToStart
.L9:
	.align	2
.L8:
	.word	24068
	.word	67109120
	.word	buttons
	.word	setupSounds
	.word	setupInterrupts
	.size	initialize, .-initialize
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	win.part.0, %function
win.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L12
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	b	goToStart
.L13:
	.align	2
.L12:
	.word	buttons
	.size	win.part.0, .-win.part.0
	.set	lose.part.0,win.part.0
	.align	2
	.global	goToInstructions
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToInstructions, %function
goToInstructions:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #67108864
	mov	r2, #0
	push	{r4, r5, r6, lr}
	ldr	r6, .L16
	ldr	r5, .L16+4
	ldr	r4, .L16+8
	strh	r2, [r3, #16]	@ movhi
	mov	r1, r6
	strh	r2, [r3, #20]	@ movhi
	mov	r0, #3
	mov	r3, #3024
	mov	r2, #100663296
	mov	lr, pc
	bx	r4
	mov	r1, r5
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L16+12
	mov	lr, pc
	bx	r4
	mov	r1, r6
	mov	r3, #3024
	mov	r0, #3
	ldr	r2, .L16+16
	mov	lr, pc
	bx	r4
	mov	r1, r5
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L16+20
	mov	lr, pc
	bx	r4
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L16+24
	mov	r3, #256
	mov	lr, pc
	bx	r4
	ldr	r3, .L16+28
	mov	lr, pc
	bx	r3
	ldr	r3, .L16+32
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L16+36
	mov	lr, pc
	bx	r4
	mov	r2, #5
	ldr	r3, .L16+40
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L17:
	.align	2
.L16:
	.word	instructionsTiles
	.word	instructionsMap
	.word	DMANow
	.word	100720640
	.word	100679680
	.word	100724736
	.word	instructionsPal
	.word	hideSprites
	.word	waitForVBlank
	.word	shadowOAM
	.word	state
	.size	goToInstructions, .-goToInstructions
	.align	2
	.global	goToGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToGame, %function
goToGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r3, #256
	ldr	r4, .L20
	mov	r2, #83886080
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
	mov	r0, #3
	ldr	r2, .L20+28
	ldr	r1, .L20+32
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	ldr	r3, .L20+36
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L20+40
	mov	lr, pc
	bx	r4
	mov	r0, #0
	mov	r2, #1
	ldr	r1, .L20+44
	ldr	r3, .L20+48
	str	r0, [r1]
	str	r2, [r3]
	pop	{r4, lr}
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
	.word	waitForVBlank
	.word	shadowOAM
	.word	hOff
	.word	state
	.size	goToGame, .-goToGame
	.align	2
	.global	start
	.syntax unified
	.arm
	.fpu softvfp
	.type	start, %function
start:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L34
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L23
	ldr	r2, .L34+4
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L32
.L23:
	tst	r3, #4
	beq	.L22
	ldr	r3, .L34+4
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L33
.L22:
	pop	{r4, lr}
	bx	lr
.L33:
	ldr	r3, .L34+8
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToInstructions
.L32:
	ldr	r3, .L34+12
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r1, .L34+16
	ldr	r0, .L34+20
	ldr	r3, .L34+24
	mov	lr, pc
	bx	r3
	bl	goToGame
	ldr	r3, .L34+28
	mov	lr, pc
	bx	r3
	ldrh	r3, [r4]
	b	.L23
.L35:
	.align	2
.L34:
	.word	oldButtons
	.word	buttons
	.word	pauseSound
	.word	stopSound
	.word	1176230
	.word	gameSong
	.word	playSoundA
	.word	initGame
	.size	start, .-start
	.align	2
	.global	instructions
	.syntax unified
	.arm
	.fpu softvfp
	.type	instructions, %function
instructions:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L48
	ldrh	r3, [r3]
	tst	r3, #4
	push	{r4, lr}
	beq	.L37
	ldr	r2, .L48+4
	ldrh	r2, [r2]
	tst	r2, #4
	beq	.L46
.L37:
	tst	r3, #8
	beq	.L36
	ldr	r3, .L48+4
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L47
.L36:
	pop	{r4, lr}
	bx	lr
.L46:
	ldr	r3, .L48+8
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToStart
.L47:
	mov	r2, #1
	ldr	r1, .L48+12
	ldr	r0, .L48+16
	ldr	r3, .L48+20
	mov	lr, pc
	bx	r3
	bl	goToGame
	ldr	r3, .L48+24
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L49:
	.align	2
.L48:
	.word	oldButtons
	.word	buttons
	.word	unpauseSound
	.word	1176230
	.word	gameSong
	.word	playSoundA
	.word	initGame
	.size	instructions, .-instructions
	.align	2
	.global	goToPause
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToPause, %function
goToPause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #67108864
	mov	r2, #0
	push	{r4, r5, r6, lr}
	ldr	r6, .L52
	ldr	r5, .L52+4
	ldr	r4, .L52+8
	strh	r2, [r3, #16]	@ movhi
	mov	r1, r6
	strh	r2, [r3, #20]	@ movhi
	mov	r0, #3
	mov	r3, #864
	mov	r2, #100663296
	mov	lr, pc
	bx	r4
	mov	r1, r5
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L52+12
	mov	lr, pc
	bx	r4
	mov	r1, r6
	mov	r3, #864
	mov	r0, #3
	ldr	r2, .L52+16
	mov	lr, pc
	bx	r4
	mov	r1, r5
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L52+20
	mov	lr, pc
	bx	r4
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L52+24
	mov	r3, #256
	mov	lr, pc
	bx	r4
	ldr	r3, .L52+28
	mov	lr, pc
	bx	r3
	ldr	r3, .L52+32
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L52+36
	mov	lr, pc
	bx	r4
	mov	r2, #2
	ldr	r3, .L52+40
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L53:
	.align	2
.L52:
	.word	pausedTiles
	.word	pausedMap
	.word	DMANow
	.word	100720640
	.word	100679680
	.word	100724736
	.word	pausedPal
	.word	hideSprites
	.word	waitForVBlank
	.word	shadowOAM
	.word	state
	.size	goToPause, .-goToPause
	.align	2
	.global	pause
	.syntax unified
	.arm
	.fpu softvfp
	.type	pause, %function
pause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L66
	ldrh	r3, [r3]
	tst	r3, #4
	push	{r4, lr}
	beq	.L55
	ldr	r2, .L66+4
	ldrh	r2, [r2]
	tst	r2, #4
	beq	.L64
.L55:
	tst	r3, #8
	beq	.L54
	ldr	r3, .L66+4
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L65
.L54:
	pop	{r4, lr}
	bx	lr
.L64:
	ldr	r3, .L66+8
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToStart
.L65:
	ldr	r3, .L66+12
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToGame
.L67:
	.align	2
.L66:
	.word	oldButtons
	.word	buttons
	.word	pauseSound
	.word	unpauseSound
	.size	pause, .-pause
	.align	2
	.global	goToWin
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToWin, %function
goToWin:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #67108864
	mov	r2, #0
	push	{r4, r5, r6, lr}
	ldr	r6, .L70
	ldr	r5, .L70+4
	ldr	r4, .L70+8
	strh	r2, [r3, #16]	@ movhi
	mov	r1, r6
	strh	r2, [r3, #20]	@ movhi
	mov	r0, #3
	mov	r3, #912
	mov	r2, #100663296
	mov	lr, pc
	bx	r4
	mov	r1, r5
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L70+12
	mov	lr, pc
	bx	r4
	mov	r1, r6
	mov	r3, #912
	mov	r0, #3
	ldr	r2, .L70+16
	mov	lr, pc
	bx	r4
	mov	r1, r5
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L70+20
	mov	lr, pc
	bx	r4
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L70+24
	mov	r3, #256
	mov	lr, pc
	bx	r4
	ldr	r3, .L70+28
	mov	lr, pc
	bx	r3
	ldr	r3, .L70+32
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L70+36
	mov	lr, pc
	bx	r4
	mov	r2, #3
	ldr	r3, .L70+40
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L71:
	.align	2
.L70:
	.word	winTiles
	.word	winMap
	.word	DMANow
	.word	100720640
	.word	100679680
	.word	100724736
	.word	winPal
	.word	hideSprites
	.word	waitForVBlank
	.word	shadowOAM
	.word	state
	.size	goToWin, .-goToWin
	.align	2
	.global	win
	.syntax unified
	.arm
	.fpu softvfp
	.type	win, %function
win:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L74
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	b	win.part.0
.L75:
	.align	2
.L74:
	.word	oldButtons
	.size	win, .-win
	.align	2
	.global	goToLose
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToLose, %function
goToLose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #67108864
	mov	r2, #0
	push	{r4, r5, r6, lr}
	ldr	r6, .L78
	ldr	r5, .L78+4
	ldr	r4, .L78+8
	strh	r2, [r3, #16]	@ movhi
	mov	r1, r6
	strh	r2, [r3, #20]	@ movhi
	mov	r0, #3
	mov	r3, #1088
	mov	r2, #100663296
	mov	lr, pc
	bx	r4
	mov	r1, r5
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L78+12
	mov	lr, pc
	bx	r4
	mov	r1, r6
	mov	r3, #1088
	mov	r0, #3
	ldr	r2, .L78+16
	mov	lr, pc
	bx	r4
	mov	r1, r5
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L78+20
	mov	lr, pc
	bx	r4
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L78+24
	mov	r3, #256
	mov	lr, pc
	bx	r4
	ldr	r3, .L78+28
	mov	lr, pc
	bx	r3
	ldr	r3, .L78+32
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L78+36
	mov	lr, pc
	bx	r4
	mov	r2, #4
	ldr	r3, .L78+40
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L79:
	.align	2
.L78:
	.word	loseTiles
	.word	loseMap
	.word	DMANow
	.word	100720640
	.word	100679680
	.word	100724736
	.word	losePal
	.word	hideSprites
	.word	waitForVBlank
	.word	shadowOAM
	.word	state
	.size	goToLose, .-goToLose
	.align	2
	.global	game
	.syntax unified
	.arm
	.fpu softvfp
	.type	game, %function
game:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L97
	mov	lr, pc
	bx	r3
	ldr	r3, .L97+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L97+8
	mov	lr, pc
	bx	r3
	ldr	r4, .L97+12
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L97+16
	mov	lr, pc
	bx	r4
	ldr	r3, .L97+20
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L81
	ldr	r2, .L97+24
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L94
.L81:
	tst	r3, #4
	beq	.L82
	ldr	r2, .L97+24
	ldrh	r2, [r2]
	ands	r4, r2, #4
	beq	.L95
.L82:
	tst	r3, #64
	beq	.L80
	ldr	r3, .L97+24
	ldrh	r2, [r3]
	ands	r4, r2, #64
	beq	.L96
.L80:
	pop	{r4, lr}
	bx	lr
.L94:
	ldr	r3, .L97+28
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToPause
.L95:
	ldr	r3, .L97+32
	mov	lr, pc
	bx	r3
	mov	r2, r4
	ldr	r1, .L97+36
	ldr	r0, .L97+40
	ldr	r3, .L97+44
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToWin
.L96:
	ldr	r3, .L97+32
	mov	lr, pc
	bx	r3
	mov	r2, r4
	ldr	r1, .L97+48
	ldr	r0, .L97+52
	ldr	r3, .L97+44
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToLose
.L98:
	.align	2
.L97:
	.word	updateGame
	.word	drawGame
	.word	waitForVBlank
	.word	DMANow
	.word	shadowOAM
	.word	oldButtons
	.word	buttons
	.word	pauseSound
	.word	stopSound
	.word	38896
	.word	winSong
	.word	playSoundA
	.word	64298
	.word	loseSong
	.size	game, .-game
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu softvfp
	.type	main, %function
main:
	@ Function supports interworking.
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r7, fp, lr}
	ldr	r6, .L114
	ldr	fp, .L114+4
	ldr	r3, .L114+8
	mov	lr, pc
	bx	r3
	ldr	r5, .L114+12
	ldr	r2, [r6]
	ldrh	r0, [fp]
	ldr	r10, .L114+16
	ldr	r9, .L114+20
	ldr	r8, .L114+24
	ldr	r7, .L114+28
	ldr	r4, .L114+32
.L101:
	strh	r0, [r5]	@ movhi
	ldrh	r3, [r4, #48]
	strh	r3, [fp]	@ movhi
	cmp	r2, #5
	ldrls	pc, [pc, r2, asl #2]
	b	.L110
.L103:
	.word	.L108
	.word	.L107
	.word	.L106
	.word	.L105
	.word	.L104
	.word	.L102
.L102:
	mov	lr, pc
	bx	r9
	ldr	r2, [r6]
	ldrh	r0, [fp]
	b	.L101
.L104:
	tst	r0, #8
	beq	.L110
	ldr	r3, .L114+36
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
	ldrh	r0, [fp]
	b	.L101
.L105:
	tst	r0, #8
	beq	.L110
	ldr	r3, .L114+40
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
	ldrh	r0, [fp]
	b	.L101
.L106:
	mov	lr, pc
	bx	r7
	ldr	r2, [r6]
	ldrh	r0, [fp]
	b	.L101
.L107:
	mov	lr, pc
	bx	r8
	ldr	r2, [r6]
	ldrh	r0, [fp]
	b	.L101
.L108:
	mov	lr, pc
	bx	r10
	ldr	r2, [r6]
	ldrh	r0, [fp]
	b	.L101
.L110:
	mov	r0, r3
	b	.L101
.L115:
	.align	2
.L114:
	.word	state
	.word	buttons
	.word	initialize
	.word	oldButtons
	.word	start
	.word	instructions
	.word	game
	.word	pause
	.word	67109120
	.word	lose.part.0
	.word	win.part.0
	.size	main, .-main
	.text
	.align	2
	.global	lose
	.syntax unified
	.arm
	.fpu softvfp
	.type	lose, %function
lose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	win
	.size	lose, .-lose
	.comm	hOff,4,4
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.comm	state,4,4
	.comm	soundB,32,4
	.comm	soundA,32,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
