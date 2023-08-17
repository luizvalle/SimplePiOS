.section .init
.global _start
_start:
	ldr r0, =0x20200000 // Base address of GPIO pins

	// Enable output to the 16th I/O pin
 	mov r1, #1
 	lsl r1, r1, #18 
 	str r1, [r0, #4]
 
 	// Turn on the LED
 	mov r1, #1
 	lsl r1, r1, #16
 	str r1, [r0, #40]
 
 	// Loop forever
	loop:
		b loop

