    .global my_strlen
    .text

my_strlen:
    xor %rax, %rax
    xor %rcx, %rcx
    not %rcx
    mov %rdi, %rsi
    cld
    repnz scasb
    not %rcx
    dec %rcx
    mov %rcx, %rax
    ret