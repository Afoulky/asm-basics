    .global my_strcpy
    .text

my_strcpy:
    mov %rdi, %r14
    mov %rsi, %r13
    xor %r15, %r15

.loop:
    cmpb $0, (%r13)
    je  .exit
    movb (%r13), %r15b
    add $1, %r14
    add $1, %r13
    jmp loop

.exit:
    add $0, %r14
    mov %rdi, %rax
    ret