BITS 16
clrscr:
	mov al, 0x03
	mov ah, 0X00
	int 10H
	ret
pstr:
	pusha
	mov ah, 0Eh
	mov bh, 0h
	mov bl, 03h
	.repeat:
		lodsb
		cmp al, 0
		je .done
		int 0x10
		jmp .repeat
	.done:
		popa
		ret
nl:
	mov ah, 0x0e
	mov al, 10
	int 0x10
	mov al, 13
	int 0x10
	ret
