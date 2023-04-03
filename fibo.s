    .global fibo
    .text

fibo:
	xor %rax,%rax
	mov %rdi,%r10
	cmp $0,%r10
	je .exit
	cmp $1,%r10
	je .end1
	mov $1,%r9
	mov $0,%r8	
.loop:
	mov %r9,%r11
	add %r8,%r9
	mov %r11,%r8
	dec %r10
	cmp $1,%r10
	jne .loop
	mov %r9,%rax
	ret

.end1:
	mov $1,%rax
	ret

.exit:
	ret
