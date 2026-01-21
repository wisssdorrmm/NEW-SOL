// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract FundMe {

    mapping(address => uint256) public addressToAmountFunded;
    address public owner;
    uint public time;

    constructor() {
        owner = msg.sender;
    }

    function fund() public payable {
        require(msg.value > 0, "Send some ETH");
        addressToAmountFunded[msg.sender] += msg.value;
    }

    function withdraw() public {
        require(msg.sender == owner, "Not owner");

        payable(owner).transfer(address(this).balance);
    }

    function getBalance() public view returns (uint256) {
        return address(this).balance;
    }

    receive() external payable {
        fund();
    }

    fallback() external payable {
        fund();
    }
}
