INCLUDE Irvine32.inc

.data
arr DWORD 1,-3,-5,22,-899,77,56,-59,60,61
sum DWORD 0

.code
main proc
	mov ecx, lengthof arr
	mov ebx, -1
L1:
	inc ebx
	cmp ebx, ecx
	jae F1

	mov eax, arr[ebx*type arr]

	cmp eax, 0
	jl F2
	jmp L1
F2:
	inc sum
	jmp L1

F1:
	mov eax, sum
	call writeint

	exit
main endp
end main
