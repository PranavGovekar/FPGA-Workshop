#include <ap_int.h>

ap_int<3> adder(ap_int<2> A, ap_int<2> B, ap_int<2> Cin)
{
	ap_int<3> Sum = 0;
	Sum = A + B + Cin;
	
	return Sum;
}



