pragma solidity ^0.4.13;


contract greeter {
	/* Add one variable to hold our greeting */
	string greeting;
	uint num_greetings;

	function greeter(string _greeting) public {
		/* Write one line of code for the contract to set our greeting */
		greeting = _greeting;
		num_greetings = 0;
	}

	function greet() returns (string)  {
		/* Write one line of code to allow the contract to return our greeting */
		num_greetings += 1;
		return greeting;
	}

	function num_greets() returns (uint) {
	    /* returns the number of greetings so far */
	    return num_greetings;
	}

}
