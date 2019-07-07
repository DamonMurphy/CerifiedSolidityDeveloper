
pragma solidity >=0.4.25 <0.6.0;
//pragma solidity ^0.5.2;

contract abstractContract {

	function func1(uint i) returns(uint j);

}

contract newContract is abstractContract {

	function func1(uint i) returns(uint j) {
		j = 3 * i;
	}
}

// NEW KEYWORD LECTURE

contract D {
	uint x;

	function D(uint a) payable {
		x = a;
	}
}

contract C {
	D d = new D(4);

	function createD(uint arg) {
		D newD = new D(arg);
		D newD2 = (new D).value(amount)(arg);
	}
	
}