    .global my_strncpy
    .text

my_strncpy:
    mov %rdx, %rcx
    cld
    rep movsb
    sub %rdx, %rdi
    mov %rdi, %rax
    ret
