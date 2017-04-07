INCLUDE Irvine32.inc

.data
arr DWORD 1,3,5,22,899,77,56,59,60,61
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

	cmp eax, 60
	jae F2
	jmp L1
F2:
	cmp eax, 100
	jbe F3
	jmp L1

F3:
	add sum, eax
	jmp L1

F1:
	mov eax, sum
	call writeint

	exit
main endp
end main
