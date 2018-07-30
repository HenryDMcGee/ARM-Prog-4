//Henry McGee
//CPSC 2310 Section 1
//Assignment 3
//Due July 20
//Description: shows steps for 8-bit by 8-bit multiplication.
//Includes helper functions from helperfunction.cpp, so remember to
//compile with program.cpp and helperfunction.cpp
//r0 - address of input string
//r1 - address of output string
//r2 - address of key
//r3 - encode/decode switch
//r3 == 0 means encode
//r3 == 1 means decode       
	 .global main
main:
        push {lr}
	ldr r0, =inputstr
	bl printf

	ldr r0, =key
	bl printf

	ldr r5, =inputstr
	ldr r2, =key
	ldr r8, =temp
	
	ldr r8, [r8] //r8 = `

	ldr r0, [r5, #21]
	mov r6, r0   //r6 = inputstr first value

	ldr r0, [r2, #21]
	mov r7, r0	//r7 = key first value
	
	sub r6, r6, r8
	sub r7, r7, r8
	
	add r1, r6, r7
	add r1, r8, r1

	
	ldr r0, =testing
	bl printf
	//ldr r1, =temp
	//mov r2, #10
	//bl itoa

//	ldr r5, [r2]
//	add r1, r4, r5
//	bl printf 
  pop {pc}

  inputstr:
     .ascii "message:             this is a test of the encoding algorithm%c\012\000"
  key: 
     .ascii "key:                 a sample key\012\000"
  temp:
    .ascii "`\012\000"

  testing:
    .ascii "%c\012\000"
