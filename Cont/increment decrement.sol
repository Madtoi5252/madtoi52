// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;
 
contract IncrementDecrement{
    uint256 count = 0;
    function Increment () public {
        count ++;
    }
     function Decrement () public {
        count --;
    }
    function getCount() public view returns (uint256){
        return count;
    }
}