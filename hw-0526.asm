include Irvine32.inc
.stack 4096

.data
x SDWORD 1,-8,5,6,7,2,0,3,-10
y SDWORD 1,-8,4,6,7,1,4,3,-10

.code
CountMatches  proc
	pop eax
	pop edx
	pop esi
	pop edi
	push eax

	mov eax, 0
	F1:
		dec edx
		mov ebx, [esi+edx*4]
		mov ecx, [edi+edx*4]
		cmp ebx, ecx
		jne F2
			inc eax
		F2:
		cmp edx, 0
		ja F1
	ret
CountMatches endp
main proc
	push offset x
	push offset y
	push lengthof x

	call CountMatches
	call writeint
	call crlf

	invoke ExitProcess,0
main endp
end main
