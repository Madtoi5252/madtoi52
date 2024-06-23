// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

contract Q1 {
    int256[] inputArray;
    int256 andResult;
    int256 orResult;

    function getArray(int256[] memory ipArray) public {
        inputArray = ipArray;

        andResult =
            inputArray[1] &
            inputArray[3] &
            inputArray[5] &
            inputArray[7] &
            inputArray[9];
        orResult =
            inputArray[0] |
            inputArray[2] |
            inputArray[4] |
            inputArray[6] |
            inputArray[8];
    }

    function andResultD() public view returns (int256) {
        return andResult;
    }

    function orResultD() public view returns (int256) {
        return orResult;
    }

    function multiply(int256 num1, int256 num2) public pure returns (int256) {
        return num1 * num2;
    }

    function multiply(
        int256 num1,
        int256 num2,
        int256 num3
    ) public pure returns (int256) {
        return num1 * num2 * num3;
    }
}
