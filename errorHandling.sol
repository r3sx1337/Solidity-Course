// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

contract ErrorHandling{

    // When a require fails, it returns an error message and revert the function
    // or operation that is being done

    function checkInput(uint8 _input) pure public returns(uint8){
    //  First you provide what must be, and then the message if not
        require(_input<=8, "Input too high");
        require(_input>=0,"Input too low");
    //  Can provide multiple conditions in one require as well like in:
    //  require(_input<=8 && _input!=0, "Input out of range");
        return(_input);
    }

    function asserting(uint8 _input) pure public returns(bool){
        // By other hand, when an assert fails the contract is terminated
        // indicating that something very wrong is happening in the contract
        // that must be stoped.
        assert(_input == 0);
        return (true);
    }

    uint8 testNum;

    function reverting(uint8 _input) public returns(uint8){
        // You can tell explicitly to the contract function revert its effects
        // when certain criteria is fulfilled.
        testNum += _input;
        // In this case, even with the test comming after the increment of testNum
        // if the condition of the if above is fulfilled and the revert is activated
        // the increment of testNum will be reverted and will not be registered
        // in the state variable
        if(_input<3){
            revert("Input lesser than 3");
        }
        return testNum;
    }

}

