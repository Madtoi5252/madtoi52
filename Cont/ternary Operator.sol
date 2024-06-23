// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract Ternary{
    uint256 age;

    function enterYourAge(uint256 num) public{
        age = num;
    }
    function GetVerified() public view returns(string memory){
        return (age >=23)? "You can Enter": "Sorry, too small";
    }
}