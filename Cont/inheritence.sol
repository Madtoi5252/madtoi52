// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

interface ISchool {
    function getSchoolName() external view returns (string memory);
    function getStudentCount() external view returns (uint);
    function getStudentList() external view returns (string[] memory);
    function addStudent(string calldata name) external;
}

contract School is ISchool {
    string private schoolName;
    string[] private students;

    constructor(string memory _schoolName) {
        schoolName = _schoolName;
    }

    function getSchoolName() public view override returns (string memory) {
        return schoolName;
    }

    function getStudentCount() public view override returns (uint) {
        return students.length;
    }

    function getStudentList() public view override returns (string[] memory) {
        return students;
    }

    function addStudent(string calldata name) public override {
        students.push(name);
    }
}
contract HighSchool is School {
    string[] private coursesOffered;

    constructor(string memory _schoolName) School(_schoolName) {
        // Constructor code here
    }

    function addCourse(string memory course) public {
        coursesOffered.push(course);
    }

    function getCourse(uint index) public view returns (string memory) {
        require(index < coursesOffered.length, "Invalid course index");
        return coursesOffered[index];
    }

    function getCoursesCount() public view returns (uint) {
        return coursesOffered.length;
    }
}