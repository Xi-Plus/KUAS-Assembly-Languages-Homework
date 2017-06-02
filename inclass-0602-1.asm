include Irvine32.inc
.data
targetStr BYTE "ABCDE", 10 DUP(0)
sourceStr BYTE "FGH", 0
Str_concat proto t:DWORD, s:DWORD

.code
main proc
	invoke Str_concat, ADDR targetStr, ADDR sourceStr
	mov edx, offset targetStr
	call writestring
	invoke ExitProcess, 0
main endp
Str_concat proc t:DWORD, s:DWORD
	mov edi, s
	mov al, 0
	mov ecx, -1
	cld
	repne scasb
	mov ebx, edi
	sub ebx, s
	dec ebx

	mov edi, t
	mov al, 0
	mov ecx, -1
	cld
	repne scasb
	mov edx, edi
	sub edx, t
	dec edx
	
	cld
	mov ecx, ebx
	mov esi, s
	mov edi, t
	add edi, edx
	rep movsb

	ret
Str_concat endp
end main
