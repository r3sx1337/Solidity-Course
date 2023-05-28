// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

contract Car{
    string public model;
    address public renter;

    constructor(string memory _model, address _renter){
        model = _model;
        renter = _renter;
    }
}

contract CarLocator{
    
    Car[] cars;

    function newRental(address _renter, string memory _model) payable public {
        require(msg.value==0.5 ether, "Pay the ether!");
        Car renting = new Car(_model,_renter);
        cars.push(renting);
    }

    function getCar(uint _index) public view returns(string memory, address){
        require(_index < cars.length, "Out of index");
        return (cars[_index].model(),cars[_index].renter());
    }
}