include Irvine32.inc
.stack 4096

.data
array1 DWORD 1,8,-5,6,7,2,0,3,10
array2 DWORD -1,-8,-5,6,7,-2,0,3,-10
array3 DWORD -1,-8,-5,-6,-7,-2,-3,-10

.code
FindLargest  proc
	mov eax, -999999
	F3:
	cmp ecx, 0
	je F1
	cmp eax, [ebx]
	jg F2
	mov eax, [ebx]
	F2:
	add ebx, 4
	dec ecx
	jmp F3
	F1:
	ret
FindLargest endp
main proc
	mov ebx, offset array1
	mov ecx, lengthof array1
	call FindLargest
	call writeint
	call crlf

	mov ebx, offset array2
	mov ecx, lengthof array2
	call FindLargest
	call writeint
	call crlf

	mov ebx, offset array3
	mov ecx, lengthof array3
	call FindLargest
	call writeint
	call crlf

	invoke ExitProcess,0
main endp
end main
