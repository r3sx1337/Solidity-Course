// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

contract conditionalWhileFor{

    uint8[] ray;
    //If,else,else if and ternary operator statements
    
    function testX(string memory _entrada) public pure returns(bool){
        if(keccak256(abi.encode('x'))==keccak256(abi.encode(_entrada))){
            return true;
        }else{
            return false;
        }
    }

    function testY(string memory _entrada) public pure returns(bool){
        bool answer;
        keccak256(abi.encode(_entrada)) == keccak256(abi.encode('y')) ? answer = true : answer = false;
        return answer;
    }

    //While loop

    function simpleWhile() public returns(uint8[] memory){
        uint8 numbah;
        
        while(numbah<5){
            ray.push(numbah);
            ++numbah;
        }
        return ray;
    }

    function simpleFor() public returns(uint8[] memory){
        uint8 numbah;
        for(numbah=0;numbah<5;++numbah){
            ray.push(numbah);
        }
        return ray;
    }

}