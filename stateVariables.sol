// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract stateVariables{
    uint256 public unsignedInt = 1000;
    string public someString = "Hi there!";
    bytes public someBytes = "Crazy times...";
    uint[] public myNumber;

    function getStringFromBytes() public view returns(string memory){
        return string(someBytes);
    }

    function pushToArray(uint _value) public{
        myNumber.push(_value);
    }

    function updateSomeString(string memory _value) public{
        someString = _value;
    }

}