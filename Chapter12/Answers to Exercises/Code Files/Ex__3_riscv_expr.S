# Ex__3_riscv_expr.S: Answer to Ch 12 Ex 3.

.section .text
.global main

main:
    # Reserve stack space and save the return address
    addi    sp, sp, -8
    sd      ra, 0(sp)

    # Compute [(129 – 66) * (445 + 136)] / 3
    li      a0, 129
    addi    a0, a0, -66
    li      a1, 445
    addi    a1, a1, 136
    mul     a0, a1, a0
    li      a1, 3
    divu    a0, a0, a1

    # Convert the upper byte of the result
    sw      a0, 8(sp)
    srl     a0, a0, 8
    li      a1, 0         # offset into bytes
    jal     ra, convert_byte

    # Convert the lower byte of the result
    lw      a0, 8(sp)
    li      a1, 2         # offset into bytes
    jal     ra, convert_byte

    # Print the message
    la      a0, msg1
    jal     ra, puts

    # Restore the return address and sp
    ld      ra, 0(sp)
    addi    sp, sp, 8

    # Set the exit code to zero and return to caller
    li      a0, 0
    ret

# Convert the low 4 bits of a0 to an ASCII character in a0
nibble2ascii:
    and     a0, a0, 0xF
    sltu    t0, a0, 10
    bne     t0, zero, lt10

    add     a0, a0, ('A' - 10)
    j       done

lt10:
    add     a0, a0, '0'

done:
    ret

# Convert a byte to ASCII hex
convert_byte:
    # Reserve stack space and save the return address
    addi    sp, sp, -8
    sd      ra, 0(sp)

    addi    t1, a0, 0
    srl     a0, t1, 4
    jal     ra, nibble2ascii
    la      t3, bytes
    add     t3, t3, a1         # offset into bytes
    sb      a0, 0(t3)

    addi    a0, t1, 0
    jal     nibble2ascii
    sb      a0, 1(t3)

    ld      ra, 0(sp)
    addi    sp, sp, 8
    ret

    .section .data
msg1:
    .ascii  "[(129 - 66) * (445 + 136)] / 3 = "

bytes:
    .asciz  "????h"
