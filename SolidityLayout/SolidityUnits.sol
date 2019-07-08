
pragma solidity ^0.4.18;	// Defines compiler version

contract Units {

	// Ether, Time
	//wei, finney, szabo, ether  // keywords - cannot use as variable names
	bool isEqual = (2 ether == 200 finney);
	uint 2kwei = 200 wei;

	// 
	bool isEqual = (1 == 1 seconds); // should return 'true'
	bool isEqual = (1 minutes == 60 seconds); // should return 'true'
	bool isEqual = (1 hours == 60 minutes); // should return 'true'
	bool isEqual = (1 days == 24 hours); // should return 'true'
	bool isEqual = (1 weeks == 7 days); // should return 'true'
	bool isEqual = (1 years == 365 days); // should return 'true'

	uint timestamp = now;

	// Define contruct here
	function Units() {
		// Initialize state variables here
	}
}