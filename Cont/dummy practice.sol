// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract Dummy{
    int256 number1;
    int256 number2;
    int256 addResult;
    int256 mulResult;
    int256 notmulResult;

    function Getnum (int256 num1, int256 num2) public{
        number1 = num1;
        number2 = num2;

        addResult = number1 + number2;
        mulResult = num1 * num2;

        notmulResult = ~mulResult;
    }
    function add() public view returns (int256){
        return addResult;
    }
    function mult() public view returns (int256){
        return mulResult;
    }

    function retrieve() public view returns (int256){
        return (addResult | notmulResult);
    }
        function notMul() public view returns (int256) {
        return notmulResult;
    }
}