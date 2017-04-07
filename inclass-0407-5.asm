INCLUDE Irvine32.inc

.data
sum DWORD 0

.code
main proc
	mov ebx, 1 ; nextDaysWage = 1
	mov eax, 0 ; totalEarnings = 0
	mov ecx, 0 ; day = 0
whilePoor:
	add eax, ebx ; add nextDaysWage to totalEarnings
	add ebx, ebx ; multiply nextDaysWage by 2
	inc ecx ; add 1 to day
	cmp eax, 1000000 ; totalEarnings < 1000000
	jnl endLoop ; exit if not
	jmp whilePoor
endLoop:
	INVOKE ExitProcess, 0
	exit
main endp
end main
