
pragma solidity ^0.4.18;	// Defines compiler version

//import "contracts/contract01.sol";	// Import external file  // Need to verify syntax in quotes ==> unclear in lecture

// Begin contract code
contract ContractName {
	/*
	@title Plain English Title of Contract
	@author Damon Murphy
	@notice Example for Solidity Layout
	@dev Information for Developers

	*/

	// State Variables
	address public stateVariable1;
	uint public stateVariable2;
	uint private stateVariable3;
	string public constant HOST_ID = 0x1234;

	// Events
	event LogEvent1(address param1, uint param2);
	event LogEvent2(address param1);
	event LogEvent3();

	// Function Modifiers
	modifier onlyIfOwnerModifier() {
		require (msg.sender == owner);
		_;
	}

	modifier onlyIfMortalModifier() {
		require (msg.sender == mortal) return;
		_;
	}

	// Struct, Arrays, or Enum here (if any)
	enum enum1 {val1, val2, val3}
	struct struct1 {
		uint weight;
		uint height;
		address location;
	}

	mapping (address => uint) balances;

	// Define construct here
	function ContractName(uint initialCoins) public {
		// body of function here
		//
		//
	}

	/// @dev Comments for developers
	/// @param parameter details
	/// @return return variable details

	function function2(address param1, uint param2) public {
		// body of function here
		//
		//
	}

	// Default Function also known as Fallback Function
	function() {
		revert();
	}

}

