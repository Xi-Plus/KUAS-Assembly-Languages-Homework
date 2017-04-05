; AddTwo.asm - adds two 32-bit integers.
; Chapter 3 example

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data

.code
main proc
	mov ecx, 5
	mov ebx, 1
	mov edx, 1
	L1:
		mov eax, 0
		add eax, ebx
		add eax, edx

		mov ebx, edx
		mov edx, eax
		loop L1

	

	invoke ExitProcess,0
main endp
end main