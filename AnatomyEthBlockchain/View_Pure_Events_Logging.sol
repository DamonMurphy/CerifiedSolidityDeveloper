
pragma solidity >=0.4.25 <0.6.0;
//pragma solidity ^0.5.2;

contract C {

	function f(uint a, uint b) public view returns (uint) {
		return a * (b + 42) + now;
	}  // View - promisded to read the state but not modify

	function g(uint a, uint b) public pure returns (uint) {
		return a * (b + 42);
	}  // Pure - promisded to not read or modify the state
}

// EVENTS AND LOGGING LECTURE

contract Coin {
	/*
	* @title A Simple Subcurrency Example
	* @author Damon Murphy
	* @notice Example for Solidty Course
	* @dev This is only for demo -> simnple Coin example
	*/
	address public minter;
	uint public totalCoins;

	event LogCoinsMinted(address indexed deliveredTo, uint indexed amount);
	event LogCoinsSent(address sentTo, uint amount);

	mapping (address => uint) balances;
	function Coin (uint initialCoins) {
		minter = msg.sender;
		totalCoins = initialCoins;
		balances[minter] = initialCoins;
	}

	/// @notice Mint the coins
	/// @dev This does not return any value
	/// @param owner address of the coin owner, amount of coins to be delivered to owner
	/// @return Nothing

	function mint(address owner, uint amount) {
		if (msg.sender != minter) return;
		balances[owner] += amount;
		totalCoins += amount;
		LogCoinsMinted(ownermamount);
	}

	function queryBalance(address addr) constant returns (uint balance) {
		return balances[addr];
	}

	function killCoin() returns (bool status) {

	}

}
