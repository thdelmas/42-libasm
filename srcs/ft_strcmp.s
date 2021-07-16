	global		ft_strcmp
	section		.text

ft_strcmp:
	xor	rax, rax
_loop:
	inc	rax
	mov	al, byte [rdi]
	mov	bl, byte [rsi]
	cmp	al, bl
	jz	_end
	jne	_end
	inc	rdi
	inc	rsi
	jmp	_loop
_end:
	cmp	al, bl
	jg	_end_too
_end_too:
	movzx	rax, al
	movzx	rbx, bl
	sub	rax, rbx
	ret
