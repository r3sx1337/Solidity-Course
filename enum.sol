// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

contract Enum{

    enum Status{
        Pending,
        Shipped,
        Accepted,
        Rejected,
        Canceled
    }

    Status public status;

    function ship() public{
        status=Status.Shipped;
    }

    function willFail(uint8 _number) public{
        _number == 3? status=Status.Accepted:status=Status.Rejected;
    }

    function cancel() public{
        status=Status.Canceled;
    }

    function toDefault() public{
        delete status;
    }

}