// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Project {

    uint public firstNumber;
    uint public secondNumber;

    struct Person {
        string name;
        uint age;
        uint favoriteNumber;
    }

    Person[] public people;
    mapping(string => uint) public nameToAge;
    mapping(string => uint) public nameToFavoriteNumber;

    function setFirstNumber(uint _firstNumber) public {
        firstNumber = _firstNumber;
    }

    function setSecondNumber(uint _secondNumber) public {
        secondNumber = _secondNumber;
    }

    function addition() public view returns (uint) {
        return firstNumber + secondNumber;
    }

    function subtraction() public view returns (uint) {
        return firstNumber - secondNumber;
    }

    function multiplication() public view returns (uint) {
        return firstNumber * secondNumber;
    }

    function division() public view returns (uint) {
        require(secondNumber != 0, "Division by zero");
        return firstNumber / secondNumber;
    }

    function addPerson(
        string memory _name,
        uint _age,
        uint _favoriteNumber
    ) public {
        people.push(Person(_name, _age, _favoriteNumber));
        nameToAge[_name] = _age;
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}
