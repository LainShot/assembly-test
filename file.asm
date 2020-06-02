	.file	"cob23865_0.c"
	.text
	.local	cob_module_path
	.comm	cob_module_path,8,8
	.local	cob_call_params
	.comm	cob_call_params,4,4
	.section	.rodata
	.align 16
	.type	a_1, @object
	.size	a_1, 16
a_1:
	.value	33
	.value	0
	.value	0
	.value	4096
	.quad	0
.LC0:
	.string	"Hello, new world!"
	.section	.data.rel.ro.local,"aw"
	.align 16
	.type	c_1, @object
	.size	c_1, 24
c_1:
	.quad	17
	.quad	.LC0
	.quad	a_1
	.section	.rodata
.LC1:
	.string	""
.LC2:
	.string	"hello.cob"
	.section	.data.rel.local,"aw"
	.align 16
	.type	st_source_files, @object
	.size	st_source_files, 16
st_source_files:
	.quad	.LC1
	.quad	.LC2
	.text
	.globl	hellonew
	.type	hellonew, @function
hellonew:
.LFB26:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$0, %edi
	call	hellonew_
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	hellonew, .-hellonew
	.section	.rodata
.LC3:
	.string	"3.0-rc1"
.LC4:
	.string	"hellonew"
.LC5:
	.string	"Jun 02 2020 16:53:12"
	.text
	.type	hellonew_, @function
