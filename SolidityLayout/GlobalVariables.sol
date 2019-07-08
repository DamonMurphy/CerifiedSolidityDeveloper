
pragma solidity ^0.4.18;	// Defines compiler version

contract GlobalVariables {

	// msg
	//
	address owner = msg.sender;
	uint amount = msg.value;
	bytes data = msg.data;
	uint gasRemains = msg.gas;
	bytes4 sig1 = msg.sig;

	// tx transaction data
	tx.origin;
	tx.gasprice;
	
	// block - block information
	uint blcknum1 = block.number;
	uint diff1 = block.difficulty;
	bytes32 blockhash1 = block.blockhash(1);
	address coinbase1 = block.coinbase();

	assert(bool 1 ether == 1000 finney);  // should return 'true'
	addmod(x,y,z); // (x + y % z)
	mulmod(x,y,z); //
	sha3();
	keccak256();
	sha256("kjhasdiuyer","jhgasdjhsagd");
	ripemd160(a,b,c);
	revert()

	<address>.balance;
	addr.send(amount)
	this;

	selfdestruct(addr); // destroys current contract and transfers ether to addr

	// Define construct here
	function GlobalVariables() {
		// Initialize variables here
	}

}

// For later:
// From BitDegree Lesson 1 Chapt 8
/*
Solidity has two places where it can store variable data: 
storage (which is the blockchain itself) or 
memory (a temporary place which is erased when it is no longer needed). 
Storage is expensive to use but memory is not. By
 default, structs and arrays reference to storage and all other variables 
 use memory. If you want to make sure that a specific variable 
 (a struct, for example) is stored in memory, you need 
 to use the memory keyword. Like this:

Pizza memory favoritePizza = Pizza({type: "pepperoni"});
*/

