//============================================================================
// Name        : S_BOX.cpp
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

	std::pair<int,int> matrix [15];
	std::pair<int,int> temp = make_pair(0,0);
	bool brk = 0;

	srand (time(NULL));

	for (int i = 0; i <= 15; i++) {
		matrix[i] = make_pair(0,0);
	}

	for (int i = 0; i <= 15;) {

		brk = 0;
		temp = make_pair(rand() % 4,rand() % 4);

		for (int j = 0; j <= i-1; j++) {
			if (temp == matrix[j]) {
				brk = 1;
			}
		}

		if (brk != 1) {
			matrix[i] = temp;
			i = i+1;
		}

	}

	for (int i = 0; i <= 3; i++) { // Row
		for (int j = 0; j <= 3; j++) { // Column
			cout << matrix[i*4 + j].first << matrix[i*4 + j].second << " ";
		}
		cout << endl;
	}

	return 0;
}
