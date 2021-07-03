		global		ft_strcpy
		section		.text

ft_strcpy:
		xor	rdx,rdx

_loop:
		cmp	BYTE [rsi+rdx], 0
		je	_end_of_string
		mov	r8, [rsi+rdx]
		mov	[rdi+rdx], r8
		inc	rdx
		jmp	_loop

_end_of_string:
		mov	BYTE [rdi+rdx], 0
		mov	rax, rdi
		ret
