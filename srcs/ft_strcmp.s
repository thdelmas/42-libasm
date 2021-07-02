		global		ft_strcmp

		section		.text

_end_of_loop:
		
		sub	r8, r9
		mov	rax, r8
		ret

_loop:
		mov	r8, [rdi+rdx]
		mov	r9, [rsi+rdx]
		cmp	r8, r9
		jne	_end_of_loop
		inc	rdx
		jmp	_loop

ft_strcmp:
		xor	rdx, rdx
		jmp	_loop
