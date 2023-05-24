// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

contract Mapping{
    
    mapping(uint8=>address) public wallets;

    uint8 walletAmmount;

    function setWallet(address _address) public{
        wallets[walletAmmount] = _address;
        ++walletAmmount;
    }

    // Primitive as a caveman implementation of getWallets, which will be
    // replaced for the struct in the future when I learn it.
    // I did mantain this code here because it was on it that I did learn
    // the use of the new keyword for defining the length of the dinamic arrays.

    function getWallets() public view returns(uint8[]memory,address[]memory){
        uint8[] memory indexes = new uint8[](walletAmmount) ;
        address[] memory addresses = new address[](walletAmmount);
        for(uint8 i=0;i<walletAmmount;++i){
            indexes[i]=i;
            addresses[i]=wallets[i];
        }
        return(indexes,addresses);
    }

}