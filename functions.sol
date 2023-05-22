// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;


contract LearnFunctions{

    uint256 hey;

    // Retrieves the value of the variable
    function retrieveValue() public view returns(uint){
        return hey;
    }

    // Updates the value of the variable
    function updateValue(uint _hey) public {
        hey = _hey;
    }

    // Makes some operations based on entries and returns the value

        //The functions are pure when they don't read anything from the global state variables
    function operationReturnPure(uint _a, uint _b) public pure returns(uint){
        uint test= _a+_b;
        return test;
    }

        //If the function are going to read something from state variables, it must be set as view
    function operationReturnView(uint _a, uint _b) public view returns(uint){
        return hey + _a + _b;
    }

}

/** ABI of the contract

[
	{
		"inputs": [
			{
				"internalType": "uint256",
				"name": "_a",
				"type": "uint256"
			},
			{
				"internalType": "uint256",
				"name": "_b",
				"type": "uint256"
			}
		],
		"name": "operationReturnPure",
		"outputs": [
			{
				"internalType": "uint256",
				"name": "",
				"type": "uint256"
			}
		],
		"stateMutability": "pure",
		"type": "function"
	},
	{
		"inputs": [
			{
				"internalType": "uint256",
				"name": "_a",
				"type": "uint256"
			},
			{
				"internalType": "uint256",
				"name": "_b",
				"type": "uint256"
			}
		],
		"name": "operationReturnView",
		"outputs": [
			{
				"internalType": "uint256",
				"name": "",
				"type": "uint256"
			}
		],
		"stateMutability": "view",
		"type": "function"
	},
	{
		"inputs": [],
		"name": "retrieveValue",
		"outputs": [
			{
				"internalType": "uint256",
				"name": "",
				"type": "uint256"
			}
		],
		"stateMutability": "view",
		"type": "function"
	},
	{
		"inputs": [
			{
				"internalType": "uint256",
				"name": "_hey",
				"type": "uint256"
			}
		],
		"name": "updateValue",
		"outputs": [],
		"stateMutability": "nonpayable",
		"type": "function"
	}
]



**/