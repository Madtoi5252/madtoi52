// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract Assignment{

    uint256 number;

    function Getnum (uint256 num) public {
        number = num;
    }

    function AddAndAssign () public view returns (uint256){
        uint256 add = 1;
        add += number;
        return add;
    }
    function SubAndAssign () public view returns (uint256){
        uint256 sub = 500;
        sub -= number;
        return sub;
    }
    function MultAndAssign () public view returns (uint256){
        uint256 mul = 1;
        mul *= number;
        return mul;
    }
    function DivAndAssign () public view returns (uint256){
        uint256 div = 200;
        div /= number;
        return div;
    }

}