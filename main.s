_g:                                     ## @g
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%eax
	movl	8(%ebp), %eax
	movl	%eax, -4(%ebp)
	movl	-4(%ebp), %eax
	addl	$3, %eax
	addl	$4, %esp
	popl	%ebp
	retl
_f:                                     ## @f
	pushl	%ebp
	movl	%esp, %ebp
	subl	$8, %esp
	movl	8(%ebp), %eax
	movl	%eax, -4(%ebp)
	movl	-4(%ebp), %eax
	movl	%eax, (%esp)
	calll	_g
	addl	$8, %esp
	popl	%ebp
	retl
_main:                                  ## @main
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	$8, %eax
	movl	$0, -4(%ebp)
	movl	$8, (%esp)
	movl	%eax, -8(%ebp)          ## 4-byte Spill
	calll	_f
	addl	$1, %eax
	addl	$24, %esp
	popl	%ebp
	retl
