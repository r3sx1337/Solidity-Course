// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

library Math{

    function squared(uint x) pure public returns(uint){
        return x**2;
    }

}

contract TestMath{
    function callSquared(uint _x) public pure returns(uint){
        return Math.squared(_x);
    }
}