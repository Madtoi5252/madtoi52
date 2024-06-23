// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

contract Q1 {
    int256[] public inputArray;
    int256 public andResult;
    int256 public orResult;
    int256 public product;
    bool public isProductInArray;

    function getArray(int256[] memory ipArray) public {
        require(ipArray.length >= 1, "Input array must have at least 1 element.");

        inputArray = ipArray;

        // Initialize andResult with the first odd-positioned element
        if (ipArray.length > 1) {
            andResult = ipArray[1];
        }

        // Initialize orResult with the first even-positioned element (0th index)
        orResult = ipArray[0];

        // Perform AND operation on odd-positioned elements
        for (uint256 i = 3; i < ipArray.length; i += 2) {
            andResult &= ipArray[i];
        }

        // Perform OR operation on even-positioned elements
        for (uint256 i = 2; i < ipArray.length; i += 2) {
            orResult |= ipArray[i];
        }

        // Calculate the product of the results
        product = andResult * orResult;

        // Check if the product is part of the input array
        isProductInArray = false;
        for (uint256 i = 0; i < ipArray.length; i++) {
            if (ipArray[i] == product) {
                isProductInArray = true;
                break;
            }
        }
    }

    function andResultD() public view returns (int256) {
        return andResult;
    }

    function orResultD() public view returns (int256) {
        return orResult;
    }

    function productD() public view returns (int256) {
        return product;
    }

    function isProductInArrayD() public view returns (bool) {
        return isProductInArray;
    }
}
