// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Project {

    uint256 public firstNumber;
    uint256 public secondNumber;

    struct Person {
        string name;
        uint256 age;
        uint256 favoriteNumber;
    }

    Person[] public people;

    mapping(string => uint256) public nameToAge;
    mapping(string => uint256) public nameToFavoriteNumber;

    function setFirstNumber(uint256 _firstNumber) public {
        firstNumber = _firstNumber;
    }

    function setSecondNumber(uint256 _secondNumber) public {
        secondNumber = _secondNumber;
    }

    function addition() public view returns (uint256) {
        return firstNumber + secondNumber;
    }

    function subtraction() public view returns (uint256) {
       
        return firstNumber - secondNumber;
    }

    function multiplication() public view returns (uint256) {
        return firstNumber * secondNumber;
    }

    function division() public view returns (uint256) {
        return firstNumber / secondNumber;
    }

    function addPerson(
        string memory _name,
        uint256 _age,
        uint256 _favoriteNumber
    ) public {
        people.push(Person(_name, _age, _favoriteNumber));
        nameToAge[_name] = _age;
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}
