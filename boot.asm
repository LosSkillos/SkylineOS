BITS 16

start:
	mov ax, 07C0h		
	add ax, 288		
	mov ss, ax
	mov sp, 4096

	mov ax, 07C0h		
	mov ds, ax 

	call clrscr

	;BARVA 
	;mov ah, 06h
	;xor al, al
	;xor cx, cx
	;mov dx, 184FH
	;mov bh, 02h
	;int 10H
	jmp load
	%include "include.asm"




TIMES 510 - ($-$$) db 0
db 0x55, 0xaa
