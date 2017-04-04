; AddTwo.asm - adds two 32-bit integers.
; Chapter 3 example

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data
array DWORD 10h, 20h, 30h, 40h

.code
main proc
	mov eax, 0
	mov ecx, LENGTHOF array
	mov esi, OFFSET array
	L1:
		add eax, [esi]
		add esi, TYPE array
		loop L1

	invoke ExitProcess,0
main endp
end main
