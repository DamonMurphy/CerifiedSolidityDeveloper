//pragma solidity >=0.4.25 <0.6.0;
pragma solidity ^0.5.2;

contract TicketSystem {
	/*
	* @title Ticket System Example
	* @author Damon Murphy
	* @notice Example for the Cerified Solidity Developer training
	*/
	
	address private admin;
	uint public totalTickets;
	uint public totalTicketsSold;
	uint public ticketPrice;
	uint private totalRevenue;
	string public standard = "TICKETINGSYSTEM-0.1";
	mapping(uint => address) public seatsToAttendees;
	mapping(address => uint) public attendeesToSeats;

	event TicketPurchasedEvent(address indexed _attendee, uint _amount);

	modifier onlyAdmin {
		require(msg.sender == admin);
		_;
	}

	function TicketSystem(uint inTotalTickets, uint inTicketPrice) public {
		admin = msg.sender;
		totalRevenue = 0;
		totalTicketsSold = 0;
		totalTickets = inTotalTickets;
		ticketPrice = inTicketPrice;
	}

	/* @dev Returns the number of unconsumed tickets per user
	* @param amount Number of tickets to be purchased
	*/
	function purchaseTicket(uint amount) public payable returns (bool) {
		uint transactionTotal = amount * ticketPrice;
		// verify: (1) tickets left, (2) amount is >0, (3) user has sufficient funds
		if ((amount + totalTicketsSold <= totalTickets) && (amount > 0) && (msg.value > transactionTotal)) {
			// track the total revenue
			totalRevenue += transactionTotal;
			// snd it to the admin account
			for (uint i = totalTicketsSold + 1; i < totalTicketsSold + amount + 1; i++) {
				seatsToAttendees[i] = msg.sender;
			}
			attendeesToSeats[msg.sender] += amount;
			totalTicketsSold += amount;
			totalTickets -= amount;
			TicketPurchasedEvent(msg.sender, amount);
			return true;
		}

		else {
			return false;
		}
	}

	function withdrawAll() onlyAdmin public payable returns (bool) {
		uint amount = totalRevenue;
		// Remember to zero the pending refund before
		// sending to prevent double/multiple use
		totalRevenue = 0;
		msg.sender.transfer(amount);
	}
}