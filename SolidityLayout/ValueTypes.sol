
pragma solidity ^0.4.18;	// Defines compiler version

contract aa {
	
	uint x; // unsigned integer can be specified uint8 up to uint256 (in multiples of 8) / default is uint256
		// or
	uint y = 1;

	int a; // signed integer can be specified int8 up to int256 (in multiples of 8) / default is int256
	int b = 2;
	int128 d;

	int constant c = 3;

	bool status1; // boolean type
	bool status2 = true;
	bool status3 = true;  // can be a constant

	var e;
	e = true; // e becomes a bool

	var f = 1; // f becomes an int

	address public owner;    // can be public or private

	byte g; // alias for byte1
	bytes32 largeNum; // byte and bytes can go up to 32

	bytes m; // byte[] m; array

	string n = "string_name";

	bytes32[5] array1; // static array size 5
	bytes32[] array2; // dynamic array of any size

	uint newLength = array2.push("item1"); // returns array length or index? Unclear in lecture

	mapping (string => uint) public balance;
	balance["client1"] = 56;  // also unclear...at 10:37 in lecture "Solidity - Value Types"

	enum State {Created, Locked, Inactive};
	State public state;
	state = State.Created;

	uint statevalue = uint(state); //0  because 'Created' is at index 0 of State

	struct person {
		uint height;
		uint age;
		address add;
	}

	person public p;




	function aa () {
		
	}
}