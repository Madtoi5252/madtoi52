// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract operation{
    uint256 [10] public inArray;
    uint256 addResult;
    uint256 andResult;
    uint256 orResult;

    function getArray(uint256 [10] memory list) public{
        inArray = list;

        addResult = inArray[0] + inArray[1] + inArray[2] + inArray[3] + inArray[4];

        andResult = inArray[0] & inArray[1] & inArray[2] & inArray[3] & inArray[4] & inArray[5];
        
        orResult = inArray[0] | inArray[1] | inArray[2] | inArray[3] | inArray[4] | inArray[5];

    }

    function getAddResult () public view returns(uint256 ){
        return addResult;
    }
     function getAndResult () public view returns(uint256 ){
        return andResult;
    }
     function getOrResult () public view returns(uint256 ){
        return orResult;
    }

    function Mult2No(uint256 num1, uint256 num2) public pure returns (uint256){
        return num1 * num2;
    }
    function Mult3No(uint256 num1, uint256 num2, uint256 num3) public pure returns (uint256){
        return num1 * num2 * num3;
    }

}