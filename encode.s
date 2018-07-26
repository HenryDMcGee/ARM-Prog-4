//Henry McGee
//CPSC 2310 Section 1
//Assignment 3
//Due July 20
//Description: shows steps for 8-bit by 8-bit multiplication.
//Includes helper functions from helperfunction.cpp, so remember to
//compile with program.cpp and helperfunction.cpp
//r0 - address of input string
//r1 - address of output string
//r3 - encode/decode switch
//r3 == 0 means encode
//r3 == 1 means decode       
	 .global main
main:
        push {lr}
	ldr r0, =inputstr
	ldr r1, [r0, #2]
	bl printf 
  pop {pc}

  inputstr:
     .ascii "this is a test of the encoding algorithm%c\012\000"

