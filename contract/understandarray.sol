// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract NumberArray {
    uint[] public numbers; 

    function addNumber(uint _num) public {
        numbers.push(_num);
    }

    function getNumber(uint _index) public view returns (uint) {
        return numbers[_index];
    }

   
    function getCount() public view returns (uint) {
        return numbers.length;
    }


    function removeLast() public {
        numbers.pop();
    }

   
    function updateNumber(uint _index, uint _newNum) public {
        numbers[_index] = _newNum;
    }
}
