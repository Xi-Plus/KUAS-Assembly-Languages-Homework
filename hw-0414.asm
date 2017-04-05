INCLUDE Irvine32.inc

.386

.model flat,stdcall

.stack 4096
ExitProcess proto,dwExitCode:dword

.data
;t BYTE 10
input byte 100 dup(0)
key byte "ABXmv#7", 0
.code

main proc
	mov  ecx,32     
	mov  edx,offset input     
	call ReadString
	mov edx,offset input
	mov ebx,offset key
L1:
	mov al,[edx]
	cmp al,0
	jz F2 
	mov ah,[ebx]
	cmp ah,0
	jnz F1
	mov ebx,offset key
	mov ah,[ebx]
F1:
	xor al, ah
	mov [edx], al
	inc edx 
	inc ebx 
	jmp L1
F2:
	mov  edx,offset input   
	call writestring

	exit
main endp
end main
