// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract RollCheck {
    uint256[] public rolls;

    function addRoll(uint256 roll) public {
        rolls.push(roll);
    }

    function check(uint256 roll, uint256 date) public pure returns (string memory) {
        uint256 result = roll & date;
        if (result % 2 == 0) {
            return "Allowed";
        } else {
            return "Denied";
        }
    }
}