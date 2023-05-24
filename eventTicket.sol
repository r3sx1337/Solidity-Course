// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

import "@openzeppelin/contracts/utils/Strings.sol";

contract EventTicket{

    uint256 public ticketsSold;
    uint256 public ticketPrice;
    uint256 public startAt;
    uint256 public endAt;
    uint256 public timeRange;
    uint256 public totalPrice;

    //******** - Not gas efficient - *********** 
    function getMessage() public view returns(string memory){
        return string.concat("Buy your ticket for $",Strings.toString(ticketPrice),"!");
    }

    function buyTicket(uint _amountOfTicket) public{
    
        totalPrice = ticketPrice*_amountOfTicket;
        startAt = block.timestamp;
        endAt = block.timestamp + 7 days;
        timeRange = (endAt-startAt)/60/60/24;
        ticketsSold += _amountOfTicket;
    }

    constructor(uint _ticketPrice){
        ticketPrice=_ticketPrice;
    }

}