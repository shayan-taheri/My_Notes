//============================================================================
// Name        : Random_Number.cpp
// Author      : Shayan
// Version     :
// Copyright   : Your copyright notice
// Description : Hello World in C++, Ansi-style
//============================================================================

#include <iostream>
#include <time.h>
#include <stdio.h>
#include <stdlib.h>
#include <utility>
using namespace std;

int main() {

	int rand_cases [4];
	int temp = 0;
	bool brk = 0;

	srand (time(NULL));

	for (int i = 0; i <= 3; i++) {
		rand_cases[i] = 0;
	}

	for (int i = 0; i <= 3;) {

		brk = 0;

		if (i == 0) {temp = rand() % 16 + 1;}

		if (i == 1) {temp = rand() % 16 + 1;}

		if (i == 2) {temp = rand() % 16 + 1;}

		if (i == 3) {temp = rand() % 16 + 1;}

		for (int j = 0; j <= i-1; j++) {
			if (temp == rand_cases[j]) {
				brk = 1;
			}
		}

		if (brk != 1) {
			rand_cases[i] = temp;
			i = i+1;
		}

	}

	for (int i = 0; i <= 3; i++) {
		cout << rand_cases[i] << " , ";
	}

	return 0;
}
