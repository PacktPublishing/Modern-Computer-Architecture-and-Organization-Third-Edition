// hello_arm64.S

.cpu cortex-a53
.text
.global main

main:
    // Print the message to stdout with syscall 64
    mov     x0, #1
    adr     x1, message
    ldr     x2, =message_len
    mov     x8, #64
    svc     0

    // Return from main with exit status 0
    mov     x0, #0      // return value = 0 (success)
    ret                 // return to caller
    
message:
    .ascii      "Hello, Computer Architect!\n"
message_len = . - message
