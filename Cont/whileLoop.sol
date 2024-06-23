// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract whileloop{
    uint256 public factorial;

    function calculatrFact(uint256 n) public{
        factorial = 1;
        uint256 i = 1;
        while ( i<= n) {
            factorial *= i;
            i++;
        }
    }
}
