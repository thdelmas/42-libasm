	global		ft_strcmp
	section		.text

_loop:
	inc	rdi
	inc	rsi
	
ft_strcmp:
	mov	al, byte [rdi]
	mov	bl, byte [rsi]
	cmp	al, 0
	je	_another_end
	cmp	bl, 0
	je	_end
	cmp	al, bl
	je	_loop
	cmp	al, bl
	jl	_another_end
_end:
	sub	al, bl
	movzx	rax, al
	ret
_another_end:
	push	rbx
	movzx	rax, al
	movzx	rbx, bl
	sub	rax, rbx
	pop	rbx
	ret
