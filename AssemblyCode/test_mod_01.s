.text
.global _start

_start:

	MOVL x, %eax
	MOVL $4, %ebx
	IDIVL %ebx
	MOVL %edx, temp0
	/* Clear out EAX and EBX registers */
	XORL %eax, %eax
	XORL %ebx, %ebx

	MOVL temp0, %eax
	MOVL %eax, x
exit:
	mov $1, %eax
	mov $1, %ebx
	int $0x80


.data
x:	.int 2
temp0:	.int 0

__minus:  .byte '-'
__negOne: .int -1
__negFlag: .byte '+'
