// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract calculator{
    uint256 result;

    function add(uint256 a, uint256 b) public  {
        result = a + b; 
    }

    function subtract(uint256 a, uint256 b) public  {
        result = a - b; 
    }

    function mult(uint256 a, uint256 b) public  {
        result = a * b; 
    }

    function div(uint256 a, uint256 b) public  {
        result = a / b; 
    }

    function getResult() public view returns  (uint256){
        return result; 
    }
}