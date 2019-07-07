
pragma solidity >=0.4.25 <0.6.0;
//pragma solidity ^0.5.2;


// ******************************************
//        VIDEO: "FUNCTION CALLS"
// *****************************************

contract FunctionCall {

Miner m;

	function FunctionCall() {

	}

	function setMiner(address addr){
		m = Miner(addr);
	}

	function callMinerInfo() {
		m.info.value(10).gas(800)();
	}

	function someFunction(uint key, uint value) {

	}

	function demoFuntion(){
		someFunction({value:3,key:"me"});
	}

}

contract Miner {

	function info() payable returns (uint ret) {return 42;}
}

// ******************************************
//        VIDEO: "FUNCTION MODIFIERS"
// *****************************************

contract FunctionModifiers {

	address public creator;
	//Define construct here
	function FunctionModifiers() public {
		// Initialize state variables here
		creator = msg.sender;
	}

	modifier onlyCreator() { //modify onlyCreator
		require (msg.sender == creator);
		_;
	}

	function kill() onlyCreator public { // function only gets executed by creator
		selfdestruct(creator);
	}
}

// ******************************************
//        VIDEO: "FALLBACK FUNCTION"
// *****************************************

contract fallBack {

	function fallBack() {

	}

	function() {
		throw;
	}
}

