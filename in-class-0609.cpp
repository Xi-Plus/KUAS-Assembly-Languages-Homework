#include <stdafx.h>
#include <time.h>
#include <iostream>

#define times 100000000
using namespace std;
short v[times] = {};
int main() {
	srand(time(NULL));
	for (int q = 0; q<times; q++) {
		v[q] = rand();
	}
	short k = rand();
	clock_t sc = clock();
	cout << sc << endl;
	for (int q = 0; q<times; q++) {
		v[q] *= k;
	}
	cout << clock() - sc << endl;
	sc = clock();
	__asm {
		mov esi, offset v
		mov bx, k
		mov ecx, 100000000
		F1:
		mov eax, [esi+ecx-1]
		mul bx
		LOOP F1
	}
	cout << clock() - sc << endl;
	return 0;
}
