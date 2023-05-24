// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

contract Modifiers{

    address owner;
    bool private locked;

    constructor(){
        owner=msg.sender;
    }

    // Modifier that ensures that only the owner can call some function
    modifier isOwner(){
        require(msg.sender == owner,"Must be owner");
        _; //this underscode means "if everything is okay,
    }    // run the function" and is mandatory for modifiers
    
    // Modifier that check if the locked variable is set to false
    // If the variable locked is set to false it locks it and start the function
    // Only after the execution of the function it sets the locked variable to false again
    // Preventing, that way, the reentrancy attack.
    modifier noReentrancy(){
        require(!locked,"Wait the former execution to end");
        locked=true;
        _;
        locked=false;
    }


    function getOwner() view public returns(address){
        return owner;
    }

    // Modified function, only callable for the owner.
    function changeOwner(address _address)public isOwner{
        owner = _address;
    }

}