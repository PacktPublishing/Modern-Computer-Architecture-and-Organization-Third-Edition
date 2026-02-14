// Ex__6_expr_arm.S: Answer to Ch 11 Ex 6.

.cpu cortex-a7
.text
.global main

main:
	push    {lr}
    // Print the leading output string
    adr     r1, msg1
    ldr     r2, =msg1_len
    bl      print_string

    // Compute [(129 - 66) * (445 + 136)] / 3
    mov     r0, #129
    sub     r0, r0, #66
    ldr     r1, =445
    add     r1, r1, #136
    mul     r0, r1, r0
    mov     r1, #3
    udiv    r0, r0, r1

    // Print the upper byte of the result
    push    {r0}
    lsr     r0, r0, #8
    bl      print_byte

    // Print the lower byte of the result    
    pop     {r0}
    bl      print_byte
    
    // Print the trailng output string
    adr     r1, msg2
    ldr     r2, =msg2_len
    bl      print_string
    
    // Return from main with exit status 0
    mov     r0, #0          // return value = 0 (success)
	pop     {lr}
    bx      lr              // return to caller

// Print a string; r1=string address, r2=string length
print_string:
    mov     r0, #1
    mov     r7, #4
    svc     0
    bx      lr

// Convert the low 4 bits of r0 to an ascii character in r0
nibble2ascii:
    and     r0, #0xF
    cmp     r0, #10
    addpl   r0, r0, #('A' - 10)
    addmi   r0, r0, #'0'
    bx      lr

// Print a byte in hex    
print_byte:
    push    {lr}
    push    {r0}
    lsr     r0, r0, #4
    bl      nibble2ascii

	adr     r1, byte_addr   // r1 = address of byte_addr
	ldr     r2, byte_addr   // r2 = (byte - byte_addr)
	add     r1, r1, r2      // r1 = address of byte
    strb    r0, [r1], #1

    pop     {r0}
    bl      nibble2ascii
    strb    r0, [r1]

	adr     r1, byte_addr   // r1 = address of byte_addr
	ldr     r2, byte_addr   // r2 = (byte - byte_addr)
	add     r1, r1, r2      // r1 = address of byte

    ldr     r2, =byte_len
    bl      print_string
    
    pop     {lr}
    bx      lr
        
msg1:
    .ascii  "[(129 - 66) * (445 + 136)] / 3 = "
msg1_len = . - msg1

msg2:
    .ascii  "h\n"
msg2_len = . - msg2

byte_addr:                  // Relative to current address
	.word   byte - byte_addr

.data
byte:
    .ascii  "??"
byte_len = . - byte
