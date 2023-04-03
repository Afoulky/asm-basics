    .global my_strchr
    .text

my_strchr:
    mov %rdi, %r14
    mov %rsi, %r13

.loop:
    cmpb %r13b, (%r14)
    je .exit
    add $1, %r14
    jmp .loop

.exit:
    mov %r14, %rax
    ret