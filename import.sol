// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

import "enum.sol";

contract Imported{

    Enum.Status public status;

    function ship() public{
        status=Enum.Status.Shipped;
    }

    function willFail(uint8 _number) public{
        _number == 3? status=Enum.Status.Accepted:status=Enum.Status.Rejected;
    }

    function cancel() public{
        status=Enum.Status.Canceled;
    }

    function toDefault() public{
        delete status;
    }


}