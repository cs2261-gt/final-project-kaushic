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
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L4+24
	mov	lr, pc
	bx	r4
	ldr	r3, .L4+28
	mov	lr, pc
	bx	r3
	ldr	r3, .L4+32
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
	.word	waitForVBlank
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
	@ link register save eliminated.
	mov	r3, #67108864
	mov	r1, #7168
	mov	r0, #768
	ldr	r2, .L7
	strh	r1, [r3, #10]	@ movhi
	strh	r2, [r3, #8]	@ movhi
	ldr	r1, .L7+4
	ldr	r2, .L7+8
	ldrh	r1, [r1, #48]
	strh	r0, [r3]	@ movhi
	strh	r1, [r2]	@ movhi
	b	goToStart
.L8:
	.align	2
.L7:
	.word	24068
	.word	67109120
	.word	buttons
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
	ldr	r3, .L11
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	b	goToStart
.L12:
	.align	2
.L11:
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
	ldr	r6, .L15
	ldr	r5, .L15+4
	ldr	r4, .L15+8
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
	ldr	r2, .L15+12
	mov	lr, pc
	bx	r4
	mov	r1, r6
	mov	r3, #3024
	mov	r0, #3
	ldr	r2, .L15+16
	mov	lr, pc
	bx	r4
	mov	r1, r5
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L15+20
	mov	lr, pc
	bx	r4
	mov	r2, #83886080
	mov	r3, #256
	mov	r0, #3
	ldr	r1, .L15+24
	mov	lr, pc
	bx	r4
	ldr	r3, .L15+28
	mov	lr, pc
	bx	r3
	mov	r2, #5
	ldr	r3, .L15+32
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L16:
	.align	2
.L15:
	.word	instructionsTiles
	.word	instructionsMap
	.word	DMANow
	.word	100720640
	.word	100679680
	.word	100724736
	.word	instructionsPal
	.word	waitForVBlank
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
	ldr	r4, .L19
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L19+4
	mov	lr, pc
	bx	r4
	mov	r3, #1856
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L19+8
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L19+12
	ldr	r1, .L19+16
	mov	lr, pc
	bx	r4
	mov	r3, #224
	mov	r0, #3
	ldr	r2, .L19+20
	ldr	r1, .L19+24
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L19+28
	ldr	r1, .L19+32
	mov	lr, pc
	bx	r4
	mov	r0, #0
	mov	r2, #1
	ldr	r1, .L19+36
	ldr	r3, .L19+40
	str	r0, [r1]
	str	r2, [r3]
	pop	{r4, lr}
	bx	lr
.L20:
	.align	2
.L19:
	.word	DMANow
	.word	skyPal
	.word	skyTiles
	.word	100720640
	.word	skyMap
	.word	100679680
	.word	cityTiles
	.word	100724736
	.word	cityMap
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
	ldr	r4, .L33
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L22
	ldr	r2, .L33+4
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L31
.L22:
	tst	r3, #4
	beq	.L21
	ldr	r3, .L33+4
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L32
.L21:
	pop	{r4, lr}
	bx	lr
.L32:
	pop	{r4, lr}
	b	goToInstructions
.L31:
	bl	goToGame
	ldrh	r3, [r4]
	b	.L22
.L34:
	.align	2
.L33:
	.word	oldButtons
	.word	buttons
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
	@ link register save eliminated.
	ldr	r3, .L45
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L36
	ldr	r2, .L45+4
	ldrh	r2, [r2]
	tst	r2, #4
	beq	.L44
.L36:
	tst	r3, #8
	bxeq	lr
	ldr	r3, .L45+4
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	b	goToGame
.L44:
	b	goToStart
.L46:
	.align	2
.L45:
	.word	oldButtons
	.word	buttons
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
	ldr	r6, .L49
	ldr	r5, .L49+4
	ldr	r4, .L49+8
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
	ldr	r2, .L49+12
	mov	lr, pc
	bx	r4
	mov	r1, r6
	mov	r3, #864
	mov	r0, #3
	ldr	r2, .L49+16
	mov	lr, pc
	bx	r4
	mov	r1, r5
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L49+20
	mov	lr, pc
	bx	r4
	mov	r2, #83886080
	mov	r3, #256
	mov	r0, #3
	ldr	r1, .L49+24
	mov	lr, pc
	bx	r4
	ldr	r3, .L49+28
	mov	lr, pc
	bx	r3
	mov	r2, #2
	ldr	r3, .L49+32
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L50:
	.align	2
.L49:
	.word	pausedTiles
	.word	pausedMap
	.word	DMANow
	.word	100720640
	.word	100679680
	.word	100724736
	.word	pausedPal
	.word	waitForVBlank
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
	@ link register save eliminated.
	b	instructions
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
	ldr	r6, .L54
	ldr	r5, .L54+4
	ldr	r4, .L54+8
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
	ldr	r2, .L54+12
	mov	lr, pc
	bx	r4
	mov	r1, r6
	mov	r3, #912
	mov	r0, #3
	ldr	r2, .L54+16
	mov	lr, pc
	bx	r4
	mov	r1, r5
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L54+20
	mov	lr, pc
	bx	r4
	mov	r2, #83886080
	mov	r3, #256
	mov	r0, #3
	ldr	r1, .L54+24
	mov	lr, pc
	bx	r4
	ldr	r3, .L54+28
	mov	lr, pc
	bx	r3
	mov	r2, #3
	ldr	r3, .L54+32
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L55:
	.align	2
.L54:
	.word	winTiles
	.word	winMap
	.word	DMANow
	.word	100720640
	.word	100679680
	.word	100724736
	.word	winPal
	.word	waitForVBlank
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
	ldr	r3, .L58
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	b	win.part.0
.L59:
	.align	2
.L58:
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
	ldr	r6, .L62
	ldr	r5, .L62+4
	ldr	r4, .L62+8
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
	ldr	r2, .L62+12
	mov	lr, pc
	bx	r4
	mov	r1, r6
	mov	r3, #1088
	mov	r0, #3
	ldr	r2, .L62+16
	mov	lr, pc
	bx	r4
	mov	r1, r5
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L62+20
	mov	lr, pc
	bx	r4
	mov	r2, #83886080
	mov	r3, #256
	mov	r0, #3
	ldr	r1, .L62+24
	mov	lr, pc
	bx	r4
	ldr	r3, .L62+28
	mov	lr, pc
	bx	r3
	mov	r2, #4
	ldr	r3, .L62+32
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L63:
	.align	2
.L62:
	.word	loseTiles
	.word	loseMap
	.word	DMANow
	.word	100720640
	.word	100679680
	.word	100724736
	.word	losePal
	.word	waitForVBlank
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
	ldr	r3, .L81
	mov	lr, pc
	bx	r3
	ldr	r3, .L81+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L81+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L81+12
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L65
	ldr	r2, .L81+16
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L78
.L65:
	tst	r3, #1
	beq	.L66
	ldr	r2, .L81+16
	ldrh	r2, [r2]
	tst	r2, #1
	beq	.L79
.L66:
	tst	r3, #2
	beq	.L64
	ldr	r3, .L81+16
	ldrh	r3, [r3]
	tst	r3, #2
	beq	.L80
.L64:
	pop	{r4, lr}
	bx	lr
.L78:
	pop	{r4, lr}
	b	goToPause
.L79:
	pop	{r4, lr}
	b	goToWin
.L80:
	pop	{r4, lr}
	b	goToLose
.L82:
	.align	2
.L81:
	.word	updateGame
	.word	waitForVBlank
	.word	drawGame
	.word	oldButtons
	.word	buttons
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
	mov	r3, #67108864
	mov	r1, #7168
	mov	r0, #768
	ldr	r2, .L97
	push	{r4, r7, fp, lr}
	strh	r1, [r3, #10]	@ movhi
	ldr	r4, .L97+4
	strh	r2, [r3, #8]	@ movhi
	ldr	r10, .L97+8
	ldrh	r2, [r4, #48]
	ldr	r6, .L97+12
	strh	r0, [r3]	@ movhi
	ldr	r3, .L97+16
	strh	r2, [r10]	@ movhi
	ldr	r5, .L97+20
	mov	lr, pc
	bx	r3
	ldr	r9, .L97+24
	ldrh	r0, [r10]
	ldr	r2, [r6]
	ldr	r7, .L97+28
	ldr	r8, .L97+32
	ldr	fp, .L97+36
.L85:
	strh	r0, [r5]	@ movhi
	ldrh	r3, [r4, #48]
	strh	r3, [r10]	@ movhi
	cmp	r2, #5
	ldrls	pc, [pc, r2, asl #2]
	b	.L93
.L87:
	.word	.L91
	.word	.L90
	.word	.L86
	.word	.L89
	.word	.L88
	.word	.L86
.L86:
	mov	lr, pc
	bx	r7
	ldr	r2, [r6]
	ldrh	r0, [r10]
	b	.L85
.L90:
	mov	lr, pc
	bx	r8
	ldr	r2, [r6]
	ldrh	r0, [r10]
	b	.L85
.L91:
	mov	lr, pc
	bx	r9
	ldr	r2, [r6]
	ldrh	r0, [r10]
	b	.L85
.L88:
	tst	r0, #8
	beq	.L93
	ldr	r3, .L97+40
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
	ldrh	r0, [r10]
	b	.L85
.L89:
	tst	r0, #8
	beq	.L93
	mov	lr, pc
	bx	fp
	ldr	r2, [r6]
	ldrh	r0, [r10]
	b	.L85
.L93:
	mov	r0, r3
	b	.L85
.L98:
	.align	2
.L97:
	.word	24068
	.word	67109120
	.word	buttons
	.word	state
	.word	goToStart
	.word	oldButtons
	.word	start
	.word	instructions
	.word	game
	.word	win.part.0
	.word	lose.part.0
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
	.ident	"GCC: (devkitARM release 53) 9.1.0"
