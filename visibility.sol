// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

contract Visibility{

    string dabro = "pajalavat";

    // Despite being private, it can be accessed by external contract if a public function
    // of this contract calls privateFunction.
    function privateFunction() private view returns(string memory){
        return dabro;
    }

    function callDabro() external view returns(string memory){
        return privateFunction();
    }

    // This function will never show up since the callDabro function is EXTERNAL
    // thus cant be accessed internally
    // function callExternal() view public{
    //     callDabro();
    // }

    function internalDabro() internal view returns(string memory){
        return privateFunction();
    }

}

contract Access{
    Visibility public contractInstance;

    constructor(address _contractAddress){
        contractInstance = Visibility(_contractAddress);
    }

    // If callDabro is set to private in the Visibility contract, it will fail
    function callExternalDabro() public view returns(string memory){
        string memory dabro = contractInstance.callDabro();
        return dabro;
    }

    // This function will never show up since the privateFunction function is PRIVATE
    // thus cant be accessed externally
    // function callInternalDabro() public view returns(string memory){
    //     string memory dabro = contractInstance.privateFunction();
    //     return dabro;
    // }
}

// The INTERNAL functions can be accessed by contract which are derived from the ones
// where the INTERNAL function is defined. In other words, for the contracts which 
// inherit from the main one.
contract Heir is Visibility{
    function callInternal() view public returns(string memory){
        return internalDabro();
    }
}

