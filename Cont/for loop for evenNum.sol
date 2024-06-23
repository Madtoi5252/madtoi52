// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract SumofSquares{

    uint256 public sum1;

    function Square(uint256 n) public{
         sum1 = 0;
        for (uint256 i = 1; i<=n; i++){
            sum1 += i;
        }
        }
        
    
}