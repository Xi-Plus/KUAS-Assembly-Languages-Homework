include Irvine32.inc

.data
key BYTE -2, 4, 1, 0, -3, 5, 2, -4, -4, 6
str1 BYTE "Hello World", 0
str2 BYTE "Don't repeat yourself", 0
Encrypt proto, s:DWORD, sl:DWORD, k:DWORD, kl:DWORD

$$DmpUint8 PROTO,p:DWORD,n:DWORD

.code
main proc
	invoke Encrypt, offset str1, lengthof str1, offset key, lengthof key
	mov edx, offset str1
	call WriteString

	call crlf

	invoke Encrypt, offset str2, lengthof str2, offset key, lengthof key
	mov edx, offset str2
	call WriteString

	invoke ExitProcess, 0
main endp
Encrypt proc, s:DWORD, sl:DWORD, k:DWORD, kl:DWORD
	mov edi, s
	mov eax, sl
	mov esi, k
	mov ebx, kl
F1:
	cmp eax, 0
	je FE
	cmp ebx, 0
	jne F3
	mov esi, k
	mov ebx, kl
F3:
	mov dl, [edi]
	mov cl, [esi]
	ror dl, cl
	mov [edi], dl
	inc esi
	inc edi
	dec eax
	dec ebx
	jmp F1
FE:
	ret
Encrypt endp
end main
