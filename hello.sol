//SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract MyFirstContract{
    //Could define the values for the variables at declaration time
    string public hey;
    uint public number;

    //Could define the values at compiling time with constructor
    // constructor(string memory _hey, uint _number){
    //     hey = _hey;
    //     number = _number;
    // }
    
    //Can define the values of the variables with functions
    function addInfo(string memory _hey, uint _number) public {
        hey = _hey;
        number = _number;
    }
}