// hello_arm.S

.cpu cortex-a7
.text
.global main

main:
    // sys_write(int fd, const void *buf, size_t count)
    mov     r0, #1          // fd = 1 (stdout)
    adr     r1, message     // buf = address of the message
    adr     r2, message_len // Address of message_len
    ldr     r2, [r2]        // Load the message_len value
    mov     r7, #4          // syscall 4 is sys_write
    svc     0               // Perform the system call
    
    // Return from main with exit status 0
    mov     r0, #0          // return value = 0 (success)
    bx      lr              // return to caller

message:
    .ascii "Hello, Computer Architect!\n"
message_len:
    .word . - message       // Store the message length
