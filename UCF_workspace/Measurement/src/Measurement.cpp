//============================================================================
// Name        : Measurement.cpp
// Author      : Shayan
// Version     :
// Copyright   : Your copyright notice
// Description : Hello World in C++, Ansi-style
//============================================================================

#include <sstream>
#include <iostream>
#include <fstream>
using namespace std;

int main() {

	stringstream Sout;

	ofstream myfile;

	myfile.open("Meas_Com.txt");

	for (int i = 1; i <= 128; i++) {

		Sout.clear();

		Sout.str(std::string());

		Sout << i;

		string Indx = Sout.str();



		Sout.clear();

		Sout.str(std::string());

		Sout << (i*100);

		string End = Sout.str();



		Sout.clear();

		Sout.str(std::string());

		Sout << (i*100) - 100;

		string Start = Sout.str();


		myfile << ".measure tran avgval_" << Indx << " avg i(vdd) FROM=" << Start << "ps TO=" << End << "ps" << endl;

	}

	myfile.close();

	return 0;
}
