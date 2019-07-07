
pragma solidity >=0.4.25 <0.6.0;
//pragma solidity ^0.5.2;

contract Sharer {

	function sendHalf(address addr) public payable returns (uint balance) {
		require(msg.value % 2 == 0); // Only allows even numbers        REQUIRE is used before any gas is spent on the ETH blockchain
		uint balanceBeforeTransfer = this.balance;
		addr.transfer(msg.value / 2);
		// SInce transfer throws an exceptoin on failure and
		// cannot call back here, there should be no for us to
		// still have half of the money
		assert(this.balance == balanceBeforeTransfer - msg.value / 2);  //  ASSERT is used after gas is spent on the ETH blockchain
		// and cannot be recovered/refunded
		return this.balance;
	}

	// default function
	function () {
		revert(); // If none of the above functions get executed, this function will get executed and all of the cjanges will revert
	}
}