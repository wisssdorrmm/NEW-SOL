// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract FundMe {

    mapping(address => uint256) public addressToAmountFunded;
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    function fund() public payable {
        require(msg.value > 0, "Send some ETH");
        addressToAmountFunded[msg.sender] += msg.value;
    }

   
}
