// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract Election {
    // Arrays to store candidate IDs and names
    uint256[] public candidateIds;
    string[] public candidateNames;

    // Function to add a candidate
    function addCandidate(uint256 id, string memory name) public {
        candidateIds.push(id);
        candidateNames.push(name);
    }

    // Function to get the number of candidates
    function getNumberOfCandidates() public view returns (uint256) {
        return candidateIds.length;
    }

    // Function to get candidate details by index
    function getCandidateByIndex(uint256 index) public view returns (uint256, string memory) {
        require(index < candidateIds.length, "Index out of bounds");
        return (candidateIds[index], candidateNames[index]);
    }

    // Function to find a candidate by ID
    function findCandidateById(uint256 id) public view returns (string memory) {
        for (uint256 i = 0; i < candidateIds.length; i++) {
            if (candidateIds[i] == id) {
                return candidateNames[i];
            }
        }
        return "Candidate not found";
    }
}