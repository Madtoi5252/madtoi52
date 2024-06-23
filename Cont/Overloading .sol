// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract Overloading{

    uint256 num1;
    uint256 num2;
    uint256 date;
    uint256 month;
    uint256 year1;
    uint256 year2;

    function Operation( uint256 DD, uint256 MM, uint256 YY1, uint256 YY2) public{
        date = DD;
        month = MM;
        year1 = YY1;
        year2 = YY2;

        num1 = DD & MM;
        num2 = YY2 | YY1;
    }
    function AddMod() public view returns (uint256){
        return addmod(num1,num2, date);
    }
    function MulMod() public view returns (uint256){
        return mulmod(num1, num2, month);
    }

}