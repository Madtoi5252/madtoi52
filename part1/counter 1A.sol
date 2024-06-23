// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract counter{
    uint256 public count;

    function increment() public {
        count += 1;
    }


    function decrement() public{
        count -= 1;
    }

}