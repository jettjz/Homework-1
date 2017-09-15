pragma solidity ^0.4.16;


contract Fibonacci {

	mapping(uint => uint) pastCalls;
	event fibCall(uint position, uint result);

	function calculate(uint position) returns (uint result) {
		if (position<=2) {
			return 1;
		} else if (pastCalls[position] != 0) {
			return pastCalls[position];
		} else {
			pastCalls[position] = calculate(position-1) + calculate(position-2);
			return pastCalls[position];
		}
	}

	/* Add a fallback function to prevent contract payability and non-existent function calls */
	function() {}
}
