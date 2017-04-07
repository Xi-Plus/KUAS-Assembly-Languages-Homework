INCLUDE Irvine32.inc

.data
sum DWORD 1100

.code
main proc
	mov ecx, 1
	jmp F2

L1:
	dec sum
	inc ecx

F2:
	mov eax, sum
	cmp eax, 1000
	jae L1
	
	mov eax, sum
	call writeint

	exit
main endp
end main
