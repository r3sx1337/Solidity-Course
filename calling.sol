// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

contract A{

    uint8 public x;

    function setValue(uint8 _x) public {
        x=_x;
    }

    fallback() external payable{}
    receive() external payable{}

}

contract B{

    function upA(A _a, uint8 _x) public{
        _a.setValue(_x);
    }

// If you wanna send a message with the value like the "a" above, you better define
// the fallback() in the receiving contract, otherwise the transaction will fail
// If you define only receive, you must send the "" empty string as message
    function payAndUpdateA(A _a, uint8 _x) public payable{
        _a.setValue(_x);
        (bool success,) = address(_a).call{value:msg.value}("a");
        require(success,"Oh no");
    }



}