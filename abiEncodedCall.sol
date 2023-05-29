// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

contract Transfer{
    function transfer(uint256 amount, address targetAddress) pure public returns(string memory,uint256,address){
        return("Transfer complete",amount,targetAddress);
    }
}

contract ABICall{

    Transfer public transfer;

    constructor(address _address){
        transfer = Transfer(_address);
    }

    function call(uint256 _num,address _targAddress) public view returns(string memory,uint256,address){
        (string memory ok, uint256 num, address targAddress) = transfer.transfer(_num,_targAddress);
        return(ok,num,targAddress);
    }

    function callWithLasers(uint256 _num, address _targAddress) public view returns(string memory, uint256,address){
        (bool success, bytes memory returnData)=address(transfer).staticcall(abi.encodeWithSignature("transfer(uint256,address)", _num,_targAddress));
        require(success,"ops");
        (string memory message, uint256 amount, address targAddress) = abi.decode(returnData,(string, uint256,address));
        return (message,amount,targAddress);
    }

}

