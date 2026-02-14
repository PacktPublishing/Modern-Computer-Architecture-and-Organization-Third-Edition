# hello_riscv.S

.section .text
.global main

main:
    # Reserve stack space and save the return address
    addi    sp, sp, -16
    sd      ra, 0(sp)

    # Print the message using the C library puts function
    la      a0, message
    call    puts

    # Restore the return address and stack pointer
    ld      ra, 0(sp)
    addi    sp, sp, 16
	
    # Set the return value to zero and return to caller
    li      a0, 0
    ret

.section .rodata
message:
    .asciz "Hello, Computer Architect!"
