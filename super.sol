// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

//Contract A is a self-made successful contract
contract A{

    event Log(string message);

    function getName() public virtual{
        emit Log("This is A");
    }
    
}
//Contract B inherits from A
contract B is A{

    function callA() public{
        emit Log("This is B");
        super.getName();
    }

}
//Contract C inherits from B and A
contract C is B{

    function callB() public{
        emit Log("This is C");
        super.callA();
    }

}