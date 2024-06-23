// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract Passport{

    string public passportStatus;

    function GetCandDetails(uint256 age, bool  hasCriminalCase) public{
    if(age>=18  &&    ! hasCriminalCase){
        passportStatus = "Candidate is eligible";
    }
    else if ( age < 18 || hasCriminalCase){
        passportStatus = "Candidate is not eligible";
    }
    else{
        passportStatus = "Invalid";
    }
    }
}