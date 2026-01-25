// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;


contract Parent {
    uint public number;

    function setNumber(uint _number) public {
        number = _number;
    }
}

contract Child is Parent {
    function doubleNumber() public view returns (uint) {
        
    }
}