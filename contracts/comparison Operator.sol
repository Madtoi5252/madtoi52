// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract Comparasion{

    string public result;

    function ComparasionResult(uint256 a, uint256 b) public {
        if (a==b) {
            result = "Numbers are Equal";
        }
        else if (a != b ){
            result = "Numbers are not Equal";
        }
        else {
            result = "Invalid";
        }
    }
}