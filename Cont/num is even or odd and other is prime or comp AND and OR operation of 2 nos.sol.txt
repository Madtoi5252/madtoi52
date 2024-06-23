// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

contract WASP {

    uint256  number1;
    uint256 number2;


    function getInputNumber(uint256 num1,uint256 num2) public{
    number1=num1;
    number2=num2;


    }


    function checkEvenOrOddnumber() public view  returns (string memory){
        if(number1%2==0){
            return 'The number1 is Even number';
        }else{
            return 'The number1 is Odd number';
        }     
    }

    function checkPrimeOrComposite() public view returns (string memory){

        if(number2 == 0 || number2 == 1 ){
            return 'The number2 is neither prime or composite.';
        }else{
            uint256 flag=0;
            for(uint256 i=2;i<=(number2/2);i++){
                if(number2%i==0){
                    flag=1;
                    break;
                }
            }
            if(flag==0){
                return 'The number2 is prime number.';
            }else{
                return  'The number2 is composite number.';
            }
        }

    }
    
    function numberAndOp() public view returns(uint256){
        return (number1 & number2);
    }

    function numberOrOp() public view returns(uint256){
        return (number1 | number2);
    }


}