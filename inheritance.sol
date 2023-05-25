// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

contract A{
    function foo() public pure virtual returns(string memory){
        return "A";
    }
    function greet() public pure returns(string memory){
        return "Priviet";
    }
}

contract B is A{
    function foo() public pure virtual override returns(string memory){
        return "B";
    }
}