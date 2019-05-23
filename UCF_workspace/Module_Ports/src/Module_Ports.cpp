//============================================================================
// Name        : Module_Ports.cpp
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

	cout << "clk clk_b ";

	for (int i = 127; i >= 0; i--) {

		Sout.clear();

		Sout.str(std::string());

		Sout << i;

		string str_i = Sout.str();

		cout << "state[" << str_i << "]" << " ";

	}

	for (int i = 127; i >= 0; i--) {

		Sout.clear();

		Sout.str(std::string());

		Sout << i;

		string str_i = Sout.str();

		cout << "key[" << str_i << "]" << " ";

	}

	for (int i = 127; i >= 0; i--) {

		Sout.clear();

		Sout.str(std::string());

		Sout << i;

		string str_i = Sout.str();

		cout << "out[" << str_i << "]" << " ";

	}

	for (int i = 127; i >= 0; i--) {

		Sout.clear();

		Sout.str(std::string());

		Sout << i;

		string str_i = Sout.str();

		cout << "state[" << str_i << "]_b" << " ";

	}

	for (int i = 127; i >= 0; i--) {

		Sout.clear();

		Sout.str(std::string());

		Sout << i;

		string str_i = Sout.str();

		cout << "key[" << str_i << "]_b" << " ";

	}

	for (int i = 127; i >= 0; i--) {

		Sout.clear();

		Sout.str(std::string());

		Sout << i;

		string str_i = Sout.str();

		cout << "out[" << str_i << "]_b" << " ";

	}

	return 0;
}
