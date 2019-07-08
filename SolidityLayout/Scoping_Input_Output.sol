
pragma solidity >=0.4.25 <0.6.0;
//pragma solidity ^0.5.2;

// Default vaules of declared variables will be the byte representation all zero of the variable type

uint i; //default is 0

//the default of strings and arrays are empty strings or empty arrays

// a variable decalred in a function will be in-scopr for the entire function regardless of where it is declared

contract Scoping {

	function Scoping() { //begin scope

		for (uint i=0;i<=10;i++;) {
			} // for loop syntax
		}

	} // end scope
}

contract InputAndOutput {

	uint public input1;
	uint public input2;
	function InputAndOutput(uint in1, uint in2) {
		input1 = in1;
		input2 = in2;
	}

	function MultiplyByThree(uint in1) returns (uint m3) {
		m3 = in1 * 3;
	}

	//function MultiplyAndSum(uint in1, uint in2) returns (uint outSum, uint outProduct) {
	function MultiplyAndSum(uint in1, uint in2) returns (uint, uint) {
		outSum = in1 + in2;
		outProduct = in1 * in2;
		return (outSum, outProduct);
	}
}

