// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

contract slip {
    int256 number1;
    int256 number2;
    int256 addResult;
    int256 mulResult;
    int256 notMulResult;

    function getNumbers(int256 num1, int256 num2) public {
        number1 = num1;
        number2 = num2;

        addResult = number1 + number2;
        mulResult = number1 * number2;

        notMulResult = ~mulResult;        
    }

    function add() public view returns (int256) {
        return addResult;
    }

    function mul() public view returns (int256) {
        return mulResult;
    }

    function notMul() public view returns (int256) {
        return notMulResult;
    }

    function retrieve() public view returns (int256) {
        return (addResult | notMulResult);
    }
}
