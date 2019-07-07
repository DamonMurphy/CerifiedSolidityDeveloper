
pragma solidity >=0.4.25 <0.6.0;
//pragma solidity ^0.5.2;

//  owned Contract is moved to a separate file "./Solidity/owned.sol"
//contract owned {
//
//	address owner;
//
//	function owned() {
//		owner = msg.sender;
//	}
//}

import "./Solidity/owned.sol"

contract mortal is owned {

	function kill() {
		selfdestruct(owner);
	}
}

//contract User is mortal, owned { // Results in error due to order of inheritance
contract User is owned, mortal {  // No error ==> Order from "most base-like" to "most derived"

	string public UserName;

	function User(string _name) {
		UserName = _name;
	}
}