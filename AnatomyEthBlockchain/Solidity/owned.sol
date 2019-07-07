
pragma solidity ^0.5.2;

contract owned {

	address owner;

	function owned() {
		owner = msg.sender;
	}
}