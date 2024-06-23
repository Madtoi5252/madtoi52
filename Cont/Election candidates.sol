// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

import "@openzeppelin/contracts/utils/Strings.sol";

contract Election {
    using Strings for uint256;  // To use `Strings.toString` directly

    string[] candidatesList = ["Prathamesh", "Pratham", "Mahi", "Pooja"];
    uint[][] candidatesData = [
        [27, 4, 15],
        [26, 10, 0],
        [28, 5, 0],
        [26, 0, 12]
    ];
    uint256[] candidateResult;
    string[] candidateStatus;

    function calculateResult() public {
        for (uint256 i = 0; i < candidatesData.length; i++) {
            if (candidatesData[i].length == 2 || candidatesData[i][2] == 0) {
                andData(candidatesData[i][0], candidatesData[i][1]);
            } else {
                andData(candidatesData[i][0], candidatesData[i][1], candidatesData[i][2]);
            }
        }

        for (uint256 i = 0; i < candidateResult.length; i++) {
            if (candidateResult[i] > 0) {
                candidateStatus.push(
                    string.concat(
                        "Candidate: ",
                        candidatesList[i],
                        " with result: ",
                        candidateResult[i].toString(),
                        " is selected."
                    )
                );
            } else {
                candidateStatus.push(
                    string.concat(
                        "Candidate: ",
                        candidatesList[i],
                        " with result: ",
                        candidateResult[i].toString(),
                        " is not selected."
                    )
                );
            }
        }
    }

    function andData(uint256 age, uint256 criminalCase) private {
        candidateResult.push(age & criminalCase);
    }

    function andData(
        uint256 age,
        uint256 criminalCase,
        uint256 qualification
    ) private {
        candidateResult.push(age + criminalCase + qualification);
    }

    function getCandidateNames() public view returns (string[] memory) {
        return candidatesList;
    }

    function getCandidatesData() public view returns (uint[][] memory) {
        return candidatesData;
    }

    function getCandidateStatus() public view returns (string[] memory) {
        return candidateStatus;
    }
}