hellonew_:
.LFB27:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$4096, %rsp
	orq	$0, (%rsp)
	subq	$48, %rsp
	movl	%edi, -4132(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	-4132(%rbp), %eax
	shrl	$31, %eax
	movzbl	%al, %eax
	testq	%rax, %rax
	je	.L4
	cmpl	$-10, -4132(%rbp)
	je	.L23
	cmpl	$-20, -4132(%rbp)
	jne	.L24
	jmp	.L8
.L4:
	movl	-4132(%rbp), %edx
	leaq	-4120(%rbp), %rax
	movl	$0, %r8d
	movl	%edx, %ecx
	movl	$0, %edx
	movq	%rax, %rsi
	leaq	module.7331(%rip), %rdi
	call	cob_module_global_enter@PLT
	testl	%eax, %eax
	je	.L10
	movl	$-1, %eax
	jmp	.L19
.L10:
	movq	module.7331(%rip), %rax
	leaq	-4104(%rbp), %rdx
	movq	%rdx, 8(%rax)
	leaq	-4096(%rbp), %rax
	movq	%rax, -4112(%rbp)
	movq	-4112(%rbp), %rax
	movl	$0, 8(%rax)
	movq	-4112(%rbp), %rax
	leaq	.L12(%rip), %rdx
	movq	%rdx, (%rax)
	movl	initialized.7330(%rip), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L25
	nop
.L13:
	movq	module.7331(%rip), %rax
	movl	96(%rax), %edx
	addl	$1, %edx
	movl	%edx, 96(%rax)
	nop
.L15:
	endbr64
	leaq	c_1(%rip), %rcx
	movl	$1, %edx
	movl	$1, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	cob_display@PLT
	nop
.L16:
	endbr64
	movq	module.7331(%rip), %rax
	movl	96(%rax), %eax
	testl	%eax, %eax
	je	.L12
	movq	module.7331(%rip), %rax
	movl	96(%rax), %edx
	subl	$1, %edx
	movl	%edx, 96(%rax)
.L12:
	endbr64
	movq	module.7331(%rip), %rax
	movq	%rax, %rdi
	call	cob_module_leave@PLT
	movl	b_2.7336(%rip), %eax
	jmp	.L19
.L25:
	nop
.L14:
	endbr64
	movl	$0, %edx
	leaq	.LC3(%rip), %rsi
	leaq	.LC2(%rip), %rdi
	call	cob_check_version@PLT
	movq	module.7331(%rip), %rax
	leaq	.LC4(%rip), %rdx
	movq	%rdx, 16(%rax)
	movq	module.7331(%rip), %rax
	leaq	.LC5(%rip), %rdx
	movq	%rdx, 24(%rax)
	movq	module.7331(%rip), %rax
	leaq	.LC2(%rip), %rdx
	movq	%rdx, 32(%rax)
	movq	module.7331(%rip), %rax
	movq	hellonew@GOTPCREL(%rip), %rdx
	movq	%rdx, 40(%rax)
	movq	module.7331(%rip), %rax
	leaq	hellonew_(%rip), %rdx
	movq	%rdx, 48(%rax)
	movq	module.7331(%rip), %rax
	movq	$0, 56(%rax)
	movq	module.7331(%rip), %rax
	movq	$0, 64(%rax)
	movq	module.7331(%rip), %rax
	movq	$0, 72(%rax)
	movq	module.7331(%rip), %rax
	movq	$0, 80(%rax)
	movq	module.7331(%rip), %rax
	leaq	cob_module_path(%rip), %rdx
	movq	%rdx, 88(%rax)
	movq	module.7331(%rip), %rax
	movl	$0, 96(%rax)
	movq	module.7331(%rip), %rax
	movl	$20200602, 100(%rax)
	movq	module.7331(%rip), %rax
	movl	$165312, 104(%rax)
	movq	module.7331(%rip), %rax
	movl	$0, 108(%rax)
	movq	module.7331(%rip), %rax
	movl	$0, 112(%rax)
	movq	module.7331(%rip), %rax
	movb	$0, 124(%rax)
	movq	module.7331(%rip), %rax
	movb	$46, 125(%rax)
	movq	module.7331(%rip), %rax
	movb	$36, 126(%rax)
	movq	module.7331(%rip), %rax
	movb	$44, 127(%rax)
	movq	module.7331(%rip), %rax
	movb	$1, 128(%rax)
	movq	module.7331(%rip), %rax
	movb	$1, 129(%rax)
	movq	module.7331(%rip), %rax
	movb	$1, 130(%rax)
	movq	module.7331(%rip), %rax
	movb	$0, 131(%rax)
	movq	module.7331(%rip), %rax
	movb	$0, 132(%rax)
	movq	module.7331(%rip), %rax
	movb	$0, 133(%rax)
	movq	module.7331(%rip), %rax
	movb	$0, 134(%rax)
	movq	module.7331(%rip), %rax
	movb	$0, 135(%rax)
	movq	module.7331(%rip), %rax
	movb	$0, 138(%rax)
	movq	module.7331(%rip), %rax
	movb	$0, 137(%rax)
	movq	module.7331(%rip), %rax
	movl	$0, 140(%rax)
	movq	module.7331(%rip), %rax
	leaq	st_source_files(%rip), %rdx
	movq	%rdx, 144(%rax)
	movq	module.7331(%rip), %rax
	movq	%rax, %rdi
	call	cob_set_cancel@PLT
	movl	$0, b_2.7336(%rip)
	movl	$1, initialized.7330(%rip)
	jmp	.L13
.L23:
	nop
.L6:
	endbr64
	movl	$0, %eax
	jmp	.L19
.L24:
	nop
.L9:
	endbr64
	movl	initialized.7330(%rip), %eax
	testl	%eax, %eax
	jne	.L17
	movl	$0, %eax
	jmp	.L19
.L17:
	movq	module.7331(%rip), %rax
	movl	96(%rax), %eax
	testl	%eax, %eax
	je	.L18
	movl	$1, %edi
	call	cob_fatal_error@PLT
.L18:
	movl	$0, b_2.7336(%rip)
	leaq	module.7331(%rip), %rdi
	call	cob_module_free@PLT
	movl	$0, initialized.7330(%rip)
.L8:
	movl	$0, %eax
.L19:
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L20
	call	__stack_chk_fail@PLT
.L20:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE27:
	.size	hellonew_, .-hellonew_
	.local	module.7331
	.comm	module.7331,8,8
	.local	initialized.7330
	.comm	initialized.7330,4,4
	.local	b_2.7336
	.comm	b_2.7336,4,4
	.ident	"GCC: (Ubuntu 9.2.1-9ubuntu2) 9.2.1 20191008"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	 1f - 0f
	.long	 4f - 1f
	.long	 5
0:
	.string	 "GNU"
1:
	.align 8
	.long	 0xc0000002
	.long	 3f - 2f
2:
	.long	 0x3
3:
	.align 8
4:
