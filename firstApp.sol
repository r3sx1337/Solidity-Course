//SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

contract NFTCount{

    uint numberOfNFT;

    function checkTotalNFT() public view returns(uint){
        return numberOfNFT;
    }

    function addNFT() public{
        /** Used ++numberOfNFT instead of
        numberOfNFT += 1, as shown in the
        course, because of the lesser gas
        cost.        
        **/
        ++numberOfNFT;
    }

    function delNFT() public{
        --numberOfNFT;
    }

    constructor(uint _numberOfNFT){
        numberOfNFT=_numberOfNFT;
    }

}