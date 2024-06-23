// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract basic{

    uint256 value;

    function store(uint256 _value) public {
        value = _value;
    }

    function retireve () public view returns (uint256){
        return value;
    }

}