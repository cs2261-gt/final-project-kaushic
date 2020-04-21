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
	mov	r3, #2192
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
	mov	r3, #2192
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
	.type	win2.part.0, %function
win2.part.0:
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
	.size	win2.part.0, .-win2.part.0
	.set	lose.part.0,win2.part.0
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
	mov	r2, #67108864
	mov	r1, #0
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r7, .L16
	ldr	r6, .L16+4
	ldr	r5, .L16+8
	ldr	r4, .L16+12
	strh	r1, [r2, #16]	@ movhi
	mov	r3, r7
	strh	r1, [r2, #20]	@ movhi
	mov	r0, #3
	mov	r1, r6
	mov	r2, #100663296
	mov	lr, pc
	bx	r4
	mov	r1, r5
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L16+16
	mov	lr, pc
	bx	r4
	mov	r3, r7
	mov	r1, r6
	mov	r0, #3
	ldr	r2, .L16+20
	mov	lr, pc
	bx	r4
	mov	r1, r5
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L16+24
	mov	lr, pc
	bx	r4
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L16+28
	mov	r3, #256
	mov	lr, pc
	bx	r4
	ldr	r3, .L16+32
	mov	lr, pc
	bx	r3
	ldr	r3, .L16+36
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L16+40
	mov	lr, pc
	bx	r4
	mov	r2, #6
	ldr	r3, .L16+44
	pop	{r4, r5, r6, r7, r8, lr}
	str	r2, [r3]
	bx	lr
.L17:
	.align	2
.L16:
	.word	4400
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
	push	{r4, lr}
	ldr	r3, .L66
	mov	lr, pc
	bx	r3
	ldr	r4, .L66+4
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L66+8
	mov	lr, pc
	bx	r4
	ldr	r3, .L66+12
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L55
	ldr	r2, .L66+16
	ldrh	r2, [r2]
	tst	r2, #4
	beq	.L64
.L55:
	tst	r3, #8
	beq	.L54
	ldr	r3, .L66+16
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L65
.L54:
	pop	{r4, lr}
	bx	lr
.L64:
	ldr	r3, .L66+20
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToStart
.L65:
	ldr	r3, .L66+24
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToGame
.L67:
	.align	2
.L66:
	.word	waitForVBlank
	.word	DMANow
	.word	shadowOAM
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
	mov	r3, #3680
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
	mov	r3, #3680
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
	.word	winBkgdTiles
	.word	winBkgdMap
	.word	DMANow
	.word	100720640
	.word	100679680
	.word	100724736
	.word	winBkgdPal
	.word	hideSprites
	.word	waitForVBlank
	.word	shadowOAM
	.word	state
	.size	goToWin, .-goToWin
	.align	2
	.global	goToWin2
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToWin2, %function
goToWin2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #67108864
	mov	r2, #0
	push	{r4, r5, r6, lr}
	ldr	r6, .L74
	ldr	r5, .L74+4
	ldr	r4, .L74+8
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
	ldr	r2, .L74+12
	mov	lr, pc
	bx	r4
	mov	r1, r6
	mov	r3, #912
	mov	r0, #3
	ldr	r2, .L74+16
	mov	lr, pc
	bx	r4
	mov	r1, r5
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L74+20
	mov	lr, pc
	bx	r4
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L74+24
	mov	r3, #256
	mov	lr, pc
	bx	r4
	ldr	r3, .L74+28
	mov	lr, pc
	bx	r3
	ldr	r3, .L74+32
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L74+36
	mov	lr, pc
	bx	r4
	mov	r2, #4
	ldr	r3, .L74+40
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L75:
	.align	2
.L74:
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
	.size	goToWin2, .-goToWin2
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
	push	{r4, lr}
	ldr	r3, .L80
	mov	lr, pc
	bx	r3
	ldr	r3, .L80+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L80+8
	mov	lr, pc
	bx	r3
	ldr	r4, .L80+12
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L80+16
	mov	lr, pc
	bx	r4
	ldr	r3, .L80+20
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L79
	pop	{r4, lr}
	bx	lr
.L79:
	ldr	r3, .L80+24
	mov	lr, pc
	bx	r3
	mov	r2, #0
	ldr	r1, .L80+28
	ldr	r0, .L80+32
	ldr	r3, .L80+36
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToWin2
.L81:
	.align	2
.L80:
	.word	updateIntroWin
	.word	drawIntroWin
	.word	waitForVBlank
	.word	DMANow
	.word	shadowOAM
	.word	hitDoor
	.word	stopSound
	.word	38896
	.word	winSong
	.word	playSoundA
	.size	win, .-win
	.align	2
	.global	win2
	.syntax unified
	.arm
	.fpu softvfp
	.type	win2, %function
win2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L85
	mov	lr, pc
	bx	r3
	ldr	r3, .L85+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L85+8
	mov	lr, pc
	bx	r3
	ldr	r4, .L85+12
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L85+16
	mov	lr, pc
	bx	r4
	ldr	r3, .L85+20
	ldrh	r3, [r3]
	tst	r3, #8
	popne	{r4, lr}
	bne	win2.part.0
.L82:
	pop	{r4, lr}
	bx	lr
.L86:
	.align	2
.L85:
	.word	updateWin
	.word	drawWin
	.word	waitForVBlank
	.word	DMANow
	.word	shadowOAM
	.word	oldButtons
	.size	win2, .-win2
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
	ldr	r6, .L89
	ldr	r5, .L89+4
	ldr	r4, .L89+8
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
	ldr	r2, .L89+12
	mov	lr, pc
	bx	r4
	mov	r1, r6
	mov	r3, #1088
	mov	r0, #3
	ldr	r2, .L89+16
	mov	lr, pc
	bx	r4
	mov	r1, r5
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L89+20
	mov	lr, pc
	bx	r4
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L89+24
	mov	r3, #256
	mov	lr, pc
	bx	r4
	ldr	r3, .L89+28
	mov	lr, pc
	bx	r3
	ldr	r3, .L89+32
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L89+36
	mov	lr, pc
	bx	r4
	mov	r2, #5
	ldr	r3, .L89+40
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L90:
	.align	2
.L89:
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
	ldr	r3, .L107
	mov	lr, pc
	bx	r3
	ldr	r3, .L107+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L107+8
	mov	lr, pc
	bx	r3
	ldr	r4, .L107+12
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L107+16
	mov	lr, pc
	bx	r4
	ldr	r3, .L107+20
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L92
	ldr	r2, .L107+24
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L104
.L92:
	tst	r3, #2
	beq	.L93
	ldr	r3, .L107+24
	ldrh	r3, [r3]
	ands	r3, r3, #2
	bne	.L93
	ldr	r2, .L107+28
	ldr	r1, [r2]
	cmp	r1, #0
	moveq	r3, #1
	pop	{r4, lr}
	str	r3, [r2]
	bx	lr
.L93:
	ldr	r3, .L107+32
	ldr	r3, [r3]
	cmp	r3, #5
	beq	.L105
	ldr	r3, .L107+36
	ldr	r4, [r3]
	cmp	r4, #0
	beq	.L106
	pop	{r4, lr}
	bx	lr
.L104:
	ldr	r3, .L107+40
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToPause
.L105:
	bl	goToWin
	ldr	r3, .L107+44
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L106:
	ldr	r3, .L107+48
	mov	lr, pc
	bx	r3
	mov	r2, r4
	ldr	r1, .L107+52
	ldr	r0, .L107+56
	ldr	r3, .L107+60
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToLose
.L108:
	.align	2
.L107:
	.word	updateGame
	.word	drawGame
	.word	waitForVBlank
	.word	DMANow
	.word	shadowOAM
	.word	oldButtons
	.word	buttons
	.word	cheat
	.word	boxesCollected
	.word	livesRemaining
	.word	pauseSound
	.word	initWin
	.word	stopSound
	.word	64298
	.word	loseSong
	.word	playSoundA
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
	ldr	r6, .L124
	ldr	r7, .L124+4
	ldr	r3, .L124+8
	mov	lr, pc
	bx	r3
	ldr	r5, .L124+12
	ldr	r2, [r6]
	ldrh	r0, [r7]
	ldr	fp, .L124+16
	ldr	r10, .L124+20
	ldr	r9, .L124+24
	ldr	r8, .L124+28
	ldr	r4, .L124+32
.L111:
	strh	r0, [r5]	@ movhi
	ldrh	r3, [r4, #48]
	strh	r3, [r7]	@ movhi
	cmp	r2, #6
	ldrls	pc, [pc, r2, asl #2]
	b	.L121
.L113:
	.word	.L119
	.word	.L118
	.word	.L117
	.word	.L116
	.word	.L115
	.word	.L114
	.word	.L112
.L112:
	mov	lr, pc
	bx	r10
	ldr	r2, [r6]
	ldrh	r0, [r7]
	b	.L111
.L114:
	tst	r0, #8
	beq	.L121
	ldr	r3, .L124+36
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
	ldrh	r0, [r7]
	b	.L111
.L115:
	ldr	r3, .L124+40
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
	ldrh	r0, [r7]
	b	.L111
.L116:
	ldr	r3, .L124+44
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
	ldrh	r0, [r7]
	b	.L111
.L117:
	mov	lr, pc
	bx	r8
	ldr	r2, [r6]
	ldrh	r0, [r7]
	b	.L111
.L118:
	mov	lr, pc
	bx	r9
	ldr	r2, [r6]
	ldrh	r0, [r7]
	b	.L111
.L119:
	mov	lr, pc
	bx	fp
	ldr	r2, [r6]
	ldrh	r0, [r7]
	b	.L111
.L121:
	mov	r0, r3
	b	.L111
.L125:
	.align	2
.L124:
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
	.word	win2
	.word	win
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
	ldr	r3, .L128
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	b	lose.part.0
.L129:
	.align	2
.L128:
	.word	oldButtons
	.size	lose, .-lose
	.comm	vOff,4,4
	.comm	hOff2,4,4
	.comm	hOff,4,4
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.comm	state,4,4
	.comm	soundB,32,4
	.comm	soundA,32,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
