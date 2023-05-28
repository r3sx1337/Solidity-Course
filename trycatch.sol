// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

contract Functions{

    function squaredFunc(uint8 _num) public pure returns(uint8){
        require(1<_num && _num<11,"The number should be between 2 and 10");
        return _num**2;
    }

}

contract Caller{

    Functions func;

    constructor(address _func){
        func = Functions(_func);
    }

    event Log(uint8 result,string message);

    function tryCatch(uint8 _num) public{
        try func.squaredFunc(_num) returns(uint8 result){
            emit Log(result,"");
        } catch Error (string memory errorMessage){
            emit Log(0,errorMessage);
        }
    }

}