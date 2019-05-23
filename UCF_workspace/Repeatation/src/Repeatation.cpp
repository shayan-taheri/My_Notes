//============================================================================
// Name        : Repeatation.cpp
// Author      : Shayan
// Version     :
// Copyright   : Your copyright notice
// Description : Hello World in C++, Ansi-style
//============================================================================

#include <sstream>
#include <iostream>
using namespace std;

int main() {

	stringstream Sout;

	for (int i = 0; i <= 127; i++) {

		Sout.clear();

		Sout.str(std::string());

		Sout << i;

		string str_i = Sout.str();

		//cout << "Vstate" << str_i << " " << "state[" << str_i << "]" << " GND 0v" << endl;

		//cout << "Vstate" << str_i << " " << "state[" << str_i << "]" << " GND 0.33v" << endl;

		//cout << "Vstate_b" << str_i << " " << "state[" << str_i << "]_b" << " GND 0.6v" << endl;

		//cout << "Vkey" << str_i << " " << "key[" << str_i << "]" << " GND 0.33v" << endl;

		//cout << "Vkey" << str_i << " " << "key[" << str_i << "]" << " GND 0v" << endl;

		cout << "Vkey_b" << str_i << " " << "key[" << str_i << "]_b" << " GND 0.6v" << endl;

	}

	return 0;
}
